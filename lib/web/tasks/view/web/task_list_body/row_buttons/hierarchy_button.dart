import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';

class HierarchyButton extends StatelessWidget {
  const HierarchyButton({
    super.key,
    this.onTap,
    this.tooltip,
    this.horizontalPad,
    this.verticalPad,
    this.shape,
    this.icon,
    required this.color,
  });

  final VoidCallback? onTap;
  final String? tooltip;
  final double? horizontalPad;
  final double? verticalPad;
  final MaterialStateProperty<OutlinedBorder?>? shape;
  final Widget? icon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.r),
        color: context.c_calls_background,
      ),
      textStyle: context.ts_s14h14w400.copyWith(
        color: context.c_appbar,
      ),
      message: tooltip ?? '',
      child: SizedBox(
        height: 32.h,
        width: 32.w,
        child: ElevatedButton(
          onPressed: onTap,
          style: ButtonStyle(
            padding: MaterialStateProperty.all(
              EdgeInsets.symmetric(
                horizontal: horizontalPad ?? 7.w,
                vertical: verticalPad ?? 7.h,
              ),
            ),
            elevation: MaterialStateProperty.all(0),
            shape: shape ??
                MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.r),
                  ),
                ),
            backgroundColor: MaterialStateProperty.all(color),
          ),
          child: icon ?? Assets.icons.webTaskAdd.svg(),
        ),
      ),
    );
  }
}
