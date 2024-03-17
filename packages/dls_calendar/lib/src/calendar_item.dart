import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:dls_calendar/src/utils/builders.dart';
import 'package:dls_calendar/src/utils/utils.dart';
import 'package:dls_calendar/src/widgets/day_view.dart';
import 'package:dls_calendar/src/enum/item_types.dart';

/// UI-айтем календаря, находящийся на сетке.
/// Может быть таской, мероприятием и меню
/// Предназначен только для виджетов календарей и списка задач справа от календаря.
typedef ItemBuilder = Widget Function(UICalendarItem event,
    BuildContext context, DayView dayView, double height, double width);

/// Represents a flutter week view event.
class UICalendarItem extends Comparable<UICalendarItem> {
  /// Тип айтема на календаре
  final CalendarItemType calendarItemType;

  /// ID таски или евента, приходящее с календаря, для меню оставлять null
  final int? id;

  /// The item title.
  final String? title;

  /// The item description.
  final String? description;

  /// The item start date & time.
  DateTime start;

  /// The item end date & time.
  DateTime end;

  /// Модель айтема на основе которого строится меню. Используем [CalendarItemModel]
  Object restModel;

  /// The item widget background color.
  final Color? backgroundColor;

  /// The item widget decoration.
  final BoxDecoration? decoration;

  /// The item text widget text style.
  final TextStyle? textStyle;

  /// The item widget padding.
  final EdgeInsets? padding;

  /// The item widget margin.
  final EdgeInsets? margin;

  /// The item widget tap event.
  final VoidCallback? onTap;

  /// The item widget long press event.
  final VoidCallback? onLongPress;

  /// The item text builder.
  final ItemBuilder? itemBuilder;

  /// Необходим ли фокус на айтеме
  bool isFocused;

  UICalendarItem({
    required this.calendarItemType,
    required this.restModel,
    this.id,
    this.title,
    this.description,
    required DateTime startDateTime,
    required DateTime endDateTime,
    this.backgroundColor = const Color(0xCC2196F3),
    this.decoration,
    this.textStyle = const TextStyle(color: Colors.white),
    this.padding = const EdgeInsets.all(10),
    this.margin,
    this.onTap,
    this.onLongPress,
    this.itemBuilder,
    this.isFocused = false,
  })
      : start = startDateTime.yearMonthDayHourMinute,
        end = endDateTime.yearMonthDayHourMinute;

  /// Builds the event widget.
  Widget build(BuildContext context, DayView dayView, double height,
      double width) {
    height = height - (padding?.top ?? 0.0) - (padding?.bottom ?? 0.0);
    width = width - (padding?.left ?? 0.0) - (padding?.right ?? 0.0);

    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        onLongPress: onLongPress,
        child: Ink(
          decoration: decoration ??
              (backgroundColor != null
                  ? BoxDecoration(color: backgroundColor)
                  : null),
          child: Container(
            margin: margin,
            padding: padding,
            child: (itemBuilder ?? DefaultBuilders.defaultEventTextBuilder)(
              this,
              context,
              dayView,
              math.max(0.0, height),
              math.max(0.0, width),
            ),
          ),
        ),
      ),
    );
  }

  /// Shifts the start and end times, so that the event's duration is unaltered
  /// and the event now starts in [newStartTime].
  void shiftEventTo(DateTime newStartTime) {
    end = end.add(newStartTime.difference(start));
    start = newStartTime;
  }

  @override
  int compareTo(UICalendarItem other) {
    int result = start.compareTo(other.start);
    if (result != 0) {
      return result;
    }
    return end.compareTo(other.end);
  }
}
