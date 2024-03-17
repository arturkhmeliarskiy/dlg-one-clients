import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/notifications/notifications.dart';
import 'package:flutter/material.dart';
import 'package:notifications_models/notifications_models.dart';

/// удалил мероприятие
class DLSNotificationEventRemoveWidget extends StatelessWidget {
  const DLSNotificationEventRemoveWidget({
    required this.object,
    required this.user,
    this.isShadowEnabled = true,
    this.actions,
    this.contentCallbacks,
    super.key,
  });

  /// data
  final DLSNotificationEvent object;
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
      subAvatarType: DLSNotificationSubAvatarType.block,
      timestamp: object.timestamp,
      dataLevel1: S.current.eventRemove,
      isShadowEnabled: isShadowEnabled,
      actions: actions,
      child: Wrap(
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 12.h),
            child: DLSEventName(name: object.name),
          ),
          if (object.format != null)
            Padding(
              padding: EdgeInsets.only(right: 12.w),
              child: DLSFormatType(
                isOnline: object.format == DLSNotificationEventFormat.online,
              ),
            ),
          if (object.date != null)
            Padding(
              padding: EdgeInsets.only(right: 12.w),
              child: DLSDate(
                dateTime: object.date!,
              ),
            ),
          if (object.interval != null)
            DLSIntervalTime(interval: object.interval!),
        ],
      ),
    );
  }
}
