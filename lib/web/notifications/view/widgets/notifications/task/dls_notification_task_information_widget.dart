import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/notifications/notifications.dart';
import 'package:flutter/material.dart';
import 'package:notifications_models/notifications_models.dart';

/// информирование
/// например: Завтра дедлайн задачи
class DLSNotificationTaskInformationWidget extends StatelessWidget {
  const DLSNotificationTaskInformationWidget({
    required this.object,
    required this.information,
    this.isShadowEnabled = true,
    this.actions,
    this.contentCallbacks,
    super.key,
  });

  /// data
  final DLSNotificationTask object;
  final String information;

  /// widget params
  final bool isShadowEnabled;
  final Widget? actions;
  final ContentCallbacks? contentCallbacks;

  @override
  Widget build(BuildContext context) {
    return DLSNotificationSystemParentWidget(
      onTap: contentCallbacks?.onTap,
      avatar: DLSNotificationIcon.bell(context),
      timestamp: object.timestamp,
      dataLevel1: information,
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
              if (object.priority != null)
                Padding(
                  padding: EdgeInsets.only(right: 12.w),
                  child: DLSTaskPriority(object.priority!),
                ),
              if (object.deadline != null)
                Padding(
                  padding: EdgeInsets.only(right: 12.w),
                  child: DLSDeadline(dateTime: object.deadline!),
                ),
              if (object.status != null)
                Padding(
                  padding: EdgeInsets.only(right: 12.w),
                  child: DLSObjectStatus(object.status!),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
