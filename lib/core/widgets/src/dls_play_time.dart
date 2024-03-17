import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';

class DlsPlayTime extends StatelessWidget {
  const DlsPlayTime({
    Key? key,
    required this.recordDuration,
  }) : super(key: key);
  final String recordDuration;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 22.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.r),
        color: context.c_calls_background,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Assets.icons.play1
              .svg(height: 14.h, width: 14.w, color: context.c_white_text),
          SizedBox(width: 4.w),
          Text(
            recordDuration,
            textAlign: TextAlign.center,
            style: context.ts_s12h12w400.copyWith(color: context.c_white_text),
          )
        ],
      ).paddingSymmetric(horizontal: 4.w, vertical: 4.h),
    );
  }
}
