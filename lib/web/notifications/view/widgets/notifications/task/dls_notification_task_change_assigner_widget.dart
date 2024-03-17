import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/notifications/notifications.dart';
import 'package:flutter/material.dart';
import 'package:notifications_models/notifications_models.dart';

/// изменили исполнителя задачи
class DLSNotificationTaskChangeAssignerWidget extends StatelessWidget {
  const DLSNotificationTaskChangeAssignerWidget({
    required this.object,
    required this.user,
    required this.userPrev,
    required this.userCur,
    this.isShadowEnabled = true,
    this.actions,
    this.contentCallbacks,
    super.key,
  });

  /// data
  final DLSNotificationTask object;
  final DLSNotificationUser user;
  final DLSNotificationUser userPrev;
  final DLSNotificationUser userCur;

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
      dataLevel1: S.current.taskChangeAssigner,
      isShadowEnabled: isShadowEnabled,
      actions: actions,
      child: DLSNotificationChangesTypeDLSImage(
        versionPrev: userPrev.avatar,
        versionTextPrev: userPrev.username,
        versionCur: userCur.avatar,
        versionTextCur: userCur.username,
      ),
    );
  }
}
