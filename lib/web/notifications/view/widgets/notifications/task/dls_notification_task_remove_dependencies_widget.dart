import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/notifications/notifications.dart';
import 'package:flutter/material.dart';
import 'package:notifications_models/notifications_models.dart';

/// удалили зависимости у задачи
class DLSNotificationTaskRemoveDependenciesWidget extends StatelessWidget {
  const DLSNotificationTaskRemoveDependenciesWidget({
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
      subAvatarType: DLSNotificationSubAvatarType.pen,
      timestamp: object.timestamp,
      dataLevel1: S.current.taskRemoveDependencies,
      isShadowEnabled: isShadowEnabled,
      actions: actions,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 12.h),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 4.w),
                  child: Assets.icons.link.svg(
                    width: 18.r,
                    height: 18.r,
                    colorFilter: context.c_text_grey_color_filter,
                  ),
                ),
                Flexible(child: DLSHeaders.h3(object.name)),
              ],
            ),
          ),
          Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              if (object.priority != null)
                Padding(
                  padding: EdgeInsets.only(right: 12.w),
                  child: DLSTaskPriority(object.priority!),
                ),
              if (object.deadline != null)
                Padding(
                  padding: EdgeInsets.only(right: 12.w),
                  child: DLSDeadline(
                    dateTime: object.deadline!,
                  ),
                ),
              if (object.status != null)
                Padding(
                  padding: EdgeInsets.only(right: 12.w),
                  child: DLSObjectStatus(object.status!),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
