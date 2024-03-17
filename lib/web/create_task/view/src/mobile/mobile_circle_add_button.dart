import 'package:dls_one/core/core.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MobileCircleAddButton extends StatelessWidget {
  const MobileCircleAddButton({
    required this.text,
    required this.asset,
    required this.onPressed,
    super.key,
  });

  final String text;
  final String asset;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: 40.h,
          width: 40.w,
          child: GestureDetector(
            onTap: onPressed,
            child: DottedBorder(
              borderType: BorderType.Circle,
              color: context.c_placeholder,
              dashPattern: const [4, 4],
              child: Center(
                child: SvgPicture.asset(
                  asset,
                  color: context.c_text_grey,
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: 4.h),
        Text(
          text,
          style: context.ts_s10h12w400.copyWith(color: context.c_text),
        ),
      ],
    );
  }
}
