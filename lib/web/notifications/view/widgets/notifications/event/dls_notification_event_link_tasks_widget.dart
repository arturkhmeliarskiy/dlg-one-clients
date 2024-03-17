import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/notifications/notifications.dart';
import 'package:flutter/material.dart';
import 'package:notifications_models/notifications_models.dart';

/// привязали задачи к мероприятию
class DLSNotificationEventLinkTasksWidget extends StatelessWidget {
  const DLSNotificationEventLinkTasksWidget({
    required this.object,
    required this.user,
    required this.tasks,
    this.isShadowEnabled = true,
    this.actions,
    this.contentCallbacks,
    super.key,
  });

  /// data
  final DLSNotificationEvent object;
  final DLSNotificationUser user;
  final List<DLSNotificationTask> tasks;

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
      dataLevel1: S.current.eventLinkTasks,
      dataLevel2: object.name,
      isShadowEnabled: isShadowEnabled,
      actions: actions,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(
          tasks.length,
          (i) => Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Assets.icons.checkCircle1
                      .svg(
                        width: 18.r,
                        height: 18.r,
                        colorFilter: context.c_text_grey_color_filter,
                      )
                      .paddingOnly(right: 4.w),
                  DLSHeaders.h3(tasks[i].name),
                ],
              ).paddingOnly(right: 12.w),
              if (tasks[i].priority != null)
                DLSTaskPriority(tasks[i].priority!).paddingOnly(right: 12.w),
              if (tasks[i].deadline != null)
                DLSDeadline(
                  dateTime: tasks[i].deadline!,
                ).paddingOnly(right: 12.w),
              if (tasks[i].status != null)
                DLSObjectStatus(tasks[i].status!).paddingOnly(right: 12.w),
            ],
          ).paddingOnly(bottom: (i + 1 != tasks.length) ? 12.h : 0),
        ),
      ),
    );
  }
}
