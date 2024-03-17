// ignore_for_file: cascade_invocations

import 'dart:async';

import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:collection/collection.dart';
import 'package:common/common.dart';
import 'package:dls_matrix_client/dls_matrix_client.dart';
import 'package:dls_one/app/di/app_di.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/features/textroom/ui/components/components.dart';
import 'package:dls_one/models/dls_file.dart';
import 'package:dls_one/utils/utils.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:matrix/matrix.dart';
import 'package:rest_api/rest_api.dart';

part 'textroom_bloc.freezed.dart';
part 'textroom_event.dart';
part 'textroom_state.dart';

class TextRoomBloc extends Bloc<TextRoomEvent, TextRoomState>
    with MatrixEventListener {
  /// Constructor
  TextRoomBloc({
    required this.roomOrUserId,
    required DlsMatrixClient matrixClient,
    required UsersBloc users,
    List<DlsChatMessageText> forwardMessages = const [],
    String? threadMessageId,
  })  : _users = users,
        _matrixClient = matrixClient,
        super(
          TextRoomState(
            loading: true,
            forwardMessages: forwardMessages,
            threadMessageId: threadMessageId,
          ),
        ) {
    on<TextRoomEvent>(
      (event, emitter) => event.map<Future<void>>(
        createMtx: (event) => _createMtx(event, emitter),
        readMtx: (event) => _readMtx(event, emitter),
        requestHistory: (event) => _requestHistory(event, emitter),
        requestNewMessages: (event) => _requestNewMessages(event, emitter),
        addFileToEventMtx: (event) => _addFileToEventMtx(event, emitter),
        sendMtx: (event) => _sendMtx(event, emitter),
        leaveMtx: (event) => _leaveMtx(event, emitter),
        markEditMessage: (event) => _markEditMessage(event, emitter),
        deleteEvent: (event) => _deleteEvent(event, emitter),
        enableNotifications: (event) => _enableNotifications(event, emitter),
        messageListScrollChanged: (event) =>
            _messageListScrollChanged(event, emitter),
        updateReadMarkers: (event) => _updateReadMarkers(event, emitter),
        changeSelectMessage: (event) => _changeSelectMessage(event, emitter),
        cleanSelectedMessages: (event) =>
            _cleanSelectedMessages(event, emitter),
        cleanForwardMessages: (event) => _cleanForwardMessages(event, emitter),
      ),
      transformer: sequential(),
    );
    if (!isClosed) {
      _users.add(UsersEvent.readRoom(roomId: roomOrUserId));
      add(const TextRoomEvent.createMtx());
    }
  }

  /// репозиторий
  final DlsMatrixClient _matrixClient;

  /// все пользователи системы
  final UsersBloc _users;

  /// ид комнаты (или пользоватлея)
  final String roomOrUserId;

  /// реальный id комнаты
  String get id => _room.id;

  /// приватная?
  bool get direct => _room.isDirectChat;

  /// комната
  late final Room _room;

  Room get room => _room;

  bool get admin {
    final ind = _room
        .getParticipants()
        .indexWhere((element) => _matrixClient.myId == element.id);
    var b = false;
    if (ind >= 0) {
      b = _room.getParticipants()[ind].powerLevel >= 50;
    }
    return b;
  }

  String get matrixUserId => _matrixClient.myId ?? '';

  List<String> get _excludeEventTypes =>
      direct ? [EventTypes.RoomMember] : <String>[];

  Timeline? _timeline;

  /// Timer to update read markers
  Timer? _updateReadMarkerTimer;

  /// TODO можно сделать лучше
  DLSUser? get directUser {
    if (!direct) {
      return null;
    }
    final user = _room
        .getParticipants()
        .firstWhere((element) => _matrixClient.myId != element.id);
    return DLSUser(dlsId: null, id: user.id, matrixName: user.displayName);
  }

  @override
  Future<void> close() async {
    _updateReadMarkerTimer?.cancel();
    _updateReadMarkerTimer = null;
    final room = _matrixClient.client.getRoomById(roomOrUserId);
    if (room != null) {
      _matrixClient.removeDirectEventListener(room.id, this);
    }
    _timeline?.cancelSubscriptions();
    _timeline = null;
    return super.close();
  }

  @override
  void onMatrixRoomState(Event event) {
    if (event.type == EventTypes.Redaction) {
      if (isClosed) {
        return;
      }
      add(
        TextRoomEvent.readMtx(
          messages: DlsMatrixClient.buildMessagesTree(
            _timeline!.events,
            threadMessageId: state.threadMessageId,
            excludeEventTypes: _excludeEventTypes,
          ),
        ),
      );
    }
  }

  /// вызывается из интерфейса виджетом
  Future<void> _requestHistory(
    _ChatRequestHistory event,
    Emitter<TextRoomState> emitter,
  ) async {
    /// просим историю если это возможно
    if (_timeline!.canRequestHistory) {
      await _timeline!.requestHistory();
    }
  }

  /// вызывается из интерфейса виджетом
  Future<void> _requestNewMessages(
    _ChatRequestNewMessages event,
    Emitter<TextRoomState> emitter,
  ) async {
    /// просим историю если это возможно
    await _timeline!.getRoomEvents(direction: Direction.f);
  }

  Future<void> _readMtx(
    _ChatRead event,
    Emitter<TextRoomState> emitter,
  ) async {
    try {
      emitter(
        state.copyWith(
          loading: false,
          events: event.messages,
          readMarkers: _matrixClient.getRoomReadMarkers(_room),
          lastReadEventId: event.lastReadEventId ?? _room.fullyRead,
          markedEditMessage: state.markedEditMessage,
          threadMessage: event.threadMessage,
        ),
      );
    } catch (e) {
      AppDI.findRepository<DlsLogger>().errorPrinter(e);
      emitter(state.copyWith(failure: 'Ошибка в работе чата: $e'));
    }
  }

  /// создать логику чата
  Future<void> _createMtx(
    _ChatCreate event,
    Emitter<TextRoomState> emitter,
  ) async {
    try {
      emitter(
        state.copyWith(
          loading: true,
          events: [],
        ),
      );

      /// берем id чата
      var room = _matrixClient.client.getRoomById(roomOrUserId);

      /// чата нет и мы пишем пользователю
      if (room == null && roomOrUserId.contains('@')) {
        /// здесь roomOrUserId это точно пользователь
        /// берем первый direct чат с пользователем
        var roomId = _matrixClient.client.getDirectChatFromUserId(roomOrUserId);

        /// чата с пользователем нет
        // ignore: prefer_conditional_assignment
        if (roomId == null) {
          /// создаем чат БЕЗ шифрования
          roomId = await _matrixClient.client.createRoom(
            /// для пользователя roomOrUserId он персональный
            isDirect: true,

            /// видимость приватный
            visibility: Visibility.private,

            /// с каким пользователем
            invite: [roomOrUserId],
            preset: CreateRoomPreset.trustedPrivateChat,
          );
        }

        /// получаем чат
        room = _matrixClient.client.getRoomById(roomId);

        /// делаем чат приватным для меня
        if (_matrixClient.myId != null) {
          await room?.addToDirectChat(_matrixClient.myId!);
        }
      } else if (room == null) {
        return;
      }
      _room = room!;

      /// если меня пригласили, то присоединяемся
      if (_room.membership == Membership.invite) {
        await _room.join();
      }

      _matrixClient.addDirectEventListener(room.id, this);

      /// коллбэки ленты
      final roomTimelineEvents = await _matrixClient.getRoomTimelineEvents(
        _room,
        onUpdate: () {
          // that method mean any message changed
          if (isClosed || _timeline == null) {
            return;
          }
          add(
            TextRoomEvent.readMtx(
              messages: DlsMatrixClient.buildMessagesTree(
                _timeline!.events,
                threadMessageId: state.threadMessageId,
                excludeEventTypes: _excludeEventTypes,
              ),
            ),
          );
        },
        onChange: (int i) {
          if (isClosed || _timeline == null) {
            return;
          }
          final newEvent = _timeline?.events.tryGet(i);
          final lastReadDate =
              _matrixClient.getRoomMyLastReadDate(room!) ?? DateTime(1970);
          // mark as read:
          // - every edit as read by default
          // - unsupported messages also
          if (newEvent != null &&
              ((newEvent.relationshipType == RelationshipTypes.edit &&
                      newEvent.originServerTs.compareTo(lastReadDate) > 0) ||
                  !DlsMatrixClient.supportedEventTypes
                      .contains(newEvent.type))) {
            _room.setReadMarker(
              newEvent.eventId,
              mRead: newEvent.eventId,
            );
          }
          add(
            TextRoomEvent.readMtx(
              messages: DlsMatrixClient.buildMessagesTree(
                _timeline!.events,
                threadMessageId: state.threadMessageId,
                excludeEventTypes: _excludeEventTypes,
              ),
            ),
          );
        },
        onInsert: (int i) {
          if (isClosed || _timeline == null) {
            return;
          }
          final newEvent = _timeline?.events.tryGet(i);
          final lastReadDate =
              _matrixClient.getRoomMyLastReadDate(room!) ?? DateTime(1970);
          // mark as read:
          // - every edit as read by default
          // - unsupported messages also
          if (newEvent != null &&
              ((newEvent.relationshipType == RelationshipTypes.edit &&
                      newEvent.originServerTs.compareTo(lastReadDate) > 0) ||
                  !DlsMatrixClient.supportedEventTypes
                      .contains(newEvent.type))) {
            _room.setReadMarker(
              newEvent.eventId,
              mRead: newEvent.eventId,
            );
          }
        },
        onNewEvent: () {
          if (isClosed || _timeline == null) {
            return;
          }
        },
        onRemove: (int i) {
          if (isClosed || _timeline == null) {
            return;
          }

          add(
            TextRoomEvent.readMtx(
              messages: DlsMatrixClient.buildMessagesTree(
                _timeline!.events,
                threadMessageId: state.threadMessageId,
                excludeEventTypes: _excludeEventTypes,
              ),
            ),
          );
        },
      );

      _timeline = roomTimelineEvents.timeline;

      /// Matrix does not have any mechanism to notify about changed Room.accountData
      /// in that case we do that
      _updateReadMarkerTimer ??= Timer.periodic(
        const Duration(milliseconds: 5000),
        (timer) {
          add(const TextRoomEvent.updateReadMarkers());
        },
      );

      final messageTree = DlsMatrixClient.buildMessagesTree(
        _timeline!.events,
        threadMessageId: state.threadMessageId,
        excludeEventTypes: _excludeEventTypes,
      );
      if (!isClosed) {
        final roomEvent = _timeline!.events.firstWhereOrNull(
          (element) => element.eventId == state.threadMessageId,
        );

        DlsChatMessage? threadMessage;

        if (roomEvent != null) {
          threadMessage = DlsChatMessage.fromMatrixEvent(roomEvent);
        }

        add(
          TextRoomEvent.readMtx(
            messages: messageTree,
            threadMessage: threadMessage?.safeCast<DlsChatMessageText>(),
          ),
        );

        if (messageTree.length < Room.defaultHistoryCount) {
          add(const TextRoomEvent.requestHistory());
        }
      }
    } catch (e, stack) {
      AppDI.findRepository<DlsLogger>().errorPrinter(e, stack);
      emitter(state.copyWith(failure: 'Ошибка в работе чата: $e'));
    }
  }

  Future<void> _markEditMessage(
    _ChatMarkEditMessage inEvent,
    Emitter<TextRoomState> emitter,
  ) async {
    emitter(
      state.copyWith(
        markedEditMessage: inEvent.event,
      ),
    );
  }

  Future<void> _deleteEvent(
    _ChatDeleteEvent matrixEvent,
    Emitter<TextRoomState> emitter,
  ) async {
    for (final deleteEventId in matrixEvent.eventIds) {
      final messageEvent = _timeline?.events
          .firstWhereOrNull((e) => e.eventId == deleteEventId)
          ?.safeCast<DlsChatMessageText>();
      final attachments =
          messageEvent?.attachments ?? <DlsChatMessageAttachment>[];
      for (final attachment in attachments) {
        await _room.redactEvent(
          attachment.eventId,
          reason: S.current.chatMessageRemovedFromClient,
        );
      }
      await _room.redactEvent(
        deleteEventId,
        reason: S.current.chatMessageRemovedFromClient,
      );
    }
  }

  /// прикрепить к существующему в ленте событию файл
  Future<void> _addFileToEventMtx(
    _ChatAddFileToEvent event,
    Emitter<TextRoomState> emitter,
  ) async {
    // TODO(alexsh): _addFileToEventMtx
    AppDI.findRepository<DlsLogger>()
        .infoPrinter('[$runtimeType] roomId=${room.id} _addFileToEventMtx');
    /*await state.maybeWhen(
      orElse: () {},
      data: (events, transaction, keepIndex, jumped) async {
        if (event.evMtxBloc.state.event != null) {
          if (events[event.evMtxBloc.state.event!.content['part_of_event']] != null) {
            events[event.evMtxBloc.state.event!.content['part_of_event']]?.add(EvMtxEvent.addFile(event.evMtxBloc));
            emitter(TextRoomState.data(
              events: events,
              transaction: t,
              keepIndex: state.keepIndex,
              jumped: state.jumped,
            ));
          }
        }
      },
    );*/
  }

  Future<void> _sendMtx(
    _ChatSendMessage event,
    Emitter<TextRoomState> emitter,
  ) async {
    try {
      // simple chat message
      if ((event.plainMessage.isEmpty || event.formattedMessage.data.isEmpty) ||
          event.files.isEmpty) {
        /// отправка текстового сообщения
        /// если это комментарий то ставится ид сообщения которому он принадлежит
        final newEventId = await _matrixClient.sendMessage(
          roomId: _room.id,
          content: {
            'msgtype': MessageTypes.Text,
            'body': event.plainMessage,
            'formatted_body': event.formattedMessage.toJson(),
          },
          replyInThreadEventId: state.threadMessageId,

          /// сообщение редактируется если есть id
          editEventId: state.markedEditMessage?.eventId,
        );

        /// отправка файлов (картинки/видео)
        if (event.files.isNotEmpty) {
          /// формируем доп нагрузку необходимую для нашего клиента
          final extra = <String, dynamic>{
            /// сообщение является частю сообщения
            ///
            /// это ид предыдущено сообщения именно поэтому
            /// до этого отправлялось текстовое сообщение
            'part_of_event': newEventId,
          };

          for (final file in event.files) {
            if (file.data.isNotEmpty) {
              /// Camera record video:
              /// - Chrome/Firefox with 'webm' format
              /// - Safari with 'mp4' format
              /// And Matrix detects that wrong as 'audio/weba' for mimeType
              final mtxFile = MatrixFile(
                bytes: file.data,
                name: file.fileName ?? 'noname.none',
                mimeType: DlsPlatform.dlsPlatform == DlsPlatformType.web &&
                        (file.extension ?? '') == 'mp4'
                    ? 'video/mp4'
                    : null,
              );
              await _room.sendFileEvent(mtxFile, extraContent: extra);
            }
          }
        }
      }

      // forward message
      if (state.forwardMessages.isNotEmpty) {
        for (final msgForward in state.forwardMessages) {
          // TODO(alexsh): what to do with attachments?
          // user could forward old message stored in plainText field
          final forwardData = msgForward.formattedText?.data ??
              QuillEditorHelper.buildDocument(msgForward.plainText)
                  .toDelta()
                  .toJson()
                  .cast<Map<String, dynamic>>();
          final newForwardEventId = await _matrixClient.sendMessage(
            roomId: _room.id,
            content: {
              'msgtype': MessageTypes.Text,
              'body': msgForward.plainText,
              'formatted_body': DlsChatMessageContent.buildForwardContent(
                msgForward.senderId,
                msgForward.createdAt,
                forwardData,
              ),
            },
          );
        }
      }

      add(const TextRoomEvent.markEditMessage(null));
      add(const TextRoomEvent.cleanForwardMessages());
    } catch (e) {
      emitter(state.copyWith(failure: 'Ошибка в работе чата: $e'));
    }
  }

  Future<void> _leaveMtx(
    _ChatLeave event,
    Emitter<TextRoomState> emitter,
  ) async {
    try {
      if (!direct &&
          _room.canRedact &&
          _room.canChangePowerLevel &&
          _room.canBan &&
          _room.canKick) {
        final users = await _room.requestParticipants();
        emitter(
          state.copyWith(
            loading: true,
            events: [],
          ),
        );
        for (final u in users) {
          if (u.id != _matrixClient.myId) {
            try {
              await _room.kick(u.id);
            } catch (e) {
              AppDI.findRepository<DlsLogger>()
                  .errorPrinter('вероятно недостаточно прав $e');
            }
          }
        }
      }
      await _room.leave();
      await _room.forget();
      event.callback(true);
    } catch (e) {
      AppDI.findRepository<DlsLogger>().errorPrinter(e);
      emitter(state.copyWith(failure: 'Ошибка в работе чата: $e'));
    }
  }

  Future<void> _enableNotifications(
    _ChatEnableNotifications event,
    Emitter<TextRoomState> emitter,
  ) async {
    try {
      if (event.enable) {
        await _room.setPushRuleState(PushRuleState.notify);
      } else {
        await _room.setPushRuleState(PushRuleState.dontNotify);
      }
      await _matrixClient.client.sync();
      AppDI.findRepository<DlsLogger>().infoPrinter(_room.pushRuleState);
      emitter(state.copyWith(transaction: getRandomString));
    } catch (e) {
      AppDI.findRepository<DlsLogger>().errorPrinter(e);
      emitter(state.copyWith(failure: 'Ошибка в работе чата: $e'));
    }
  }

  Future<void> _messageListScrollChanged(
    _ChatMessageListScroll event,
    Emitter<TextRoomState> emitter,
  ) async {
    try {
      // нужно помнить: лента сообщений собрана по убыванию
      // а сам список отображает инверсию, потому сюда приходят натуральные
      // значения индексов сообщений в этом списке

      // находим последнее прочитанное сообщение в ленте
      // чтобы далее работать от его даты и выбирать более новые сообщения
      final room = _matrixClient.client.getRoomById(id);
      final myLastReadDate = _matrixClient.getRoomMyLastReadDate(room!);

      // последнее прочитанное сообщение не найдено в ленте
      // ставим маркер на самое ближнее из предоставленного списка
      DlsChatMessage? lastUnreadEvent;
      if (myLastReadDate == null) {
        // выбираем самый ближайший к концу индекс сообщения
        lastUnreadEvent = state.events.tryGet(event.itemIndexes.min);
      } else {
        // ищем индекс сообщения который по дате самый старший с учетом даты
        // последнего сообщения установленного в данной комнате
        lastUnreadEvent = event.itemIndexes.fold<DlsChatMessage?>(
          null,
          (prevEvent, nextIndex) {
            DlsChatMessage? resultEvent;
            final nextMessage = state.events.tryGet(nextIndex);
            // Exclude [DlsChatMessageDateMarker] because it's our handmade event
            if (nextMessage != null &&
                nextMessage.type != DlsChatMessageType.date) {
              if (nextMessage.createdAt.compareTo(myLastReadDate) > 0) {
                final nextTextMessage =
                    nextMessage.safeCast<DlsChatMessageText>();
                if (nextTextMessage == null) {
                  resultEvent = nextMessage;
                } else {
                  // we need to check attachments because it's also messages
                  if (nextTextMessage.attachments.isEmpty) {
                    resultEvent = nextMessage;
                  } else {
                    resultEvent = (nextTextMessage.attachments.toList()
                          ..sort((a, b) => b.createdAt.compareTo(a.createdAt)))
                        .first;
                  }
                }
              }
            }

            if (resultEvent != null && prevEvent != null) {
              if (resultEvent.createdAt.compareTo(prevEvent.createdAt) < 0) {
                resultEvent = prevEvent;
              }
            }

            return resultEvent;
          },
        );
      }

      var lastUnreadEventId = lastUnreadEvent?.eventId ?? '';

      // after extract [lastUnreadEventId] we still can have absent event, in that
      // case try to get events from Timeline after [myLastReadDate]
      if (lastUnreadEventId.isEmpty && myLastReadDate != null) {
        lastUnreadEventId = _timeline?.events
                .where((e) => e.originServerTs.compareTo(myLastReadDate) >= 0)
                .firstOrNull
                ?.eventId ??
            '';
      }

      if (lastUnreadEventId.isNotEmpty) {
        await _room.setReadMarker(
          lastUnreadEventId,
          mRead: lastUnreadEventId,
        );
        Future<void>.delayed(const Duration(seconds: 3), () {
          if (!isClosed) {
            add(
              TextRoomEvent.readMtx(
                messages: state.events,
                lastReadEventId: lastUnreadEventId,
              ),
            );
          }
        });
      }

      // проверяем позицию скрола пользователем, и если он доскролил до самого верха
      // догрузить еще сообщения
      // нужно сохранить позицию скрола?
      final lastItemIndex = event.itemIndexes.max;
      if (lastItemIndex == state.events.length - 1) {
        add(const TextRoomEvent.requestHistory());
      }
    } catch (error, stack) {
      AppDI.findRepository<DlsLogger>().errorPrinter(error, stack);
    }
  }

  Future<void> _updateReadMarkers(
    _ChatUpdateReadMarkers event,
    Emitter<TextRoomState> emitter,
  ) async {
    final room = _matrixClient.client.getRoomById(_room.id)!;
    final oldReadMarkers = state.readMarkers;
    final newReadMarkers = _matrixClient.getRoomReadMarkers(room);
    final hasChanges = newReadMarkers.any(
      (n) {
        final old =
            oldReadMarkers.firstWhereOrNull((o) => o.userId == n.userId);
        if (old == null) {
          return true;
        }
        return old.eventId != n.eventId ||
            old.timestamp.compareTo(n.timestamp) != 0;
      },
    );
    if (hasChanges) {
      emitter(
        state.copyWith(
          readMarkers: newReadMarkers,
          markedEditMessage: state.markedEditMessage,
        ),
      );
    }
  }

  Future<void> _changeSelectMessage(
    _ChangeSelectMessage event,
    Emitter<TextRoomState> emitter,
  ) async {
    final selectedMessages = state.selectedMessages.toList();
    final existMessage =
        selectedMessages.any((e) => e.eventId == event.message.eventId);
    if (existMessage) {
      selectedMessages.removeWhere((e) => e.eventId == event.message.eventId);
    } else {
      selectedMessages.add(event.message);
    }
    emitter(
      state.copyWith(
        selectedMessages: selectedMessages,
        modeType: selectedMessages.isEmpty
            ? ChatModeType.chatModeTypeList
            : ChatModeType.chatModeTypeSelect,
      ),
    );
  }

  Future<void> _cleanSelectedMessages(
    _CleanSelectedMessages event,
    Emitter<TextRoomState> emitter,
  ) async {
    emitter(
      state.copyWith(
        selectedMessages: [],
        modeType: ChatModeType.chatModeTypeList,
      ),
    );
  }

  Future<void> _cleanForwardMessages(
    _CleanForwardMessages event,
    Emitter<TextRoomState> emitter,
  ) async {
    emitter(
      state.copyWith(
        forwardMessages: [],
      ),
    );
  }
}
