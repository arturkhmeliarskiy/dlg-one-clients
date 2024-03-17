import 'package:dls_one/core/core.dart';
import 'package:dls_one/utils/utils.dart';
import 'package:flutter/material.dart';

class DLSDeadline extends StatelessWidget {

  const DLSDeadline({
    super.key,
    this.backgroundColor,
    this.iconColor,
    this.textColor,
    required this.dateTime,
    this.height = 24,
  });

  /// deadline
  final DateTime dateTime;
  final double height;
  final Color? backgroundColor;
  final Color? iconColor;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor ?? context.c_grey_stoke,
        borderRadius: BorderRadius.circular(4.r),
      ),
      height: height.h,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 3.h),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: EdgeInsets.only(right: 4.w),
              child: Assets.icons.deadline
                  .svg(
                    height: 18.h,
                    width: 18.w,
                    colorFilter: ColorFilter.mode(
                      iconColor ?? context.c_text_grey,
                      BlendMode.srcIn,
                    ),
                  ),
            ),

            DLSBody.s1421(formatDateMonth(dateTime),
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
