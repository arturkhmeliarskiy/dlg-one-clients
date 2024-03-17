import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/notifications/notifications.dart';
import 'package:flutter/material.dart';
import 'package:notifications_models/notifications_models.dart';

/// пользователей удалили из группы
class DLSNotificationChatRemoveGroupUsersWidget extends StatelessWidget {
  const DLSNotificationChatRemoveGroupUsersWidget({
    required this.object,
    required this.user,
    required this.groupName,
    required this.users,
    this.isShadowEnabled = true,
    this.actions,
    this.contentCallbacks,
    super.key,
  });

  /// data
  final DLSNotificationChat object;
  final DLSNotificationUser user;
  final String groupName;
  final List<DLSNotificationUser> users;

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
      dataLevel1: S.current.chatRemoveGroupUsers,
      dataLevel2: groupName,
      isShadowEnabled: isShadowEnabled,
      actions: actions,
      child: users.length == 1
          ? UserWithName(user: users.first)
          : UsersStack(users: users),
    );
  }
}
