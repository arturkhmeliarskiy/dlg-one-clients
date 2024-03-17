import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/notifications/notifications.dart';
import 'package:flutter/material.dart';
import 'package:notifications_models/notifications_models.dart';

/// изменили время проведения мероприятия
class DLSNotificationEventChangeTimeWidget extends StatelessWidget {
  const DLSNotificationEventChangeTimeWidget({
    required this.object,
    required this.user,
    required this.timePrev,
    required this.timeCur,
    this.isShadowEnabled = true,
    this.actions,
    this.contentCallbacks,
    super.key,
  });

  /// data
  final DLSNotificationEvent object;
  final DLSNotificationUser user;
  final List<DateTime> timePrev;
  final List<DateTime> timeCur;

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
      dataLevel1: S.current.eventChangeTime,
      isShadowEnabled: isShadowEnabled,
      actions: actions,
      child: DLSNotificationChangesTypeDLSInterval(
        versionPrev: timePrev,
        versionCur: timeCur,
      ),
    );
  }
}
