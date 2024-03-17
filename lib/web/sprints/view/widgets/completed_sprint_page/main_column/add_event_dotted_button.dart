import 'package:dls_one/core/core.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class AddEventDottedButton extends StatelessWidget {
  const AddEventDottedButton({
    required this.onPressed,
    required this.title,
    super.key,
  });

  final VoidCallback onPressed;
  final String title;

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      strokeWidth: 2,
      color: context.c_blue,
      dashPattern: const <double>[2, 2],
      padding: const EdgeInsets.all(1),
      radius: const Radius.circular(4),
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
        ),
        child: Container(
          height: 48,
          width: double.infinity,
          padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
          child: Text(
            '+ $title',
            style: context.ts_s14h16_4w400.copyWith(color: context.c_blue),
          ),
        ),
      ),
    );
  }
}
