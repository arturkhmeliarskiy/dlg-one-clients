import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/notifications/notifications.dart';
import 'package:flutter/material.dart';
import 'package:notifications_models/notifications_models.dart';

/// началось мероприятие
class DLSNotificationEventCallStartWidget extends StatelessWidget {
  const DLSNotificationEventCallStartWidget({
    required this.object,
    required this.startAt,
    this.isShadowEnabled = true,
    this.actions,
    this.contentCallbacks,
    super.key,
  });

  /// data
  final DLSNotificationEvent object;
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
      dataLevel1: S.current.eventStart,
      isShadowEnabled: isShadowEnabled,
      actions: actions,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 12.h),
            child: DLSEventName(name: object.name),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 12.h),
            child: Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 12.w),
                  child: DLSFormatType(
                    isOnline:
                        object.format == DLSNotificationEventFormat.online,
                  ),
                ),
                if (object.date != null)
                  Padding(
                    padding: EdgeInsets.only(right: 12.w),
                    child: DLSDate(dateTime: object.date!),
                  ),
                if (object.interval != null)
                  Padding(
                    padding: EdgeInsets.only(right: 12.w),
                    child: DLSIntervalTime(interval: object.interval!),
                  ),
              ],
            ),
          ),
          DLSNotificationJoinCall(
            contentCallbacks: contentCallbacks,
          ),
        ],
      ),
    );
  }
}
