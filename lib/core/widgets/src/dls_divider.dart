import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';

/// разделитель
class DLSDivider extends StatelessWidget {
  const DLSDivider({
    this.isVertical = false,
    super.key,
  });

  /// это вертикальный разделитель?
  final bool isVertical;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: isVertical ? Alignment.centerLeft : Alignment.bottomCenter,
      decoration: BoxDecoration(
        color: context.c_appbar,
        border: Border(
          left: isVertical
              ? BorderSide(
                  width: 1,
                  color: context.c_grey_stoke,
                )
              : BorderSide.none,
          bottom: isVertical
              ? BorderSide.none
              : BorderSide(
                  width: 1,
                  color: context.c_grey_stoke,
                ),
        ),
      ),
    );
  }
}
