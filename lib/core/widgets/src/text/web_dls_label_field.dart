import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WebDlsLabelField extends StatelessWidget {
  final String icon;
  final String label;
  final List<Widget> actions;

  const WebDlsLabelField({
    super.key,
    required this.icon,
    required this.label,
    this.actions = const [],
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          icon,
          width: 18.w,
          height: 18.h,
          color: context.c_text_grey,
        ),
        SizedBox(width: 8.w),
        Text(
          label,
          style: context.ts_s14h16_4w500.copyWith(
            color: context.c_text,
          ),
        ),
        SizedBox(width: 8.w),
        ...actions,
      ],
    );
  }
}
