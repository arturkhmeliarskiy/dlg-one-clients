import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';

mixin SnackbarErrorShowerWixin {
  final GlobalKey<ScaffoldMessengerState>? scaffoldKey = null;

  void showError(
    BuildContext context, {
    String? text,
    EdgeInsets? padding,
    Duration duration = const Duration(seconds: 3),
  }) {
    final snackBar = SnackBar(
      duration: const Duration(seconds: 5),
      content: Text(
        text ?? S.current.loadingDataError,
        textAlign: TextAlign.center,
        style: context.ts_s14h22_4w400.copyWith(color: context.c_white_text),
        textHeightBehavior: const TextHeightBehavior(
          applyHeightToFirstAscent: false,
        ),
      ),
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(5.r),
        ),
      ),
      margin: EdgeInsets.all(12.r),
      padding: EdgeInsets.symmetric(
        horizontal: 12.w,
        vertical: 10.h,
      ),
      backgroundColor: context.c_red,
      behavior: SnackBarBehavior.floating,
    );

    final showSnackBar = scaffoldKey?.currentState?.showSnackBar ??
        ScaffoldMessenger.of(context).showSnackBar;

    showSnackBar(snackBar);
  }
}
