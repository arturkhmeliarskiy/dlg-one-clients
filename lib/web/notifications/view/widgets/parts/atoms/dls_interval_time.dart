import 'package:dls_one/core/core.dart';
import 'package:dls_one/utils/utils.dart';
import 'package:flutter/material.dart';

class DLSIntervalTime extends StatelessWidget {
  const DLSIntervalTime({
    super.key,
    required this.interval,
    this.backgroundColor,
    this.iconColor,
    this.textColor,
  });

  final List<DateTime> interval;
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
            Assets.icons.clockEight
                .svg(
                  width: 18.r,
                  height: 18.r,
                  colorFilter: ColorFilter.mode(
                    iconColor ?? context.c_text_grey,
                    BlendMode.srcIn,
                  ),
                )
                .paddingOnly(right: 4.w),
            DLSBody.s1421(
              '${formatTimeHHMM(interval[0].timeOfDay())}'
              ' - '
              '${formatTimeHHMM(interval[1].timeOfDay())}',
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
