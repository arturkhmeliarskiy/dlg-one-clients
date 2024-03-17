// ignore_for_file: cascade_invocations

import 'dart:async';

import 'package:common/common.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/features/textroom/textroom.dart';
import 'package:dls_one/features/textroom/ui/chat_input/src/ui/mobile_footer_panel.dart';
import 'package:dls_one/features/textroom/ui/chat_input/src/ui/web_footer_panel.dart';
import 'package:dls_one/models/dls_file.dart';
import 'package:dls_one/utils/src/keyboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_quill/flutter_quill.dart' as quill;

class FooterPanelBuilder extends StatelessWidget {
  const FooterPanelBuilder({
    required this.keyboardHeight,
    required this.controller,
    required this.focusNode,
    required this.onSendMessage,
    this.onFormatMessage,
    super.key,
  });

  final double keyboardHeight;
  final quill.QuillController controller;
  final FocusNode focusNode;

  /// обработчик кнопки отправить
  final VoidCallback onSendMessage;
  final VoidCallback? onFormatMessage;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChatInputBloc, ChatInputState>(
      builder: (context, state) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (DlsPlatform.dlsPlatform == DlsPlatformType.mobile)
              BlocListener<CameraBloc, CameraState>(
                listener: (context, state) {
                  final inputBloc = context.read<ChatInputBloc>();
                  final cameraBloc = context.read<CameraBloc>();
                  if (state.isReady) {
                    if (inputBloc.state.recorderType == RecorderType.video) {
                      cameraBloc.add(const CameraEvent.cameraVideoRecStart());
                    }
                  }
                },
                child: MobileFooterPanel(
                  canSend: state.canSend,
                  emojiShowing: state.emojiShowing,
                  formatterShowing: state.formatterShowing,
                  atShowing: state.atShowing,
                  onAddAttachment: () {
                    _onAddAttachment(context);
                  },
                  onTapAt: () {
                    _onTapAt(context);
                  },
                  onTapSmile: () {
                    _onTapEmoji(context);
                  },
                  onTapTt: onFormatMessage,
                  onTapSend: onSendMessage,
                  canRecord: state.canRecord,
                  recorderType: state.recorderType,
                  isRecording: state.isRecording,
                  onRecorderStart: () {
                    _onRecorderStart(context);
                  },
                  onRecorderEnd: () {
                    _onRecorderEnd(context);
                  },
                  onRecorderCancel: () {
                    _onRecorderCancel(context);
                  },
                  onChangeRecorderTap: () {
                    _onChangeRecorderTap(context);
                  },
                ),
              ),

            if ([DlsPlatformType.desktop, DlsPlatformType.web]
                .contains(DlsPlatform.dlsPlatform))
              WebFooterPanel(
                canSend: state.canSend,
                emojiShowing: state.emojiShowing,
                formatterShowing: state.formatterShowing,
                atShowing: state.atShowing,
                onAddAttachment: () {
                  _onAddAttachment(context);
                },
                onTapAt: () {
                  _onTapAt(context);
                },
                onTapSmile: () {
                  _onTapEmoji(context);
                },
                onTapTt: onFormatMessage,
                onTapSend: onSendMessage,
                canRecord: state.canRecord,
                recorderType: state.recorderType,
                isRecording: state.isRecording,
                onAttachRecord: (file) {
                  _onAttachRecord(context, file);
                },
              ),

            /// смайлики
            if (state.emojiShowing)
              SizedBox(
                height: keyboardHeight,
                child: EmojiPickerWidget(
                  onEmojiSelected: (value) {
                    _onEmojiSelected(context, value);
                  },
                ),
              ),
          ],
        );
      },
    );
  }

  void _onAttachRecord(BuildContext context, DLSFile file) {
    context.read<ChatInputBloc>().add(
          ChatInputEvent.attachFiles(
            files: [file],
          ),
        );
  }

  void _onChangeRecorderTap(BuildContext context) {
    final inputBloc = context.read<ChatInputBloc>();
    if (inputBloc.state.recorderType == RecorderType.audio) {
      inputBloc.add(
        const ChatInputEvent.updateRecorderType(
          RecorderType.video,
        ),
      );
    }
    if (inputBloc.state.recorderType == RecorderType.video) {
      inputBloc.add(
        const ChatInputEvent.updateRecorderType(
          RecorderType.audio,
        ),
      );
    }
  }

  void _onRecorderEnd(BuildContext context) {
    final inputBloc = context.read<ChatInputBloc>();
    if (inputBloc.state.recorderType == RecorderType.audio) {
      inputBloc.add(const ChatInputEvent.audioStopRec());
    }
    if (inputBloc.state.recorderType == RecorderType.video) {
      /// управление камерой
      context.read<CameraBloc>().add(
            const CameraEvent.cameraVideoRecStop(save: true),
          );

      /// timer
      inputBloc.add(const ChatInputEvent.videoStopRec());
    }

    /// необходимо потому что пользователь может начать
    /// тыкать текст во время записи
    inputBloc.add(
      ChatInputEvent.update(controller.document),
    );
  }

  void _onRecorderStart(BuildContext context) {
    final inputBloc = context.read<ChatInputBloc>();
    if (inputBloc.state.recorderType == RecorderType.audio) {
      inputBloc.add(
        const ChatInputEvent.audioStartRec(),
      );
    }
    if (inputBloc.state.recorderType == RecorderType.video) {
      final cameraBloc = context.read<CameraBloc>();
      cameraBloc.add(
        const CameraEvent.cameraInitialize(),
      );
      inputBloc.add(
        const ChatInputEvent.videoStartRec(),
      );
    }
  }

  void _onRecorderCancel(BuildContext context) {
    final inputBloc = context.read<ChatInputBloc>();
    if (inputBloc.state.recorderType == RecorderType.audio) {
      inputBloc.add(
        const ChatInputEvent.audioCancelRec(),
      );
    }
    if (inputBloc.state.recorderType == RecorderType.video) {
      final cameraBloc = context.read<CameraBloc>();
      cameraBloc.add(
        const CameraEvent.cameraVideoRecStop(
          save: false,
        ),
      );
      cameraBloc.add(const CameraEvent.cameraCleanUp());
      inputBloc.add(
        const ChatInputEvent.videoCancelRec(),
      );
    }
  }

  Future<void> _onAddAttachment(BuildContext context) async {
    final inputBloc = context.read<ChatInputBloc>();
    final result = await FilePickerService().selectFiles();

    /// после отработки события выбора файла клавиатура скрывается
    /// необходимо проверить есть ли фокус на поле ввода и отобразить клавиатуру
    /// если фокус есть
    if (focusNode.hasFocus) {
      await showKeyboard();
    }
    inputBloc.add(ChatInputEvent.attachFiles(files: result));
  }

  /// поиск пользователей
  Future<void> _onTapAt(BuildContext context) async {
    final inputBloc = context.read<ChatInputBloc>();
    final searchBloc = context.read<AtSearchBloc>();
    if (inputBloc.state.atShowing) {
      inputBloc.add(const ChatInputEvent.showAt());
    } else {
      controller.document.insert(controller.selection.start, '@');
      controller.moveCursorToPosition(controller.selection.start + 1);
      searchBloc.add(const AtSearchEvent.reset());
      searchBloc.add(const AtSearchEvent.search(''));
    }
  }

  /// поместить смайлик в поле ввода
  void _onEmojiSelected(BuildContext context, String emoji) {
    controller.ignoreFocusOnTextChange = true;
    final pos = controller.selection.start;
    controller.document.insert(pos, emoji);
    controller.moveCursorToPosition(pos + emoji.length);
    context.read<ChatInputBloc>().add(
          ChatInputEvent.update(controller.document),
        );
  }

  /// открыть/закрыть смайлы
  Future<void> _onTapEmoji(BuildContext context) async {
    final inputBloc = context.read<ChatInputBloc>();
    if (inputBloc.state.emojiShowing) {
      focusNode.requestFocus();
      await showKeyboard();
    } else {
      await hideKeyboard();
      await Future<void>.delayed(const Duration(milliseconds: 250));
    }
    inputBloc.add(const ChatInputEvent.showEmoji());
  }
}
