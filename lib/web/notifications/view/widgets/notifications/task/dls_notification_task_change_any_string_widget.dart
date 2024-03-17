import 'package:dls_one/web/notifications/notifications.dart';
import 'package:flutter/material.dart';
import 'package:notifications_models/notifications_models.dart';

/// какое-то сообщение
/// управляется сервером
/// ИмяПользователя текст1 текст2
class DLSNotificationTaskChangeAnyStringWidget extends StatelessWidget {
  const DLSNotificationTaskChangeAnyStringWidget({
    required this.object,
    required this.user,
    required this.text1,
    required this.text2,
    this.isShadowEnabled = true,
    this.actions,
    this.contentCallbacks,
    super.key,
  });

  /// data
  final DLSNotificationTask object;
  final DLSNotificationUser user;
  final String text1;
  final String text2;

  /// widget params
  final bool isShadowEnabled;
  final Widget? actions;
  final ContentCallbacks? contentCallbacks;

  @override
  Widget build(BuildContext context) {
    return DLSNotificationUserParentWidget(
      onTap: contentCallbacks?.onTap,
      username: user.username,
      userAvatar: user.avatar,
      subAvatarType: DLSNotificationSubAvatarType.pen,
      timestamp: object.timestamp,
      dataLevel1: text1,
      dataLevel2: text2,
      isShadowEnabled: isShadowEnabled,
      actions: actions,
    );
  }
}
