import 'package:dls_one/core/core.dart';
import 'package:dls_one/utils/utils.dart';
import 'package:flutter/material.dart';

class SprintDatePeriodView extends StatelessWidget {
  const SprintDatePeriodView({
    required this.start,
    required this.end,
    this.withBackground = true,
    this.height,
    this.showEnd = false,
    super.key,
  });

  final DateTime start;
  final DateTime end;
  final bool withBackground;
  final double? height;
  final bool showEnd;

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();
    final showStart = now.compareTo(end) == -1 || !showEnd;
    final child = Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        (showStart ? Assets.icons.calender : Assets.icons.calendarFinished).svg(
          width: 18.w,
          height: 18.h,
          color: context.c_text_grey,
        ),
        SizedBox(width: 4.w),
        Text(
          [
            if (showStart) formatDateMonth(start),
            formatDateMonth(end),
          ].join(' - '),
          style: context.ts_s14h14w400.copyWith(
            color: context.c_text,
            height: 1.h,
          ),
        ),
      ],
    );
    if (!withBackground) {
      return child;
    }
    return Container(
      height: height ?? 32.h,
      padding: EdgeInsets.symmetric(horizontal: 8.w),
      decoration: BoxDecoration(
        color: context.c_grey_hover,
        borderRadius: BorderRadius.circular(4.r),
      ),
      child: child,
    );
  }
}
