import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/sip/sip.dart';
import 'package:flutter/material.dart';

class MobileCallingState extends StatelessWidget {
  const MobileCallingState(this.info, {super.key});

  final CallInitStep info;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500.h,
      width: 320.w,
      alignment: Alignment.center,
      color: context.c_calls_background,
      child: Builder(
        builder: (context) {
          switch (info) {
            case CallInitStep.one:
              return DLSBody.s1421(
                S.current.callInitStep(1, 2),
                color: context.c_white_text,
              );
            case CallInitStep.two:
              return DLSBody.s1421(
                S.current.callInitStep(2, 2),
                color: context.c_white_text,
              );
          }
        },
      ),
    );
  }
}
