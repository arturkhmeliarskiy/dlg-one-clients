import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';

class WebDropdownMenuIcon extends StatelessWidget {
  const WebDropdownMenuIcon({
    super.key,
    required this.isMenuOpen,
    this.color,
    this.isIconUp = false,
    this.width,
    this.height,
  });

  final bool isMenuOpen;
  final Color? color;
  final bool isIconUp;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    if (isMenuOpen) {
      return Assets.icons.angleDown1.svg(
        color: color ?? context.c_text_grey,
        width: width,
        height: height,
      );
    } else {
      return isIconUp
          ? Assets.icons.angleUp.svg(
              color: color ?? context.c_text_grey,
              width: width,
              height: height,
            )
          : Assets.icons.angleRight.svg(
              color: color ?? context.c_text_grey,
              width: width,
              height: height,
            );
    }
  }
}
