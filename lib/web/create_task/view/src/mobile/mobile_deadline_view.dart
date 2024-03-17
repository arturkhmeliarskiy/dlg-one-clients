import 'package:dls_one/core/core.dart';
import 'package:dls_one/utils/utils.dart';
import 'package:flutter/material.dart';

class MobileDeadlineView extends StatelessWidget {
  const MobileDeadlineView({
    required this.date,
    super.key,
  });

  final DateTime date;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32.w,
      padding: EdgeInsets.symmetric(horizontal: 8.w),
      decoration: BoxDecoration(
        color: context.c_grey_stoke,
        borderRadius: BorderRadius.circular(4.r),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Assets.icons.deadline.svg(
            width: 16.w,
            height: 16.h,
            colorFilter: context.c_text_grey_color_filter,
          ),
          SizedBox(width: 4.w),
          Text(
            formatDateMonth(date),
            style: context.ts_s14h14w400.copyWith(
              color: context.c_text_grey,
              height: 1.h,
            ),
          ),
        ],
      ),
    );
  }
}
