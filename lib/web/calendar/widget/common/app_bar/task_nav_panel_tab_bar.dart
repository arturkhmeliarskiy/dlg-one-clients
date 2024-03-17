import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';

class TaskNavPanelTabBar extends StatefulWidget {
  const TaskNavPanelTabBar({
    required this.isOnDayTask,
    required this.setIsOnDayTask,
    super.key,
  });

  final void Function(bool) setIsOnDayTask;
  final bool isOnDayTask;

  @override
  State<TaskNavPanelTabBar> createState() => _TaskNavPanelTabBarState();
}

class _TaskNavPanelTabBarState extends State<TaskNavPanelTabBar> {
  @override
  Widget build(BuildContext context) {
    final labels = [
      S.current.termless,
      S.current.forTheDay,
    ];
    return Container(
      color: context.c_white_background,
      height: 73.h,
      child: Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: DefaultTabController(
            length: labels.length,
            initialIndex: widget.isOnDayTask ? 1 : 0,
            child: DlsTabBar(
              labels: labels,
              onTap: (index) {
                (index == 0)
                    ? widget.setIsOnDayTask(false)
                    : widget.setIsOnDayTask(true);
              },
            ),
          ),
        ),
      ),
    );
  }
}
