import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/sip/sip.dart';
import 'package:flutter/material.dart';

class CallGreenTickerWidget extends StatelessWidget {
  const CallGreenTickerWidget({
    required this.init,
    super.key,
  });

  final DateTime init;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 1.h),
      height: 16.h,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: context.c_green,
        borderRadius: BorderRadius.circular(100),
      ),
      child: CallTextTickerWidget(
        init: init,
        style: context.ts_s12h12w500.copyWith(color: context.c_white_text),
      ),
    );
  }
}
