import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';

class TodoCheckBox extends StatelessWidget {
  const TodoCheckBox({
    required this.isChecked,
    required this.size,
    super.key,
  });

  final bool isChecked;
  final double size;

  @override
  Widget build(BuildContext context) {
    return SizedBox.square(
      dimension: size,
      child: !isChecked
          ? DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4.r),
                color: context.c_white_background,
                border: Border.all(
                  width: 1.r,
                  color: context.c_grey_stoke,
                ),
              ),
              child: const SizedBox.expand(),
            )
          : Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4.r),
                color: context.c_blue,
              ),
              alignment: Alignment.center,
              child: Icon(
                Icons.check_rounded,
                size: size,
                color: context.c_white_text,
              ),
            ),
    );
  }
}
