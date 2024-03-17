import 'package:dls_one/core/core.dart';
import 'package:dls_one/utils/utils.dart';
import 'package:flutter/material.dart';

class DLSDatetime extends StatelessWidget {
  const DLSDatetime({
    super.key,
    required this.dateTime,
    this.backgroundColor,
    this.textColor,
  });

  final DateTime dateTime;
  final Color? backgroundColor;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
          color: backgroundColor ?? context.c_grey_hover,
          borderRadius: BorderRadius.circular(5.r)),
      child: Text(
        formatDateMonthTime(dateTime),
        style: context.ts_s14h14w400.copyWith(color: textColor ?? context.c_text),
        textHeightBehavior:
            const TextHeightBehavior(applyHeightToFirstAscent: false),
      ).paddingSymmetric(horizontal: 8.w, vertical: 3.h),
    );
  }
}
