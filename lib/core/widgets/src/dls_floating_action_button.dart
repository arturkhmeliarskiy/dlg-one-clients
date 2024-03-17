// ignore_for_file: public_member_api_docs

import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';

class DLSFloatingActionButton extends StatelessWidget {
  const DLSFloatingActionButton({
    super.key,
    this.onPressed,
    this.backgroundColor,
    this.foregroundColor,
    this.rightPadding,
    this.bottomPadding,
    this.iconSize,
  });

  final GestureTapCallback? onPressed;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final double? rightPadding;
  final double? bottomPadding;
  final double? iconSize;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressed,
      backgroundColor: backgroundColor ?? context.c_white_text,
      foregroundColor: foregroundColor ?? context.c_text_grey,
      child: Icon(Icons.add, size: iconSize),
    ).paddingOnly(
      right: rightPadding ?? 28.w,
      bottom: bottomPadding ?? 28.h,
    );
  }
}
