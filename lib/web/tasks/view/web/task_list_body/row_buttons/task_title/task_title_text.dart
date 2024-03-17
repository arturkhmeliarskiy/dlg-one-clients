import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';
import 'package:rest_api/rest_api.dart';
import 'package:rest_api/src/models/tasks_models/dls_tasks_role.dart';

class TaskTitleText extends StatelessWidget {
  const TaskTitleText({
    required this.title,
    this.maxWidth,
    this.role,
    super.key,
  });

  final String title;
  final double? maxWidth;
  final DlsTasksRole? role;

  @override
  Widget build(BuildContext context) {
    final child = Text(
      title,
      overflow: TextOverflow.ellipsis,
      maxLines: 1,
      style: context.ts_s14h22_4w400.apply(
        color: role?.role == TaskRolesType.viewing
            ? context.c_placeholder
            : context.c_text,
      ),
    );
    if (maxWidth == null) {
      return child;
    }
    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: maxWidth!),
      child: child,
    );
  }
}
