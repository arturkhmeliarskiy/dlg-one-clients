import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/tasks/view/web/app_bar/task_tab_item.dart';
import 'package:flutter/material.dart';

class TaskTabBarMenu extends StatelessWidget {
  const TaskTabBarMenu({super.key, this.onTap});

  final ValueChanged<int>? onTap;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Center(
        child: SizedBox(
          width: 200.w,
          height: 32.h,
          child: TabBar(
            indicatorSize: TabBarIndicatorSize.label,
            labelColor: context.c_text,
            labelPadding: const EdgeInsets.all(0),
            padding: const EdgeInsets.all(0),
            overlayColor: MaterialStateProperty.all(Colors.transparent),
            unselectedLabelColor: context.c_text_grey,
            onTap: onTap,
            indicator: BoxDecoration(
              color: context.c_grey_hover,
              borderRadius: BorderRadius.circular(5),
            ),
            tabs: [
              TaskTabItem(
                asset: Assets.icons.webTaskList.svg(),
                label: S.current.list,
              ),
              TaskTabItem(
                asset: Assets.icons.webTaskKanban.svg(),
                label: S.current.kanban,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
