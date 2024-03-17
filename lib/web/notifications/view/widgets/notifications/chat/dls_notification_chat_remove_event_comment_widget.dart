import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/notifications/notifications.dart';
import 'package:flutter/material.dart';
import 'package:notifications_models/notifications_models.dart';

/// удалил(а) комментарий у мероприятия
class DLSNotificationChatRemoveEventCommentWidget extends StatelessWidget {
  const DLSNotificationChatRemoveEventCommentWidget({
    required this.object,
    required this.user,
    required this.event,
    required this.comment,
    this.isShadowEnabled = true,
    this.actions,
    this.contentCallbacks,
    super.key,
  });

  /// data
  final DLSNotificationChat object;
  final DLSNotificationUser user;
  final DLSNotificationEvent event;
  final String comment;

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
      dataLevel1: S.current.chatRemoveEventComment,
      dataLevel2: event.name,
      isShadowEnabled: isShadowEnabled,
      actions: actions,
      child: DLSBody.notification(comment),
    );
  }
}
