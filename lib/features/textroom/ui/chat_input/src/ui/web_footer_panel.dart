import 'package:auto_route/auto_route.dart';
import 'package:dls_one/app/router/app_router.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/features/textroom/ui/chat_input/src/bloc/recorder_type.dart';
import 'package:dls_one/models/dls_file.dart';
import 'package:flutter/material.dart';

class WebFooterPanel extends StatefulWidget {
  /// конструктор
  const WebFooterPanel({
    required this.emojiShowing,
    required this.atShowing,
    required this.formatterShowing,
    required this.canSend,
    required this.canRecord,
    required this.recorderType,
    required this.isRecording,
    required this.onAttachRecord,
    this.onAddAttachment,
    this.onTapAt,
    this.onTapSmile,
    this.onTapTt,
    this.onTapSend,
    super.key,
  });

  /// сообщение можно отправить
  final bool canSend;

  /// эмоджи активны
  final bool emojiShowing;

  /// Панель форматирования сообщения
  final bool formatterShowing;

  /// упоминания активны
  final bool atShowing;

  /// можно записывать аудио/видео сообщение
  final bool canRecord;

  /// идет запись аудио/видео сообщения
  final bool isRecording;

  /// активный тип кнопки записи (сейчас аудио или видео)
  final RecorderType recorderType;

  /// коллбэк нажатия на скрепку
  final VoidCallback? onAddAttachment;

  /// коллбэк нажатия на собаку
  final VoidCallback? onTapAt;

  /// коллбэк нажатия на смайлик
  final VoidCallback? onTapSmile;

  /// коллбэк нажатия на Тт
  final VoidCallback? onTapTt;

  /// коллбэк нажатия на отправить
  final VoidCallback? onTapSend;

  final ValueChanged<DLSFile> onAttachRecord;

  @override
  State<WebFooterPanel> createState() => _WebFooterPanelState();
}

class _WebFooterPanelState extends State<WebFooterPanel> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 28.h,
      width: double.infinity,
      child: Row(
        children: [
          if (widget.onAddAttachment != null)
            WebButtonIconWithTooltip(
              icon: Assets.icons.paperclip.path,
              iconColor: context.c_text_grey,
              width: 28.r,
              height: 28.r,
              pressedBackground: context.c_grey_hover,
              onTap: widget.onAddAttachment,
            ),
          if (widget.onTapAt != null)
            WebButtonIconWithTooltip(
              icon: Assets.icons.at.path,
              iconColor: context.c_text_grey,
              pressedIconColor: context.c_blue,
              width: 28.r,
              height: 28.r,
              isPressed: widget.atShowing,
              pressedBackground: context.c_grey_hover,
              onTap: widget.onTapAt,
            ),
          if (widget.onTapSmile != null)
            WebButtonIconWithTooltip(
              icon: Assets.icons.smile.path,
              iconColor: context.c_text_grey,
              pressedIconColor: context.c_blue,
              width: 28.r,
              height: 28.r,
              isPressed: widget.emojiShowing,
              pressedBackground: context.c_grey_hover,
              onTap: widget.onTapSmile,
            ),
          if (widget.onTapTt != null)
            WebButtonIconWithTooltip(
              icon: Assets.icons.tt.path,
              iconColor: context.c_text_grey,
              pressedIconColor: context.c_blue,
              width: 28.r,
              height: 28.r,
              isPressed: widget.formatterShowing,
              pressedBackground: context.c_grey_hover,
              onTap: widget.onTapTt,
            ),
          const Spacer(),
          WebButtonIconWithTooltip(
            icon: Assets.icons.paperclip24.path,
            iconColor: context.c_text_grey,
            pressedIconColor: context.c_blue,
            width: 28.r,
            height: 28.r,
            pressedBackground: context.c_grey_hover,
            onTap: _onRecordAudio,
          ),
          WebButtonIconWithTooltip(
            icon: Assets.icons.paperclip25.path,
            iconColor: context.c_text_grey,
            pressedIconColor: context.c_blue,
            width: 28.r,
            height: 28.r,
            pressedBackground: context.c_grey_hover,
            onTap: _onRecordVideo,
          ),
          if (widget.canSend && widget.onTapSend != null)
            DLSButtonIcon(
              onTap: widget.onTapSend,
              icon: Assets.icons.message1.svg(
                width: 18.r,
                height: 18.r,
                color: context.c_white_text,
              ),
            ),
        ],
      ),
    );
  }

  void _onRecordAudio() {
    context.router
        .push<DLSFile?>(WebRecorderDialogRoute(voiceOnly: true))
        .then((value) {
      if (value == null) {
        return;
      }
      widget.onAttachRecord(value);
    });
  }

  void _onRecordVideo() {
    context.router
        .push<DLSFile?>(WebRecorderDialogRoute(voiceOnly: false))
        .then((value) {
      if (value == null) {
        return;
      }
      widget.onAttachRecord(value);
    });
  }
}
