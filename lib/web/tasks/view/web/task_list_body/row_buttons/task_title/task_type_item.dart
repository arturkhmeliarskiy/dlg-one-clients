import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';
import 'package:rest_api/src/models/tasks_models/dls_tasks_role.dart';
import 'package:rest_api/src/models/enums/dls_task_roles_type.dart';

class TaskTypeItem extends StatelessWidget {
  const TaskTypeItem({
    super.key,
    required this.type,
    this.role,
  });

  final int type;
  final DlsTasksRole? role;

  @override
  Widget build(BuildContext context) {
    if (type == 1) {
      return Assets.icons.webTaskFileDocument.svg(
        color: role?.role == TaskRolesType.viewing
            ? context.c_placeholder
            : context.c_text_grey,
      );
    } else if (type == 2) {
      return Assets.icons.webTaskIssue.svg(
        color: role?.role == TaskRolesType.viewing
            ? context.c_placeholder
            : context.c_text_grey,
      );
    }
    return Container();
  }
}
