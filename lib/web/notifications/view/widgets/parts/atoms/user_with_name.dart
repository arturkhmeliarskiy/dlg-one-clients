import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/notifications/notifications.dart';
import 'package:flutter/material.dart';
import 'package:notifications_models/notifications_models.dart';

class UserWithName extends StatelessWidget {
  const UserWithName({
    required this.user,
    super.key,
    this.hideName = false,
  });

  final DLSNotificationUser user;
  final bool hideName;

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: user.username,
      decoration: BoxDecoration(
        color: context.c_text,
        borderRadius: BorderRadius.circular(5.r),
      ),
      textStyle: context.ts_s14h14w400.copyWith(color: context.c_white_text),
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 3.h),
      child: DLSImageTextRight(
        imageUrl: user.avatar,
        text: hideName ? null : user.username,
      ),
    );
  }
}
