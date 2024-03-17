import 'package:dls_one/core/core.dart';
import 'package:dls_one/utils/utils.dart';
import 'package:flutter/material.dart';

class SubtitleText extends StatelessWidget {
  const SubtitleText({
    Key? key,
    required this.text,
    this.style,
  }) : super(key: key);
  final String text;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return Text(
      txt(text),
      style: style ?? context.ts_s14h22_4w400.copyWith(color: context.c_text_grey),
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      textHeightBehavior: const TextHeightBehavior(applyHeightToFirstAscent: false),
    );
  }
}