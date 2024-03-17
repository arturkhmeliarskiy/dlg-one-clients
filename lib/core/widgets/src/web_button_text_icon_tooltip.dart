import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WebButtonTextIconTooltip extends StatelessWidget {
  const WebButtonTextIconTooltip({
    required this.tooltip,
    this.width,
    this.height,
    this.text,
    this.background,
    this.color,
    this.iconLeft,
    this.iconRight,
    this.iconSize = 18,
    this.borderRadius = 5,
    this.onTap,
    super.key,
  });

  final double? width;
  final double? height;
  final double borderRadius;
  final String? text;
  final String tooltip;
  final Color? color;
  final Color? background;
  final String? iconLeft;
  final String? iconRight;
  final double iconSize;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: onTap,
        child: Tooltip(
          message: tooltip,
          decoration: BoxDecoration(
            color: context.c_text,
            borderRadius: BorderRadius.circular(5.r),
          ),
          textStyle: context.ts_s14h14w400.copyWith(
            color: context.c_white_text,
          ),
          child: Container(
            width: width?.w,
            height: height?.h,
            padding: EdgeInsets.symmetric(horizontal: 12.w),
            decoration: BoxDecoration(
              color: background ?? context.c_blue,
              borderRadius: BorderRadius.circular(borderRadius.r),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (iconLeft != null)
                  Padding(
                    padding: EdgeInsets.only(right: 8.w),
                    child: SvgPicture.asset(
                      iconLeft!,
                      width: iconSize.r,
                      height: iconSize.r,
                      color: color ?? context.c_white_text,
                    ),
                  ),
                Flexible(
                  child: Text(
                    text ?? '',
                    style: context.ts_s14h14w400.copyWith(
                      color: color ?? context.c_white_text,
                    ),
                    maxLines: 1,
                    softWrap: false,
                    textAlign: TextAlign.center,
                  ),
                ),
                if (iconRight != null)
                  Padding(
                    padding: EdgeInsets.only(right: 8.w),
                    child: SvgPicture.asset(
                      iconRight!,
                      width: 18.r,
                      height: 18.r,
                      color: color ?? context.c_white_text,
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
