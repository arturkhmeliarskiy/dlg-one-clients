import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/notifications/notifications.dart';
import 'package:flutter/material.dart';
import 'package:notifications_models/notifications_models.dart';

/// изменили приоритет задачи
class DLSNotificationTaskChangePriorityWidget extends StatelessWidget {
  const DLSNotificationTaskChangePriorityWidget({
    required this.object,
    required this.user,
    required this.priorityPrev,
    required this.priorityCur,
    this.isShadowEnabled = true,
    this.actions,
    this.contentCallbacks,
    super.key,
  });

  /// data
  final DLSNotificationTask object;
  final DLSNotificationUser user;
  final DLSNotificationObjectPriority priorityPrev;
  final DLSNotificationObjectPriority priorityCur;

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
      dataLevel1: S.current.taskChangePriority,
      isShadowEnabled: isShadowEnabled,
      actions: actions,
      child: DLSNotificationChangesTypeDLSTaskPriority(
        versionPrev: priorityPrev,
        versionCur: priorityCur,
      ),
    );
  }
}
