import 'dart:async';
import 'package:auto_route/auto_route.dart';
import 'package:dls_matrix_client/dls_matrix_client.dart';
import 'package:dls_one/app/router/app_router.dart';
import 'package:dls_one/app/router/auto_router_observer_mixin.dart';
import 'package:dls_one/core/auth/stream_auth_scope.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/notifications/notifications.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

enum MainTab {
  notifications,
  chat,
  tasks,
  calendar,
  settings,
  signout,
  todo,
}

class MainNavPanelWrapper extends StatefulWidget {
  const MainNavPanelWrapper({
    required this.child,
    super.key,
  });

  /// Ищет по контексту ближайший [MainNavPanelWrapper] и обновляет
  /// выбранный [index] таба из рейнджа [0 - 2]. Остальные табы зарезервированы
  /// под другие ответвления навигации или вспомогательные меню.
  static void updateTabIndexOf(
    BuildContext context, {
    required int index,
  }) {
    final state = context.findAncestorStateOfType<_MainNavPanelWrapperState>();
    if (state == null) {
      return;
    }

    state.updateTabIndex(index: index);
  }

  final Widget child;

  @override
  State<MainNavPanelWrapper> createState() => _MainNavPanelWrapperState();
}

class _MainNavPanelWrapperState extends State<MainNavPanelWrapper>
    with AutoRouterObserverMixin {
  MainTab _selectedTab = MainTab.chat;

  void _updateTab(MainTab tab) {
    setState(() {
      _selectedTab = tab;
    });
  }

  @override
  void updateRouteName({
    required String routeName,
  }) {
    switch (routeName) {
      case NotificationsHistoryRoute.name:
        _updateTab(MainTab.notifications);
        break;
      case TodoRoute.name:
        _updateTab(MainTab.todo);
        break;
      case HomeTabsRoute.name:
        final inner = AutoRouter.of(context)
            .innerRouterOf<TabsRouter>(HomeTabsRoute.name);
        if (inner == null) {
          return;
        }
        updateTabIndex(index: inner.activeIndex);
    }
  }

  void updateTabIndex({
    required int index,
  }) {
    switch (index) {
      case 0:
        _updateTab(MainTab.chat);
        break;
      case 1:
        _updateTab(MainTab.tasks);
        break;
      case 2:
        _updateTab(MainTab.calendar);
        break;
      case 3:
        _updateTab(MainTab.settings);
        break;
    }
  }

  Future<void> _select(MainTab spType) async {
    if (_selectedTab == spType) {
      return;
    }

    final router = AutoRouter.of(context);
    final tabsRouter = router.innerRouterOf<TabsRouter>(HomeTabsRoute.name);

    switch (spType) {
      case MainTab.notifications:
        await context.pushRoute(const NotificationsHistoryRoute());
        break;
      case MainTab.chat:
        router.popUntilRouteWithName(HomeTabsRoute.name);
        tabsRouter?.setActiveIndex(0);
        break;
      case MainTab.tasks:
        router.popUntilRouteWithName(HomeTabsRoute.name);
        tabsRouter?.setActiveIndex(1);
        break;
      case MainTab.calendar:
        router.popUntilRouteWithName(HomeTabsRoute.name);
        tabsRouter?.setActiveIndex(2);
        break;
      case MainTab.todo:
        await context.pushRoute(const TodoRoute());
        break;
      case MainTab.settings:
        router.popUntilRouteWithName(HomeTabsRoute.name);
        tabsRouter?.setActiveIndex(3);
        break;
      case MainTab.signout:
        await StreamAuthScope.of(context).signOut();
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Row(
        children: [
          MainNavPanel(
            selectedTab: _selectedTab,
            onSelectTab: _select,
          ),
          Expanded(child: widget.child),
        ],
      ),
    );
  }
}

class MainNavPanel extends StatelessWidget {
  const MainNavPanel({
    required this.selectedTab,
    required this.onSelectTab,
    super.key,
  });

  final MainTab selectedTab;
  final ValueSetter<MainTab> onSelectTab;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 65.w,
      color: context.c_blue,
      child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            height: DLSAppBar.defaultToolbarHeight,
            child: Assets.logoSvg.svg(
              width: 20.w,
              height: 22.h,
              color: context.c_white_text,
            ),
          ),
          Divider(
            color: context.c_white_background.withOpacity(0.2),
          ),
          SizedBox(height: 12.h),
          Stack(
            alignment: Alignment.center,
            children: [
              NavigationTile(
                onSelectTab: onSelectTab,
                tab: MainTab.notifications,
                isSelected: selectedTab == MainTab.notifications,
              ),
              Positioned(
                top: 0,
                right: 0,
                child: BlocBuilder<NotificationsCounterBloc,
                    NotificationsCounterState>(
                  builder: (context, state) {
                    if (state.unreadedNotificationsCounter > 0) {
                      return DlsNotificationsCounter(
                        count: state.unreadedNotificationsCounter.toString(),
                      );
                    }

                    return const SizedBox();
                  },
                ),
              ),
              Positioned(
                top: 0,
                left: 0,
                child: Container(
                  height: 12.h,
                  width: 20.w,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: context.c_pink,
                    borderRadius: BorderRadius.circular(4.r),
                  ),
                  child: Text(
                    'Dev',
                    style: context.ts_s10h12w400.copyWith(
                      color: context.c_white_text,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 12.h),
          Divider(
            color: context.c_white_background.withOpacity(0.2),
          ),
          SizedBox(height: 12.h),
          NavigationTile(
            onSelectTab: onSelectTab,
            tab: MainTab.chat,
            isSelected: selectedTab == MainTab.chat,
          ),
          SizedBox(height: 8.h),
          NavigationTile(
            onSelectTab: onSelectTab,
            tab: MainTab.tasks,
            isSelected: selectedTab == MainTab.tasks,
          ),
          SizedBox(height: 8.h),
          NavigationTile(
            onSelectTab: onSelectTab,
            tab: MainTab.calendar,
            isSelected: selectedTab == MainTab.calendar,
          ),
          SizedBox(height: 8.h),
          NavigationTile(
            onSelectTab: onSelectTab,
            tab: MainTab.todo,
            isSelected: selectedTab == MainTab.todo,
          ),
          SizedBox(height: 8.h),
          NavigationTile(
            onSelectTab: onSelectTab,
            tab: MainTab.settings,
            isSelected: selectedTab == MainTab.settings,
          ),
          SizedBox(height: 8.h),
          const Spacer(),
          DlsAvatar(
            matrixUserId: context.read<DlsMatrixClient>().myId,
            onlineVisible: false,
          ),
          SizedBox(height: 12.h),
          Divider(
            color: context.c_white_background.withOpacity(0.2),
          ),
          SizedBox(height: 12.h),
          NavigationTile(
            onSelectTab: onSelectTab,
            tab: MainTab.signout,
            isSelected: selectedTab == MainTab.signout,
          ),
          SizedBox(height: 12.h),
        ],
      ),
    );
  }
}

class NavigationTile extends StatelessWidget {
  const NavigationTile({
    required this.onSelectTab,
    required this.tab,
    required this.isSelected,
    super.key,
  });

  final ValueSetter<MainTab> onSelectTab;
  final MainTab tab;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return WebButtonIconWithTooltip(
      icon: tab.tileIconAsset,
      tooltip: tab.tooltip,
      width: 40,
      height: 40,
      iconColor: context.c_white_text,
      background: context.c_blue,
      pressedBackground: context.c_blue_menu_button,
      pressedIconColor: context.c_white_text,
      onTap: () {
        onSelectTab(tab);
      },
      isPressed: isSelected,
    );
  }
}

extension MainTabExt on MainTab {
  String get tileIconAsset {
    switch (this) {
      case MainTab.notifications:
        return Assets.icons.bell1.path;
      case MainTab.chat:
        return Assets.icons.commentAltLines.path;
      case MainTab.tasks:
        return Assets.icons.checkCircle1.path;
      case MainTab.calendar:
        return Assets.icons.calender.path;
      case MainTab.settings:
        return Assets.icons.setting.path;
      case MainTab.signout:
        return Assets.icons.signout1.path;
      case MainTab.todo:
        return Assets.icons.todoIcon.path;
    }
  }

  String get tooltip {
    switch (this) {
      case MainTab.notifications:
        return S.current.notifications;
      case MainTab.chat:
        return S.current.chat;
      case MainTab.tasks:
        return S.current.tasks;
      case MainTab.calendar:
        return S.current.calendar;
      case MainTab.settings:
        return S.current.settings;
      case MainTab.signout:
        return S.current.exit;
      case MainTab.todo:
        return S.current.todo;
    }
  }
}
