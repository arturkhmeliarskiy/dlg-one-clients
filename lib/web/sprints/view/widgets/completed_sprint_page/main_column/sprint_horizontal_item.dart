import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/sprints/sprints.dart';
import 'package:dls_one/web/tasks/view/web/task_list_body/row_buttons/task_performers.dart';
import 'package:flutter/material.dart';
import 'package:rest_api/rest_api.dart';

class SprintHorizontalItem extends StatelessWidget {
  const SprintHorizontalItem({required this.sprint, this.onTap, super.key});

  final DlsSprintModel sprint;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onTap,
      child: DlsPadding.symmetric(
        vertical: 8.h,
        child: Row(
          children: [
            Text(
              sprint.title,
              style: context.ts_s14h14w400.copyWith(color: context.c_text),
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(width: 8.w),
            SprintStatusButton(status: sprint.status, height: 24.h),
            const Spacer(),
            if (sprint.startAt != null && sprint.expiredAt != null)
              SprintDatePeriodView(
                start: sprint.startAt!,
                end: sprint.expiredAt!,
                height: 24.h,
                showEnd: true,
              ),
            if ((sprint.storyPoints ?? 0) != 0)
              DlsPadding.only(
                left: 8.w,
                child: SprintStoryPointCounter(
                  sprint: sprint,
                  withBackground: false,
                  showTotal: false,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
