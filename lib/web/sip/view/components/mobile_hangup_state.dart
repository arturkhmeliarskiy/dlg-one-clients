import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';

class MobileHangUpState extends StatelessWidget {
  const MobileHangUpState({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500.h,
      width: 320.w,
      alignment: Alignment.center,
      color: context.c_calls_background,
      child: DLSBody.s1421(
        S.current.currentCallIsEmpty,
        color: context.c_white_text,
      ),
    );
  }
}