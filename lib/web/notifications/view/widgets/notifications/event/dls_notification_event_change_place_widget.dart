import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/notifications/notifications.dart';
import 'package:flutter/material.dart';
import 'package:notifications_models/notifications_models.dart';

/// изменили место проведения мероприятия
class DLSNotificationEventChangePlaceWidget extends StatelessWidget {
  const DLSNotificationEventChangePlaceWidget({
    required this.object,
    required this.user,
    required this.placePrev,
    required this.placeCur,
    this.isShadowEnabled = true,
    this.actions,
    this.contentCallbacks,
    super.key,
  });

  /// data
  final DLSNotificationEvent object;
  final DLSNotificationUser user;
  final String placePrev;
  final String placeCur;

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
      dataLevel1: S.current.eventChangePlace,
      isShadowEnabled: isShadowEnabled,
      actions: actions,
      child: DLSNotificationChangesTypeDLSString(
        versionPrev: placePrev,
        versionCur: placeCur,
      ),
    );
  }
}
