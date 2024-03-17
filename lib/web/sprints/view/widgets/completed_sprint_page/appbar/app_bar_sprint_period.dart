import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';

class AppbarSprintPeriod extends StatelessWidget {
  const AppbarSprintPeriod({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32.w,
      decoration: BoxDecoration(
        color: context.c_grey_hover,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: 9.5.w,
          ),
          Assets.icons.calender.svg(
            color: context.c_text,
            height: 15.h,
          ),
          SizedBox(width: 5.5.w),
          Text(
            S.current.period_21,
            style: context.ts_s14h14w400.copyWith(color: context.c_text),
          ),
          SizedBox(width: 8.5.w),
        ],
      ),
    );
  }
}
