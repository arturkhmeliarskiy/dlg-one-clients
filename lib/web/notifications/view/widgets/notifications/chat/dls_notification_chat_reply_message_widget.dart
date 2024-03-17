import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/notifications/notifications.dart';
import 'package:flutter/material.dart';
import 'package:notifications_models/notifications_models.dart';

/// ответ на ваше сообщение
class DLSNotificationChatReplyMessageWidget extends StatelessWidget {
  const DLSNotificationChatReplyMessageWidget({
    required this.object,
    required this.user,
    required this.message,
    required this.replyMessage,
    this.isShadowEnabled = true,
    this.actions,
    this.contentCallbacks,
    super.key,
  });

  /// data
  final DLSNotificationChat object;
  final DLSNotificationUser user;
  final String message;
  final String replyMessage;

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
      subAvatarType: DLSNotificationSubAvatarType.message,
      timestamp: object.timestamp,
      dataLevel1: S.current.chatReplyMessage,
      dataLevel2: message,
      isShadowEnabled: isShadowEnabled,
      actions: actions,
      child: DLSBody.notification(message),
    );
  }
}
