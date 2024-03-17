// ignore_for_file: cascade_invocations

import 'package:common/common.dart';
import 'package:dls_matrix_client/dls_matrix_client.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/features/textroom/textroom.dart';
import 'package:dls_one/features/textroom/ui/chat_input/src/ui/message_edit_panel.dart';
import 'package:dls_one/features/textroom/ui/chat_input/src/ui/message_quote.dart';
import 'package:dls_one/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_quill/flutter_quill.dart' as quill;

class MobileChatInputWrapper extends StatelessWidget {
  ///
  const MobileChatInputWrapper({
    required this.inputController,
    required this.onSendMessage,
    required this.keyboardHeight,
    required this.onFormatMessage,
    required this.onUserTyping,
    required this.onMarkEditMessage,
    required this.messageQuoteController,
    required this.forwardMessages,
    required this.onCancelForwardMessages,
    this.markedEditMessage,
    super.key,
  });

  final quill.QuillController inputController;
  final quill.QuillController messageQuoteController;
  final List<DlsChatMessageText> forwardMessages;
  final ValueChanged<SendChatMessage> onSendMessage;
  final double keyboardHeight;
  final VoidCallback onFormatMessage;
  final VoidCallback onUserTyping;
  final ValueChanged<DlsChatMessageText?> onMarkEditMessage;
  final DlsChatMessage? markedEditMessage;
  final VoidCallback onCancelForwardMessages;

  @override
  Widget build(BuildContext context) {
    // TODO(alexsh): impossible to define ChatInputBloc here, because [TextRoomPage] using them
    /*return BlocProvider<ChatInputBloc>(
      create: (context) {
        return ChatInputBloc(
          ChatInputState.hasPayload(
            atShowing: false,
            emojiShowing: false,
            isRecording: false,
            recorderType: RecorderType.audio,
            message: quill.Document(),
            files: [],
          ),
        );
      },
      child: MobileChatInput._(
        controller: controller,
        onSendMessage: onSendMessage,
        keyboardHeight: keyboardHeight,
        onTapFormatMessage: onTapFormatMessage,
        onUserTyping: onUserTyping,
      ),
    );*/
    return MobileChatInput._(
      messageQuoteController: messageQuoteController,
      inputController: inputController,
      onSendMessage: onSendMessage,
      keyboardHeight: keyboardHeight,
      onFormatMessage: onFormatMessage,
      onUserTyping: onUserTyping,
      markedEditMessage: markedEditMessage,
      onMarkEditMessage: onMarkEditMessage,
      forwardMessages: forwardMessages,
      onCancelForwardMessages: onCancelForwardMessages,
    );
  }
}

/// поле ввода чата
class MobileChatInput extends StatefulWidget {
  /// поле ввода чата
  const MobileChatInput._({
    required this.inputController,
    required this.forwardMessages,
    required this.onSendMessage,
    required this.keyboardHeight,
    required this.onFormatMessage,
    required this.onUserTyping,
    required this.onMarkEditMessage,
    required this.messageQuoteController,
    required this.onCancelForwardMessages,
    this.markedEditMessage,
    super.key,
  });

  final quill.QuillController inputController;
  final quill.QuillController messageQuoteController;
  final List<DlsChatMessageText> forwardMessages;
  final ValueChanged<SendChatMessage> onSendMessage;
  final double keyboardHeight;
  final VoidCallback onFormatMessage;
  final VoidCallback onUserTyping;
  final ValueChanged<DlsChatMessageText?> onMarkEditMessage;
  final DlsChatMessage? markedEditMessage;
  final VoidCallback onCancelForwardMessages;

  @override
  State<MobileChatInput> createState() => _MobileChatInputState();
}

class _MobileChatInputState extends State<MobileChatInput>
    with SubscriptionMixin {
  final _inputFocusNode = FocusNode();
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();

    _inputFocusNode.requestFocus();

    /// не фокусить в редакторе при изменении
    widget.inputController
      ..ignoreFocusOnTextChange = true

      /// переместить курсор в конец
      ..moveCursorToEnd()

      /// слушать поле ввода и обновлять каждый раз состояние
      ..addListener(_listenerUpdate)

      /// отлавливает @ и если она есть, то показывает пользователей
      ..addListener(_listenerAt);

    // fix do not send typing when just focused
    Future.delayed(const Duration(milliseconds: 500), () {
      /// отлавливает я печатаю
      widget.inputController.addListener(widget.onUserTyping);
    });

    /// подписка на появление клавиатуры
    /// чтобы одновременно не было клавиатуры и смайликов
    addSubscription(
      KeyboardVisibilityController().onChange.listen(
        (isKeyboardVisible) {
          final inputBloc = context.read<ChatInputBloc>();
          if (isKeyboardVisible && inputBloc.state.emojiShowing) {
            inputBloc.add(const ChatInputEvent.showEmoji());
          }
        },
      ),
    );
  }

  void _listenerUpdate() {
    if (!context.read<ChatInputBloc>().state.isRecording) {
      context.read<ChatInputBloc>().add(
            ChatInputEvent.update(widget.inputController.document),
          );
    }
  }

  void _listenerAt() {
    final inputBloc = context.read<ChatInputBloc>();
    final searchBloc = context.read<AtSearchBloc>();
    final start = widget.inputController.selection.start > 0
        ? widget.inputController.selection.start
        : 0;
    final s1 = widget.inputController.document.getPlainText(0, start);
    if (inputBloc.state.atShowing) {
      if (s1.isNotEmpty) {
        searchBloc.add(
          AtSearchEvent.search(
            widget.inputController.document.getPlainText(
              s1.lastIndexOf('@'),
              s1.length - s1.lastIndexOf('@'),
            ),
          ),
        );
      }
    } else if (s1.isNotEmpty && s1[s1.length - 1] == '@') {
      inputBloc.add(const ChatInputEvent.showAt());
      searchBloc.add(
        AtSearchEvent.search(
          widget.inputController.document.getPlainText(
            s1.lastIndexOf('@'),
            s1.length - s1.lastIndexOf('@'),
          ),
        ),
      );
    }
  }

  @override
  void dispose() {
    widget.inputController.removeListener(_listenerAt);
    widget.inputController.removeListener(widget.onUserTyping);
    widget.inputController.removeListener(_listenerUpdate);
    cancelAllSubscriptions();
    _inputFocusNode.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _inputFocusNode.requestFocus,
      child: Column(
        children: [
          Container(
            height: 1,
            decoration: BoxDecoration(
              color: context.c_grey_stoke,
            ),
          ),
          MessageQuote(messageQuoteController: widget.messageQuoteController),
          if (widget.forwardMessages.isNotEmpty)
            Container(
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: context.c_grey_stoke,
                  ),
                ),
              ),
              padding: EdgeInsets.only(left: 16.w, top: 12.h, right: 16.w),
              child: MessageForwardPanel(
                forwardMessages: widget.forwardMessages,
                onCancelForward: widget.onCancelForwardMessages,
              ),
            ),
          if (widget.markedEditMessage != null)
            DecoratedBox(
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: context.c_grey_stoke,
                  ),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 12.h,
                  horizontal: 16.w,
                ),
                child: MessageEditPanel(
                  markedEditMessage: widget.markedEditMessage!,
                  onCancelEditMessage: _onCancelEditMessage,
                ),
              ),
            ),

          ChatUrlPreview(),

          /// переслать
          // ChatDataPreview(
          //   icon: Assets.icons.share1.svg(
          //     width: 18.r,
          //     height: 18.r,
          //     color: context.c_text,
          //   ),
          // ),
          /// редактировать (оригинал)
          // ChatDataPreview(
          //   icon: Assets.icons.pen1.svg(
          //     width: 18.r,
          //     height: 18.r,
          //     color: context.c_text,
          //   ),
          // ),
          Container(
            height: 1,
            decoration: BoxDecoration(
              color: context.c_grey_stoke,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
            child: _ChatInputBuilder(
              controller: widget.inputController,
              focusNode: _inputFocusNode,
              scrollController: _scrollController,
              onSendMessage: _onSendMessage,
            ),
          ),

          /// лента с файлами
          _FilesPanelBuilder(),
          Padding(
            padding: EdgeInsets.only(left: 16.w, right: 16.w, bottom: 12.h),
            child: FooterPanelBuilder(
              controller: widget.inputController,
              focusNode: _inputFocusNode,
              keyboardHeight: widget.keyboardHeight,
              onSendMessage: _onSendMessage,
              onFormatMessage: widget.onFormatMessage,
            ),
          ),
        ],
      ),
    );
  }

  @override
  void didUpdateWidget(MobileChatInput oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.markedEditMessage != null) {
      widget.inputController.clear();
      final message =
          widget.markedEditMessage!.safeCast<DlsChatMessageText>()?.plainText ??
              '';
      widget.inputController.document =
          QuillEditorHelper.buildDocument(message);
      widget.inputController.moveCursorToEnd();
    } else {
      if (oldWidget.markedEditMessage != null &&
          widget.markedEditMessage == null) {
        widget.inputController.clear();
        widget.inputController.document = quill.Document();
      }
    }
  }

  /// отправить
  void _onSendMessage() {
    final inputBloc = context.read<ChatInputBloc>();
    widget.onSendMessage(
      SendChatMessage(
        plainMessage: inputBloc.state.plainMessage,
        formattedMessage: inputBloc.state.formattedMessage,
        files: inputBloc.state.files,
      ),
    );
    widget.messageQuoteController.clear();
  }

  void _onCancelEditMessage() {
    final inputBloc = context.read<ChatInputBloc>();
    widget.inputController.clear();
    widget.inputController.toggledStyle = quill.Style();
    widget.inputController.toolbarButtonToggler.clear();
    widget.inputController.document = quill.Document();
    inputBloc.add(const ChatInputEvent.reset());
    widget.onMarkEditMessage(null);
  }
}

class _ChatInputBuilder extends StatelessWidget {
  const _ChatInputBuilder({
    required this.focusNode,
    required this.controller,
    required this.scrollController,
    required this.onSendMessage,
    super.key,
  });

  final FocusNode focusNode;
  final quill.QuillController controller;
  final ScrollController scrollController;
  final VoidCallback onSendMessage;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChatInputBloc, ChatInputState>(
      /// для смайликов необходимо перерисовывать виджет
      /// т.к. контроллер меняет содержимое,
      /// но фокус после изменения запрещен
      builder: (context, state) {
        return quill.QuillEditor(
          customStyles: quill.DefaultStyles(
            placeHolder: quill.DefaultTextBlockStyle(
              context.ts_s14h22_4w400.copyWith(color: context.c_placeholder),
              const quill.VerticalSpacing(0, 0),
              const quill.VerticalSpacing(0, 0),
              null,
            ),
          ),
          placeholder: S.current.type_message_text,
          controller: controller,
          readOnly: false,
          focusNode: focusNode,
          scrollController: scrollController,
          scrollable: true,
          padding: EdgeInsets.zero,
          maxHeight: 92.h,
          autoFocus: true,
          expands: false,
        );
      },
    );
  }
}

class _FilesPanelBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChatInputBloc, ChatInputState>(
      buildWhen: (previous, current) =>
          previous.files.length != current.files.length,
      builder: (context, state) {
        if (state.filesPanelShowing && state.files.isNotEmpty) {
          return Padding(
            padding: EdgeInsets.only(bottom: 12.h),
            child: ChatInputFilesPreviews(
              audios: state.audios,
              images: state.images,
              videos: state.videos,
              docs: state.docs,
            ),
          );
        }
        return const SizedBox();
      },
    );
  }
}
