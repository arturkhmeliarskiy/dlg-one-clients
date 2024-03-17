import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';


class DLSChatName extends StatelessWidget {
  const DLSChatName({
    required this.name,
    super.key,
  });

  final String name;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.only(right: 4.w),
          child: Assets.icons.commentAltLines.svg(
            colorFilter: context.c_text_grey_color_filter,
            width: 18.r,
            height: 18.r,
          ),
        ),
        DLSHeaders.h3(
          name,
          maxLines: 1,
        ),
      ],
    );
  }
}
