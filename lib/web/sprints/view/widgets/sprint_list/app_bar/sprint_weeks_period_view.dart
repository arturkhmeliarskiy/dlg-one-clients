import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';
import 'package:rest_api/rest_api.dart';

class SprintWeeksPeriodView extends StatelessWidget {
  const SprintWeeksPeriodView({super.key, required this.sprint});

  final DlsSprintModel sprint;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32.w,
      padding: EdgeInsets.symmetric(horizontal: 8.w),
      decoration: BoxDecoration(
        color: context.c_grey_hover,
        borderRadius: BorderRadius.circular(4.r),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Assets.icons.clockEight.svg(
            width: 18.w,
            height: 18.h,
            color: context.c_text_grey,
          ),
          SizedBox(width: 4.w),
          Text(
            // TODO config by Enum duration
            sprint.durationName ?? '',
            style: context.ts_s14h14w400.copyWith(
              color: context.c_text,
              height: 1.2.h,
            ),
          ),
        ],
      ),
    );
  }
}
