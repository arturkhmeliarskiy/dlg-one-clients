import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/notifications/notifications.dart';
import 'package:flutter/material.dart';
import 'package:notifications_models/notifications_models.dart';

/// добавили спринты к задаче
class DLSNotificationTaskAddSprintsWidget extends StatelessWidget {
  const DLSNotificationTaskAddSprintsWidget({
    required this.object,
    required this.user,
    required this.sprints,
    this.isShadowEnabled = true,
    this.actions,
    this.contentCallbacks,
    super.key,
  });

  /// data
  final DLSNotificationTask object;
  final DLSNotificationUser user;
  final List<DLSNotificationSprint> sprints;

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
      dataLevel1: S.current.taskAddSprints,
      dataLevel2: object.name,
      isShadowEnabled: isShadowEnabled,
      actions: actions,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(
          sprints.length,
          (i) => Padding(
            padding:
                EdgeInsets.only(bottom: (i + 1 != sprints.length) ? 12.h : 0),
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
                        sprints[i].name,
                        maxLines: 1,
                      )),
                    ],
                  ),
                ),
                if (sprints[i].interval != null &&
                    sprints[i].interval?.length == 2)
                  Padding(
                    padding: EdgeInsets.only(right: 12.w),
                    child: DLSIntervalDate(
                      intervalLen: 2,
                      interval: sprints[i].interval!,
                    ),
                  ),
                if (sprints[i].status != null)
                  Padding(
                    padding: EdgeInsets.only(right: 12.w),
                    child: DLSObjectStatus(sprints[i].status!),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
