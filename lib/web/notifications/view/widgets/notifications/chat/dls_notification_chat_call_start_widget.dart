import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/notifications/notifications.dart';
import 'package:flutter/material.dart';
import 'package:notifications_models/notifications_models.dart';

/// в чате начался групповой звонок
class DLSNotificationChatCallStartWidget extends StatelessWidget {
  const DLSNotificationChatCallStartWidget({
    required this.object,
    this.isShadowEnabled = true,
    this.actions,
    this.contentCallbacks,
    super.key,
  });

  /// data
  final DLSNotificationChat object;

  /// widget params
  final bool isShadowEnabled;
  final Widget? actions;
  final ContentCallbacks? contentCallbacks;

  @override
  Widget build(BuildContext context) {
    return DLSNotificationSystemParentWidget(
      onTap: contentCallbacks?.onTap,
      avatar: DLSNotificationIcon.callStart(context),
      timestamp: object.timestamp,
      dataLevel1: S.current.chatCallStart(''),
      isShadowEnabled: isShadowEnabled,
      actions: actions,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 12.h),
            child: DLSChatName(name: object.name),
          ),
          DLSNotificationJoinCall(
            contentCallbacks: contentCallbacks,
          ),
        ],
      ),
    );
  }
}
