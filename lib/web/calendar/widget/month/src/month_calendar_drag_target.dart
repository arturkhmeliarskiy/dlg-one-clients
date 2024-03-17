import 'package:dls_one/web/calendar/calendar.dart';
import 'package:flutter/material.dart';

class MonthCalendarDragTarget extends StatelessWidget {
  const MonthCalendarDragTarget({
    required this.child,
    this.onWillAccept,
    this.onLeave,
    this.onAccept,
    super.key,
  });

  final Widget child;
  final bool Function(CalendarItemModel data)? onWillAccept;
  final ValueChanged<CalendarItemModel>? onLeave;
  final ValueChanged<CalendarItemModel>? onAccept;

  @override
  Widget build(BuildContext context) {
    return DragTarget<CalendarItemModel>(
      builder: (context, candidateData, rejectData) => child,
      onWillAccept: (data) {
        if (data != null && onWillAccept != null) {
          return onWillAccept!(data);
        }
        return true;
      },
      onLeave: (data) {
        if (data == null) {
          return;
        }
        onLeave?.call(data);
      },
      onAccept: (data) {
        onAccept?.call(data);
      },
    );
  }
}
