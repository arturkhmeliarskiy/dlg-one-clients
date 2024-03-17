// ignore_for_file: cascade_invocations

import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:collection/collection.dart';
import 'package:dls_matrix_client/dls_matrix_client.dart';
import 'package:dls_one/app/router/app_router.dart';
import 'package:dls_one/const/constants.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/features/home/presentation/bloc/global_chat_bloc.dart';
import 'package:dls_one/features/textroom/textroom.dart';
import 'package:dls_one/utils/utils.dart';
import 'package:dls_one/web/chat/chat_manager/chat_manager.dart';
import 'package:dls_one/web/chat/view/chat_group/view/widgets/web_chat_group_appbar.dart';
import 'package:dls_one/web/chat/view/chat_personal/view/widgets/web_personal_chat_appbar.dart';
import 'package:dls_one/web/sip/sip.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_quill/flutter_quill.dart' as quill;
import 'package:matrix/matrix.dart';
import 'package:rest_api/rest_api.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

enum ChatType {
  group,
  comments
}

@RoutePage()
class WebTextRoomWrapperPage extends StatelessWidget {
  ///
  const WebTextRoomWrapperPage({
    @pathParam required this.chatId,
    this.onOpenCommentsPanel,
    this.onOpenInfoPanel,
    @pathParam this.threadMessageId,
    this.onAddUsersToGroupChat,
    this.onGroupChatRename,
    this.onGroupChatExit,
    this.onGroupChatDelete,
    this.onPersonalChatExit,
    this.forwardMessages = const [],
    this.chatType = ChatType.group,
    super.key,
  });

  final String chatId;
  final String? threadMessageId;
  final ValueChanged<DlsChatMessageText>? onOpenCommentsPanel;
  final VoidCallback? onOpenInfoPanel;
  final VoidCallback? onAddUsersToGroupChat;
  final VoidCallback? onGroupChatRename;
  final VoidCallback? onGroupChatExit;
  final VoidCallback? onGroupChatDelete;
  final ValueChanged<String>? onPersonalChatExit;
  final List<DlsChatMessageText> forwardMessages;
  final ChatType chatType;

  @override
  Widget build(BuildContext context) {
    final subKey = chatType == ChatType.comments ? '_$getUuid' : '';
    return MultiBlocProvider(
      key: Key(
        'WebTextRoomPageWrapper_MultiBlocProvider_${chatId}_$threadMessageId$subKey',
      ),
      providers: [
        BlocProvider<TextRoomBloc>(
          key: Key(
            'WebTextRoomPageWrapper_TextRoomBloc_${chatId}_$threadMessageId$subKey',
          ),
          create: (context) {
            return TextRoomBloc(
              roomOrUserId: chatId,
              matrixClient: context.read<DlsMatrixClient>(),
              users: context.read<UsersBloc>(),
              forwardMessages: forwardMessages,
              threadMessageId: threadMessageId,
            );
          },
        ),
        BlocProvider<UserTypingBloc>(
          key: Key(
            'WebTextRoomPageWrapper_UserTypingBloc_${chatId}_$threadMessageId$subKey',
          ),
          create: (context) {
            return UserTypingBloc(
              id: chatId,
              matrixClient: context.read<DlsMatrixClient>(),
              users: context.read<UsersBloc>(),
            );
          },
        ),
        BlocProvider<ChatInputBloc>(
          key: Key(
            'WebTextRoomPageWrapper_ChatInputBloc_${chatId}_$threadMessageId$subKey',
          ),
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
          key: Key(
            'WebTextRoomPageWrapper_AtSearchBloc_${chatId}_$threadMessageId$subKey',
          ),
          create: (context) {
            return AtSearchBloc(
              matrixClient: context.read<DlsMatrixClient>(),
              users: context.read<UsersBloc>(),
              chatId: context.read<TextRoomBloc>().id,
            );
          },
        ),
        BlocProvider<ChatManagerBloc>(
          key: Key(
            'WebTextRoomPageWrapper_ChatManagerBloc_${chatId}_$threadMessageId$subKey',
          ),
          create: (context) {
            return ChatManagerBloc(
              matrixClient: context.read<DlsMatrixClient>(),
            );
          },
        ),
      ],
      child: WebTextRoomPage._(
        key: Key(
          'WebTextRoomPageWrapper_WebTextRoomPage_${chatId}_$threadMessageId$subKey',
        ),
        chatId: chatId,
        onOpenCommentsPanel: onOpenCommentsPanel,
        onOpenInfoPanel: onOpenInfoPanel,
        onAddUsersToGroupChat: onAddUsersToGroupChat,
        onGroupChatRename: onGroupChatRename,
        onGroupChatExit: onGroupChatExit,
        onGroupChatDelete: onGroupChatDelete,
        onPersonalChatExit: () => onPersonalChatExit?.call(chatId),
        chatType: chatType,
      ),
    );
  }
}

///экран чата и комментариев
class WebTextRoomPage extends StatefulWidget {
  /// constructor
  const WebTextRoomPage._({
    required this.chatId,
    this.onOpenCommentsPanel,
    this.onOpenInfoPanel,
    this.onAddUsersToGroupChat,
    this.onGroupChatRename,
    this.onGroupChatExit,
    this.onGroupChatDelete,
    this.onPersonalChatExit,
    this.chatType = ChatType.group,
    super.key,
  });

  final ValueChanged<DlsChatMessageText>? onOpenCommentsPanel;
  final VoidCallback? onOpenInfoPanel;
  final VoidCallback? onAddUsersToGroupChat;
  final VoidCallback? onGroupChatRename;
  final VoidCallback? onGroupChatExit;
  final VoidCallback? onGroupChatDelete;
  final VoidCallback? onPersonalChatExit;
  final String chatId;
  final ChatType chatType;

  @override
  State<WebTextRoomPage> createState() => _WebTextRoomPageState();
}

class _WebTextRoomPageState extends State<WebTextRoomPage> {
  final _chatInputKey = GlobalKey();
  final _itemScrollController = ItemScrollController();
  final _itemPositionsListener = ItemPositionsListener.create();
  final _inputController = quill.QuillController.basic();
  final _messageQuoteController = quill.QuillController.basic();

  @override
  void dispose() {
    _inputController.dispose();
    _messageQuoteController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final textRoomBloc = context.read<TextRoomBloc>();
    final usersBloc = context.read<UsersBloc>();
    final subKey = widget.chatType == ChatType.comments ? '_$getUuid' : '';

    return BlocListener<ChatManagerBloc, ChatManagerState>(
      listener: (context, state) {
        // TODO(alexsh): implement web logic
      },
      listenWhen: (previous, current) {
        // TODO(alexsh): implement web logic
        return false;
      },
      child: BlocBuilder<TextRoomBloc, TextRoomState>(
        builder: (context, state) {
          if (state.loading) {
            return Scaffold(body: DLSPreloader.newDLS);
          }

          if (state.failure != null) {
            return DlsFailure(
              onTap: () => context.back(),
              message: state.failure!,
            );
          }

          return WillPopScope(
            onWillPop: () => Future.value(!state.loading),
            child: Stack(
              children: [
                Positioned.fill(
                  child: CallbackShortcuts(
                    bindings: <ShortcutActivator, VoidCallback>{
                      const SingleActivator(LogicalKeyboardKey.arrowUp): () {
                        final text = _inputController.getPlainText();

                        if (state.markedEditMessage != null &&
                            text.isNotEmpty) {
                          return;
                        }
                        _editLastMessage(
                          messages: state.events,
                          id: usersBloc.state.currentUser?.id,
                        );
                      },
                    },
                    child: FocusScope(
                      autofocus: true,
                      child: Scaffold(
                        backgroundColor: context.c_white_text,

                        /// скрываем appbar если включили камеру
                        appBar: widget.chatType == ChatType.comments ? null : _buildWebAppBar(state, context),

                        body: _WebTextRoomContentBuilder(
                          key: Key(
                            'WebTextRoomPage_WebTextRoomContentBuilder_${textRoomBloc.id}_${state.threadMessageId}$subKey',
                          ),
                          messages: state.events,
                          readMarkers: state.readMarkers,
                          selectedMessageIds: state.selectedMessages
                              .map((e) => e.eventId)
                              .toList(),
                          forwardMessages: state.forwardMessages,
                          isSelectMode:
                              state.modeType == ChatModeType.chatModeTypeSelect,
                          itemScrollController: _itemScrollController,
                          itemPositionsListener: _itemPositionsListener,
                          inputController: _inputController,
                          messageQuoteController: _messageQuoteController,
                          inputKey: _chatInputKey,
                          onDoCall: (audioMuted, videoMuted) {
                            _call(
                              audioMuted: audioMuted,
                              videoMuted: videoMuted,
                            );
                          },
                          markedEditMessage: state.markedEditMessage,
                          threadMessage: state.threadMessage,
                          lastReadEventId: state.lastReadEventId,
                          onOpenCommentsPanel: widget.onOpenCommentsPanel,
                          onArrowUp: () => _editLastMessage(
                            messages: state.events,
                            id: usersBloc.state.currentUser?.id,
                          ),
                          onForwardMessages: _onForwardChatMessages,
                          onCleanForwardMessages: _onCleanForwardMessages,
                        ),
                      ),
                    ),
                  ),
                ),

                /// слой поиска пользователей
                _atSearch(state),
              ],
            ),
          );
        },
      ),
    );
  }

  PreferredSizeWidget _buildWebAppBar(
    TextRoomState state,
    BuildContext context,
  ) {
    final textRoomBloc = context.read<TextRoomBloc>();
    if (state.selectedMessages.isNotEmpty) {
      return WebChatSelectedMessageAppBar(
        currentUserId: textRoomBloc.matrixUserId,
        selectedMessages: state.selectedMessages,
        onCleanSelected: _onCleanSelectedMessages,
        onForwardTap: _onForwardSelectedMessages,
        onBookmarkTap: _onBookmarkSelectedMessages,
        onRemoveTap: _onRemoveSelectedMessages,
      );
    }
    final room = textRoomBloc.room;
    if (textRoomBloc.state.threadMessage != null) {
      return WebChatCommentsAppBar(
        userId: textRoomBloc.state.threadMessage!.senderId,
        onCloseCommentsPanel: () {
          context.back();
        },
      );
    } else if (room.isDirectChat) {
      return WebChatPersonalRoomAppBar(
        companionUserId: room.summary.mHeroes?.firstOrNull,
        isInfoVisible: context.topRoute.path == 'info',
        isNotifyEnabled: room.pushRuleState == PushRuleState.dontNotify,
        onCallTap: () => _call(audioMuted: false, videoMuted: false),
        onShowInfoTap: () => widget.onOpenInfoPanel?.call(),
        onTapDelete: () => widget.onPersonalChatExit?.call(),
        onHangupTap: _onHangupTap,
      );
    }
    final matrixClient = context.read<DlsMatrixClient>();
    return WebChatGroupRoomAppBar(
      chatId: room.id,
      canAdd: matrixClient.isMeOwnerOfChat(room.id) ||
          matrixClient.isMeAdminOfChat(room.id),
      canDelete: matrixClient.isMeOwnerOfChat(room.id),
      onCallTap: () {
        _call(
          audioMuted: false,
          videoMuted: false,
        );
      },
      onHangupTap: _onHangupTap,
      onShowInfoTap: () {
        widget.onOpenInfoPanel?.call();
      },
      onPlusTap: () {
        widget.onAddUsersToGroupChat?.call();
      },
      onTapRename: () {
        widget.onGroupChatRename?.call();
      },
      onTapExit: () {
        widget.onGroupChatExit?.call();
      },
      onTapDelete: () {
        widget.onGroupChatDelete?.call();
      },
      onTapVideoCall: () {
        _call(audioMuted: false, videoMuted: false);
      },
    );
  }

  Widget _atSearch(TextRoomState state) {
    return BlocBuilder<ChatInputBloc, ChatInputState>(
      builder: (context, inputState) {
        final key = state.events.isNotEmpty ? _chatInputKey : GlobalKey();
        if (inputState.atShowing) {
          final box = key.currentContext?.findRenderObject() as RenderBox?;
          return Positioned(
            bottom: (box?.size.height ?? 0) - 12.h,
            left: 8.w,
            child: AtSearch(
              onTap: (userName, query) => _onUserTap(
                userName,
                query,
                context,
              ),
            ),
          );
        }
        return const SizedBox();
      },
    );
  }

  void _onForwardChatMessages(List<DlsChatMessageText> messages) {
    if (messages.isEmpty) {
      return;
    }
    final globalChatBloc = context.read<GlobalChatBloc>();
    context.router
        .push<Room>(const WebChatChooseForwardDialogRoute())
        .then((value) {
      if (value == null) {
        return;
      }
      final items = value.id.split(':');
      // navigate to personal chat with forward messages
      if (globalChatBloc.state.privateRooms.any((e) => e.id == value.id)) {
        final alreadyInPersonalChats =
            context.watchRouter.currentPath.contains('personal');
        if (alreadyInPersonalChats) {
          // navigate personal chat -> personal chat
          context.navigateTo(
            WebChatPersonalRoute(
              chatId: items.first,
              server: items.last,
              forwardMessages: messages,
            ),
          );
        } else {
          // navigate group chat -> personal chat
          context.replaceRoute(
            WebChatPersonalWrapperRoute(
              children: [
                WebChatPersonalRoute(
                  chatId: items.first,
                  server: items.last,
                  forwardMessages: messages,
                ),
              ],
            ),
          );
        }
      }
      // navigate to group chat with forward messages
      if (globalChatBloc.state.publicRooms.any((e) => e.id == value.id)) {
        if (context.topRoute.name == ChatGroupRoute.name) {
          // navigate group chat -> group chat
          context.replaceRoute(
            ChatGroupRoute(
              chatId: items.first,
              server: items.last,
              forwardMessages: messages,
            ),
          );
        } else {
          // navigate personal chat -> group chat
          context.replaceRoute(
            GroupRootRoute(
              children: [
                ChatGroupRoute(
                  chatId: items.first,
                  server: items.last,
                  forwardMessages: messages,
                ),
              ],
            ),
          );
        }
      }
    });
  }

  void _onForwardSelectedMessages() {
    final messages = context.read<TextRoomBloc>().state.selectedMessages;
    _onForwardChatMessages(messages);
  }

  void _onCleanForwardMessages() {
    context.read<TextRoomBloc>().add(
          const TextRoomEvent.cleanForwardMessages(),
        );
  }

  void _onCleanSelectedMessages() {
    context
        .read<TextRoomBloc>()
        .add(const TextRoomEvent.cleanSelectedMessages());
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

  Future<void> _call({
    required bool audioMuted,
    required bool videoMuted,
  }) async {
    final sipBloc = context.read<SipBloc>();
    await sipBloc.state.maybeMap(
      idle: (value) async {
        sipBloc
            .add(SipEvent.doCall(context.read<TextRoomBloc>().id, videoMuted));
        await context.pushRoute(
          const CallRoute(),
        );
      },
      orElse: () async {
        await showDLSDialog2(
          context,
          null,
          S.current.nowYouInCall,
          onlyYesButton: true,
          yesButtonLabel: S.current.ok,
          width: 200.w,
        );
      },
    );
  }

  Future<void> _onHangupTap() async {
    final sipBloc = context.read<SipBloc>();
    sipBloc.add(const SipEvent.forceHangUp());
  }

  /// в поиске нажали на пользователя
  void _onUserTap(String userName, String query, BuildContext context) {
    final queryLength = query.isNotEmpty ? query.length : 1;
    final index = (_inputController.selection.start - queryLength).isNegative
        ? 0
        : _inputController.selection.start - queryLength;

    _inputController.document.insert(
      index + 1,
      '$userName ',
    );

    _inputController.formatText(
      index,
      userName.length + 1,
      const quill.Attribute(
        'color',
        quill.AttributeScope.INLINE,
        InlineColors.mentionColor,
      ),
    );
    // + 1 to reset formatter
    _inputController.moveCursorToPosition(
      _inputController.selection.start + userName.length + 1,
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

  void _editLastMessage({
    required List<DlsChatMessage> messages,
    required String? id,
  }) {
    final msg = messages
        .firstWhere(
          (e) =>
              e.senderId == id &&
              e.canEdit &&
              e.type == DlsChatMessageType.text,
        )
        .safeCast<DlsChatMessageText>();

    if (msg == null) {
      return;
    }
    context.read<TextRoomBloc>().add(TextRoomEvent.markEditMessage(msg));
  }
}

class _WebTextRoomContentBuilder extends StatelessWidget {
  const _WebTextRoomContentBuilder({
    required this.messages,
    required this.readMarkers,
    required this.selectedMessageIds,
    required this.forwardMessages,
    required this.isSelectMode,
    required this.itemScrollController,
    required this.itemPositionsListener,
    required this.inputController,
    required this.messageQuoteController,
    required this.inputKey,
    required this.onDoCall,
    required this.onArrowUp,
    required this.onForwardMessages,
    required this.onCleanForwardMessages,
    this.markedEditMessage,
    this.threadMessage,
    this.lastReadEventId,
    this.onOpenCommentsPanel,
    super.key,
  });

  final List<DlsChatMessage> messages;
  final List<RoomReadMarker> readMarkers;
  final List<String> selectedMessageIds;
  final List<DlsChatMessageText> forwardMessages;
  final bool isSelectMode;
  final ItemScrollController itemScrollController;
  final ItemPositionsListener itemPositionsListener;
  final quill.QuillController inputController;
  final quill.QuillController messageQuoteController;
  final Key inputKey;
  final DlsChatMessageText? markedEditMessage;
  final DlsChatMessageText? threadMessage;
  final String? lastReadEventId;
  final ValueChanged<DlsChatMessageText>? onOpenCommentsPanel;
  final void Function(bool audioMuted, bool videoMuted) onDoCall;
  final VoidCallback onArrowUp;
  final VoidCallback onCleanForwardMessages;
  final ValueChanged<List<DlsChatMessageText>> onForwardMessages;

  @override
  Widget build(BuildContext context) {
    final textRoomBloc = context.read<TextRoomBloc>();
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CallBarBuilder.builder(
          chatId: textRoomBloc.room.id,
          onTapBar: (_) => onDoCall(false, false),
        ),

        Expanded(
          child: TextRoomMessageList(
            key: Key(
              'TextRoomPage_TextRoomMessageList_${textRoomBloc.id}_${threadMessage?.eventId}',
            ),
            matrixUserId: textRoomBloc.matrixUserId,
            messages: messages,
            readMarkers: readMarkers,
            selectedMessageIds: selectedMessageIds,
            isSelectMode: isSelectMode,
            threadMessage: threadMessage,
            lastReadMessageId: lastReadEventId,
            isDirectChat: textRoomBloc.room.isDirectChat,
            scrollController: itemScrollController,
            positionsListener: itemPositionsListener,
            onMessageScrollChanged: (value) {
              _onMessageListScrollChanged(context, value);
            },
            onForwardMessage: _onForwardSingleMessage,
            onShowMessageComments: (value) {
              onOpenCommentsPanel?.call(value);
            },
            onMessageQuote: (value) {
              _onMessageQuote(context, value);
            },
            onMarkEditMessage: (value) {
              _onMarkEditMessage(context, value);
            },
            onDeleteMessage: (value) {
              _onDeleteMessage(context, value);
            },
            onCreateEvent: (value) {
              _onCreateEvent(context, value);
            },
            onCreateTask: (value) {
              _onCreateTask(context, value);
            },
            onCreateCase: (value) {
              _onCreateCase(context, value);
            },
            onSelectMessage: (value) {
              _onSelectMessage(context, value);
            },
          ),
        ),

        /// поле ввода
        WebChatInputWrapper(
          key: inputKey,
          inputController: inputController,
          messageQuoteController: messageQuoteController,
          markedEditMessage: markedEditMessage,
          forwardMessages: forwardMessages,
          onArrowUp: onArrowUp,
          onSendMessage: (sendMessage) {
            _onSendMessage(context, sendMessage);
          },
          onFormatMessage: () {
            _onFormatMessage(context);
          },
          keyboardHeight: 150,
          onUserTyping: () {
            _onUserTyping(context);
          },
          onMarkEditMessage: (value) {
            _onMarkEditMessage(context, value);
          },
          onCancelForwardMessages: onCleanForwardMessages,
        ),
      ],
    );
  }

  void _onUserTyping(BuildContext context) {
    context.read<DlsMatrixClient>().userTyping(context.read<TextRoomBloc>().id);
  }

  /// отправить сообщение
  void _onSendMessage(
    BuildContext context,
    SendChatMessage sendMessage,
  ) {
    final inputBloc = context.read<ChatInputBloc>();
    if (inputBloc.state.canSend) {
      context.read<TextRoomBloc>().add(
            TextRoomEvent.sendMtx(
              plainMessage: sendMessage.plainMessage,
              formattedMessage: sendMessage.formattedMessage,
              files: sendMessage.files,
            ),
          );
      inputController.toggledStyle = quill.Style();
      inputController.toolbarButtonToggler.clear();
      inputController.document = quill.Document();
      inputBloc.add(const ChatInputEvent.reset());
    }
  }

  void _onFormatMessage(BuildContext context) {
    context.read<ChatInputBloc>().add(const ChatInputEvent.showFormatter());
  }

  void _onMessageListScrollChanged(BuildContext context, List<int> value) {
    context
        .read<TextRoomBloc>()
        .add(TextRoomEvent.messageListScrollChanged(value));
  }

  void _onForwardSingleMessage(DlsChatMessage message) {
    final textMessage = message.safeCast<DlsChatMessageText>();
    if (textMessage == null) {
      return;
    }
    onForwardMessages([textMessage]);
  }

  void _onMessageQuote(BuildContext context, DlsChatMessageText message) {
    final plainText =
        QuillEditorHelper.buildDocument(message.plainText).toPlainText();
    final document = quill.Document()..insert(0, plainText);

    messageQuoteController.clear();
    messageQuoteController.document = document
      ..format(
        0,
        document.length,
        quill.Attribute.blockQuote,
      );
  }

  void _onMarkEditMessage(BuildContext context, DlsChatMessageText? message) {
    context.read<TextRoomBloc>().add(TextRoomEvent.markEditMessage(message));
  }

  void _onDeleteMessage(BuildContext context, DlsChatMessage message) {
    context
        .read<TextRoomBloc>()
        .add(TextRoomEvent.deleteEvent([message.eventId]));
  }

  void _onSelectMessage(BuildContext context, DlsChatMessageText message) {
    context
        .read<TextRoomBloc>()
        .add(TextRoomEvent.changeSelectMessage(message));
  }

  void _onCreateEvent(BuildContext context, String message) {
    context.router.push(CreateEventRoute(title: message));
  }

  void _onCreateTask(BuildContext context, String message) {
    context.router.push(
      NewTaskSprintRoute(
        status: TaskStatusType.inTheQueue,
        title: message,
      ),
    );
  }

  void _onCreateCase(BuildContext context, String message) {
    context.router.push(
      TodoRoute(
        children: [
          TermlessTodoRoute(
            isEditingMode: true,
            message: message,
          )
        ],
      ),
    );
  }
}
