import 'package:dls_one/core/core.dart';
import 'package:dls_one/core/widgets/src/gesture/dls_horizontal_drag_view.dart';
import 'package:flutter/material.dart';

class DlsDayScheduleView<T> extends StatefulWidget {
  const DlsDayScheduleView({
    super.key,
    this.start = const TimeOfDay(hour: 8, minute: 0),
    this.end = const TimeOfDay(hour: 20, minute: 0),
    this.markers = const [],
    this.items = const [],
    this.mainItems = const [],
    this.showHours = true,
  });

  final TimeOfDay start;
  final TimeOfDay end;
  final List<TimeOfDay> markers;
  final List<DayScheduleModel<T>> items;
  final List<DayScheduleModel<T>> mainItems;
  final bool showHours;

  @override
  State<DlsDayScheduleView<T>> createState() => _DlsDayScheduleViewState<T>();
}

class _DlsDayScheduleViewState<T> extends State<DlsDayScheduleView<T>> {
  double? _startDelta;
  double? _endDelta;
  double? _moveDelta;

  int get _hoursCount {
    final startHour = widget.start.hour;
    final endHour = widget.end.hour;
    if (startHour > endHour && endHour != 0) {
      return 0;
    }
    var count = endHour - startHour;
    if (endHour == 0) {
      count = 24;
    }
    return count;
  }

  double _getHours(TimeOfDay time, {bool end = false}) {
    var diff =
        time.toDateTime().difference(widget.start.toDateTime()).inMinutes;
    if (end && time.hour == 0 && time.minute == 0) {
      diff = 24 * 60;
    }
    return diff / 60;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final hourWidth = constraints.maxWidth / _hoursCount;
        return Column(
          children: [
            if (widget.showHours)
              DayScheduleTopView(start: widget.start, count: _hoursCount),
            SizedBox(
              height: 4.h,
              width: constraints.maxWidth,
              child: Stack(
                children: widget.markers.map((marker) {
                  return Positioned(
                    left: hourWidth * _getHours(marker),
                    child: Assets.icons.arrowDropDown.svg(),
                  );
                }).toList(),
              ),
            ),
            SizedBox(
              height: 36.h,
              width: double.infinity,
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: context.c_grey_grey,
                      borderRadius: BorderRadius.circular(4.r),
                    ),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: Stack(
                      children: [
                        ...List.generate(widget.items.length, (index) {
                          return _buildScheduleModel(
                            widget.items[index],
                            hourWidth: hourWidth,
                          );
                        }),
                        ...List.generate(
                          _hoursCount - 1,
                          (index) {
                            return Positioned(
                              top: 0,
                              bottom: 0,
                              left: hourWidth * (index + 1),
                              child: const VerticalDivider(width: 1),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                  ...List.generate(widget.mainItems.length, (index) {
                    return _buildScheduleModel(
                      widget.mainItems[index],
                      hourWidth: hourWidth,
                    );
                  }),
                ],
              ),
            ),
          ],
        );
      },
    );
  }

  Widget _buildScheduleModel(DayScheduleModel<T> item, {double hourWidth = 0}) {
    var startTime = item.start ?? widget.start;
    var endTime = item.end ?? widget.end;
    final endCompare =
        endTime.toDateTime().compareTo(widget.start.toDateTime());
    final startCompare =
        startTime.toDateTime().compareTo(widget.end.toDateTime());
    if (endCompare > -1 && startCompare < 1) {
      if (startTime.toDateTime().compareTo(widget.start.toDateTime()) < 0) {
        startTime = widget.start;
      }
      if (endTime.toDateTime().compareTo(widget.end.toDateTime()) > 0 ||
          (endTime.hour + endTime.minute == 0)) {
        endTime = widget.end;
      }
    }
    final left = hourWidth * _getHours(startTime);
    return Positioned(
      top: 0,
      bottom: 0,
      left: left,
      child: SizedBox(
        width: hourWidth * _getHours(endTime, end: true) - left,
        child: DayScheduleItem<T>(
          model: item,
          onMove: item.onMove == null
              ? null
              : (child) {
                  return MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: DlsHorizontalDragView(
                      itemWidth: hourWidth,
                      onMove: (delta) {
                        // TODO make one solution without Copying this one
                        _moveDelta ??= 0;
                        _moveDelta = _moveDelta! + delta;
                        final offset = _moveDelta! / hourWidth;
                        final startTime = item.start!
                            .toDateTime()
                            .add(Duration(minutes: (offset * 60).round()))
                            .timeOfDay();
                        if (startTime.minute % 15 != 0) {
                          return;
                        }
                        item.onMove?.call(startTime);
                        _moveDelta = null;
                      },
                      onMoveEnd: () {
                        _moveDelta = null;
                        item.onMoveEnd?.call();
                      },
                      child: child,
                    ),
                  );
                },
          onChangeStart: item.onStartChanged == null
              ? null
              : (child) {
                  return MouseRegion(
                    cursor: SystemMouseCursors.resizeColumn,
                    child: DlsHorizontalDragView(
                      itemWidth: hourWidth,
                      onMove: (delta) {
                        // TODO make one solution without Copying this one
                        _startDelta ??= 0;
                        _startDelta = _startDelta! + delta;
                        final offset = _startDelta! / hourWidth;
                        final startTime = item.start!
                            .toDateTime()
                            .add(Duration(minutes: (offset * 60).round()))
                            .timeOfDay();
                        if (startTime.minute % 15 != 0) {
                          return;
                        }

                        item.onStartChanged?.call(startTime);
                        _startDelta = null;
                      },
                      onMoveEnd: () {
                        _startDelta = null;
                        item.onMoveEnd?.call();
                      },
                      child: child,
                    ),
                  );
                },
          onChangeEnd: item.onEndChanged == null
              ? null
              : (child) {
                  return MouseRegion(
                    cursor: SystemMouseCursors.resizeColumn,
                    child: DlsHorizontalDragView(
                      itemWidth: hourWidth,
                      onMove: (delta) {
                        // TODO make one solution without Copying this one
                        _endDelta ??= 0;
                        _endDelta = _endDelta! + delta;
                        final offset = _endDelta! / hourWidth;
                        final end = item.end!
                            .toDateTime()
                            .add(Duration(minutes: (offset * 60).round()))
                            .timeOfDay();
                        if (end.minute % 15 != 0) {
                          return;
                        }
                        item.onEndChanged?.call(end);
                        _endDelta = null;
                      },
                      onMoveEnd: () {
                        _endDelta = null;
                        item.onMoveEnd?.call();
                      },
                      child: child,
                    ),
                  );
                },
        ),
      ),
    );
  }
}
