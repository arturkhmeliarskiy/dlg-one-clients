import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';

class DlsSwitchPartCircle extends StatelessWidget {
  const DlsSwitchPartCircle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 12.r,
      height: 12.r,
      decoration: BoxDecoration(
        color: context.c_white_text,
        borderRadius: BorderRadius.circular(50.r),
      ),
    );
  }
}
