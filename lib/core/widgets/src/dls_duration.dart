import 'package:dls_one/core/core.dart';
import 'package:flutter/widgets.dart';

class DlsDuration extends StatelessWidget {
  const DlsDuration({
    required this.duration,
    this.backgroundColor,
    super.key,
  });

  final int duration;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32.h,
      decoration: BoxDecoration(
        color: backgroundColor ?? context.c_grey_stoke,
        borderRadius: BorderRadius.circular(4.r),
      ),
      child: Row(
        children: [
          DlsPadding.only(
            right: 4.w,
            left: 8.w,
            child: Assets.icons.clockEight.svg(width: 18.r, height: 18.r),
          ),
          DlsPadding.only(
            right: 9.w,
            top: 2.h,
            child: Text(
              S.current.amountOfDays(duration),
              style: context.ts_s14h22_4w400,
              textHeightBehavior:
                  const TextHeightBehavior(applyHeightToFirstAscent: false),
            ),
          ),
        ],
      ),
    );
  }
}
