import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/tasks/view/web/task_list_body/row_buttons/task_hierchy_files.dart';
import 'package:flutter/material.dart';
import 'package:rest_api/rest_api.dart';

class SubtaskMobileInfo extends StatelessWidget {
  const SubtaskMobileInfo({
    required this.onDelete,
    required this.onTap,
    required this.task,
    super.key,
  });

  final DlsTasks task;
  final VoidCallback onDelete;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap,
      style: TextButton.styleFrom(
        padding: EdgeInsets.all(12.r),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(4.r)),
        ),
        side: BorderSide(color: context.c_grey_hover),
      ),
      child: Column(
        children: [
          Row(
            children: [
              // TODO confiug type
              Assets.icons.issue.svg(
                height: 15.0.h,
                color: context.c_text_grey,
              ),
              SizedBox(width: 8.w),
              Expanded(
                child: Text(
                  task.title,
                  style: context.ts_s14h22_4w400.copyWith(
                    color: context.c_text,
                    height: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 8.h),
          SizedBox(
            height: 24.h,
            child: Row(
              children: [
                StatusButton(
                  height: 24.h,
                  status: task.status ?? TaskStatusType.unknown,
                  onTapStatus: (v) {},
                ),
                SizedBox(width: 8.w),
                PriorityButton(
                  priority: task.priority ?? TaskPriorityType.unknown,
                  onTapPriority: (v) {},
                  isFullButton: false,
                  isBackgroundColor: true,
                  width: 24.w,
                  margin: EdgeInsets.zero,
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: TaskHierchyFiles(
                      countFiles: task.countFiles,
                      countSubTasks: task.countSubTasks,
                      showIfZero: true,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
