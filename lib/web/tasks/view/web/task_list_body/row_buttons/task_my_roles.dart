import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';
import 'package:rest_api/src/models/tasks_models/dls_tasks_role.dart';
import 'package:rest_api/src/models/enums/dls_task_roles_type.dart';

class TaskMyRoles extends StatelessWidget {
  const TaskMyRoles({
    super.key,
    required this.roles,
  });

  final List<DlsTasksRole> roles;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        for (var i = 0; i < roles.length; i++)
          Row(
            children: [
              if (roles[i].role == TaskRolesType.viewing)
                Padding(
                  padding: EdgeInsets.only(right: 4.w),
                  child: Assets.icons.eye1.svg(
                    color: context.c_placeholder,
                  ),
                ),
              Text(
                (roles[i].name ?? '') + (roles.length - 1 != i ? ', ' : ''),
                style: context.ts_s12h14w400.apply(
                  color: roles[i].role == TaskRolesType.viewing
                      ? context.c_placeholder
                      : context.c_text_grey,
                ),
              ),
            ],
          )
      ],
    );
  }
}
