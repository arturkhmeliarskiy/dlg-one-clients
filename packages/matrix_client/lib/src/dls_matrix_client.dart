// ignore_for_file: cascade_invocations

import 'dart:async';

import 'package:collection/collection.dart';
import 'package:dls_matrix_client/dls_matrix_client.dart';
import 'package:matrix/matrix.dart';

/// {@template matrix}
/// Matrix chat package
/// {@endtemplate}
class DlsMatrixClient {
  /// {@macro matrix}
  DlsMatrixClient({
    required String matrixServer,
    required String signalUrl,
    required String databasePath,
    required String appId,
    required String matrixClientName,
    required String pusherName,
  })  : _matrixServer = matrixServer,
        _signalUrl = signalUrl,
        _databasePath = databasePath,
        _appId = appId,
        _matrixClientName = matrixClientName,
        _pusherName = pusherName;

  final String _matrixServer;
  final String _signalUrl;
  final String _databasePath;
  final String _appId;
  final String _matrixClientName;
  final String _pusherName;

  // Global event listeners where we put all events related to Matrix
  final _eventListeners = <MatrixEventListener>[];

  // Direct event listeners where we put events related to specific RoomId
  // Here can be stored many listeners for one RoomId
  final _directEventListeners = <String, List<MatrixEventListener>>{};
  Client? _matrixClient;
  StreamSubscription<Event>? _roomStatesSubscription;
  StreamSubscription<SyncUpdate>? _syncUpdateSubscription;
  StreamSubscription<EventUpdate>? _eventUpdateSubscription;
  StreamSubscription<CachedPresence>? _onPresenceChangedSubscription;
  StreamSubscription<SyncStatusUpdate>? _onSyncStatusUpdateSubscription;
  StreamSubscription<BasicEvent>? _onAccountDataSubscription;

  String? get myId => _matrixClient?.userID;

  bool get isLoggedIn => _matrixClient?.isLogged() ?? false;

  Uri? get homeServer => _matrixClient?.homeserver;

  Client get client => _matrixClient!;

  String get matrixServerName => Uri.parse(_matrixServer).host;

  List<Room> get rooms {
    final rooms = (_matrixClient?.rooms.toList() ?? [])
      ..sort((a, b) => b.timeCreated.compareTo(a.timeCreated));
    return rooms
        .where(
          (element) =>
              element.membership == Membership.join ||
              element.membership == Membership.invite,
        )
        .toList();
  }

  List<Room> get privateRooms {
    return rooms.where((e) => e.isDirectChat).toList();
  }

  List<Room> get publicRooms {
    return rooms.where((e) => !e.isDirectChat).toList();
  }

  int get publicRoomsTotalUnread {
    return publicRooms.map((e) => e.notificationCount).sum;
  }

  int get privateRoomsTotalUnread {
    return privateRooms.map((e) => e.notificationCount).sum;
  }

  static final supportedEventTypes = [
    EventTypes.Message,
    // EventTypes.RoomCreate,
    EventTypes.RoomMember, // пригласили участника, изменилось имя
    // EventTypes.RoomName,
    // EventTypes.RoomAvatar,
    DlsEventTypes.CallStart,
    DlsEventTypes.CallEnd,
    DlsEventTypes.CallJoin,
    DlsEventTypes.CallLeave,
  ];

  void init({
    required bool isWeb,
    required bool isDebugMode,
  }) {
    _matrixClient = _getMatrixClient(
      isWeb: isWeb,
      isDebugMode: isDebugMode,
    );
    _matrixClient?.init();
    _roomStatesSubscription = _matrixClient?.onRoomState.stream.listen((event) {
      /// Store and send listeners that events
      for (final listener in _eventListeners) {
        listener.onMatrixRoomState(event);
      }
      _directEventListeners[event.room.id]?.forEach((e) {
        e.onMatrixRoomState(event);
      });
    });
    _syncUpdateSubscription = _matrixClient?.onSync.stream.listen((event) {
      /// Store and send listeners that events
      for (final listener in _eventListeners) {
        listener.onMatrixSyncUpdate(event);
      }
    });
    _eventUpdateSubscription = _matrixClient?.onEvent.stream.listen((event) {
      for (final listener in _eventListeners) {
        listener.onMatrixEventUpdate(event);
      }
      if (event.type == EventUpdateType.timeline) {
        try {
          if (_directEventListeners.containsKey(event.roomID)) {
            final tmpEvent = event.content.copy();
            tmpEvent['room_id'] = event.roomID;
            final newEvent = Event.fromMatrixEvent(
              MatrixEvent.fromJson(tmpEvent),
              client.getRoomById(event.roomID)!,
            );
            _directEventListeners[event.roomID]?.forEach((e) {
              e.onMatrixRoomState(newEvent);
            });
          }
        } catch (_) {
          // ignored
        }
      }
      _onPresenceChangedSubscription =
          _matrixClient?.onPresenceChanged.stream.listen((event) {
        for (final listener in _eventListeners) {
          listener.onMatrixPresenceChanged(event);
        }
        for (final room in rooms) {
          _directEventListeners[room.id]?.forEach((e) {
            e.onMatrixPresenceChanged(event);
          });
        }
      });
    });
    _onSyncStatusUpdateSubscription =
        _matrixClient?.onSyncStatus.stream.listen((event) {
      for (final listener in _eventListeners) {
        listener.onMatrixSyncStatusUpdate(event);
      }
    });
    _onAccountDataSubscription =
        _matrixClient?.onAccountData.stream.listen((event) {
      for (final listener in _eventListeners) {
        listener.onMatrixAccountData(event);
      }
    });
  }

  /// проверить являюсь ли я админом чата
  bool isMeAdminOfChat(String chatId) {
    if (myId != null) {
      for (var i = 0; i < rooms.length; ++i) {
        if (rooms[i].id == chatId) {
          return rooms[i].getPowerLevelByUserId(myId!) >=
              ChatGroupAccess.admin.value;
        }
      }
    }
    return false;
  }

  /// проверить являюсь ли я владельцем чата
  bool isMeOwnerOfChat(String chatId) {
    if (myId != null) {
      for (var i = 0; i < rooms.length; ++i) {
        if (rooms[i].id == chatId) {
          return rooms[i].getPowerLevelByUserId(myId!) ==
              ChatGroupAccess.owner.value;
        }
      }
    }
    return false;
  }

  /// After success login do outside:
  /// - SetupPusher
  /// - StartSync
  Future<bool> login({
    required String userId,
    required String userName,
    required String matrixPassword,
    required String matrixDeviceName,
  }) async {
    try {
      await _matrixClient?.checkHomeserver(Uri.parse(_matrixServer));

      if (true == _matrixClient?.isLogged()) {
        return true;
      } else {
        await _matrixClient?.login(
          LoginType.mLoginPassword,
          identifier: AuthenticationUserIdentifier(user: userId),
          password: matrixPassword,
          deviceId: matrixDeviceName,
          initialDeviceDisplayName: userName,
        );
        return true;
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<void> logout() {
    return Future.value(_matrixClient?.logout());
  }

  @Deprecated(
      'надо уточнить у Максима как он шлет сообщения и если он не использует пушер, то удалить это')
  Future<void> setupPusher({
    required String deviceName,
    String? pushToken,
  }) async {
    final pushers = await _matrixClient?.getPushers();
    for (final pusher in pushers!) {
      await _matrixClient?.deletePusher(pusher);
    }

    final pusher = Pusher(
      appId: _appId,
      pushkey: pushToken ?? '',
      appDisplayName: _pusherName,
      data: PusherData(
        url: Uri.tryParse(_signalUrl),

        /// если выбрать формат event_id_only то будут передаваться только id
        // format: "event_id_only",
        /// если выбрать формат default_payload то будет передаваться текст сообщения!
        format: 'default_payload',
      ),
      deviceDisplayName: deviceName,
      kind: 'http',
      lang: 'en',
    );
    await _matrixClient?.postPusher(pusher);
    if (pushers.isNotEmpty) {
      await _matrixClient?.setPushRuleEnabled(
          'global', PushRuleKind.override, '.m.rule.master', false);
      await _matrixClient?.setPushRuleActions(
        'global',
        PushRuleKind.override,
        '.m.rule.master',
        <dynamic>[
          'notify',
          {'set_tweak': 'sound', 'value': 'default'},
        ],
      );
    }
  }

  /// отправить "я печатаю в комнату"
  void userTyping(String roomId) {
    client.setTyping(myId!, roomId, true, timeout: 1);
  }

  String generateTrxId() {
    return client.generateUniqueTransactionId();
  }

  /// Send message with possibility to reply in thread to specific event.id
  Future<String> sendMessage({
    required String roomId,
    required Map<String, dynamic> content,
    String? replyInThreadEventId,
    String? editEventId,
  }) {
    if (replyInThreadEventId != null) {
      content['m.relates_to'] = {
        'rel_type': 'm.thread',
        'event_id': replyInThreadEventId,
        'is_falling_back': true,
        'm.in_reply_to': {
          'event_id': replyInThreadEventId,
        }
      };
    }
    if (editEventId != null) {
      content['m.new_content'] = content.copy();
      content['m.relates_to'] = {
        'event_id': editEventId,
        'rel_type': RelationshipTypes.edit,
      };
    }
    return client.sendMessage(
      roomId,
      EventTypes.Message,
      client.generateUniqueTransactionId(),
      content,
    );
  }

  /// Read room timeline events and build tree of [DlsChatMessage]
  ///
  /// Return [RoomTimelineEvents] with [Timeline] themself and tree of [DlsChatMessage]
  Future<RoomTimelineEvents> getRoomTimelineEvents(
    Room room, {
    void Function(int index)? onChange,
    void Function(int index)? onRemove,
    void Function(int insertID)? onInsert,
    void Function()? onNewEvent,
    void Function()? onUpdate,
  }) async {
    final timeline = await room.getTimeline(
      onChange: onChange,
      onRemove: onRemove,
      onInsert: onInsert,
      onNewEvent: onNewEvent,
      onUpdate: onUpdate,
    );

    return RoomTimelineEvents(
      timeline: timeline,
      messages: timeline.events,
    );
  }

  static List<DlsChatMessage> _prepareMessageTree(
    List<Event> events, {
    List<String> excludeEventTypes = const [],
  }) {
    final result = <DlsChatMessage>[];
    final supportedEventTypes = DlsMatrixClient.supportedEventTypes.toList()
      ..removeWhere(
        (e) => excludeEventTypes.contains(e),
      );
    // sort by creation date, newest messages first
    events.sort((a, b) => b.originServerTs.compareTo(a.originServerTs));
    // we should process messages from old to new in case of make
    // actions with edits/deletions
    for (var i = events.length - 1; i >= 0; i--) {
      final event = events[i];
      if (supportedEventTypes.contains(event.type)) {
        if (event.redacted) {
          final foundMessage = result.firstWhereOrNull(
            (e) => e.eventId == event.eventId,
          );
          if (foundMessage != null) {
            result.removeWhere((e) => e.eventId == foundMessage.eventId);
            result.add(
              (foundMessage as DlsChatMessageText).copyWith(
                deletedAt: event.redactedBecause?.originServerTs,
              ),
            );
          } else {
            final newMessage =
                DlsChatMessage.fromMatrixEvent(event) as DlsChatMessageText;
            result.add(
              newMessage.copyWith(
                deletedAt: event.redactedBecause?.originServerTs,
              ),
            );
          }
        } else if (event.relationshipType == RelationshipTypes.edit) {
          final foundMessage = result.firstWhereOrNull(
            (e) => e.eventId == event.relationshipEventId,
          );
          final messageAsText =
              foundMessage is DlsChatMessageText ? foundMessage : null;
          if (messageAsText != null) {
            if (messageAsText.updatedAt == null ||
                (messageAsText.updatedAt != null &&
                    event.originServerTs.compareTo(messageAsText.updatedAt!) >
                        0)) {
              result.removeWhere((e) => e.eventId == messageAsText.eventId);
              messageAsText.event!.content['body'] =
                  event.content['m.new_content']['body'];
              messageAsText.event!.content['formatted_body'] =
                  event.content['m.new_content']['formatted_body'];
              result.add(
                messageAsText.copyWith(
                  updatedAt: event.originServerTs,
                ),
              );
            }
          }
        } else {
          result.add(
            DlsChatMessage.fromMatrixEvent(event),
          );
        }
      }
    }
    return result;
  }

  static List<DlsChatMessage> buildMessagesTree(
    List<Event> events, {
    List<String> excludeEventTypes = const [],
    String? threadMessageId,
  }) {
    /// Прямой список сообщений из которого сделаем далее дерево
    /// берем только сообщения и звонки
    final messagesTree = <DateTime, List<DlsChatMessage>>{};
    final attachments = <DlsChatMessageAttachment>[];
    final commentsFeed = <DlsChatMessageText>[];

    final preparedEvents = _prepareMessageTree(
      events.toList(),
      excludeEventTypes: excludeEventTypes,
    );

    for (var i = 0; i < preparedEvents.length; i++) {
      final newMessage = preparedEvents[i];
      final msgDate = DateTime(
        newMessage.createdAt.year,
        newMessage.createdAt.month,
        newMessage.createdAt.day,
      );
      if (newMessage is DlsChatMessageAttachment) {
        attachments.add(newMessage);
      } else if (threadMessageId != null) {
        if (newMessage.relatedEventId == threadMessageId) {
          messagesTree[msgDate] = (messagesTree[msgDate] ?? [])
            ..add(newMessage);
        }
      } else if (newMessage is DlsChatMessageText &&
          newMessage.relatedType == DlsChatMessageRelationType.replyInThread) {
        commentsFeed.add(newMessage);
      } else {
        messagesTree[msgDate] = (messagesTree[msgDate] ?? [])..add(newMessage);
      }
    }

    /// собираем ленту с выставлением дат
    final result = messagesTree.entries.fold<List<DlsChatMessage>>(
      [],
      (previousValue, element) {
        final lowestMsg = element.value.reduce((a, b) {
          if (a.createdAt.compareTo(b.createdAt) <= 0) {
            return a;
          }
          return b;
        });
        final dateMarker = DlsChatMessageDateMarker(
          createdAt: lowestMsg.createdAt.subtract(
            const Duration(milliseconds: 1),
          ),
        );
        return previousValue
          ..add(dateMarker)
          ..addAll(element.value);
      },
    );

    /// Раскладываем файлы по сообщениям
    if (attachments.isNotEmpty) {
      for (var i = attachments.length - 1; i >= 0; i--) {
        final attachment = attachments.removeLast();

        /// могут быть частью общей ленты
        for (var j = 0; j < result.length; j++) {
          if (result[j].eventId == attachment.partOfEventId &&
              result[j] is DlsChatMessageText) {
            final item = result[j] as DlsChatMessageText;
            result[j] = item.copyWith(
              attachments: [...item.attachments, attachment],
            );
          }
        }

        /// могут быть частью комментариев
        for (var j = 0; j < commentsFeed.length; j++) {
          if (commentsFeed[j].eventId == attachment.partOfEventId) {
            commentsFeed[j] = commentsFeed[j].copyWith(
              attachments: [...commentsFeed[j].attachments, attachment],
            );
          }
        }
      }
    }

    /// Раскладываем комментарии
    if (commentsFeed.isNotEmpty) {
      for (var i = commentsFeed.length - 1; i >= 0; i--) {
        final comment = commentsFeed.removeLast();
        for (var j = 0; j < result.length; j++) {
          if (result[j].eventId == comment.relatedEventId &&
              result[j] is DlsChatMessageText) {
            final item = result[j] as DlsChatMessageText;
            result[j] = item.copyWith(
              comments: [...item.comments, comment],
            );
          }
        }
      }
    }

    return sortMessageFeed(result);
  }

  static List<DlsChatMessage> sortMessageFeed(List<DlsChatMessage> feed) {
    return feed.toList()
      ..sort(
        (e1, e2) => e2.createdAt.compareTo(e1.createdAt),
      );
  }

  List<RoomReadMarker> getRoomReadMarkers(Room room) {
    final result = <RoomReadMarker>[];
    try {
      final receipts = room.roomAccountData['m.receipt']?.content.entries ?? [];
      for (final receipt in receipts) {
        final userId = receipt.key;
        final readMarker = receipt.value as Map<String, dynamic>;
        final eventId = readMarker['event_id']?.toString() ?? '';
        final timestamp =
            int.tryParse(readMarker['ts']?.toString() ?? '-1') ?? -1;
        if (userId.isNotEmpty && eventId.isNotEmpty && timestamp > 0) {
          result.add(
            RoomReadMarker(
              userId: userId,
              eventId: eventId,
              timestamp: DateTime.fromMillisecondsSinceEpoch(timestamp),
            ),
          );
        }
      }
    } catch (_) {
      // ignore
    }
    return result;
  }

  Future<DlsChatMessage?> getRoomLastMessage(String roomId) async {
    final room = _matrixClient?.getRoomById(roomId);
    if (room == null) {
      return Future.value();
    }
    final dbMessages =
        await _matrixClient!.database?.getEventList(room, limit: 60) ?? [];
    final supportedMessages = dbMessages
        .where(
          (e) =>
              e.type == EventTypes.Message &&
              e.relationshipType != RelationshipTypes.reply &&
              (e.messageType == MessageTypes.Text ||
                  e.messageType == MessageTypes.File ||
                  e.messageType == MessageTypes.Audio ||
                  e.messageType == MessageTypes.Video ||
                  e.messageType == MessageTypes.Image),
        )
        .toList();
    if (supportedMessages.isEmpty) {
      return Future.value();
    }
    return DlsChatMessage.fromMatrixEvent(supportedMessages.first);
  }

  DateTime? getRoomMyLastReadDate(Room room) {
    return getRoomReadMarkers(room)
        .firstWhereOrNull((e) => e.userId == myId)
        ?.timestamp;
  }

  void addEventListener(MatrixEventListener listener) {
    _eventListeners.add(listener);
  }

  void removeEventListener(MatrixEventListener listener) {
    _eventListeners.remove(listener);
  }

  void cleanEventListeners() {
    _eventListeners.clear();
  }

  void addDirectEventListener(
    String roomId,
    MatrixEventListener listener,
  ) {
    final prev = _directEventListeners[roomId] ?? [];
    _directEventListeners[roomId] = prev..add(listener);
  }

  void removeDirectEventListener(
    String roomId,
    MatrixEventListener listener,
  ) {
    final prev = _directEventListeners[roomId] ?? [];
    _directEventListeners[roomId] = prev..remove(listener);
  }

  void cleanDirectEventListeners() {
    _directEventListeners.clear();
  }

  Future<void> close() async {
    cleanEventListeners();
    cleanDirectEventListeners();
    await _matrixClient?.abortSync();
    await _eventUpdateSubscription?.cancel();
    _eventUpdateSubscription = null;
    await _syncUpdateSubscription?.cancel();
    _syncUpdateSubscription = null;
    await _roomStatesSubscription?.cancel();
    _roomStatesSubscription = null;
    await _onPresenceChangedSubscription?.cancel();
    _onPresenceChangedSubscription = null;
    await _onSyncStatusUpdateSubscription?.cancel();
    _onSyncStatusUpdateSubscription = null;
    await _onAccountDataSubscription?.cancel();
    _onAccountDataSubscription = null;
    _matrixClient = null;
  }

  Client _getMatrixClient({
    required bool isWeb,
    required bool isDebugMode,
  }) {
    return Client(
      _matrixClientName,
      databaseBuilder: (Client client) async {
        if (isWeb) {
          final db = HiveCollectionsDatabase(client.clientName, null);
          await db.open();
          return db;
        }
        final db = HiveCollectionsDatabase(
          client.clientName,
          _databasePath,
        );
        await db.open();
        return db;
      },
      logLevel: isDebugMode ? Level.verbose : Level.error,
      supportedLoginTypes: {
        AuthenticationTypes.token,
        AuthenticationTypes.password,
      },
    );
  }
}
