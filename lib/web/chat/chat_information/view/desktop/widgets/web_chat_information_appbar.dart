import 'package:auto_route/auto_route.dart';
import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';

class WebChatInformationAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const WebChatInformationAppBar({
    super.key,
  });

  @override
  Size get preferredSize => Size.fromHeight(52.h);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: preferredSize.height,
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: context.c_white_text,
        border: Border(
          bottom: BorderSide(
            width: 1.h,
            color: context.c_grey_stoke,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          DLSHeaders.h1(S.current.information),
          WebButtonIconWithTooltip(
            onTap: () {
              context.back();
            },
            icon: Assets.icons.times1.path,
            tooltip: S.current.hide,
          )
        ],
      ),
    );
  }
}
