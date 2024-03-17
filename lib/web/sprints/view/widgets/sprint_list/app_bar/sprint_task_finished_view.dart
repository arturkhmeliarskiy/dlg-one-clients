import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';
import 'package:rest_api/rest_api.dart';

class SprintTaskFinishedView extends StatelessWidget {
  const SprintTaskFinishedView({
    required this.sprint,
    this.withBackground = true,
    super.key,
  });

  final DlsSprintModel sprint;
  final bool withBackground;

  @override
  Widget build(BuildContext context) {
    final tasks = sprint.tasks;
    final total = tasks.length;
    final count =
        tasks.where((task) => task.status == TaskStatusType.completed).length;
    final percentage = total == 0 ? 0.0 : count / total;

    final child = Row(
      children: [
        Assets.icons.checkCircle1.svg(
          width: 18.w,
          height: 18.h,
          color: context.c_text_grey,
        ),
        SizedBox(width: 4.w),
        Text(
          S.current.countTotal(count, total),
          style: context.ts_s14h14w400.copyWith(
            color: context.c_text,
            height: 1.2.h,
          ),
        ),
      ],
    );
    if (!withBackground) {
      return child;
    }
    return SizedBox(
      height: 32.w,
      child: Stack(
        children: [
          Container(
            height: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 8.w),
            decoration: BoxDecoration(
              color: context.c_grey_hover,
              borderRadius: BorderRadius.circular(4.r),
            ),
            child: child,
          ),
          Positioned.fill(
            child: CustomPaint(
              painter: DlsProgressBorderPainter(
                color: context.c_green,
                progress: percentage,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
