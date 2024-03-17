import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';

class CustomShortButton extends StatefulWidget {
  const CustomShortButton({
    required this.onCallTap,
    required this.icon,
    required this.onHover,
    required this.backgroundColor,
    required this.borderColor,
    this.isBackgroundColor = false,
    this.margin,
    super.key,
  });

  final VoidCallback onCallTap;
  final Color backgroundColor;
  final Color borderColor;
  final bool isBackgroundColor;
  final void Function(bool) onHover;
  final Widget icon;
  final EdgeInsets? margin;

  @override
  State<CustomShortButton> createState() => _CustomShortButtonState();
}

class _CustomShortButtonState extends State<CustomShortButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 24.w,
      height: 24.h,
      margin: widget.margin ??
          EdgeInsets.only(
            top: 2.h,
            left: 5.w,
            right: 5.w,
            bottom: 2.h,
          ),
      decoration: widget.isBackgroundColor
          ? BoxDecoration(
              borderRadius: BorderRadius.circular(5.r),
              border: Border.all(
                color: widget.borderColor,
              ),
              color: widget.backgroundColor,
            )
          : const BoxDecoration(),
      child: InkWell(
        borderRadius: BorderRadius.all(
          Radius.circular(5.r),
        ),
        onHover: (value) {
          widget.onHover(value);
        },
        onTap: () {
          widget.onCallTap();
        },
        child: Center(
          child: widget.icon,
        ),
      ),
    );
  }
}
