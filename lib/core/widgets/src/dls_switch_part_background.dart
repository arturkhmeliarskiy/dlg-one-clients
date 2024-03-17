import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';

class DlsSwitchPartBackground extends StatelessWidget {
  const DlsSwitchPartBackground({Key? key, required this.color})
      : super(key: key);
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 28.w,
      height: 16.h,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(50.r),
      ),
    );
  }
}
