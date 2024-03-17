import 'package:flutter/material.dart';
import 'package:dls_one/core/core.dart';

class WebChatPanelAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  WebChatPanelAppBar({
    required this.title,
  });

  final String title;

  @override
  Size get preferredSize => Size.fromHeight(52.h);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 20.w),
            child: Text(
              title,
              style: context.ts_s18h21w500.copyWith(color: context.c_text),
              textHeightBehavior:
                  const TextHeightBehavior(applyHeightToFirstAscent: false),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
        _buildBottomLine(context),
      ],
    );
  }

  Widget _buildBottomLine(BuildContext context) {
    return Container(
      color: context.c_grey_stoke,
      height: 1.h,
    );
  }
}
