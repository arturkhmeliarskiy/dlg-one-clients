import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';

class ShowHideButton extends StatelessWidget {
  const ShowHideButton({
    required this.onTap,
    this.show = true,
    this.color,
    super.key,
  });

  final bool show;
  final VoidCallback onTap;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        children: [
          Assets.icons.verticalArrows.svg(width: 18.w, color: color),
          SizedBox(width: 4.w),
          Text(
            show ? S.current.listShow : S.current.hide,
            style: context.ts_s14h22_4w400.copyWith(
              color: color ?? context.c_placeholder,
              height: 1,
            ),
          )
        ],
      ),
    );
  }
}
