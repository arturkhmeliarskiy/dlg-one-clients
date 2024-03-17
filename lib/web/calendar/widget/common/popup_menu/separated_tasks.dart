import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/calendar/bloc/calendar_bloc.dart';
import 'package:dls_one/web/calendar/widget/common/mixin/calendar_item_model_mixin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SeparatedTasks extends StatefulWidget {
  const SeparatedTasks({
    required this.isOnDayTask,
    required this.selectedDay,
    required this.finishedIsHided,
    super.key,
  });

  final DateTime selectedDay;
  final bool finishedIsHided;
  final bool isOnDayTask;

  @override
  State<SeparatedTasks> createState() => _SeparatedTasksState();
}

class _SeparatedTasksState extends State<SeparatedTasks>
    with ListCalendarItemModelMixin {
  @override
  Widget build(BuildContext context) {
    final bloc = context.read<CalendarBloc>();
    return Container(
      height: MediaQuery.of(context).size.height - 52,
      color: context.c_white_background,
      child: Align(
        alignment: Alignment.bottomLeft,
        child: BlocBuilder<CalendarBloc, CalendarState>(
          builder: (context, state) {
            return Column(
              children: [
                SizedBox(
                  height: 10.h,
                ),
                // TODO(Stas): дождаться реализации фичи дел и переделать
                // ...state.maybeMap(
                //   orElse: () => [],
                //   loaded: (state) {
                //     return mapCalendarItemsModelsToTasksForSeparatedDayTask(
                //       isOneDayTask: widget.isOnDayTask,
                //       finishedIsHided: widget.finishedIsHided,
                //       bloc: bloc,
                //       selectedDay: widget.selectedDay,
                //       source: state.calendarItems,
                //     );
                //   },
                // )
              ],
            );
          },
        ),
      ),
    );
  }
}
