import 'package:dls_one/core/core.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class MobileAddItemButton extends StatelessWidget {
  const MobileAddItemButton({
    required this.text,
    required this.onPressed,
    super.key,
  });

  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: SizedBox(
        height: 24.h,
        child: DottedBorder(
          radius: Radius.circular(24.r),
          borderType: BorderType.RRect,
          strokeWidth: 1.r,
          padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 8.w),
          color: context.c_placeholder,
          dashPattern: const [4, 4],
          child: Center(
            child: Text(
              '+ $text',
              style: context.ts_s12h14w400.copyWith(color: context.c_placeholder),
            ),
          ),
        ),
      ),
    );
  }
}
