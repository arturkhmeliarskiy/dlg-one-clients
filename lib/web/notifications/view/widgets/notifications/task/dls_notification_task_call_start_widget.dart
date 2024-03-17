import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/notifications/notifications.dart';
import 'package:flutter/material.dart';
import 'package:notifications_models/notifications_models.dart';

/// начался звонок в задаче
class DLSNotificationTaskCallStartWidget extends StatelessWidget {
  const DLSNotificationTaskCallStartWidget({
    required this.object,
    required this.startAt,
    this.isShadowEnabled = true,
    this.actions,
    this.contentCallbacks,
    super.key,
  });

  /// data
  final DLSNotificationTask object;
  final DateTime startAt;

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
      dataLevel1: S.current.taskCallStart,
      isShadowEnabled: isShadowEnabled,
      actions: actions,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 12.h),
            child: DLSTaskName(name: object.name),
          ),
          DLSNotificationJoinCall(
            contentCallbacks: contentCallbacks,
          ),
        ],
      ),
    );
  }
}
