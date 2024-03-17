// ignore_for_file: cascade_invocations

import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:dls_matrix_client/dls_matrix_client.dart';
import 'package:dls_one/app/router/app_router.dart';
import 'package:dls_one/const/enums.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/features/home/presentation/bloc/global_chat_bloc.dart';
import 'package:dls_one/features/textroom/textroom.dart';
import 'package:dls_one/utils/utils.dart';
import 'package:dls_one/web/chat/chat_manager/chat_manager.dart';
import 'package:dls_one/web/sip/sip.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_keyboard_size/flutter_keyboard_size.dart';
import 'package:flutter_quill/flutter_quill.dart' as quill;
import 'package:matrix/matrix.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

@RoutePage()
class MobileTextRoomWrapperPage extends StatelessWidget {
  const MobileTextRoomWrapperPage({
    @pathParam required this.chatId,
    @pathParam required this.server,
    this.forwardMessages = const [],
    @pathParam this.threadMessageId,
    super.key,
  });

  final String chatId;
  final String server;
  final String? threadMessageId;
  final List<DlsChatMessageText> forwardMessages;

  @override
  Widget build(BuildContext context) {
    final chatId = '${this.chatId}:$server';
    return MultiBlocProvider(
      key: Key(
        'MobileTextRoomPageWrapper_MultiBlocProvider_${chatId}_$threadMessageId',
      ),
      providers: [
        BlocProvider<TextRoomBloc>(
          create: (context) => TextRoomBloc(
            roomOrUserId: chatId,
            threadMessageId: threadMessageId,
            matrixClient: context.read<DlsMatrixClient>(),
            users: context.read<UsersBloc>(),
            forwardMessages: forwardMessages,
          ),
        ),
        BlocProvider<UserTypingBloc>(
          create: (context) => UserTypingBloc(
            id: chatId,
            users: context.read<UsersBloc>(),
            matrixClient: context.read<DlsMatrixClient>(),
          ),
        ),
        BlocProvider<CameraBloc>(
          create: (context) => CameraBloc(),
        ),
        BlocProvider<ChatInputBloc>(
          create: (context) {
            return ChatInputBloc(
              ChatInputState.hasPayload(
                atShowing: false,
                emojiShowing: false,
                formatterShowing: false,
                isRecording: false,
                recorderType: RecorderType.audio,
                message: quill.Document(),
                files: [],
              ),
            );
          },
        ),
        BlocProvider<AtSearchBloc>(
          create: (context) => AtSearchBloc(
            matrixClient: context.read<DlsMatrixClient>(),
            users: context.read<UsersBloc>(),
            chatId: context.read<TextRoomBloc>().id,
          ),
        ),
        BlocProvider<ChatManagerBloc>(
          create: (context) => ChatManagerBloc(
            matrixClient: context.read<DlsMatrixClient>(),
          ),
        ),
      ],
      child: MobileTextRoomPage._(chatId: chatId),
    );
  }
}

///экран чата и комментариев
class MobileTextRoomPage extends StatefulWidget {
  /// constructor
  const MobileTextRoomPage._({
    required this.chatId,
  });

  final String chatId;

  @override
  State<MobileTextRoomPage> createState() => _MobileTextRoomPageState();
}

class _MobileTextRoomPageState extends State<MobileTextRoomPage> {
  final _itemScrollController = ItemScrollController();
  final _itemPositionsListener = ItemPositionsListener.create();
  final _inputController = quill.QuillController.basic();
  final _messageQuoteController = quill.QuillController.basic();
  final _chatInputChatKey = GlobalKey();
  double _keyboardHeight = 150;

  @override
  void dispose() {
    _inputController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<ChatManagerBloc, ChatManagerState>(
      listener: (context, state) {
        state.whenOrNull(
          message: (message) => showDLSDialog(
            context,
            null,
            message,
            width: 200.w,
            onlyYesButton: true,
            yesButtonLabel: S.current.ok,
          ),
          notEnoughRights: (transaction) => showDLSDialog(
            context,
            S.current.error,
            S.current.notEnoughRights,
            width: S.current.notEnoughRights.length * 10,
            onlyYesButton: true,
            yesButtonLabel: S.current.ok,
          ),
          leftChat: (transaction) =>
              AutoRouter.of(context).navigate(const HomeRoute()),
        );
      },
      listenWhen: (previous, current) {
        return current.maybeWhen(
          orElse: () => false,
          message: (cur) {
            return previous.maybeWhen(
              orElse: () => true,
              message: (prev) => cur != prev,
            );
          },
          notEnoughRights: (cur) {
            return previous.maybeWhen(
              orElse: () => true,
              notEnoughRights: (prev) => cur != prev,
            );
          },
          leftChat: (transaction) => true,
        );
      },
      child: BlocBuilder<TextRoomBloc, TextRoomState>(
        builder: (context, state) {
          if (state.loading) {
            return Scaffold(body: DLSPreloader.newDLS);
          }
          if (state.failure != null) {
            return DlsFailure(
              onTap: context.back,
              message: state.failure!,
            );
          }
          return WillPopScope(
            onWillPop: () {
              return Future.value(!state.loading);
            },
            child: KeyboardSizeProvider(
              child: Stack(
                children: [
                  Scaffold(
                    backgroundColor: context.c_white_text,

                    /// скрываем appbar если включили камеру
                    appBar: _buildMobileAppBar(state),

                    body: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CallBarBuilder.builder(
                          chatId: context.read<TextRoomBloc>().id,
                          onTapBar: (chatId) => _call(
                            audioMuted: false,
                            videoMuted: false,
                            chatId: chatId,
                          ),
                        ),
                        Expanded(
                          child: BlocBuilder<TextRoomBloc, TextRoomState>(
                            builder: (context, state) {
                              final textRoomBloc = context.read<TextRoomBloc>();
                              return TextRoomMessageList(
                                matrixUserId: textRoomBloc.matrixUserId,
                                messages: state.events,
                                readMarkers: state.readMarkers,
                                selectedMessageIds: state.selectedMessages
                                    .map((e) => e.eventId)
                                    .toList(),
                                isSelectMode: state.modeType ==
                                    ChatModeType.chatModeTypeSelect,
                                threadMessage: state.threadMessage,
                                lastReadMessageId: state.lastReadEventId,
                                isDirectChat: context
                                    .read<TextRoomBloc>()
                                    .room
                                    .isDirectChat,
                                scrollController: _itemScrollController,
                                positionsListener: _itemPositionsListener,
                                onMessageScrollChanged:
                                    _onMessageListScrollChanged,
                                onForwardMessage: _onForwardSingleMessage,
                                onShowMessageComments: _onOpenMessageComments,
                                onMessageQuote: _onMessageQuote,
                                onMarkEditMessage: _onMarkEditMessage,
                                onDeleteMessage: _onDeleteMessage,
                                onSelectMessage: _onSelectMessage,
                              );
                            },
                          ),
                        ),

                        /// поле ввода
                        _input(),
                      ],
                    ),
                  ),

                  /// слой поиска пользователей
                  _atSearch(state),
                  Positioned(
                    left: 0,
                    top: 0,
                    right: 0,
                    bottom: 50.h,
                    child: CameraLayout(
                      onCapturedFile: (file) {
                        context.read<ChatInputBloc>().add(
                              ChatInputEvent.attachFiles(
                                files: [file],
                              ),
                            );
                        context
                            .read<CameraBloc>()
                            .add(const CameraEvent.cameraCleanUp());
                      },
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Future<void> _call({
    required bool audioMuted,
    required bool videoMuted,
    required String chatId,
  }) async {
    final isCameraAccessGranted =
        (await Permission.camera.status) == PermissionStatus.granted;
    final isMicAccessGranted =
        (await Permission.microphone.status) == PermissionStatus.granted;
    if (!isCameraAccessGranted || !isMicAccessGranted) {
      // ignore: use_build_context_synchronously
      final ans = await showDLSDialog(
        context,
        S.current.grantingAccess,
        !isCameraAccessGranted && !isMicAccessGranted
            ? S.current.grantingAccessMicOrCameraQuestion
            : !isCameraAccessGranted
                ? S.current.grantingAccessCameraQuestion
                : S.current.grantingAccessMicQuestion,
      );
      if (ans?.value ?? false) {
        await openAppSettings();
      }
    } else {
      if (DlsPlatform.dlsPlatform == DlsPlatformType.mobile) {
        await hideKeyboard();
      }
      // ignore: use_build_context_synchronously
      final sipBloc = context.read<SipBloc>();
      await sipBloc.state.maybeMap(
        idle: (_) async {
          sipBloc.add(SipEvent.doCall(chatId, videoMuted));
          await context.pushRoute(const CallRoute());
        },
        orElse: () async {
          await showDLSDialog(
            context,
            null,
            S.current.nowYouInCall,
            onlyYesButton: true,
            yesButtonLabel: S.current.ok,
          );
        },
      );
    }
  }

  Future<void> _onHangupTap() async {
    final sipBloc = context.read<SipBloc>();
    sipBloc.add(const SipEvent.forceHangUp());
  }

  PreferredSizeWidget _buildMobileAppBar(
    TextRoomState state,
  ) {
    final textRoomBloc = context.read<TextRoomBloc>();
    if (state.selectedMessages.isNotEmpty) {
      return MobileChatSelectedMessageAppBar(
        currentUserId: textRoomBloc.matrixUserId,
        selectedMessages: state.selectedMessages,
        onCleanSelected: _onCleanSelectedMessages,
        onForwardTap: _onForwardSelectedMessages,
        onBookmarkTap: _onBookmarkSelectedMessages,
        onRemoveTap: _onRemoveSelectedMessages,
      );
    }
    if (textRoomBloc.state.threadMessage != null) {
      return MobileChatCommentsAppBar(
        userId: textRoomBloc.state.threadMessage!.senderId,
        onTapBack: () => context.popRoute(),
      );
    } else if (!textRoomBloc.room.isDirectChat) {
      return MobileGroupChatAppBar(
        onHangupTap: _onHangupTap,
        chatId: textRoomBloc.room.id,
        onTapBack: () => context.popRoute(),
        onTapCall: () => _call(
          audioMuted: false,
          videoMuted: false,
          chatId: context.read<TextRoomBloc>().id,
        ),
        onMenuItemSelected: (p0) {
          switch (p0) {
            case PopupMenuItems.exit:
              _exitGroup();
              break;
            case PopupMenuItems.showInfo:
              context.pushRoute(
                ChatInformationRootRoute(
                  children: [
                    MobileChatInformationRoute(
                      chatId: textRoomBloc.id,
                    ),
                  ],
                ),
              );
              break;
            case PopupMenuItems.videoCall:
              hideKeyboard();
              _call(
                audioMuted: false,
                videoMuted: false,
                chatId: context.read<TextRoomBloc>().id,
              );
              break;
            case PopupMenuItems.mute:
              context.read<TextRoomBloc>().add(
                    TextRoomEvent.enableNotifications(
                      enable: textRoomBloc.room.pushRuleState !=
                          PushRuleState.notify,
                    ),
                  );
              break;
            case PopupMenuItems.delete:
              _delete();
              break;
            // ignore: no_default_cases
            default:
              break;
          }
        },
      );
    }
    return MobilePersonalChatAppBar(
      chatId: textRoomBloc.room.id,
      onTapBack: () => context.popRoute(),
      onTapCall: () => _call(
        audioMuted: false,
        videoMuted: false,
        chatId: textRoomBloc.room.id,
      ),
      onHangupTap: _onHangupTap,
      onMenuItemSelected: (p0) {
        switch (p0) {
          case PopupMenuItems.exit:
            _exitPersonal();
            break;
          case PopupMenuItems.showInfo:
            context.pushRoute(
              ChatInformationRootRoute(
                children: [
                  MobileChatInformationRoute(
                    chatId: textRoomBloc.id,
                  ),
                ],
              ),
            );
            break;
          case PopupMenuItems.videoCall:
            _call(
              audioMuted: false,
              videoMuted: false,
              chatId: textRoomBloc.room.id,
            );
            break;
          case PopupMenuItems.mute:
            textRoomBloc.add(
              TextRoomEvent.enableNotifications(
                enable: textRoomBloc.room.pushRuleState != PushRuleState.notify,
              ),
            );
            break;
          // ignore: no_default_cases
          default:
            break;
        }
      },
    );
  }

  void _onCleanSelectedMessages() {
    context
        .read<TextRoomBloc>()
        .add(const TextRoomEvent.cleanSelectedMessages());
  }

  void _onForwardSelectedMessages() {
    final messages = context.read<TextRoomBloc>().state.selectedMessages;
    _onForwardChatMessages(messages);
  }

  void _onForwardChatMessages(List<DlsChatMessageText> messages) {
    if (messages.isEmpty) {
      return;
    }
    final globalChatBloc = context.read<GlobalChatBloc>();
    context.router
        .push<Room>(const MobileChatChooseForwardRoute())
        .then((value) {
      if (value == null) {
        return;
      }
      final items = value.id.split(':');
      // navigate to personal chat with forward messages
      if (globalChatBloc.state.privateRooms.any((e) => e.id == value.id)) {
        context.router.replace(
          MobileTextRoomWrapperRoute(
            chatId: items.first,
            server: items.last,
            forwardMessages: messages,
          ),
        );
      }
      // navigate to group chat with forward messages
      if (globalChatBloc.state.publicRooms.any((e) => e.id == value.id)) {
        context.router.replace(
          MobileTextRoomWrapperRoute(
            chatId: items.first,
            server: items.last,
            forwardMessages: messages,
          ),
        );
      }
    });
  }

  void _onBookmarkSelectedMessages() {
    // TODO(alexsh): need implementation
    context
        .read<TextRoomBloc>()
        .add(const TextRoomEvent.cleanSelectedMessages());
  }

  void _onRemoveSelectedMessages() {
    // TODO(alexsh): need implementation
    context
        .read<TextRoomBloc>()
        .add(const TextRoomEvent.cleanSelectedMessages());
  }

  void _exitGroup() {
    final chat = context.read<TextRoomBloc>().room;
    if (context.read<DlsMatrixClient>().isMeOwnerOfChat(chat.id)) {
      context.navigateTo(
        GroupRootRoute(
          children: [
            MobileSelectGroupAdminRoute(
              init: SimpleGroup(
                name: chat.getLocalizedDisplayname(),
                users: context
                    .read<UsersBloc>()
                    .state
                    .chatUsers(chat.getParticipants()),
                chatId: chat.id,
              ),
            )
          ],
        ),
      );
    } else {
      showDLSDialog(
        context,
        '${S.current.leave_chat}?',
        null,
        width: '${S.current.leave_chat}?'.length * 10,
        yesButtonLabel: S.current.yes,
        cancelButtonLabel: S.current.no,
      ).then(
        (value) {
          if (value == DLSDialogAnswer.confirm) {
            context
                .read<ChatManagerBloc>()
                .add(ChatManagerEvent.leave(chat.id));
          }
        },
      );
    }
  }

  void _exitPersonal() {
    final chat = context.read<TextRoomBloc>().room;
    showDLSDialog(
      context,
      '${S.current.delete_and_leave_chat}?',
      null,
      width: '${S.current.delete_and_leave_chat}?'.length * 10,
      yesButtonLabel: S.current.yes,
      cancelButtonLabel: S.current.no,
    ).then(
      (value) {
        if (value == DLSDialogAnswer.confirm) {
          context.read<ChatManagerBloc>().add(ChatManagerEvent.leave(chat.id));
        }
      },
    );
  }

  void _delete() {
    final chat = context.read<TextRoomBloc>().room;
    if (context.read<DlsMatrixClient>().isMeOwnerOfChat(chat.id)) {
      showDLSDialog(
        context,
        S.current.leaveGroupQuestion(
          chat.getLocalizedDisplayname(),
        ),
        S.current.xPeopleAutoDeleteFromGroup(
          chat.getParticipants().length,
        ),
        width: S.current
                .xPeopleAutoDeleteFromGroup(
                  chat.getParticipants().length,
                )
                .length *
            10,
        yesButtonLabel: S.current.yes,
        cancelButtonLabel: S.current.no,
      ).then(
        (value) {
          if (value == DLSDialogAnswer.confirm) {
            context
                .read<ChatManagerBloc>()
                .add(ChatManagerEvent.delete(chat.id));
          }
        },
      );
    }
  }

  Widget _atSearch(TextRoomState state) {
    return BlocBuilder<ChatInputBloc, ChatInputState>(
      builder: (context, inputState) {
        final key = state.events.isNotEmpty ? _chatInputChatKey : GlobalKey();
        if (inputState.atShowing) {
          final box = key.currentContext?.findRenderObject() as RenderBox?;
          return Consumer<ScreenHeight>(
            builder: (context, res, child) {
              return Positioned(
                bottom: (box?.size.height ?? 0) + res.keyboardHeight - 12.h,
                left: 8.w,
                child: AtSearch(
                  width: MediaQuery.of(context).size.width - 16.w,
                  onTap: (userName, query) => _onUserTap(
                    userName,
                    query,
                    context,
                  ),
                ),
              );
            },
          );
        }
        return Container();
      },
    );
  }

  Widget _input() {
    return Consumer<ScreenHeight>(
      builder: (context, res, child) {
        if (_keyboardHeight < res.keyboardHeight) {
          _keyboardHeight = res.keyboardHeight;
        }

        /// необходимо слушать размеры и если они меняются
        /// перерисовывать
        return NotificationListener<SizeChangedLayoutNotification>(
          onNotification: (notification) {
            if (context.read<ChatInputBloc>().state.atShowing) {
              context.read<ChatInputBloc>().add(
                    ChatInputEvent.update(_inputController.document),
                  );
            }
            return true;
          },
          child: SizeChangedLayoutNotifier(
            child: BlocBuilder<TextRoomBloc, TextRoomState>(
              buildWhen: (previous, current) =>
                  previous.markedEditMessage != current.markedEditMessage ||
                  previous.forwardMessages != current.forwardMessages,
              builder: (context, state) {
                return MobileChatInputWrapper(
                  key: _chatInputChatKey,
                  messageQuoteController: _messageQuoteController,
                  inputController: _inputController,
                  forwardMessages: state.forwardMessages,
                  onSendMessage: _onSendMessage,
                  keyboardHeight: _keyboardHeight,
                  onFormatMessage: _onFormatMessage,
                  onUserTyping: _onUserTyping,
                  onMarkEditMessage: _onMarkEditMessage,
                  markedEditMessage: state.markedEditMessage,
                  onCancelForwardMessages: _onCleanForwardMessages,
                );
              },
            ),
          ),
        );
      },
    );
  }

  void _onUserTyping() {
    final roomId = context.read<TextRoomBloc>().room.id;
    context.read<DlsMatrixClient>().userTyping(roomId);
  }

  /// в поиске нажали на пользователя
  void _onUserTap(String userName, String query, BuildContext context) {
    final queryLength = query.isNotEmpty ? query.length : 1;
    _inputController.document.replace(
      _inputController.selection.start - queryLength,
      queryLength,
      userName,
    );
    _inputController.moveCursorToPosition(
      _inputController.selection.start + userName.length,
    );
    _inputController.formatText(
      _inputController.selection.start - queryLength,
      userName.length,
      const quill.Attribute(
        'color',
        quill.AttributeScope.INLINE,
        '#89CFF0',
      ),
    );
    final searchBloc = context.read<AtSearchBloc>();
    searchBloc.add(const AtSearchEvent.reset());
    searchBloc.add(const AtSearchEvent.search(''));
    final inputBloc = context.read<ChatInputBloc>();
    inputBloc.add(const ChatInputEvent.showAt());
    inputBloc.add(
      ChatInputEvent.update(_inputController.document),
    );
  }

  /// отправить сообщение
  void _onSendMessage(SendChatMessage sendMessage) {
    final inputBloc = context.read<ChatInputBloc>();
    context.read<TextRoomBloc>().add(
          TextRoomEvent.sendMtx(
            plainMessage: sendMessage.plainMessage,
            formattedMessage: sendMessage.formattedMessage,
            files: sendMessage.files,
          ),
        );
    _inputController.clear();
    _inputController.toggledStyle = quill.Style();
    _inputController.toolbarButtonToggler.clear();
    _inputController.document = quill.Document();
    inputBloc.add(const ChatInputEvent.reset());
  }

  void _onMessageQuote(DlsChatMessageText message) {
    final plainText =
        QuillEditorHelper.buildDocument(message.plainText).toPlainText();
    final document = quill.Document()..insert(0, plainText);
    _messageQuoteController.clear();
    _messageQuoteController.document = document
      ..format(
        0,
        document.length,
        quill.Attribute.blockQuote,
      );
  }

  void _onFormatMessage() {
    final textRoomBloc = context.read<TextRoomBloc>();
    final inputBloc = context.read<ChatInputBloc>();

    context.pushRoute(
      AdvancedEditorRoute(
        chatId: textRoomBloc.id,
        message: quill.Document.fromDelta(inputBloc.state.message.toDelta()),
        files: inputBloc.state.files,
        markedEditMessage: textRoomBloc.state.markedEditMessage,
        onSendMessage: _onSendMessage,
      ),
    );
  }

  void _onMessageListScrollChanged(List<int> value) {
    context
        .read<TextRoomBloc>()
        .add(TextRoomEvent.messageListScrollChanged(value));
  }

  void _onForwardSingleMessage(DlsChatMessage message) {
    final textMessage = message.safeCast<DlsChatMessageText>();
    if (textMessage == null) {
      return;
    }
    _onForwardChatMessages([textMessage]);
  }

  void _onCleanForwardMessages() {
    context.read<TextRoomBloc>().add(
          const TextRoomEvent.cleanForwardMessages(),
        );
  }

  void _onOpenMessageComments(DlsChatMessageText? message) {
    if (message == null) {
      return;
    }

    final items = message.roomId.split(':');
    context.pushRoute(
      MobileTextRoomWrapperRoute(
        chatId: items.first,
        server: items.last,
        threadMessageId: message.eventId,
      ),
    );
  }

  void _onMarkEditMessage(DlsChatMessageText? message) {
    context.read<TextRoomBloc>().add(TextRoomEvent.markEditMessage(message));
  }

  void _onDeleteMessage(DlsChatMessage message) {
    context
        .read<TextRoomBloc>()
        .add(TextRoomEvent.deleteEvent([message.eventId]));
  }

  void _onSelectMessage(DlsChatMessageText message) {
    context
        .read<TextRoomBloc>()
        .add(TextRoomEvent.changeSelectMessage(message));
  }
}
