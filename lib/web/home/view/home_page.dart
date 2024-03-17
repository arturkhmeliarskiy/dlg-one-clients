import 'package:auto_route/auto_route.dart';
import 'package:dls_one/app/router/app_router.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/home/view/main_nav_panel.dart';
import 'package:dls_one/web/notifications/notifications.dart';
import 'package:dls_one/web/sip/sip.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:services_watcher/services_watcher.dart';

class WebHomePage extends StatelessWidget with NotificationsMixin {
  const WebHomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    /// без Material уведомления косячат
    return Material(
      child: MultiBlocListener(
        listeners: [
          BlocListener<ServicesWatcherBloc, ServicesWatcherState>(
            listener: (context, state) {
              debugPrint('[$runtimeType] $state');
            },
          ),
          BlocListener<NotificationsPushBloc, NotificationsPushState>(
            listener: (context, state) {
              context.read<NotificationsCounterBloc>().add(
                    NotificationsCounterEvent.set(
                      newValueUnreadedNotificationsCounter:
                          state.allNotifications.length,
                      newValueUnreadedChatNotificationsCounter:
                          state.chatNotifications.length,
                      newValueUnreadedTasksNotificationsCounter:
                          state.tasksNotifications.length,
                      newValueUnreadedEventsNotificationsCounter:
                          state.eventsNotifications.length,
                    ),
                  );
            },
          ),
          BlocListener<SipBloc, SipState>(
            listener: (context, s) {
              final router = AutoRouter.of(context);
              s.mapOrNull(
                idle: (state) {
                  /// сейчас не говорим ни с кем
                  if (state.incomingCatched != null &&
                      !router.currentPath.contains('call')) {
                    context.pushRoute(
                      IncomingCallRoute(
                        activeCall: state.incomingCatched!,
                      ),
                    );
                  }
                },
              );
            },
          ),
        ],
        child: Stack(
          children: [
            AutoRouter(
              builder: (context, content) => CurrentCallBarWrapper(
                child: MainNavPanelWrapper(
                  child: content,
                ),
              ),
            ),
            Positioned(
              right: 0,
              bottom: 0,
              child: NotificationsPush(
                onTapHideAll: () => context
                    .read<NotificationsPushBloc>()
                    .add(const NotificationsPushEvent.clearPushes()),
                onTapCloseNotification: (notification) => context
                    .read<NotificationsPushBloc>()
                    .add(NotificationsPushEvent.hidePush(notification)),
                onTapSettings: () {
                  context.pushRoute(
                    const SettingsRootRoute(
                      children: [SettingsNotificationsRoute()],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
