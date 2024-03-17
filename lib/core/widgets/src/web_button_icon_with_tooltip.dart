import 'package:common/common.dart';
import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WebButtonIconWithTooltip extends StatefulWidget {
  const WebButtonIconWithTooltip({
    required this.icon,
    this.tooltip = '',
    this.onTapDown,
    this.onTap,
    this.isBordered = false,
    this.isPressed = false,
    this.cornerRadius = 5,
    this.iconColor,
    this.pressedIconColor,
    this.background,
    this.width = 28,
    this.height = 28,
    this.pressedBackground,
    this.iconHeight = 18,
    this.iconWidth = 18,
    super.key,
  });

  final String icon;
  final ValueChanged<TapDownDetails>? onTapDown;
  final VoidCallback? onTap;
  final String tooltip;
  final bool isBordered;
  final bool isPressed;
  final Color? pressedIconColor;
  final Color? pressedBackground;
  final double cornerRadius;
  final Color? iconColor;
  final Color? background;
  final double height;
  final double width;
  final double iconHeight;
  final double iconWidth;

  @override
  State<WebButtonIconWithTooltip> createState() =>
      _WebButtonIconWithTooltipState();
}

class _WebButtonIconWithTooltipState extends State<WebButtonIconWithTooltip> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: widget.onTapDown,
      onTap: widget.onTap,
      child: Tooltip(
        message: widget.tooltip,
        decoration: BoxDecoration(
          color: context.c_text,
          borderRadius: BorderRadius.circular(5.r),
        ),
        textStyle: context.ts_s14h14w400.copyWith(color: context.c_white_text),
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
        child: MouseRegion(
          cursor: SystemMouseCursors.click,
          onHover: (value) {
            if ([DlsPlatformType.web, DlsPlatformType.desktop]
                .contains(DlsPlatform.dlsPlatform)) {
              setState(() {
                isHovered = true;
              });
            }
          },
          onExit: (value) {
            if ([DlsPlatformType.web, DlsPlatformType.desktop]
                .contains(DlsPlatform.dlsPlatform)) {
              setState(() {
                isHovered = false;
              });
            }
          },
          child: Container(
            height: widget.height.h,
            width: widget.width.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                widget.cornerRadius,
              ),
              border: widget.isBordered
                  ? Border.all(
                      color: context.c_grey_hover,
                    )
                  : null,
              color: widget.isPressed || isHovered
                  ? widget.pressedBackground ?? context.c_grey_hover
                  : widget.background,
            ),
            alignment: Alignment.center,
            child: SvgPicture.asset(
              widget.icon,
              width: widget.iconWidth.w,
              height: widget.iconHeight.h,
              color: widget.isPressed
                  ? (widget.pressedIconColor ?? context.c_text)
                  : (widget.iconColor ?? context.c_text_grey),
            ),
          ),
        ),
      ),
    );
  }
}
