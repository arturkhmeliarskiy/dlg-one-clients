import 'package:dls_one/core/core.dart';
import 'package:dls_one/features/textroom/ui/chat_input/src/bloc/recorder_type.dart';
import 'package:dls_one/features/textroom/ui/chat_input/src/ui/mobile_recorder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_svg/flutter_svg.dart';

/// нижняя панель отправки сообщения
class MobileFooterPanel extends StatefulWidget {
  /// конструктор
  const MobileFooterPanel({
    required this.emojiShowing,
    required this.atShowing,
    required this.formatterShowing,
    required this.canSend,
    required this.canRecord,
    required this.recorderType,
    required this.isRecording,
    required this.onRecorderCancel,
    required this.onRecorderStart,
    required this.onRecorderEnd,
    required this.onChangeRecorderTap,
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

  /// коллбэк начала перемещения кнопки записи аудио
  final VoidCallback onRecorderStart;

  /// коллбэк окончания перемещения кнопки записи аудио
  final VoidCallback onRecorderEnd;

  final VoidCallback onRecorderCancel;

  /// коллбэк нажатия на кнопку записи аудио/видео
  final VoidCallback onChangeRecorderTap;

  @override
  State<MobileFooterPanel> createState() => _MobileFooterPanelState();
}

class _MobileFooterPanelState extends State<MobileFooterPanel> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 28.h,
      width: double.infinity,
      child: Row(
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                if (!widget.isRecording)
                  Flexible(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        if (widget.onAddAttachment != null)
                          Padding(
                            padding: EdgeInsets.only(right: 8.w),
                            child: WebButtonIconWithTooltip(
                              icon: Assets.icons.paperclip.path,
                              iconColor: context.c_text_grey,
                              width: 18.r,
                              height: 18.r,
                              pressedBackground: Colors.transparent,
                              onTap: widget.onAddAttachment,
                            ),
                          ),
                        if (widget.onTapAt != null)
                          Padding(
                            padding: EdgeInsets.only(right: 8.w),
                            child: WebButtonIconWithTooltip(
                              icon: Assets.icons.at.path,
                              iconColor: context.c_text_grey,
                              pressedIconColor: context.c_blue,
                              width: 18.r,
                              height: 18.r,
                              isPressed: widget.atShowing,
                              pressedBackground: Colors.transparent,
                              onTap: widget.onTapAt,
                            ),
                          ),
                        if (widget.onTapSmile != null)
                          Padding(
                            padding: EdgeInsets.only(right: 8.w),
                            child: WebButtonIconWithTooltip(
                              icon: Assets.icons.smile.path,
                              iconColor: context.c_text_grey,
                              pressedIconColor: context.c_blue,
                              width: 18.r,
                              height: 18.r,
                              isPressed: widget.emojiShowing,
                              pressedBackground: Colors.transparent,
                              onTap: widget.onTapSmile,
                            ),
                          ),
                        if (widget.onTapTt != null)
                          WebButtonIconWithTooltip(
                            icon: Assets.icons.tt.path,
                            iconColor: context.c_text_grey,
                            pressedIconColor: context.c_blue,
                            width: 18.r,
                            height: 18.r,
                            isPressed: widget.formatterShowing,
                            pressedBackground: Colors.transparent,
                            onTap: widget.onTapTt,
                          ),
                      ],
                    ),
                  ),
                Flexible(
                  child: KeyboardVisibilityBuilder(
                    builder: (p0, isKeyboardVisible) {
                      if (widget.canRecord && !isKeyboardVisible) {
                        final icon = widget.recorderType == RecorderType.audio
                            ? Assets.icons.microphone1.path
                            : Assets.icons.video1.path;
                        return MobileRecorder(
                          icon: SvgPicture.asset(
                            icon,
                            color: context.c_text_grey,
                            width: 18.r,
                            height: 18.r,
                          ),
                          isRecording: widget.isRecording,
                          activeIcon: SvgPicture.asset(
                            icon,
                            color: context.c_white_text,
                            width: 18.r,
                            height: 18.r,
                          ),
                          onRecorderCancel: widget.onRecorderCancel,
                          onRecorderDragStarted: widget.onRecorderStart,
                          onRecorderDragEnd: widget.onRecorderEnd,
                          onChangeRecorderTap: widget.onChangeRecorderTap,
                        );
                      }
                      return const SizedBox();
                    },
                  ),
                ),
              ],
            ),
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
}
