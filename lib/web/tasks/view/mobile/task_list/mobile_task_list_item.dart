import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/tasks/view/web/task_list_body/row_buttons/task_hierchy_files.dart';
import 'package:dls_one/web/tasks/view/web/task_list_body/row_buttons/task_title/task_check_sprint.dart';
import 'package:dls_one/web/tasks/view/web/task_list_body/row_buttons/task_title/task_title_text.dart';
import 'package:dls_one/web/tasks/view/web/task_list_body/row_buttons/task_title/task_type_item.dart';
import 'package:flutter/material.dart';
import 'package:rest_api/rest_api.dart';

// TODO fix screenUtils
class MobileTaskListItem extends StatelessWidget {
  const MobileTaskListItem({
    required this.task,
    this.onTap,
    this.onStatusChanged,
    this.onPriorityChanged,
    super.key,
  });

  final DlsTasks task;
  final VoidCallback? onTap;
  final ValueChanged<TaskStatusType>? onStatusChanged;
  final ValueChanged<TaskPriorityType>? onPriorityChanged;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: context.c_grey_stoke,
            ),
          ),
        ),
        height: 78.h,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 14,
                left: 16,
                right: 16,
                bottom: 8,
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
                  TaskTitleText(
                    maxWidth: 300,
                    title: task.title,
                    role: task.roles?.first,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 16,
                right: 16,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      StatusButton(
                        height: 24.h,
                        isIcon: false,
                        enabled:
                            task.roles?.first.role != TaskRolesType.viewing,
                        status: task.status ?? TaskStatusType.draft,
                        onTapStatus: (value) => onStatusChanged?.call(value),
                      ),
                      SizedBox(width: 8.w),
                      SizedBox(
                        width: 40.w,
                        child: PriorityButton(
                          isFullButton: false,
                          enabled: task.roles?.first.name != S.current.viewing,
                          priority: task.priority ?? TaskPriorityType.high,
                          onTapPriority: (value) =>
                              onPriorityChanged?.call(value),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      TaskHierchyFiles(
                        countFiles: task.files?.length ?? 0,
                        countSubTasks: task.countSubTasks ?? 0,
                        role: task.roles?.first,
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
