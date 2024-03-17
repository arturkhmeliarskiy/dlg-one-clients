import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/notifications/notifications.dart';
import 'package:flutter/material.dart';
import 'package:notifications_models/notifications_models.dart';

/// вас добавили в группу
class DLSNotificationChatAddYouToGroupWidget extends StatelessWidget {
  const DLSNotificationChatAddYouToGroupWidget({
    required this.object,
    required this.user,
    required this.groupName,
    this.isShadowEnabled = true,
    this.actions,
    this.contentCallbacks,
    super.key,
  });

  /// data
  final DLSNotificationChat object;
  final DLSNotificationUser user;
  final String groupName;

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
      subAvatarType: DLSNotificationSubAvatarType.plus,
      timestamp: object.timestamp,
      dataLevel1: S.current.chatAddYouToGroup,
      dataLevel2: groupName,
      isShadowEnabled: isShadowEnabled,
      actions: actions,
    );
  }
}
