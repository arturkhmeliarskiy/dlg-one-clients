import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';
import 'package:rest_api/src/models/tasks_models/dls_tasks_role.dart';

class TaskCheckSprint extends StatelessWidget {
  const TaskCheckSprint({
    required this.isSprint,
    required this.title,
    this.role,
    super.key,
  });

  final bool isSprint;
  final String title;
  final DlsTasksRole? role;

  @override
  Widget build(BuildContext context) {
    if (isSprint) {
      return Padding(
        padding: EdgeInsets.only(
          left: 5.w,
          right: 5.w,
        ),
        child: InkWell(
          onTap: () {},
          onHover: (value) {},
          borderRadius: BorderRadius.circular(
            5.r,
          ),
          child: Tooltip(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.r),
              color: context.c_calls_background,
            ),
            textStyle: context.ts_s14h14w400.copyWith(
              color: context.c_appbar,
            ),
            message: S.current.to_sprint(title),
            child: Container(
              height: 24.h,
              width: 24.w,
              padding: const EdgeInsets.all(3),
              child: Assets.icons.sprint.svg(
                color: role?.name == S.current.viewing
                    ? context.c_placeholder
                    : context.c_orange_light,
              ),
            ),
          ),
        ),
      );
    }
    return SizedBox(
      width: 8.w,
    );
  }
}
