import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/notifications/notifications.dart';
import 'package:flutter/material.dart';
import 'package:notifications_models/notifications_models.dart';

/// завершился звонок к задаче
class DLSNotificationTaskCallEndWidget extends StatelessWidget {
  const DLSNotificationTaskCallEndWidget({
    required this.object,
    required this.duration,
    this.isShadowEnabled = true,
    this.actions,
    this.contentCallbacks,
    super.key,
  });

  /// data
  final DLSNotificationTask object;
  final Duration duration;

  /// widget params
  final bool isShadowEnabled;
  final Widget? actions;
  final ContentCallbacks? contentCallbacks;

  @override
  Widget build(BuildContext context) {
    return DLSNotificationSystemParentWidget(
      onTap: contentCallbacks?.onTap,
      avatar: DLSNotificationIcon.callEnd(context),
      timestamp: object.timestamp,
      dataLevel1: S.current.taskCallEnd,
      isShadowEnabled: isShadowEnabled,
      actions: actions,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 12.h),
            child: DLSEventName(name: object.name),
          ),
          DLSCallDuration(
            duration: duration,
            backgroundColor: context.c_white_text,
            textColor: context.c_text_grey,
            padding: EdgeInsets.zero,
          ),
        ],
      ),
    );
  }
}
