import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';

class AppbarSprintDurability extends StatelessWidget {
  const AppbarSprintDurability({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32.h,
      width: 104.w,
      decoration: BoxDecoration(
        color: context.c_grey_hover,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(width: 9.5.w),
          Assets.icons.times1.svg(),
          SizedBox(
            width: 5.5.w,
          ),
          Expanded(
            child: Text(
              S.current.two_weeks,
              style: context.ts_s14h14w400.copyWith(color: context.c_text),
            ),
          ),
          SizedBox(width: 10.w),
        ],
      ),
    );
  }
}
