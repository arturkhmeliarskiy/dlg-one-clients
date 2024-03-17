import 'package:auto_route/auto_route.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/notifications/notifications.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'notifications_history_page_parts/notifications_history_all_builder.dart';
part 'notifications_history_page_parts/notifications_history_chats_builder.dart';
part 'notifications_history_page_parts/notifications_history_events_builder.dart';
part 'notifications_history_page_parts/notifications_history_tasks_builder.dart';

@RoutePage()
class NotificationsHistoryPage extends StatelessWidget {
  const NotificationsHistoryPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotificationsHistoryBloc()
        ..add(const NotificationsHistoryEvent.read()),
      child: const _NotificationsHistoryLayout(),
    );
  }
}

class _NotificationsHistoryLayout extends StatefulWidget {
  const _NotificationsHistoryLayout();

  @override
  State<_NotificationsHistoryLayout> createState() =>
      _NotificationsHistoryLayoutState();
}

class _NotificationsHistoryLayoutState
    extends State<_NotificationsHistoryLayout>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO config UI for mobile
    return Stack(
      children: [
        GestureDetector(
          onTap: context.popRoute,
          child: Container(
            color: context.c_overlay_with_opacity,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
          ),
        ),
        Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width * 0.55,
          height: MediaQuery.of(context).size.height,
          color: context.c_white_text,
          child: Flex(
            direction: Axis.vertical,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 20.w,
                  vertical: 16.h,
                ),
                child: Flex(
                  direction: Axis.horizontal,
                  children: [
                    Expanded(
                      child: DLSHeaders.h2(S.current.notifications),
                    ),
                    SizedBox(width: 20.w),
                    DLSButtonText(
                      text: S.current.read_all_and_close,
                      onTap: context.popRoute,
                    ),
                    SizedBox(width: 20.w),
                    DLSButtonIcon(
                      icon: Assets.icons.times1.svg(
                        colorFilter: ColorFilter.mode(
                          context.c_text_grey,
                          BlendMode.srcIn,
                        ),
                      ),
                      color: Colors.transparent,
                      onTap: context.popRoute,
                    ),
                  ],
                ),
              ),
              const DLSDivider(),
              BlocBuilder<NotificationsCounterBloc,
                  NotificationsCounterState>(
                buildWhen: (previous, current) {
                  return current.unreadedNotificationsCounter !=
                      previous.unreadedNotificationsCounter;
                },
                builder: (context, state) {
                  return DlsPadding.all(
                    20.r,
                    child: NotificationsHistoryTabs(
                      tabController: _tabController,
                      unreadedNotificationsCounter:
                          state.unreadedNotificationsCounter,
                      unreadedChatNotificationsCounter:
                          state.unreadedChatNotificationsCounter,
                      unreadedTasksNotificationsCounter:
                          state.unreadedTasksNotificationsCounter,
                      unreadedEventsNotificationsCounter:
                          state.unreadedEventsNotificationsCounter,
                    ),
                  );
                },
              ),
              const DLSDivider(),
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: const [
                    DLSNotificationsHistoryAllBuilder(),
                    DLSNotificationsHistoryChatsBuilder(),
                    DLSNotificationsHistoryTasksBuilder(),
                    DLSNotificationsHistoryEventsBuilder(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
