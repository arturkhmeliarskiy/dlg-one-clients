import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WebSimpleButton extends StatelessWidget {
  const WebSimpleButton(
      {Key? key,
      this.onTap,
      this.text,
      this.height,
      this.width,
      this.color,
      this.border,
      this.textStyle,
      this.textAlign,
      this.icon,
      this.isPressed = false})
      : super(key: key);

  final GestureTapCallback? onTap;
  final String? text;
  final TextStyle? textStyle;
  final TextAlign? textAlign;

  final double? height;
  final Color? color;
  final double? width;
  final Border? border;
  final String? icon;
  final bool isPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        height: height ?? 40.h,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.r),
          color: color ?? context.c_blue,
          border: border ?? Border.all(color: context.c_blue),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(width: 12.w),
            if (icon != null)
              Padding(
                padding: EdgeInsets.only(right: 8.w),
                // child: Svg(widget.icon!),
                child: SvgPicture.asset(
                  icon!,
                  width: 18.r,
                  height: 18.r,
                  color: context.c_white_text,
                ),
              ),
            Text(
              text ?? '',
              style: textStyle ??
                  context.ts_s14h14w400.copyWith(color: context.c_white_text),
              textAlign: textAlign ?? TextAlign.center,
            ),
            SizedBox(width: 12.w)
          ],
        ),
      ),
    );
  }
}
