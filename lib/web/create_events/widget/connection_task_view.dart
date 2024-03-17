import 'package:collection/collection.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/pick_task/pick_task.dart';
import 'package:dls_one/web/tasks/view/web/task_list_body/row_buttons/task_hierchy_files.dart';
import 'package:dls_one/web/tasks/view/web/task_list_body/row_buttons/task_title/task_type_item.dart';
import 'package:flutter/material.dart';
import 'package:rest_api/rest_api.dart';

class ConnectionTaskView extends StatelessWidget {
  const ConnectionTaskView({required this.task, super.key});

  final DlsTasks task;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.h,
      padding: EdgeInsets.symmetric(horizontal: 12.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4.r),
        border: Border.all(color: context.c_grey_stoke),
      ),
      child: Row(
        children: [
          TaskTypeItem(type: task.type ?? 0),
          SizedBox(width: 8.w),
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 180.w),
            child: Text(
              task.title,
              overflow: TextOverflow.ellipsis,
              style: context.ts_s14h14w500.copyWith(color: context.c_text),
            ),
          ),
          SizedBox(width: 8.w),
          StatusButton(
            height: 24.h,
            isIcon: false,
            status: task.status ?? TaskStatusType.inTheQueue,
            onTapStatus: (value) {},
          ),
          PriorityButton(
            isFullButton: false,
            priority: task.priority ?? TaskPriorityType.high,
            onTapPriority: (value) {},
            width: 32.w,
          ),
          const Spacer(),
          TaskHierchyFiles(
            countFiles: task.files?.length ?? 0,
            countSubTasks: task.countSubTasks ?? 0,
            showIfZero: true,
          ),
          SizedBox(width: 8.w),
          TaskAuthorCircle(
            // TODO change to authors if it's necessary
            author: task.members?.executors?.firstOrNull,
          ),
          SizedBox(width: 8.w),
          InkWell(
            onTap: () {},
            child: Icon(
              Icons.more_vert,
              size: 20.r,
              color: context.c_text_grey,
            ),
          ),
        ],
      ),
    );
  }
}
