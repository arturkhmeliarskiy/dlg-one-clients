// ignore_for_file: public_member_api_docs

import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';

/// поле ввода запроса на поиск чата
class MobileDLSChatsAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const MobileDLSChatsAppBar({
    required this.bottomInformationBar,
    this.onTapBack,
    this.onTapSearch,
    super.key,
  });

  final VoidCallback? onTapBack;
  final VoidCallback? onTapSearch;
  final Widget bottomInformationBar;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: preferredSize.height,
      child: DecoratedBox(
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              width: 1.h,
              color: context.c_grey_stoke,
            ),
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: 20.h),
            Container(
              padding: EdgeInsets.only(left: 20.w, right: 16.w),
              child: Row(
                children: [
                  Assets.icons.back
                      .svg(
                        width: 18.w,
                        height: 18.h,
                        colorFilter: context.c_text_grey_color_filter,
                      )
                      .gestureDetector(onTap: onTapBack),
                  DLSHeaders.h1(S.current.chats).paddingOnly(left: 12.w),
                  const Spacer(),
                  Assets.icons.search1
                      .svg(
                        width: 18.w,
                        height: 18.h,
                        colorFilter: context.c_text_grey_color_filter,
                      )
                      .gestureDetector(onTap: onTapSearch),
                ],
              ),
            ),
            const Spacer(),
            bottomInformationBar
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(94.h);
}
