import 'package:dls_one/core/core.dart';
import 'package:dls_one/utils/utils.dart';
import 'package:dls_one/web/sprints/view/widgets/completed_sprint_page/right_column/subtasks_info.dart';
import 'package:dls_one/web/tasks/view/web/task_list_body/row_buttons/task_hierchy_files.dart';
import 'package:flutter/material.dart';
import 'package:rest_api/rest_api.dart';

class MainColumnSubtaskInfo extends StatelessWidget {
  const MainColumnSubtaskInfo({
    required this.task,
    required this.onDelete,
    required this.onTap,
    super.key,
  });

  final DlsTasks task;
  final VoidCallback onDelete;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final author = task.user;
    return SubtasksInfo(
      margin: EdgeInsets.only(
        top: 6.h,
        left: 46.w,
        right: 20.w,
        bottom: 6.h,
      ),
      text: txt(task.title),
      leftChildren: [
        SizedBox(width: 12.w),
        StatusButton(
          height: 24.h,
          onTapStatus: (_) {},
          status: task.status ?? TaskStatusType.inTheQueue,
          enabled: false,
        ),
        PriorityButton(
          onTapPriority: (_) {},
          priority: task.priority ?? TaskPriorityType.high,
          isFullButton: false,
          width: 34.w,
          enabled: false,
        ),
      ],
      onDragEnd: (value) {},
      onDragStarted: () {},
      onDraggableCanceled: () {},
      onDragCompleted: () {},
      onTap: onTap,
      onDelete: onDelete,
      children: [
        DLSAvatar(
          imageUrl: author?.avatar ?? '',
          size: 24,
        ),
        SizedBox(width: 16.w),
        TaskHierchyFiles(
          countFiles: task.countFiles ?? 0,
          countSubTasks: task.countSubTasks ?? 0,
          showIfZero: true,
        ),
        SizedBox(width: 12.w),
      ],
    );
  }
}
