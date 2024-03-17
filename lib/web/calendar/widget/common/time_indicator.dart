import 'package:dls_calendar/dls_calendar.dart';
import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class TimeIndicator extends StatelessWidget {
  const TimeIndicator({
    required this.dayViewStyle,
    required this.topOffsetCalculator,
    required this.hoursColumnWidth,
    required this.isRtl,
    super.key,
  });

  final DayViewStyle dayViewStyle;
  final TopOffsetCalculator topOffsetCalculator;
  final double hoursColumnWidth;
  final bool isRtl;

  @override
  Widget build(BuildContext context) {
    var children = <Widget>[
      if (dayViewStyle.currentTimeRuleHeight > 0 &&
          dayViewStyle.currentTimeRuleColor != null)
        Expanded(
          child: Container(
            height: dayViewStyle.currentTimeRuleHeight,
            color: dayViewStyle.currentTimeRuleColor,
          ),
        ),
      if (dayViewStyle.currentTimeCircleRadius > 0 &&
          dayViewStyle.currentTimeCircleColor != null)
        Container(
          height: dayViewStyle.currentTimeCircleRadius * 2,
          width: dayViewStyle.currentTimeCircleRadius * 2,
          decoration: BoxDecoration(
            color: dayViewStyle.currentTimeCircleColor,
            shape: BoxShape.circle,
          ),
        ),
    ];

    final timeIndicatorHight = math.max(
      dayViewStyle.currentTimeRuleHeight,
      dayViewStyle.currentTimeCircleRadius * 2,
    );

    if (dayViewStyle.currentTimeCirclePosition ==
        CurrentTimeCirclePosition.left) {
      children = children.reversed.toList();
    }

    return Positioned(
      top: topOffsetCalculator(HourMinute.now()) -
          timeIndicatorHight / 2 +
          dayViewStyle.headerSize,
      left: isRtl ? 0 : (hoursColumnWidth - 3.9.w),
      right: isRtl ? hoursColumnWidth : 0,
      child: Row(children: children),
    );
  }
}

// TODO(Stas): оставил старую реализацию на случай если новая забагается, удалить позже
class OldTimeIndicator extends StatelessWidget {
  const OldTimeIndicator({
    required this.topOffsetCalculator,
    required this.timeIndicatorHeight,
    required this.hoursColumnWidth,
    required this.headerHeight,
    super.key,
  });

  final double timeIndicatorHeight;
  final double Function(HourMinute) topOffsetCalculator;
  final double hoursColumnWidth;
  final double headerHeight;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: (topOffsetCalculator(HourMinute.now()) -
          timeIndicatorHeight / 2 +
          headerHeight),
      left: hoursColumnWidth - 3.9.w,
      right: 0,
      child: Row(
        children: [
          Container(
            height: timeIndicatorHeight,
            width: timeIndicatorHeight,
            decoration: BoxDecoration(
              color: context.c_blue,
              shape: BoxShape.circle,
            ),
          ),
          Expanded(
            child: Container(
              color: context.c_blue,
              height: 1.h,
            ),
          )
        ],
      ),
    );
  }
}
