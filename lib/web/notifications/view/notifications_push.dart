import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/notifications/notifications.dart';
import 'package:dls_one/web/notifications/view/widgets/animated_notification.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notifications_models/notifications_models.dart';

class NotificationsPush extends StatelessWidget {
  const NotificationsPush({
    super.key,
    this.onTapSettings,
    this.onTapHideAll,
    this.onTapCloseNotification,
  });

  final VoidCallback? onTapSettings;
  final VoidCallback? onTapHideAll;
  final ValueChanged<DLSNotification>? onTapCloseNotification;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      // 12 - для тени
      width: MediaQuery.of(context).size.width * 0.35 + 12.r,
      child: BlocBuilder<NotificationsPushBloc, NotificationsPushState>(
        builder: (context, state) {
          final count = (MediaQuery.of(context).size.height - 48.h) ~/ 150.h;
          final notificationsChat = state.allNotifications.length - count > 0
              ? state.allNotifications.sublist(
                  state.allNotifications.length - count,
                  state.allNotifications.length,
                )
              : state.allNotifications;
          return state.notifications.isNotEmpty
              ? Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12.w),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          DLSButton(
                            icon: Assets.icons.setting.svg(
                              width: 18.r,
                              height: 18.r,
                              colorFilter: ColorFilter.mode(
                                context.c_blue,
                                BlendMode.srcIn,
                              ),
                            ),
                            height: 40.h,
                            onTap: () => onTapSettings?.call(),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 8.w),
                            child: DLSButton(
                              icon: Assets.icons.times1.svg(
                                width: 18.r,
                                height: 18.r,
                                colorFilter: ColorFilter.mode(
                                  context.c_blue,
                                  BlendMode.srcIn,
                                ),
                              ),
                              text: S.current.hide_all,
                              textColor: context.c_blue,
                              height: 40.h,
                              onTap: () => onTapHideAll?.call(),
                            ),
                          ),
                        ],
                      ),
                    ),
                    ...notificationsChat.map(
                      (notification) {
                        return AnimatedNotification(
                          notification: notification,
                          onTapCloseNotification: onTapCloseNotification,
                        );
                      },
                    ),
                  ],
                )
              : const SizedBox();
        },
      ),
    );
  }
}
