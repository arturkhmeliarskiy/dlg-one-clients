import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';

class WebAuthHeader extends StatelessWidget {
  const WebAuthHeader({
    required this.title,
    this.subtitle,
    super.key,
  });

  final String title;
  final String? subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: context.ts_s18h21w500,
        ),
        if (subtitle != null) ...[
          SizedBox(
            height: 8.h,
          ),
          Text(
            subtitle!,
            style: context.ts_s14h22_4w400.copyWith(
              color: context.c_text_grey,
            ),
          ),
        ]
      ],
    );
  }
}
