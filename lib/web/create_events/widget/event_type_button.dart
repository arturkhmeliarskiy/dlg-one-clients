import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';

class EventTypeButton extends StatelessWidget {
  const EventTypeButton({
    super.key,
    required this.onPressed,
    this.text = '',
    this.checked = false,
    this.borderRadius,
    this.backgroundColor,
    this.textColor,
    this.borderColor,
  });

  final String text;
  final bool checked;
  final BorderRadius? borderRadius;
  final VoidCallback onPressed;
  final Color? backgroundColor;
  final Color? textColor;
  final Color? borderColor;

  @override
  Widget build(BuildContext context) {
    var textStyle = context.ts_s14h14w400.copyWith(color: context.c_text_grey);
    var backgroundColor = context.c_grey_grey;
    var border = Border.all(color: context.c_grey_stoke);
    if (checked) {
      textStyle = textStyle.copyWith(color: textColor ?? context.c_purple);
      backgroundColor = this.backgroundColor ?? context.c_purple_background;
      border = Border.all(color: borderColor ?? context.c_purple);
    }
    return DLSButtonFlat(
      onTap: onPressed,
      height: 32,
      text: text,
      borderRadius: borderRadius,
      textStyle: textStyle,
      border: border,
      color: backgroundColor,
    );
  }
}
