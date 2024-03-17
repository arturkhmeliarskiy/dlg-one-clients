import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/tasks/view/web/kanban_body/kanban_task_dedline.dart';
import 'package:dls_one/web/tasks/view/web/kanban_body/kanban_task_my_roles.dart';
import 'package:dls_one/web/tasks/view/web/kanban_body/kanban_task_performers.dart';
import 'package:dls_one/web/tasks/view/web/task_list_body/row_buttons/task_hierchy_files.dart';
import 'package:dls_one/web/tasks/view/web/task_list_body/row_buttons/task_tag.dart';
import 'package:dls_one/web/tasks/view/web/task_list_body/row_buttons/task_title/task_check_sprint.dart';
import 'package:dls_one/web/tasks/view/web/task_list_body/row_buttons/task_title/task_title_text.dart';
import 'package:dls_one/web/tasks/view/web/task_list_body/row_buttons/task_title/task_type_item.dart';
import 'package:flutter/material.dart';
import 'package:rest_api/rest_api.dart';

class KanbanItemTask extends StatelessWidget {
  const KanbanItemTask({
    required this.task,
    required this.index,
    super.key,
  });

  final DlsTasks task;
  final int index;

  Widget _priorityIcon(TaskPriorityType value) {
    switch (value) {
      case TaskPriorityType.unknown:
        return Assets.icons.webTaskPriorityCritical.svg();

      case TaskPriorityType.veryHigh:
        return Assets.icons.webTaskPriorityCritical.svg();

      case TaskPriorityType.high:
        return Assets.icons.webTaskPriorityHigh.svg();

      case TaskPriorityType.mid:
        return Assets.icons.webTaskPriorityStandart.svg();

      case TaskPriorityType.low:
        return Assets.icons.webTaskPriorityLow.svg();

      case TaskPriorityType.veryLow:
        return Assets.icons.webTaskPriorityMinor.svg();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 20.w,
        right: 20.w,
        bottom: 12.h,
      ),
      decoration: BoxDecoration(
        color: context.c_white_text,
        border: Border.all(color: context.c_grey_stoke),
        borderRadius: BorderRadius.circular(4.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 20.5.h,
              left: 19.w,
              right: 19.w,
              bottom: 8.h,
            ),
            child: Row(
              children: [
                TaskTypeItem(
                  type: task.type ?? 0,
                ),
                TaskCheckSprint(
                  isSprint: task.sprints?.isNotEmpty ?? false,
                  title: task.sprints?.isNotEmpty ?? false
                      ? task.sprints?.first.title ?? ''
                      : '',
                ),
                Expanded(
                  child: LayoutBuilder(
                    builder: (context, constraints) {
                      final width = constraints.maxWidth;
                      return Row(
                        children: [
                          TaskTitleText(
                            title: task.title,
                            maxWidth: width - 40.w,
                          ),
                          SizedBox(
                            width: 40.w,
                            child: _priorityIcon(
                                task.priority ?? TaskPriorityType.high),
                          ),
                        ],
                      );
                    },
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Assets.icons.webTaskMenu.svg(),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.w,
              right: 24.w,
            ),
            child: Text(
              task.description ?? '',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: context.ts_s14h22_4w400.copyWith(
                color: context.c_text_grey,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 8.h,
              left: 16.w,
              bottom: 12.h,
            ),
            child: KanbanTaskMyRoles(
              roles: task.roles ?? [],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              right: 21.w,
              bottom: 16.w,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    KanbanTaskPerformers(
                      performers: task.members?.executors ?? [],
                      id: task.id,
                      index: index,
                    ),
                    TaskHierchyFiles(
                      countFiles: task.files?.length ?? 0,
                      countSubTasks: task.countSubTasks ?? 0,
                    ),
                    SizedBox(
                      width: 12.w,
                    ),
                    KanbanTaskDeadline(
                      date: task.expiredAt,
                      duration: task.duration,
                      index: index,
                      selectDtae: (value) {},
                    ),
                  ],
                ),
                TaskTag(
                  items: task.tags ?? [],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
