import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';

class DLSTaskUnLockName extends StatelessWidget {
  const DLSTaskUnLockName({
    required this.name,
    this.lock = true,
    super.key,
  });

  final String name;
  final bool lock;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.only(right: 4.w),
          child: lock
              ? Assets.icons.padlock1.svg(
                  colorFilter: context.c_text_grey_color_filter,
                  width: 18.r,
                  height: 18.r,
                )
              : Assets.icons.padlock1.svg(
                  colorFilter: context.c_text_grey_color_filter,
                  width: 18.r,
                  height: 18.r,
                ),
        ),
        Flexible(
          child: DLSHeaders.h3(
            name,
            maxLines: 1,
          ),
        ),
      ],
    );
  }
}
