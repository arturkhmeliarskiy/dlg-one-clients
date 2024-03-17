import 'package:dls_one/core/core.dart';
import 'package:dls_one/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:rest_api/rest_api.dart';

class DLSIntervalPicker extends StatelessWidget {
  const DLSIntervalPicker({
    Key? key,
    required this.interval,
    this.onStartIntervalTap,
    this.onEndIntervalTap,
    this.onRemoveIntervalTap,
    this.width,
    this.height,
    this.mainAxisAlignment,
  }) : super(key: key);
  final NotifInterval interval;
  final GestureTapCallback? onStartIntervalTap;
  final GestureTapCallback? onEndIntervalTap;
  final GestureTapCallback? onRemoveIntervalTap;
  final double? width;
  final double? height;
  final MainAxisAlignment? mainAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.spaceBetween,
      children: [
        DLSButtonFlat(
          width: width ?? 112.w,
          height: height ?? 44.h,
          border: Border.all(color: context.c_grey_stoke, width: 1.r),
          text: formatTimeHHMM(interval.start.timeOfDay()),
          textStyle: context.ts_s14h14w400.copyWith(color: context.c_text),
        ).gestureDetector(onTap: onStartIntervalTap),
        Text(S.current.do1,
                style:
                    context.ts_s14h16_4w400.copyWith(color: context.c_placeholder))
            .paddingSymmetric(horizontal: 8.w),
        DLSButtonFlat(
          width: width ?? 112.w,
          height: height ?? 44.h,
          border: Border.all(color: context.c_grey_stoke, width: 1.r),
          text: formatTimeHHMM(interval.end.timeOfDay()),
          textStyle: context.ts_s14h14w400.copyWith(color: context.c_text),
        ).gestureDetector(onTap: onEndIntervalTap),
        SizedBox(width: 12.w),
        DLSButtonIcon(
          icon: Assets.icons.trashAlt1
              .svg(width: 18.w, height: 18.h, color: context.c_text_grey),
          width: 18.w,
          height: 18.h,
          color: Colors.transparent,
          onTap: onRemoveIntervalTap,
        )
      ],
    );
  }
}
