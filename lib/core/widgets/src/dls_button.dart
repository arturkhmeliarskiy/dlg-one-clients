import 'package:dls_one/core/core.dart';
import 'package:dls_one/utils/utils.dart';
import 'package:flutter/material.dart';

class DLSButton extends StatelessWidget {
  const DLSButton({
    super.key,
    this.onTap,
    this.text,
    this.height,
    this.width,
    this.color,
    this.icon,
    this.border,
    this.textColor,
    this.isShadowEnabled = true,
  });

  final VoidCallback? onTap;
  final String? text;
  final Color? textColor;

  final double? height;
  final Color? color;
  final double? width;
  final Widget? icon;
  final Border? border;
  final bool isShadowEnabled;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        height: height,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.r),
          color: color ?? context.c_white_text,
          boxShadow: isShadowEnabled ? context.shadow : null,
          border: border,
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.w),
          child: icon != null
              ? Row(
                  children: [
                    icon!,
                    if (text != null)
                      Text(
                        txt(text),
                        style: context.ts_s14h14w500
                            .copyWith(color: textColor ?? context.c_text),
                        textAlign: TextAlign.center,
                      ).paddingOnly(left: 8.w),
                  ],
                )
              : text != null
                  ? Text(
                      txt(text),
                      style: context.ts_s14h14w500
                          .copyWith(color: textColor ?? context.c_text),
                      textAlign: TextAlign.center,
                    )
                  : Container(),
        ),
      ),
    );
  }
}

class DLSButtonFlat extends StatelessWidget {
  const DLSButtonFlat({
    super.key,
    this.onTap,
    this.text,
    this.height,
    this.width,
    this.color,
    this.border,
    this.textStyle,
    this.icon,
    this.mainAxisAlignment,
    this.crossAxisAlignment,
    this.horizontalPadding,
    this.isDisabled = false,
    this.disabledColor,
    this.isBordered = true,
    this.contentAlignment,
    this.borderRadius,
  });

  final VoidCallback? onTap;
  final String? text;

  final double? height;
  final Color? color;
  final double? width;
  final Border? border;
  final TextStyle? textStyle;
  final Widget? icon;
  final MainAxisAlignment? mainAxisAlignment;
  final CrossAxisAlignment? crossAxisAlignment;
  final double? horizontalPadding;
  final bool isDisabled;
  final Color? disabledColor;
  final bool isBordered;
  final AlignmentGeometry? contentAlignment;
  final BorderRadius? borderRadius;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: contentAlignment ?? Alignment.center,
      height: height ?? 40.h,
      width: width,
      decoration: BoxDecoration(
        borderRadius: borderRadius ?? BorderRadius.circular(5.r),
        color: isDisabled
            ? (disabledColor ?? (color ?? context.c_white_text))
            : (color ?? context.c_white_text),
        border:
            isBordered ? (border ?? Border.all(color: context.c_blue)) : null,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.center,
        mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.center,
        children: [
          if (icon != null) icon!,
          Text(
            txt(text),
            style: textStyle ??
                context.ts_s14h14w400.copyWith(color: context.c_blue),
            textAlign: TextAlign.center,
          ),
        ],
      ).paddingSymmetric(horizontal: horizontalPadding ?? 0),
    ).gestureDetector(onTap: isDisabled ? null : onTap);
  }
}

class DLSButtonText extends StatelessWidget {
  const DLSButtonText({
    this.onTap,
    this.text,
    this.height,
    this.width,
    this.isDisabled,
    this.textStyle,
    this.padding,
    this.iconLeft,
    this.iconRight,
    this.color,
    this.alignment,
    this.radius,
    this.border,
    super.key,
  });

  final VoidCallback? onTap;
  final String? text;
  final double? height;
  final double? width;
  final bool? isDisabled;
  final TextStyle? textStyle;
  final EdgeInsets? padding;
  final Widget? iconLeft;
  final Widget? iconRight;
  final Color? color;
  final MainAxisAlignment? alignment;
  final double? radius;
  final BoxBorder? border;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: isDisabled ?? false ? null : onTap,
      child: Container(
        padding: padding,
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: color ?? Colors.transparent,
          borderRadius: radius == null ? null : BorderRadius.circular(radius!),
          border: border,
        ),
        child: Row(
          mainAxisAlignment: alignment ?? MainAxisAlignment.start,
          children: [
            if (iconLeft != null) iconLeft!.paddingOnly(right: 8.w),
            Text(
              txt(text),
              overflow: TextOverflow.ellipsis,
              style: textStyle ??
                  context.ts_s14h22_4w400.copyWith(
                    color: isDisabled ?? false
                        ? context.c_placeholder
                        : context.c_blue,
                  ),
              textHeightBehavior:
                  const TextHeightBehavior(applyHeightToFirstAscent: false),
            ),
            if (iconRight != null) iconRight!.paddingOnly(left: 8.w),
          ],
        ),
      ),
    );
  }
}

class DLSButtonIcon extends StatelessWidget {
  const DLSButtonIcon({
    this.onTap,
    this.icon,
    this.height,
    this.width,
    this.isDisabled = false,
    this.color,
    super.key,
  });

  final VoidCallback? onTap;
  final Widget? icon;
  final double? height;
  final double? width;
  final bool isDisabled;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: isDisabled ? null : onTap,
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: isDisabled ? context.c_grey_stoke : color ?? context.c_blue,
            borderRadius: BorderRadius.all(Radius.circular(5.r)),
          ),
          height: height ?? 28.h,
          width: width ?? 28.h,
          child: icon,
        ),
      ),
    );
  }
}
