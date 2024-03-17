import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/notifications/notifications.dart';
import 'package:flutter/material.dart';
import 'package:notifications_models/notifications_models.dart';

/// добавили наблюдателей к задаче
class DLSNotificationTaskAddWatchersWidget extends StatelessWidget {
  const DLSNotificationTaskAddWatchersWidget({
    required this.object,
    required this.user,
    required this.users,
    this.isShadowEnabled = true,
    this.actions,
    this.contentCallbacks,
    super.key,
  });

  /// data
  final DLSNotificationTask object;
  final DLSNotificationUser user;
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
      dataLevel1: S.current.taskAddWatchers,
      dataLevel2: object.name,
      isShadowEnabled: isShadowEnabled,
      actions: actions,
      child: users.length == 1
          ? UserWithName(user: users.first)
          : UsersStack(users: users),
    );
  }
}
