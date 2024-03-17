import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/notifications/notifications.dart';
import 'package:flutter/material.dart';
import 'package:notifications_models/notifications_models.dart';

/// началось мероприятие
class DLSNotificationEventStartWidget extends StatelessWidget {
  const DLSNotificationEventStartWidget({
    required this.object,
    this.isShadowEnabled = true,
    this.actions,
    this.contentCallbacks,
    super.key,
  });

  /// data
  final DLSNotificationEvent object;

  /// widget params
  final bool isShadowEnabled;
  final Widget? actions;
  final ContentCallbacks? contentCallbacks;

  @override
  Widget build(BuildContext context) {
    return DLSNotificationSystemParentWidget(
      onTap: contentCallbacks?.onTap,
      avatar: Container(
        height: 48.h,
        width: 48.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10000.r),
          color: context.c_green_light,
          border: Border.all(width: 1.r, color: context.c_green),
        ),
        alignment: Alignment.center,
        child: Assets.icons.calender.svg(
          colorFilter: context.c_green_color_filter,
          width: 18.r,
          height: 18.r,
        ),
      ),
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
          Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(right: 12.w),
                child: DLSFormatType(
                  isOnline: object.format == DLSNotificationEventFormat.online,
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
        ],
      ),
    );
  }
}
