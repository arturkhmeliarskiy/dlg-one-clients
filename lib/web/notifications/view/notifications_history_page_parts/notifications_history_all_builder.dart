part of '../notifications_history_page.dart';

class DLSNotificationsHistoryAllBuilder extends StatelessWidget {
  const DLSNotificationsHistoryAllBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotificationsHistoryBloc, NotificationsHistoryState>(
      builder: (context, state) {
        return state.when(
          initial: () => DLSPreloader.newDLS,
          loading: () => DLSPreloader.newDLS,
          failure: (message) => DlsFailure(message: message),
          data: (notifications, transaction) => state
                  .allNotifications.isNotEmpty
              ? ListView.builder(
                  itemCount: state.allNotifications.length,
                  itemBuilder: (context, i) {
                    return DecoratedBox(
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: context.c_grey_stoke,
                            width: 1.r,
                          ),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 4.h,
                          horizontal: 4.w,
                        ),
                        child: DLSNotificationWidgetBuilder.build(
                          contentCallbacks: ContentCallbacks.fromNotification(
                            state.allNotifications[
                                state.allNotifications.length - 1 - i],
                            context,
                          ),
                          notification: state.allNotifications[
                              state.allNotifications.length - 1 - i],
                          isShadowEnabled: false,
                        ),
                      ),
                    );
                  },
                )
              : Center(
                  child: DLSHeaders.h1(
                    S.current.notifications_empty,
                  ),
                ),
        );
      },
    );
  }
}
