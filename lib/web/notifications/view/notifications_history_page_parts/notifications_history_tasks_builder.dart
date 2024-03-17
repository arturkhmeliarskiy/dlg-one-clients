part of '../notifications_history_page.dart';

class DLSNotificationsHistoryTasksBuilder extends StatelessWidget {
  const DLSNotificationsHistoryTasksBuilder({
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
                  .tasksNotifications.isNotEmpty
              ? ListView.builder(
                  itemCount: state.tasksNotifications.length,
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
                            state.tasksNotifications[
                                state.tasksNotifications.length - 1 - i],
                            context,
                          ),
                          notification: state.tasksNotifications[
                              state.tasksNotifications.length - 1 - i],
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
