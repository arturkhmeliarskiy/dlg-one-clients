import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:dls_matrix_client/dls_matrix_client.dart';
import 'package:dls_one/const/constants.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/features/textroom/ui/chat_input/chat_input.dart';
import 'package:dls_one/features/textroom/ui/chat_input/src/ui/message_edit_panel.dart';
import 'package:dls_one/models/dls_file.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_keyboard_size/flutter_keyboard_size.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_quill/flutter_quill.dart' as quill;

@RoutePage()
@immutable
class AdvancedEditorPage extends StatelessWidget {
  /// метод вызывается роутером для генерации необходимых bloc provider
  /// необходимо
  /// chatId - id чата в который будет отправлено сообщение
  /// message - документ-сообщение, которое возможно было набрано на прошлом экране в поле ввода
  /// files - файлы, которые возможно были прикреплены на прошлом экране в поле ввода
  /// onSendMessageCallback - коллбэк отправки сообщения
  const AdvancedEditorPage({
    required this.chatId,
    required this.onSendMessage,
    required this.message,
    required this.files,
    this.markedEditMessage,
    super.key,
  });

  final String chatId;
  final DlsChatMessage? markedEditMessage;
  final ValueChanged<SendChatMessage> onSendMessage;
  final quill.Document message;
  final List<DLSFile> files;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ChatInputBloc>(
          create: (context) {
            return ChatInputBloc(
              ChatInputState.hasPayload(
                atShowing: false,
                emojiShowing: false,
                formatterShowing: false,
                isRecording: false,
                recorderType: RecorderType.audio,
                message: message,
                files: files,
              ),
            );
          },
        ),
        BlocProvider<AtSearchBloc>(
          create: (context) {
            return AtSearchBloc(
              matrixClient: context.read<DlsMatrixClient>(),
              users: context.read<UsersBloc>(),
              chatId: chatId,
            );
          },
        ),
        BlocProvider<CameraBloc>(
          create: (context) {
            return CameraBloc();
          },
        ),
      ],
      child: _AdvancedEditorLayout(
        message: message,
        files: files,
        chatId: chatId,
        onSendMessage: onSendMessage,
        markedEditMessage: markedEditMessage,
      ),
    );
  }
}

@immutable
class _AdvancedEditorLayout extends StatefulWidget {
  /// constructor
  const _AdvancedEditorLayout({
    required this.chatId,
    required this.onSendMessage,
    this.markedEditMessage,
    this.message,
    this.files,
  });

  final String chatId;
  final quill.Document? message;
  final List<DLSFile>? files;
  final DlsChatMessage? markedEditMessage;
  final ValueChanged<SendChatMessage> onSendMessage;

  @override
  State<_AdvancedEditorLayout> createState() => _AdvancedEditorLayoutState();
}

class _AdvancedEditorLayoutState extends State<_AdvancedEditorLayout>
    with SubscriptionMixin {
  final _scrollController = ScrollController();
  final _inputFocusNode = FocusNode();
  final _inputController = quill.QuillController.basic();
  var _keyboardHeight = 150.0;
  bool urlClosed = false;

  @override
  void initState() {
    super.initState();
    final inputBloc = context.read<ChatInputBloc>();
    final searchBloc = context.read<AtSearchBloc>();
    final matrixClient = context.read<DlsMatrixClient>();

    _inputController
      ..document = inputBloc.state.message

      /// не фокусить в редакторе при изменении
      ..ignoreFocusOnTextChange = true

      /// переместить курсор в конец
      ..moveCursorToEnd()

      /// слушать поле ввода и обновлять состояние каждый раз состояние
      ..addListener(() {
        if (!inputBloc.state.isRecording) {
          inputBloc.add(
            ChatInputEvent.update(_inputController.document),
          );
        }
      })

      /// отлавливает я печатаю
      ..addListener(() {
        matrixClient.userTyping(widget.chatId);
      })

      /// отлавливает @ и если она есть, то показывает пользователей
      ..addListener(() {
        final start = _inputController.selection.start > 0
            ? _inputController.selection.start
            : 0;
        final s1 = _inputController.document.getPlainText(0, start);
        if (inputBloc.state.atShowing) {
          if (s1.isNotEmpty) {
            searchBloc.add(
              AtSearchEvent.search(
                _inputController.document.getPlainText(
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
              _inputController.document.getPlainText(
                s1.lastIndexOf('@'),
                s1.length - s1.lastIndexOf('@'),
              ),
            ),
          );
        }
      });

    /// подписка на появление клавиатуры
    /// чтобы одновременно не было клавиатуры и смайликов
    addSubscription(
      KeyboardVisibilityController().onChange.listen(
        (bool isKeyboardVisible) async {
          if (isKeyboardVisible && inputBloc.state.emojiShowing) {
            inputBloc.add(const ChatInputEvent.showEmoji());
          }
        },
      ),
    );
  }

  @override
  void dispose() {
    cancelAllSubscriptions();
    _scrollController.dispose();
    _inputFocusNode.dispose();
    _inputController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return KeyboardSizeProvider(
      child: WillPopScope(
        onWillPop: () => _exitAsk(context),
        child: Scaffold(
          body: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 11.h,
                      horizontal: 16.w,
                    ),
                    child: Row(
                      children: [
                        Text(
                          S.current.text_editor,
                          style: context.ts_s14h14w500
                              .copyWith(color: context.c_text),
                        ),
                        const Spacer(),
                        DLSButtonIcon(
                          onTap: () {
                            _exitAsk(context).then((value) {
                              if (value) {
                                context.popRoute();
                              }
                            });
                          },
                          color: Colors.transparent,
                          icon: Assets.icons.times1.svg(
                            width: 18.r,
                            height: 18.r,
                            color: context.c_text_grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const DLSDivider(),
                  if (widget.markedEditMessage != null) ...[
                    Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 12.h,
                        horizontal: 16.w,
                      ),
                      child: MessageEditPanel(
                        markedEditMessage: widget.markedEditMessage!,
                      ),
                    ),
                    const DLSDivider(),
                  ],

                  SizedBox(height: 4.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    child: quill.QuillToolbar.basic(
                      controller: _inputController,
                      toolbarIconAlignment: WrapAlignment.spaceBetween,
                      // TODO(alexsh): widget have internal button size Factor
                      toolbarIconSize: 16.w,
                      color: Colors.transparent,
                      iconTheme: quill.QuillIconTheme(
                        iconSelectedColor: context.c_blue,
                        iconSelectedFillColor: Colors.transparent,
                        iconUnselectedFillColor: Colors.transparent,
                        borderRadius: 5.r,
                      ),
                      showDividers: false,
                      showFontFamily: false,
                      showFontSize: false,
                      showUnderLineButton: false,
                      showStrikeThrough: false,
                      showColorButton: false,
                      showBackgroundColorButton: false,
                      showClearFormat: false,
                      showHeaderStyle: false,
                      showListCheck: false,
                      showIndent: false,
                      showUndo: false,
                      showRedo: false,
                      showSearchButton: false,
                    ),
                  ),
                  SizedBox(height: 4.h),
                  Expanded(
                    child: BlocBuilder<ChatInputBloc, ChatInputState>(
                      /// для смайликов необходимо перерисовывать виджет
                      /// т.к. контроллер меняет содержимое,
                      /// но фокус после изменения запрещен
                      buildWhen: (previous, current) =>
                          previous.transaction != current.transaction,
                      builder: (context, state) {
                        return Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.w),
                          child: quill.QuillEditor(
                            controller: _inputController,
                            readOnly: false,
                            focusNode: _inputFocusNode,
                            scrollController: _scrollController,
                            scrollable: true,
                            padding: EdgeInsets.zero,
                            autoFocus: true,
                            expands: false,
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 11.h),

                  BlocBuilder<ChatInputBloc, ChatInputState>(
                    builder: (context, state) {
                      if (state.atShowing) {
                        return SizedBox(height: 88.h);
                      }
                      return const SizedBox();
                    },
                  ),

                  /// лента с файлами
                  BlocBuilder<ChatInputBloc, ChatInputState>(
                    buildWhen: (previous, current) =>
                        previous.files.length != current.files.length,
                    builder: (context, state) {
                      if (state.filesPanelShowing) {
                        return ChatInputFilesPreviews(
                          audios: state.audios,
                          images: state.images,
                          videos: state.videos,
                          docs: state.docs,
                        );
                      }
                      return const SizedBox();
                    },
                  ),
                  ChatUrlPreview(padding: EdgeInsets.only(bottom: 11.h)),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.h),
                    child: FooterPanelBuilder(
                      keyboardHeight: _keyboardHeight,
                      controller: _inputController,
                      focusNode: _inputFocusNode,
                      onSendMessage: _onSendMessage,
                    ),
                  ),
                ],
              ),
              BlocBuilder<ChatInputBloc, ChatInputState>(
                builder: (context, state) {
                  if (state.atShowing) {
                    return Consumer<ScreenHeight>(
                      builder: (context, res, child) {
                        return Positioned(
                          bottom: (state.files.isNotEmpty ? 44.h + 11.h : 0) +
                              42.h +
                              (state.emojiShowing ? _keyboardHeight : 0),
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
                  return const SizedBox();
                },
              ),
              CameraLayout(
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
              )
            ],
          ),
        ),
      ),
    );
  }

  /// в поиске нажали на пользователя
  void _onUserTap(String userName, String query, BuildContext context) {
    final queryLength = query.isNotEmpty ? query.length : 1;
    _inputController.document.replace(
      _inputController.selection.start - queryLength,
      queryLength,
      userName,
    );
    _inputController
      ..moveCursorToPosition(
        _inputController.selection.start + userName.length,
      )
      ..formatText(
        _inputController.selection.start - queryLength,
        userName.length,
        const quill.Attribute(
          'color',
          quill.AttributeScope.INLINE,
          InlineColors.mentionColor,
        ),
      );
    context.read<AtSearchBloc>().add(const AtSearchEvent.reset());
    context.read<AtSearchBloc>().add(const AtSearchEvent.search(''));
    context.read<ChatInputBloc>().add(const ChatInputEvent.showAt());
    context.read<ChatInputBloc>().add(
          ChatInputEvent.update(_inputController.document),
        );
  }

  /// отправить
  void _onSendMessage() {
    final inputBloc = context.read<ChatInputBloc>();
    if (inputBloc.state.canSend) {
      widget.onSendMessage(
        SendChatMessage(
          plainMessage: inputBloc.state.plainMessage,
          formattedMessage: inputBloc.state.formattedMessage,
          files: inputBloc.state.files,
        ),
      );
      _inputController.clear();
      inputBloc.add(const ChatInputEvent.reset());
      context.navigateBack();
    }
  }

  Future<bool> _exitAsk(BuildContext context) async {
    final res = await showDLSDialog(
      context,
      S.current.text_editor_exit,
      S.current.text_editor_data_format_reset,
    );
    return res == DLSDialogAnswer.confirm;
  }
}
