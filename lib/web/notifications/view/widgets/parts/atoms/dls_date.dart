import 'package:dls_one/core/core.dart';
import 'package:dls_one/utils/utils.dart';
import 'package:flutter/material.dart';

class DLSDate extends StatelessWidget {
  const DLSDate({
    super.key,
    required this.dateTime,
    this.backgroundColor,
    this.iconColor,
    this.textColor,
  });

  final DateTime dateTime;
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
              padding: EdgeInsets.symmetric(horizontal: 4.w),
              child: Assets.icons.calender.svg(
                width: 18.r,
                height: 18.r,
                colorFilter: ColorFilter.mode(
                  iconColor ?? context.c_text_grey,
                  BlendMode.srcIn,
                ),
              ),
            ),
            DLSBody.s1421(
              formatDateMonth(dateTime),
              color: textColor ?? context.c_text,
              maxLines: 1,
              overflow: true,
            ),
          ],
        ),
      ),
    );
  }
}
