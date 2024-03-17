import 'package:collection/collection.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/sprints/sprints.dart';
import 'package:dls_one/web/tasks/bloc/bloc.dart';
import 'package:dls_one/web/tasks/const/enums.dart';
import 'package:dls_one/web/tasks/view/web/app_bar/task_app_bar_title.dart';
import 'package:dls_one/web/tasks/view/web/app_bar/task_filter_bar.dart';
import 'package:dls_one/web/tasks/view/web/app_bar/task_search.dart';
import 'package:dls_one/web/tasks/view/web/app_bar/task_tab_bar_menu.dart';
import 'package:dls_one/web/tasks/view/web/app_bar/tasks_appbar_menu.dart';
import 'package:dls_one/web/tasks/view/web/filters/filter_dedline.dart';
import 'package:dls_one/web/tasks/view/web/filters/filter_files.dart';
import 'package:dls_one/web/tasks/view/web/filters/filter_performers.dart';
import 'package:dls_one/web/tasks/view/web/filters/filter_priority.dart';
import 'package:dls_one/web/tasks/view/web/filters/filter_reset.dart';
import 'package:dls_one/web/tasks/view/web/filters/filter_roles.dart';
import 'package:dls_one/web/tasks/view/web/filters/filter_status.dart';
import 'package:dls_one/web/tasks/view/web/filters/filter_tags.dart';
import 'package:dls_one/web/tasks/view/web/filters/filter_type.dart';
import 'package:dls_one/web/tasks/view/web/task_list_body/row_buttons/hierarchy_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rest_api/rest_api.dart';

class TaskAppBar extends StatefulWidget {
  const TaskAppBar({
    required this.onTasksViewChanged,
    required this.onNewTask,
    this.tasks = true,
    super.key,
  });

  final bool tasks;
  final ValueChanged<bool> onTasksViewChanged;
  final ValueChanged<DlsTasks> onNewTask;

  @override
  State<TaskAppBar> createState() => _TaskAppBarState();
}

class _TaskAppBarState extends State<TaskAppBar> {
  int _index = 0;
  Map<FilterTypes, Object> _filters = {};

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DlsPadding.symmetric(
          horizontal: 20.w,
          child: SizedBox(
            height: 52.h,
            child: Row(
              children: [
                TaskAppBarTitle(
                  title: S.current.tasks,
                ),
                SizedBox(width: 8.w),
                AppBarMenuDropDown(
                  onTasksViewChanged: widget.onTasksViewChanged,
                  tasks: widget.tasks,
                ),
                SizedBox(width: 12.w),
                BlocBuilder<TaskListBloc, TaskListState>(
                  builder: (context, state) {
                    final task = state.model.listTask.firstOrNull;
                    return DLSPlusIconButton(
                      tooltip: task != null
                          ? S.current.tooltip_add_task
                          : S.current.loading,
                      onTap: task == null ? null : () => widget.onNewTask(task),
                    );
                  },
                ),
                TaskTabBarMenu(
                  onTap: (value) {
                    setState(() {
                      _index = value;
                    });
                  },
                ),
              ],
            ),
          ),
        ),
        Divider(
          height: 1.h,
        ),
        if (!widget.tasks) const SprintAppBar(),
        DlsPadding.symmetric(
          horizontal: 20.w,
          child: TaskFilterBar(
            index: _index,
            filters: _filters,
            tasks: widget.tasks,
            onClearFilters: () {
              _filters = {};
              setState(() {});
            },
          ),
        ),
      ],
    );
  }
}
