import 'package:collection/collection.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/features/todo/widget/ui/upcoming_todo_page/todo_page_splitter.dart';
import 'package:dls_one/features/todo/widget/ui/upcoming_todo_page/upcoming_sections_list.dart';
import 'package:dls_one/features/todo/widget/ui/upcoming_todo_page/upcoming_todo_page.dart';
import 'package:dls_one/features/todo/widget/ui/week_calendart.dart/week_calendar.dart';
import 'package:flutter/material.dart';

class WideUpcomingTodoLayout extends StatelessWidget {
  const WideUpcomingTodoLayout({
    required this.startDate,
    required this.sections,
    super.key,
  });

  final List<TodoSection> sections;
  final ValueGetter<DateTime> startDate;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 13.h),
        WeekCalendar(
          controller: SelectedDateNotifier.of(context),
          startDate: startDate(),
          hasEvents: (date) =>
              sections.firstWhereOrNull(
                (element) => element.when(
                  overdue: (_) => false,
                  date: (models, data) =>
                      data.isSameDayWith(date) && models.isNotEmpty,
                ),
              ) !=
              null,
        ),
        Expanded(
          child: ValueListenableBuilder(
            valueListenable: SelectedSectionNotifier.of(context),
            builder: (context, value, child) {
              return UpcomingSectionsList(
                sections: sections,
                selectedSection: value,
              );
            },
          ),
        ),
      ],
    );
  }
}
