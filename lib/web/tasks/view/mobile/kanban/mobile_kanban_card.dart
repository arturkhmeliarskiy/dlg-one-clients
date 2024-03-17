import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/tasks/bloc/task_list_bloc/task_list_bloc.dart';
import 'package:dls_one/web/tasks/view/web/kanban_body/kanban_task_my_roles.dart';
import 'package:dls_one/web/tasks/view/web/task_list_body/row_buttons/task_hierchy_files.dart';
import 'package:dls_one/web/tasks/view/web/task_list_body/row_buttons/task_title/task_check_sprint.dart';
import 'package:dls_one/web/tasks/view/web/task_list_body/row_buttons/task_title/task_title_text.dart';
import 'package:dls_one/web/tasks/view/web/task_list_body/row_buttons/task_title/task_type_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_size/flutter_keyboard_size.dart';
import 'package:rest_api/rest_api.dart';

class MobileKanbanCard extends StatelessWidget {
  const MobileKanbanCard({
    required this.task,
    required this.index,
    super.key,
  });

  final int index;
  final DlsTasks task;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: 10.h,
      ),
      decoration: BoxDecoration(
        color: context.c_white_background,
        borderRadius: BorderRadius.circular(4.r),
        border: Border.all(
          color: context.c_grey_stoke,
        ),
      ),
      height: 106.h,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 15,
              left: 12,
              right: 12,
            ),
            child: Row(
              children: [
                TaskTypeItem(
                  type: task.type ?? 0,
                  role: task.roles?.first,
                ),
                TaskCheckSprint(
                  isSprint: task.sprints?.isNotEmpty ?? false,
                  title: task.sprints?.isNotEmpty ?? false
                      ? task.sprints?.first.title ?? ''
                      : '',
                  role: task.roles?.first,
                ),
                Expanded(
                  child: TaskTitleText(
                    title: task.title,
                    role: task.roles?.first,
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Assets.icons.webTaskMenu.svg(),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 8.h,
              left: 12,
              right: 12,
            ),
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4.r),
                    color: _backgroundColor(
                      task.priority ?? TaskPriorityType.high,
                      context,
                    ),
                  ),
                  width: 24.w,
                  height: 24.h,
                  child: PriorityButton(
                    isFullButton: false,
                    enabled: task.roles?.first.name != S.current.viewing,
                    priority: task.priority ?? TaskPriorityType.high,
                    onTapPriority: (value) {
                      context.read<TaskListBloc>().add(
                            TaskListEvent.updateTask(
                              index,
                              task.copyWith(
                                priority: value,
                              ),
                            ),
                          );
                    },
                  ),
                ),
                Row(
                  children: [
                    TaskHierchyFiles(
                      countFiles: task.files?.length ?? 0,
                      countSubTasks: task.countSubTasks ?? 0,
                      role: task.roles?.first,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 8.h,
              left: 12.w,
              bottom: 12.h,
            ),
            child: KanbanTaskMyRoles(
              roles: task.roles ?? [],
            ),
          ),
        ],
      ),
    );
  }

  Color _backgroundColor(TaskPriorityType value, BuildContext context) {
    switch (value) {
      case TaskPriorityType.unknown:
        return context.c_text_grey;
      case TaskPriorityType.veryHigh:
        return context.c_red.withOpacity(0.1);
      case TaskPriorityType.high:
        return context.c_orange_border;
      case TaskPriorityType.mid:
        return context.c_grey_grey;
      case TaskPriorityType.low:
        return context.c_grey_light;
      case TaskPriorityType.veryLow:
        return context.c_blue_container;
    }
  }
}
