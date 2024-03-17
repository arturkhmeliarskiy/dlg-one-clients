import 'package:dls_one/web/calendar/calendar.dart';
import 'package:dls_one/web/calendar/widget/common/view/separated_calendar_task_view.dart';
import 'package:flutter/material.dart';

class CalendarRightView extends StatelessWidget {
  const CalendarRightView({required this.model, super.key});

  final CalendarModel model;

  @override
  Widget build(BuildContext context) {
    if (model.viewType == CalendarViewType.month) {
      return const SizedBox();
    }
    return const SeparatedCalendarTaskView();
  }
}
