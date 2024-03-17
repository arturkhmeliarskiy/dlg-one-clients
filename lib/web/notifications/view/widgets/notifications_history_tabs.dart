import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';

class NotificationsHistoryTabs extends StatefulWidget {
  const NotificationsHistoryTabs({
    required this.tabController,
    required this.unreadedNotificationsCounter,
    required this.unreadedChatNotificationsCounter,
    required this.unreadedTasksNotificationsCounter,
    required this.unreadedEventsNotificationsCounter,
  });

  final TabController tabController;
  final int unreadedNotificationsCounter;
  final int unreadedChatNotificationsCounter;
  final int unreadedTasksNotificationsCounter;
  final int unreadedEventsNotificationsCounter;

  @override
  State<NotificationsHistoryTabs> createState() =>
      _NotificationsHistoryTabsState();
}

class _NotificationsHistoryTabsState
    extends State<NotificationsHistoryTabs> {
  @override
  void initState() {
    super.initState();
    widget.tabController.addListener(_pressed);
  }

  void _pressed() {
    setState(() {});
  }

  @override
  void dispose() {
    super.dispose();
    widget.tabController.removeListener(_pressed);
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, size) {
        /// 40 - это сумма отступов по горизонтали
        final width = (size.constrainWidth() - 40.w - 28.w * 4) / 4 < 120.w
            ? 120.w
            : ((size.constrainWidth() - 40.w - 28.w * 4) / 4);
        return Container(
          width: MediaQuery.of(context).size.width,
          height: 36.h,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4.r),
            color: context.c_grey_stoke,
          ),
          child: TabBar(
            isScrollable: true,
            controller: widget.tabController,
            indicatorWeight: 0,
            indicator: BoxDecoration(
              border: Border.all(
                width: 0,
                color: Colors.transparent,
              ),
            ),
            padding: EdgeInsets.zero,
            tabs: [
              DLSTab(
                text: S.current.all,
                notificationCount: widget.unreadedNotificationsCounter,
                isPressed: widget.tabController.index == 0,
                width: width,
              ),
              DLSTab(
                text: S.current.chat,
                notificationCount: widget.unreadedChatNotificationsCounter,
                isPressed: widget.tabController.index == 1,
                width: width,
              ),
              DLSTab(
                text: S.current.tasks,
                notificationCount: widget.unreadedTasksNotificationsCounter,
                isPressed: widget.tabController.index == 2,
                width: width,
              ),
              DLSTab(
                text: S.current.events,
                notificationCount: widget.unreadedEventsNotificationsCounter,
                isPressed: widget.tabController.index == 3,
                width: width,
              ),
            ],
          ),
        );
      },
    );
  }
}
