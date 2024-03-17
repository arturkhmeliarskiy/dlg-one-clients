import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';

class DlsFailure extends StatelessWidget {
  const DlsFailure({
    super.key,
    required this.message,
    this.onTap,
    this.textColor,
    this.buttonTextColor,
    this.buttonText,
    this.borderWidth = 0,
    this.color,
  });

  final String? buttonText;
  final String message;
  final GestureTapCallback? onTap;
  final Color? textColor;
  final Color? buttonTextColor;
  final Color? color;
  final double borderWidth;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: color ?? context.c_white_text,
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(20.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              message,
              textAlign: TextAlign.center,
              style: TextStyle(color: textColor),
            ).paddingOnly(bottom: 20.h),
            if (onTap != null)
              DLSButtonFlat(
                width: 150.w,
                onTap: onTap,
                text: buttonText ?? S.current.back,
                textStyle: TextStyle(color: buttonTextColor),
                border: Border.all(
                  width: borderWidth,
                  color: borderWidth != 0
                      ? context.c_placeholder
                      : context.c_white_text,
                ),
              )
          ],
        ),
      ),
    );
  }
}
