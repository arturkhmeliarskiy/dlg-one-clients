import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';

class MobilePersonalChatInformationAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const MobilePersonalChatInformationAppBar({
    required this.onTapBack,
  });

  final VoidCallback? onTapBack;

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: preferredSize,
      child: Container(
        height: preferredSize.height,
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              width: 1.h,
              color: context.c_grey_stoke,
            ),
          ),
        ),
        child: Row(
          children: [
            GestureDetector(
              onTap: onTapBack,
              child: Assets.icons.back.svg(
                width: 18.w,
                height: 18.h,
                colorFilter: context.c_text_grey_color_filter,
              ),
            ),
            SizedBox(width: 12.w),
            Expanded(child: DLSHeaders.h3(S.current.information)),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(60.h);
}
