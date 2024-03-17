import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';
import 'package:rest_api/rest_api.dart';

class SprintStoryPointCounter extends StatelessWidget {
  const SprintStoryPointCounter({
    required this.sprint,
    this.withBackground = true,
    this.showTotal = true,
    super.key,
  });

  final DlsSprintModel sprint;
  final bool withBackground;
  final bool showTotal;

  @override
  Widget build(BuildContext context) {
    final fact = sprint.storyPointFact ?? 0;
    final plan = sprint.storyPointPlan ?? 0;
    final child = Row(
      children: [
        Assets.icons.storyPoints.svg(
          width: 18.w,
          height: 18.h,
          color: context.c_text_grey,
        ),
        SizedBox(width: 4.w),
        Text(
          [
            fact,
            if (showTotal && plan > 0) plan
          ].join(r' \ '),
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
    return Container(
      height: 32.w,
      padding: EdgeInsets.symmetric(horizontal: 8.w),
      decoration: BoxDecoration(
        color: context.c_grey_hover,
        borderRadius: BorderRadius.circular(4.r),
      ),
      child: child,
    );
  }
}
