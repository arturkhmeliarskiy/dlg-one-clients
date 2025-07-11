import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/notifications/notifications.dart';
import 'package:flutter/material.dart';
import 'package:notifications_models/notifications_models.dart';

/// изменили формат мероприятия
class DLSNotificationEventChangeFormatWidget extends StatelessWidget {
  const DLSNotificationEventChangeFormatWidget({
    required this.object,
    required this.user,
    required this.formatPrev,
    required this.formatCur,
    this.isShadowEnabled = true,
    this.actions,
    this.contentCallbacks,
    super.key,
  });

  /// data
  final DLSNotificationEvent object;
  final DLSNotificationUser user;
  final DLSNotificationEventFormat formatPrev;
  final DLSNotificationEventFormat formatCur;

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
      dataLevel1: S.current.eventChangeName,
      isShadowEnabled: isShadowEnabled,
      actions: actions,
      child: DLSNotificationChangesTypeDLSEventFormatType(
        versionPrev: formatPrev,
        versionCur: formatCur,
      ),
    );
  }
}
