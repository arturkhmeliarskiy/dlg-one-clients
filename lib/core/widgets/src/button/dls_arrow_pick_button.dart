import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';

class DlsArrowPickButton extends StatelessWidget {
  const DlsArrowPickButton({
    required this.text,
    super.key,
    this.onTap,
  });

  final VoidCallback? onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      hoverColor: context.c_grey_hover,
      borderRadius: BorderRadius.circular(4.r),
      onTap: onTap,
      child: Container(
        height: 32.h,
        decoration: BoxDecoration(
          color: context.c_white_text,
          borderRadius: BorderRadius.circular(4.r),
          border: Border.all(color: context.c_grey_stoke),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                text,
                style: context.ts_s14h22_4w400.copyWith(
                  color: context.c_text,
                  height: 1.h,
                ),
              ),
              Assets.icons.angleDown1.svg(
                height: 18.h,
                width: 18.w,
                color: context.c_text_grey,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
