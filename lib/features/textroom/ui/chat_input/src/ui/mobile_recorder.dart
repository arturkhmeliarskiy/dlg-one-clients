// ignore_for_file: cascade_invocations

import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

/// виджет кнопки записи аудио/видео
class MobileRecorder extends StatelessWidget {
  /// конструктор
  const MobileRecorder({
    required this.icon,
    required this.activeIcon,
    required this.isRecording,
    required this.onChangeRecorderTap,
    required this.onRecorderDragStarted,
    required this.onRecorderDragEnd,
    required this.onRecorderCancel,
    super.key,
  });

  /// тап по кнопке
  final VoidCallback onChangeRecorderTap;

  /// начали перемещение кнопки
  final VoidCallback onRecorderDragStarted;

  /// завершили перемещение кнопки
  final VoidCallback onRecorderDragEnd;

  /// отмена записи
  final VoidCallback onRecorderCancel;

  /// иконка не активной кнопки
  final Widget icon;

  /// иконка активной кнопки
  final Widget activeIcon;

  final bool isRecording;

  static const String _dragData = '_recordingDragTarget';

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (isRecording)
          DragTarget<String>(
            builder: (context, accepted, rejected) {
              return Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  _RecordingTimeBuilder(),
                  SizedBox(width: 12.w),
                  Assets.icons.angleLeft.svg(
                    width: 12.w,
                    height: 12.h,
                    color: context.c_placeholder,
                  ),
                  SizedBox(width: 4.w),
                  Text(
                    S.of(context).recorderSwipeToCancel,
                    style: context.ts_s12h14w400.copyWith(
                      color: context.c_placeholder,
                    ),
                  ),
                ],
              );
            },
            onAccept: (_) {
              onRecorderCancel();
            },
            onLeave: (_) {
              onRecorderDragEnd();
            },
            onWillAccept: (data) {
              return data == _dragData;
            },
          ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              LongPressDraggable(
                data: _dragData,
                axis: Axis.horizontal,
                feedback: DLSButtonIcon(
                  icon: activeIcon,
                  color: context.c_green,
                ),
                onDragStarted: onRecorderDragStarted,
                onDragEnd: (_) {
                  onRecorderDragEnd();
                },
                onDraggableCanceled: (_, __) {
                  onRecorderDragEnd();
                },
                child: DLSButtonIcon(
                  onTap: onChangeRecorderTap,
                  icon: icon,
                  color: Colors.transparent,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _RecordingTimeBuilder extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _RecordingTimeBuilderState();
  }
}

class _RecordingTimeBuilderState extends State<_RecordingTimeBuilder>
    with SingleTickerProviderStateMixin {
  late final Ticker ticker;
  var _recordDuration = Duration.zero;

  @override
  void dispose() {
    ticker.stop(canceled: true);
    ticker.dispose();
    super.dispose();
  }

  @override
  void initState() {
    ticker = createTicker((duration) {
      setState(() {
        _recordDuration = duration;
      });
    });
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      ticker.start();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          height: 8.r,
          width: 8.r,
          decoration: BoxDecoration(
            color: context.c_red,
            shape: BoxShape.circle,
          ),
        ),
        SizedBox(width: 8.w),
        SizedBox(
          width: 40.w,
          child: Text(
            _recordDurationFormat(),
            maxLines: 1,
            softWrap: false,
            style: context.ts_s14h14w400.copyWith(
              color: context.c_text_grey,
            ),
          ),
        ),
      ],
    );
  }

  String _recordDurationFormat() {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    final twoDigitMinutes = twoDigits(_recordDuration.inMinutes.remainder(60));
    final twoDigitSeconds = twoDigits(_recordDuration.inSeconds.remainder(60));
    return '$twoDigitMinutes:$twoDigitSeconds';
  }
}
