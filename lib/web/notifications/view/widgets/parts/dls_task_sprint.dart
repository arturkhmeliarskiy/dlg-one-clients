import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';

/// спринт прикрепленный к задаче
class DLSTaskSprint extends StatelessWidget {

  const DLSTaskSprint({
    super.key,
    this.backgroundColor,
    this.iconColor,
    this.textColor,
    required this.sprintName,
  });

  /// deadline
  final String sprintName;
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
      height: 24.h,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Assets.icons.sprint
              .svg(
                height: 18.h,
                width: 18.w,
                colorFilter: ColorFilter.mode(
                  iconColor ?? context.c_text_grey,
                  BlendMode.srcIn,
                ),
              )
              .paddingOnly(right: 4.w),
          Text(
            sprintName,
            style: context.ts_s14h14w400.copyWith(
              color: textColor ?? context.c_text,
            ),
            textHeightBehavior:
                const TextHeightBehavior(applyHeightToFirstAscent: false),
          ),
        ],
      ).paddingSymmetric(horizontal: 6.w, vertical: 3.h),
    );
  }
}
