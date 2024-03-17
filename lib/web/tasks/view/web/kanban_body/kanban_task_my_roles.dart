import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';
import 'package:rest_api/src/models/tasks_models/dls_tasks_role.dart';

class KanbanTaskMyRoles extends StatelessWidget {
  const KanbanTaskMyRoles({
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
              if (roles[i].name == S.current.observer && i == 0)
                Tooltip(
                  message: S.current.not_available_to_observer,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.r),
                    color: context.c_calls_background,
                  ),
                  textStyle: context.ts_s14h14w400.copyWith(
                    color: context.c_appbar,
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(right: 4.w),
                    child: Assets.icons.fileCheck11.svg(
                      color: context.c_placeholder,
                    ),
                  ),
                ),
              if (i == 0)
                Text(
                  S.current.my_part(
                    (roles.first.name?.toLowerCase() ?? '') +
                        (roles.length - 1 != i ? ', ' : ''),
                  ),
                  style: context.ts_s12h14w400.apply(
                    color: context.c_text_grey,
                  ),
                )
              else
                Text(
                  (roles[i].name?.toLowerCase() ?? '') +
                      (roles.length - 1 != i ? ', ' : ''),
                  style: context.ts_s12h14w400.apply(
                    color: context.c_text_grey,
                  ),
                ),
            ],
          )
      ],
    );
  }
}
