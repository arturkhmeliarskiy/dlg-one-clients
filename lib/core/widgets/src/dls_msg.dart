import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';

class DlsMsg extends StatelessWidget {
  const DlsMsg({
    Key? key,
    required this.message,
    // this.onTap,
    this.textColor,
    // this.buttonTextColor,
  }) : super(key: key);

  final String message;
  // final GestureTapCallback? onTap;
  final Color? textColor;
  // final Color? buttonTextColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.all(20.w),
      child: Column(
        children: [
          SizedBox(height: 200.h),
          Text(
            message,
            textAlign: TextAlign.center,
            style: TextStyle(color: textColor),
          ).paddingOnly(bottom: 20.h),
          // DlsButtonText(
          //   width: 50.w,
          //   onTap: onTap,
          //   text: S.current.back,
          //   textStyle: TextStyle(color: buttonTextColor),
          // )
        ],
      ),
    );
  }
}
