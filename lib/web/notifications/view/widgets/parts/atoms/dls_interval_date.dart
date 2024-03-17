import 'package:dls_one/core/core.dart';
import 'package:dls_one/utils/utils.dart';
import 'package:flutter/material.dart';

class DLSIntervalDate extends StatelessWidget {
  const DLSIntervalDate({
    super.key,
    required this.interval,
    required this.intervalLen,
    this.backgroundColor,
    this.iconColor,
    this.textColor,
  });

  final List<DateTime> interval;
  final int intervalLen;
  final Color? backgroundColor;
  final Color? iconColor;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: backgroundColor ?? context.c_grey_hover,
        borderRadius: BorderRadius.circular(5.r),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 3.h),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: EdgeInsets.only(right: 4.w),
              child: Assets.icons.calender.svg(
                width: 18.r,
                height: 18.r,
                colorFilter: ColorFilter.mode(
                  iconColor ?? context.c_placeholder,
                  BlendMode.srcIn,
                ),
              ),
            ),
            DLSBody.s1421(
              '${formatDateMonthTime(interval[0])}'
              ' - '
              '${formatDateMonthTime(interval[1])}',
              color: textColor ?? context.c_placeholder,
              maxLines: 1,
              overflow: true,
            ),
          ],
        ),
      ),
    );
  }
}
