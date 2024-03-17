import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/calendar/bloc/calendar_bloc.dart';
import 'package:dls_one/web/calendar/widget/common/popup_menu/separated_tasks.dart';
import 'package:dls_one/web/calendar/widget/common/app_bar/task_app_bar.dart';
import 'package:dls_one/web/calendar/widget/common/app_bar/task_nav_panel_tab_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SeparatedCalendarTaskView extends StatefulWidget {
  const SeparatedCalendarTaskView({super.key});

  @override
  State<SeparatedCalendarTaskView> createState() =>
      _SeparatedCalendarTaskViewState();
}

class _SeparatedCalendarTaskViewState extends State<SeparatedCalendarTaskView> {
  bool _finishedIsHided = false;
  bool _isOnDayTask = true;

  void setFinishedIsHided(bool hideFinished) {
    setState(() {
      _finishedIsHided = hideFinished;
    });
  }

  void setIsOnDayTask(bool isOnDayTask) {
    setState(() {
      _isOnDayTask = isOnDayTask;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CalendarBloc, CalendarState>(
      builder: (context, state) {
        final day = state.model.date;
        return CustomScrollView(
          key: ValueKey(_finishedIsHided.toString()),
          slivers: [
            SliverPersistentHeader(
              delegate: _CustomHeaderDelegate(
                // Высота аппбара - 51, дивайдера - 1, нав_меню - 73,
                height: (51 + 1 + 73).h,
                child: Column(
                  children: [
                    TaskAppBar(
                      finishedIsHided: _finishedIsHided,
                      setFinishedIsHided: setFinishedIsHided,
                    ),
                    const DLSDivider(),
                    TaskNavPanelTabBar(
                      isOnDayTask: _isOnDayTask,
                      setIsOnDayTask: setIsOnDayTask,
                    ),
                  ],
                ),
              ),
              pinned: true,
            ),
            SliverToBoxAdapter(
              child: SeparatedTasks(
                key: ValueKey(_finishedIsHided.toString()),
                finishedIsHided: _finishedIsHided,
                selectedDay: day,
                isOnDayTask: _isOnDayTask,
              ),
            ),
          ],
        );
      },
    );
  }
}

class _CustomHeaderDelegate extends SliverPersistentHeaderDelegate {
  _CustomHeaderDelegate({
    required this.child,
    required this.height,
  });

  final double height;

  final Widget child;

  @override
  double get minExtent => height;

  @override
  double get maxExtent => height;

  @override
  Widget build(_, __, ___) {
    return child;
  }

  @override
  bool shouldRebuild(_) {
    return false;
  }
}
