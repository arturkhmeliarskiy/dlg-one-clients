import 'package:flutter/material.dart';
import 'package:dls_calendar/src/styles/zoomable_header_widget.dart';
import 'package:dls_calendar/src/styles/hours_column.dart';
import 'package:dls_calendar/src/utils/hour_minute.dart';
import 'package:dls_calendar/src/utils/utils.dart';
import 'package:dls_calendar/src/widgets/day_view.dart';
import 'package:dls_calendar/src/widgets/hours_column.dart';
import 'package:dls_calendar/src/widgets/zoomable_header_widget.dart';

/// Allows to style a day view.
class DayViewStyle extends ZoomableHeaderWidgetStyle {
  /// An hour row height (with a zoom factor set to 1). Defaults to 60.
  final double hourRowHeight;

  /// The background color for the day view main column.
  ///
  /// Defaults to a light blue if the DayView's date is today (make sure to use [DayViewStyle.fromDate]
  /// if you're creating your own DayViewStyle and want this behaviour). Otherwise, defaults to a
  /// light gray.
  final Color? backgroundColor;

  /// Цвет сетки нерабочего времени
  final Color offHoursColor;

  /// The rules color, i.e., the color of the background horizontal lines positioned along with
  /// each hour shown in the hours column.
  ///
  /// Defaults to a semi-transparent gray.
  final Color? backgroundRulesColor;

  /// The current time rule color, i.e., the color of the horizontal line in the day view column,
  /// positioned at the current time of the day. It is only shown if the DayView's date is today.
  ///
  /// Defaults to [Colors.pink].
  final Color? currentTimeRuleColor;

  /// The current time rule height.
  ///
  /// Defaults to 1 pixel.
  final double currentTimeRuleHeight;

  /// The current time circle color. This is a small circle to be shown along with the horizontal
  /// time rule in the hours column, typically colored the same as [currentTimeRuleColor].
  ///
  /// If null, the circle is not drawn.
  final Color? currentTimeCircleColor;

  /// The current time circle radius.
  ///
  /// Defaults to 7.5 pixels.
  final double currentTimeCircleRadius;

  /// The current time rule position, i.e., the position of the current time circle in the day view column.
  ///
  /// Defaults to [CurrentTimeCirclePosition.right].
  final CurrentTimeCirclePosition currentTimeCirclePosition;

  /// Creates a new day view style instance.
  const DayViewStyle({
    required this.offHoursColor,
    double? headerSize,
    double? hourRowHeight,
    Color? backgroundColor,
    this.backgroundRulesColor = const Color(0x1A000000),
    this.currentTimeRuleColor = Colors.pink,
    double? currentTimeRuleHeight,
    this.currentTimeCircleColor,
    double? currentTimeCircleRadius,
    CurrentTimeCirclePosition? currentTimeCirclePosition,
  })  : hourRowHeight = (hourRowHeight ?? 60) < 0 ? 0 : (hourRowHeight ?? 60),
        backgroundColor = backgroundColor ?? const Color(0xFFF2F2F2),
        currentTimeRuleHeight =
            (currentTimeRuleHeight ?? 1) < 0 ? 0 : (currentTimeRuleHeight ?? 1),
        currentTimeCircleRadius = (currentTimeCircleRadius ?? 7.5) < 0
            ? 0
            : (currentTimeCircleRadius ?? 7.5),
        currentTimeCirclePosition =
            currentTimeCirclePosition ?? CurrentTimeCirclePosition.right,
        super(headerSize: headerSize);

  /// Allows to automatically customize the day view background color according to the specified date.
  DayViewStyle.fromDate({
    required DateTime date,
    double? headerSize,
    double? hourRowHeight,
    Color backgroundRulesColor = const Color(0x1A000000),
    Color currentTimeRuleColor = Colors.pink,
    double? currentTimeRuleHeight,
    Color? currentTimeCircleColor,
    double? currentTimeCircleRadius,
    CurrentTimeCirclePosition? currentTimeCirclePosition,
  }) : this(
          offHoursColor: Colors.transparent,
          headerSize: headerSize,
          hourRowHeight: hourRowHeight,
          backgroundColor: Utils.sameDay(date) ? const Color(0xFFE3F5FF) : null,
          backgroundRulesColor: backgroundRulesColor,
          currentTimeRuleColor: currentTimeRuleColor,
          currentTimeRuleHeight: currentTimeRuleHeight,
          currentTimeCircleColor: currentTimeCircleColor,
          currentTimeCircleRadius: currentTimeCircleRadius,
          currentTimeCirclePosition: currentTimeCirclePosition,
        );

  /// Allows to copy the current style instance with your own properties.
  DayViewStyle copyWith({
    Color? offHoursColor,
    double? headerSize,
    double? hourRowHeight,
    Color? backgroundColor,
    Color? backgroundRulesColor,
    Color? currentTimeRuleColor,
    double? currentTimeRuleHeight,
    Color? currentTimeCircleColor,
    double? currentTimeCircleRadius,
    CurrentTimeCirclePosition? currentTimeCirclePosition,
  }) =>
      DayViewStyle(
        offHoursColor: offHoursColor ?? this.offHoursColor,
        headerSize: headerSize ?? this.headerSize,
        hourRowHeight: hourRowHeight ?? this.hourRowHeight,
        backgroundColor: backgroundColor ?? this.backgroundColor,
        backgroundRulesColor: backgroundRulesColor ?? this.backgroundRulesColor,
        currentTimeRuleColor: currentTimeRuleColor ?? this.currentTimeRuleColor,
        currentTimeRuleHeight:
            currentTimeRuleHeight ?? this.currentTimeRuleHeight,
        currentTimeCircleColor:
            currentTimeCircleColor ?? this.currentTimeCircleColor,
        currentTimeCircleRadius:
            currentTimeCircleRadius ?? this.currentTimeCircleRadius,
        currentTimeCirclePosition:
            currentTimeCirclePosition ?? this.currentTimeCirclePosition,
      );

  /// Creates the background painter.
  CustomPainter createBackgroundPainter({
    required DayView dayView,
    required TopOffsetCalculator topOffsetCalculator,
    required HoursColumnStyle hoursColumnStyle,
  }) =>
      _EventsColumnBackgroundPainter(
        minimumTime: dayView.minimumTime,
        maximumTime: dayView.maximumTime,
        topOffsetCalculator: topOffsetCalculator,
        dayViewStyle: this,
        interval: dayView.hoursColumnStyle.interval,
        startOfWorkDay: dayView.startOfWorkDay,
        endOfWorkDay: dayView.endOfWorkDay,
        hoursColumnStyle: hoursColumnStyle,
        holidays: dayView.holidays,
        currentDay: dayView.date,
      );
}

/// The current time circle position enum.
enum CurrentTimeCirclePosition {
  /// Whether it should be placed at the start of the current time rule.
  left,

  /// Whether it should be placed at the end of the current time rule.
  right,
}

/// The events column background painter.
class _EventsColumnBackgroundPainter extends CustomPainter {
  /// The minimum time to display.
  final HourMinute minimumTime;

  /// The maximum time to display.
  final HourMinute maximumTime;

  /// The top offset calculator.
  final TopOffsetCalculator topOffsetCalculator;

  /// The day view style.
  final DayViewStyle dayViewStyle;

  /// The interval between two lines.
  final Duration interval;

  /// Начало рабочего дня
  final HourMinute startOfWorkDay;

  /// Конец рабочего дня
  final HourMinute endOfWorkDay;

  final HoursColumnStyle hoursColumnStyle;

  /// Выходные
  final List<int> holidays;

  /// Текущий день
  final DateTime currentDay;

  /// Creates a new events column background painter.
  const _EventsColumnBackgroundPainter({
    required this.minimumTime,
    required this.maximumTime,
    required this.topOffsetCalculator,
    required this.dayViewStyle,
    required this.interval,
    required this.startOfWorkDay,
    required this.endOfWorkDay,
    required this.hoursColumnStyle,
    required this.holidays,
    required this.currentDay,
  });

  @override
  void paint(Canvas canvas, Size size) {
    if (dayViewStyle.backgroundColor != null) {
      final dayColor = (holidays.contains(currentDay.weekday))
          ? dayViewStyle.offHoursColor
          : dayViewStyle.backgroundColor!;

      canvas.drawRect(
          Rect.fromLTWH(hoursColumnStyle.width, 0, size.width,
              topOffsetCalculator(startOfWorkDay)),
          Paint()..color = dayViewStyle.offHoursColor);
      canvas.drawRect(
          Rect.fromLTWH(
              hoursColumnStyle.width,
              topOffsetCalculator(startOfWorkDay),
              size.width,
              (topOffsetCalculator(endOfWorkDay) -
                  topOffsetCalculator(startOfWorkDay))),
          Paint()..color = dayColor);
      canvas.drawRect(
          Rect.fromLTWH(hoursColumnStyle.width,
              topOffsetCalculator(endOfWorkDay), size.width, size.height),
          Paint()..color = dayViewStyle.offHoursColor);
    }

    if (dayViewStyle.backgroundRulesColor != null) {
      final List<HourMinute> sideTimes =
          HoursColumn.getSideTimes(minimumTime, maximumTime, interval);
      for (HourMinute time in sideTimes) {
        double topOffset = topOffsetCalculator(time);
        canvas.drawLine(
            Offset(hoursColumnStyle.width, topOffset),
            Offset(size.width, topOffset),
            Paint()..color = dayViewStyle.backgroundRulesColor!);
      }
    }
  }

  @override
  bool shouldRepaint(
      _EventsColumnBackgroundPainter oldDayViewBackgroundPainter) {
    return dayViewStyle.backgroundColor !=
            oldDayViewBackgroundPainter.dayViewStyle.backgroundColor ||
        dayViewStyle.backgroundRulesColor !=
            oldDayViewBackgroundPainter.dayViewStyle.backgroundRulesColor ||
        topOffsetCalculator != oldDayViewBackgroundPainter.topOffsetCalculator;
  }
}
