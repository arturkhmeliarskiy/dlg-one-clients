import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/notifications/notifications.dart';
import 'package:flutter/material.dart';
import 'package:notifications_models/notifications_models.dart';

/// вас назначили исполнителем задачи
class DLSNotificationTaskAddYouAssignerWidget extends StatelessWidget {
  const DLSNotificationTaskAddYouAssignerWidget({
    required this.object,
    required this.user,
    this.isShadowEnabled = true,
    this.actions,
    this.contentCallbacks,
    super.key,
  });

  /// data
  final DLSNotificationTask object;
  final DLSNotificationUser user;

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
      dataLevel1: S.current.taskAddYouAssigner,
      isShadowEnabled: isShadowEnabled,
      actions: actions,
      child: Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 12.h),
            child: DLSTaskName(name: object.name),
          ),
          if (object.priority != null)
            Padding(
              padding: EdgeInsets.only(right: 12.w),
              child: DLSTaskPriority(object.priority!),
            ),
          if (object.status != null)
            Padding(
              padding: EdgeInsets.only(right: 12.w),
              child: DLSObjectStatus(object.status!),
            ),
          if (object.deadline != null) DLSDeadline(dateTime: object.deadline!),
        ],
      ),
    );
  }
}
