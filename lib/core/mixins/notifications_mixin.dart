import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';

/// миксин на отображение уведомлений внутри приложения
mixin NotificationsMixin {
  /// уведомление внизу
  void showDLSSnackBar(
    BuildContext context,
    String text, {
    EdgeInsets? padding,
    Duration duration = const Duration(
      milliseconds: 1500,
    ),
  }) {
    final snackBar = SnackBar(
      duration: duration,
      width: MediaQuery.of(context).size.width - 16.w,
      content: Text(
        text,
        style: context.ts_s14h22_4w400.copyWith(color: context.c_white_text),
        textHeightBehavior:
            const TextHeightBehavior(applyHeightToFirstAscent: false),
      ),
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(5.r),
        ),
      ),
      padding: EdgeInsets.symmetric(horizontal: 13.w, vertical: 11.h),
      backgroundColor: context.c_calls_background,
      behavior: SnackBarBehavior.floating,
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
