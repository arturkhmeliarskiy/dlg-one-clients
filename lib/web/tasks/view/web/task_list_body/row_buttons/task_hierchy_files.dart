import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';
import 'package:rest_api/src/models/tasks_models/dls_tasks_role.dart';
import 'package:rest_api/src/models/enums/dls_task_roles_type.dart';

class TaskHierchyFiles extends StatelessWidget {
  const TaskHierchyFiles({
    super.key,
    this.countSubTasks,
    this.countFiles,
    this.showIfZero = false,
    this.role,
  });

  final int? countSubTasks;
  final int? countFiles;
  final bool showIfZero;
  final DlsTasksRole? role;

  Widget _buildItem({
    required BuildContext context,
    required int? count,
    required Widget icon,
  }) {
    if (count == null) {
      return Container();
    }
    return Row(
      children: [
        icon,
        SizedBox(
          width: 4.w,
        ),
        Text(
          count.toString(),
          style: context.ts_s14h16_4w500.apply(
            color: role?.role == TaskRolesType.viewing
                ? context.c_placeholder
                : context.c_text_grey,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        if ((countSubTasks ?? 0) > 0 || showIfZero)
          Row(
            children: [
              SizedBox(width: 16.w),
              _buildItem(
                context: context,
                count: countSubTasks,
                icon: Assets.icons.webTaskHierarchyGray.svg(
                  color: role?.role == TaskRolesType.viewing
                      ? context.c_placeholder
                      : context.c_text_grey,
                ),
              ),
            ],
          ),
        if ((countFiles ?? 0) > 0 || showIfZero)
          Row(
            children: [
              SizedBox(width: 8.w),
              _buildItem(
                context: context,
                count: countFiles,
                icon: Assets.icons.webTaskPaperclip.svg(
                  color: role?.role == TaskRolesType.viewing
                      ? context.c_placeholder
                      : context.c_text_grey,
                ),
              ),
            ],
          ),
      ],
    );
  }
}
