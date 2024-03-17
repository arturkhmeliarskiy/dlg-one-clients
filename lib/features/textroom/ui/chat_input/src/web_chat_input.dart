// ignore_for_file: cascade_invocations

import 'package:common/common.dart';
import 'package:dls_matrix_client/dls_matrix_client.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/features/textroom/textroom.dart';
import 'package:dls_one/features/textroom/ui/chat_input/src/ui/formatter_panel_builder.dart';
import 'package:dls_one/features/textroom/ui/chat_input/src/ui/message_edit_panel.dart';
import 'package:dls_one/features/textroom/ui/chat_input/src/ui/message_quote.dart';
import 'package:dls_one/models/dls_file.dart';
import 'package:dls_one/utils/src/etc.dart';
import 'package:dls_one/utils/src/quill_editor_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_quill/flutter_quill.dart' as quill;
import 'package:pasteboard/pasteboard.dart';

class WebChatInputWrapper extends StatelessWidget {
  ///
  const WebChatInputWrapper({
    required this.inputController,
    required this.onSendMessage,
    required this.onFormatMessage,
    required this.keyboardHeight,
    required this.onUserTyping,
    required this.onMarkEditMessage,
    required this.messageQuoteController,
    required this.forwardMessages,
    required this.onArrowUp,
    required this.onCancelForwardMessages,
    this.markedEditMessage,
    super.key,
  });

  final DlsChatMessage? markedEditMessage;
  final quill.QuillController inputController;
  final quill.QuillController messageQuoteController;
  final List<DlsChatMessageText> forwardMessages;

  /// обработчик кнопки отправить
  final ValueChanged<SendChatMessage> onSendMessage;
  final VoidCallback onFormatMessage;
  final ValueChanged<DlsChatMessageText?> onMarkEditMessage;

  /// высота клавиатуры
  final double keyboardHeight;

  final VoidCallback onUserTyping;
  final VoidCallback onArrowUp;
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
      child: WebChatInput._(
        controller: controller,
        onSendMessage: onSendMessage,
        keyboardHeight: keyboardHeight,
        onTapFormatMessage: onTapFormatMessage,
        onUserTyping: onUserTyping,
      ),
    );*/
    return WebChatInput._(
      inputController: inputController,
      messageQuoteController: messageQuoteController,
      forwardMessages: forwardMessages,
      onSendMessage: onSendMessage,
      onFormatMessage: onFormatMessage,
      keyboardHeight: keyboardHeight,
      onUserTyping: onUserTyping,
      onMarkEditMessage: onMarkEditMessage,
      markedEditMessage: markedEditMessage,
      onCancelForwardMessages: onCancelForwardMessages,
      onArrowUp: onArrowUp,
    );
  }
}

/// поле ввода чата
class WebChatInput extends StatefulWidget {
  /// поле ввода чата
  const WebChatInput._({
    required this.inputController,
    required this.onSendMessage,
    required this.forwardMessages,
    required this.onFormatMessage,
    required this.keyboardHeight,
    required this.onUserTyping,
    required this.onMarkEditMessage,
    required this.messageQuoteController,
    required this.onArrowUp,
    required this.onCancelForwardMessages,
    this.markedEditMessage,
  });

  final DlsChatMessage? markedEditMessage;
  final quill.QuillController inputController;
  final quill.QuillController messageQuoteController;
  final List<DlsChatMessageText> forwardMessages;
  final ValueChanged<SendChatMessage> onSendMessage;
  final VoidCallback onFormatMessage;
  final ValueChanged<DlsChatMessageText?> onMarkEditMessage;
  final double keyboardHeight;
  final VoidCallback onUserTyping;
  final VoidCallback onArrowUp;
  final VoidCallback onCancelForwardMessages;

  @override
  State<WebChatInput> createState() => _WebChatInputState();
}

class _WebChatInputState extends State<WebChatInput> with SubscriptionMixin {
  late final FocusNode _inputFocusNode;
  final _scrollController = ScrollController();

  @override
  void initState() {
    _inputFocusNode = FocusNode(
      onKeyEvent: _onChatInputKeyEvent,
    );

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
    _scrollController.dispose();
    _inputFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _inputFocusNode.requestFocus,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 12.h, horizontal: 12.w),
        padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 12.w),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.r),
          border: Border.all(
            color: context.c_grey_stoke,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MessageQuote(
              messageQuoteController: widget.messageQuoteController,
            ),
            if (widget.forwardMessages.isNotEmpty)
              MessageForwardPanel(
                forwardMessages: widget.forwardMessages,
                onCancelForward: widget.onCancelForwardMessages,
              ),
            if (widget.markedEditMessage != null)
              MessageEditPanel(
                markedEditMessage: widget.markedEditMessage!,
                onCancelEditMessage: _onEscapeTap,
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
            SizedBox(height: 4.h),

            FormatterPanelBuilder(
              controller: widget.inputController,
            ),
            Flexible(
              child: ConstrainedBox(
                constraints: BoxConstraints(minHeight: 16.h, maxHeight: 66.h),
                child: _ChatInputBuilder(
                  focusNode: _inputFocusNode,
                  controller: widget.inputController,
                  scrollController: _scrollController,
                ),
              ),
            ),

            /// лента с файлами
            _FilesPanelBuilder(),
            SizedBox(height: 4.h),
            FooterPanelBuilder(
              focusNode: _inputFocusNode,
              keyboardHeight: widget.keyboardHeight,
              controller: widget.inputController,
              onSendMessage: _onSendMessage,
              onFormatMessage: widget.onFormatMessage,
            ),
          ],
        ),
      ),
    );
  }

  @override
  void didUpdateWidget(WebChatInput oldWidget) {
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

  KeyEventResult _onChatInputKeyEvent(FocusNode node, KeyEvent event) {
    final isControlPressed = HardwareKeyboard.instance.logicalKeysPressed.any(
      (e) =>
          e == LogicalKeyboardKey.controlLeft ||
          e == LogicalKeyboardKey.controlRight,
    );
    final isAltPressed = HardwareKeyboard.instance.logicalKeysPressed.any(
      (e) =>
          e == LogicalKeyboardKey.altLeft || e == LogicalKeyboardKey.altRight,
    );
    final isShiftPressed = HardwareKeyboard.instance.logicalKeysPressed.any(
      (e) =>
          e == LogicalKeyboardKey.shiftLeft ||
          e == LogicalKeyboardKey.shiftRight,
    );
    final isArrowUp = HardwareKeyboard.instance.logicalKeysPressed.any(
      (e) => e == LogicalKeyboardKey.arrowUp,
    );
    // MacOS CMD key
    final isMetaPressed = HardwareKeyboard.instance.logicalKeysPressed.any(
      (e) =>
          e == LogicalKeyboardKey.metaLeft || e == LogicalKeyboardKey.metaRight,
    );
    final isModifierPressed =
        isControlPressed || isAltPressed || isShiftPressed;

    final isEnterPressed = event.logicalKey == LogicalKeyboardKey.enter ||
        event.logicalKey == LogicalKeyboardKey.numpadEnter;
    final isEscapePressed = event.logicalKey == LogicalKeyboardKey.escape;

    final isVPressed = event.character == 'v';

    final text = widget.inputController.document;

    if (isEscapePressed) {
      _onEscapeTap();
      return KeyEventResult.handled;
    } else if ((isMetaPressed || isControlPressed) && isVPressed) {
      if (event is KeyUpEvent) {
        _onPasteFromClipboard();
      }
      return KeyEventResult.handled;
    } else if (!isModifierPressed && isEnterPressed) {
      if (event is KeyUpEvent) {
        _onSendMessage();
      }
      return KeyEventResult.handled;
    } else if (isArrowUp &&
        text.isEmpty() && // Строка пустая
        widget.markedEditMessage == null) {
      widget.onArrowUp();
      return KeyEventResult.handled;
    }
    return KeyEventResult.ignored;
  }

  void _onEscapeTap() {
    if (widget.markedEditMessage != null) {
      _cancelEditMessage();
    }
    // Проверяем, нет ли стиля цитаты
    final style = widget.messageQuoteController.getSelectionStyle();
    if (style ==
        quill.Style.attr({
          'blockquote': quill.Attribute.blockQuote,
        })) {
      _cancelQuoteMessage();
    }
  }

  void _cancelEditMessage() {
    final inputBloc = context.read<ChatInputBloc>();
    widget.inputController.toggledStyle = quill.Style();
    widget.inputController.toolbarButtonToggler.clear();
    widget.inputController.document = quill.Document();
    inputBloc.add(const ChatInputEvent.reset());
    widget.onMarkEditMessage(null);
  }

  void _cancelQuoteMessage() {
    widget.messageQuoteController.toggledStyle = quill.Style();
    widget.messageQuoteController.toolbarButtonToggler.clear();
    widget.messageQuoteController.document = quill.Document();
  }

  Future<void> _onPasteFromClipboard() async {
    final inputBloc = context.read<ChatInputBloc>();
    final clipboardImage = await Pasteboard.image;
    if (clipboardImage != null && clipboardImage.isNotEmpty) {
      final file = DLSFile(
        key: getRandomString,
        data: clipboardImage,
        fileName: '$getRandomString.png',
      );
      inputBloc.add(
        ChatInputEvent.attachFiles(files: [file]),
      );
    }
    final clipboardText = await Pasteboard.text;
    if (clipboardText != null && clipboardText.isNotEmpty) {
      late final int editorCursorPosition;
      try {
        editorCursorPosition = widget.inputController.selection.start;
      } catch (_) {
        editorCursorPosition = 0;
      }
      widget.inputController.document.insert(
        editorCursorPosition,
        clipboardText,
      );
      inputBloc.add(
        ChatInputEvent.update(widget.inputController.document),
      );
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
    inputBloc.add(const ChatInputEvent.reset());
  }
}

class _FilesPanelBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChatInputBloc, ChatInputState>(
      buildWhen: (previous, current) =>
          previous.files.length != current.files.length,
      builder: (context, state) {
        if (state.filesPanelShowing) {
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

class _ChatInputBuilder extends StatelessWidget {
  const _ChatInputBuilder({
    required this.focusNode,
    required this.controller,
    required this.scrollController,
  });

  final FocusNode focusNode;
  final quill.QuillController controller;
  final ScrollController scrollController;

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
              context.ts_s14h22_4w400.copyWith(
                color: context.c_placeholder,
              ),
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
          autoFocus: true,
          expands: false,
        );
      },
    );
  }
}
