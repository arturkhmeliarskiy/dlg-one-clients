import 'package:auto_route/auto_route.dart';
import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';

class DlsBackButton extends StatelessWidget {
  const DlsBackButton({
    super.key,
    this.onTap,
  });
  final GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap ?? () => AutoRouter.of(context).pop(),
      child: Container(
        height: 18.h,
        width: 18.w,
        color: Colors.transparent,
        alignment: Alignment.center,
        child: Assets.icons.back
            .svg(width: 18.w, height: 18.h, color: context.c_text_grey),
      ),
    );
  }
}
