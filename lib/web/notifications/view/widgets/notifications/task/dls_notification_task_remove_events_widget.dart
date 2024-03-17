import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/notifications/notifications.dart';
import 'package:flutter/material.dart';
import 'package:notifications_models/notifications_models.dart';

/// добавили спринты к задаче
class DLSNotificationTaskRemoveEventsWidget extends StatelessWidget {
  const DLSNotificationTaskRemoveEventsWidget({
    required this.object,
    required this.user,
    required this.events,
    this.isShadowEnabled = true,
    this.actions,
    this.contentCallbacks,
    super.key,
  });

  /// data
  final DLSNotificationTask object;
  final DLSNotificationUser user;
  final List<DLSNotificationEvent> events;

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
      dataLevel1: S.current.taskRemoveEvents,
      dataLevel2: object.name,
      isShadowEnabled: isShadowEnabled,
      actions: actions,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(
          events.length,
          (i) => Padding(
            padding:
                EdgeInsets.only(bottom: (i + 1 != events.length) ? 12.h : 0),
            child: Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 12.w),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 4.w),
                        child: Assets.icons.sprint.svg(
                          width: 18.r,
                          height: 18.r,
                          colorFilter: context.c_text_grey_color_filter,
                        ),
                      ),
                      Flexible(
                        child: DLSHeaders.h3(
                          events[i].name,
                          maxLines: 1,
                        ),
                      ),
                    ],
                  ),
                ),
                if (events[i].interval != null &&
                    events[i].interval?.length == 2)
                  Padding(
                    padding: EdgeInsets.only(right: 12.w),
                    child: DLSIntervalDate(
                      intervalLen: 2,
                      interval: events[i].interval!,
                    ),
                  ),
                if (events[i].format != null)
                  Padding(
                    padding: EdgeInsets.only(right: 12.w),
                    child: DLSFormatType(
                      isOnline:
                          events[i].format == DLSNotificationEventFormat.online,
                    ),
                  ),
                if (events[i].format != null)
                  Padding(
                    padding: EdgeInsets.only(right: 12.w),
                    child: DLSBody.s1421(
                      events[i].place,
                      color: context.c_text,
                      maxLines: 1,
                      overflow: true,
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
