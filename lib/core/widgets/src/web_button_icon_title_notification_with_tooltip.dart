import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';

class WebButtonIconTitleNotificationWithTooltip extends StatelessWidget {
  const WebButtonIconTitleNotificationWithTooltip({
    super.key,
    this.title,
    this.notificationCount,
    this.isPressed = false,
    this.icon,
    this.onTap,
    required this.tooltip,
  });

  final String? title;
  final int? notificationCount;
  final bool isPressed;
  final String? icon;
  final GestureTapCallback? onTap;
  final String tooltip;

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: tooltip,
      decoration: BoxDecoration(
        color: context.c_text,
        borderRadius: BorderRadius.circular(5.r),
      ),
      textStyle: context.ts_s14h14w400.copyWith(color: context.c_white_text),
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 3.h),
      child: WebButtonIconTitleNotification(
        title: title,
        notificationCount: notificationCount,
        isPressed: isPressed,
        icon: icon,
        onTap: onTap,
      ),
    );
  }
}
