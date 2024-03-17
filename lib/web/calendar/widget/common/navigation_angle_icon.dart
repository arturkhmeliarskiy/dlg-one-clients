import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/calendar/widget/common/on_hover_background_container.dart';
import 'package:flutter/material.dart';

class NavigationAngleIcon extends StatelessWidget {
  const NavigationAngleIcon({
    required this.icon,
    required this.onIconTap,
    super.key,
  });

  final VoidCallback onIconTap;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return OnHoverBackgroundTappableContainer(
      onTap: (context) {
        onIconTap.call();
      },
      backgroundColor: context.c_grey_stoke,
      padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 11.w),
      borderRadius: BorderRadius.circular(5),
      child: icon,
    );
  }
}
