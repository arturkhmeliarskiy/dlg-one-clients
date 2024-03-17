import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';

class CustomFullButton extends StatefulWidget {
  const CustomFullButton({
    required this.onCallTap,
    required this.icon,
    required this.text,
    required this.onHover,
    required this.textColor,
    required this.width,
    required this.borderColor,
    required this.backgroundColor,
    this.isIcon = true,
  });

  final VoidCallback onCallTap;
  final void Function(bool) onHover;
  final Widget icon;
  final String text;
  final Color textColor;
  final Color borderColor;
  final Color backgroundColor;
  final double width;
  final bool isIcon;

  @override
  State<CustomFullButton> createState() => _CustomFullButtonState();
}

class _CustomFullButtonState extends State<CustomFullButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: const BorderRadius.all(
        Radius.circular(5),
      ),
      onHover: (value) {
        widget.onHover(value);
      },
      onTap: () {
        widget.onCallTap();
      },
      child: Container(
        width: widget.width,
        height: 24.h,
        
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.r),
          border: Border.all(
            color: widget.borderColor,
          ),
          color: widget.backgroundColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                widget.icon,
                SizedBox(
                  width: 4.w,
                ),
                Text(
                  widget.text,
                  style: context.ts_s12h14w400.copyWith(
                    color: widget.textColor,
                  ),
                ),
              ],
            ),
            if (widget.isIcon)
              SizedBox(
                height: 24,
                width: 24,
                child: Assets.icons.angleDown1.svg(
                  height: 12.h,
                  color: widget.textColor,
                ),
              ),
          ],
        ).paddingOnly(
          left: 4.w,
          right: 6.w,
        ),
      ),
    );
  }
}
