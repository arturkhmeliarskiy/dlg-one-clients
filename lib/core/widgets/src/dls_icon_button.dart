import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DLSiconButton extends StatelessWidget {
  const DLSiconButton({
    super.key,
    this.onTap,
    required this.svg,
    this.outerWidth,
    this.outerHeight,
    this.decoration,
    this.onLongPressStart,
    this.onLongPressEnd,
    this.color,
  });

  final GestureTapCallback? onTap;
  final GestureLongPressStartCallback? onLongPressStart;
  final GestureLongPressEndCallback? onLongPressEnd;
  final SvgPicture svg;
  final double? outerWidth;
  final double? outerHeight;
  final BoxDecoration? decoration;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      onLongPressStart: onLongPressStart,
      onLongPressEnd: onLongPressEnd,
      child: Container(
        decoration: decoration,
        height: outerWidth ?? 18.h,
        width: outerHeight ?? 18.w,
        child: Container(
          height: 18.h,
          width: 18.w,
          alignment: Alignment.center,
          color: color ?? Colors.transparent,
          child: svg,
        ),
      ),
    );
  }
}

class DLSPlusIconButton extends StatelessWidget {
  const DLSPlusIconButton({
    super.key,
    this.onTap,
    this.tooltip,
    this.horizontalPad = 6,
    this.verticalPad = 6,
    this.shape,
    this.icon,
    this.borderColor,
    this.backgroundColor,
  });

  final VoidCallback? onTap;
  final String? tooltip;
  final double horizontalPad;
  final double verticalPad;
  final MaterialStateProperty<OutlinedBorder?>? shape;
  final Widget? icon;
  final Color? borderColor;
  final Color? backgroundColor;

  Color _backgroundColor(BuildContext context) {
    return backgroundColor ?? context.c_grey_grey;
  }

  Color _hoverColor(BuildContext context) {
    return context.c_grey_hover;
  }

  BorderSide get _borderSide {
    if (borderColor == null) return BorderSide.none;
    return BorderSide(color: borderColor!);
  }

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
      // padding: EdgeInsets.symmetric(vertical: 3.h, horizontal: 8.w),
      message: tooltip ?? '',
      child: SizedBox(
        height: 24.h,
        width: 24.w,
        child: ElevatedButton(
          onPressed: onTap,
          style: ButtonStyle(
            padding: MaterialStateProperty.all(
              EdgeInsets.symmetric(
                horizontal: horizontalPad.w,
                vertical: verticalPad.h,
              ),
            ),
            elevation: MaterialStateProperty.all(0),
            shape: MaterialStateProperty.all(CircleBorder(side: _borderSide)),
            backgroundColor: MaterialStateProperty.resolveWith<Color?>(
              (Set<MaterialState> states) {
                if (states.contains(MaterialState.hovered)) {
                  return _hoverColor(context);
                } else if (states.contains(MaterialState.selected)) {
                  return _hoverColor(context);
                }
                return _backgroundColor(
                  context,
                ); // Use the component's default.
              },
            ),
          ),
          child: icon ?? Assets.icons.webTaskAdd.svg(),
        ),
      ),
    );
  }
}
