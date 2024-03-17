import 'package:auto_route/auto_route.dart';
import 'package:dls_one/app/router/app_router.dart';
import 'package:dls_one/core/widgets/dls_layout_item_builder.dart';
import 'package:dls_one/core/widgets/dls_page_builder.dart';
import 'package:dls_one/web/home/view/home_bottom_navigation_bar.dart';
import 'package:dls_one/web/home/view/main_nav_panel.dart';
import 'package:flutter/material.dart';

@RoutePage()
class HomeTabsPage extends StatelessWidget {
  const HomeTabsPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final buildRoutes = DLSLayoutItemBuilder.values(
      wide: const [
        ChatsRootRoute(),
        TasksRootRoute(),
        CalendarRootRoute(),
        SettingsRootRoute(),
      ],
      narrow: const [
        ChatsRootRoute(),
        TasksRootRoute(),
        NotificationsHistoryRoute(),
        CalendarRootRoute(),
        TodoRoute(),
        SettingsRootRoute(),
      ],
    );
    return DLSPageBuilder(
      wide: AutoTabsRouter(
        routes: buildRoutes(),
        inheritNavigatorObservers: false,
        transitionBuilder: (context, child, tabController) => _TabsListener(
          child: FadeTransition(
            opacity: tabController,
            child: child,
          ),
        ),
      ),
      narrow: AutoTabsRouter(
        routes: buildRoutes(),
        inheritNavigatorObservers: false,
        builder: (context, child) {
          return Scaffold(
            body: child,
            // не const потому что виджет должен ребилдиться, так как обновляет данные по контексту
            // ignore: prefer_const_constructors
            bottomNavigationBar: HomeBottomNavigationBar(),
          );
        },
      ),
    );
  }
}

class _TabsListener extends StatefulWidget {
  const _TabsListener({
    required this.child,
  });

  final Widget child;

  @override
  State<_TabsListener> createState() => _TabsListenerState();
}

class _TabsListenerState extends State<_TabsListener> {
  late final TabsRouter _router;

  @override
  void initState() {
    super.initState();

    _router = AutoTabsRouter.of(context);

    _router.addListener(_listener);
  }

  @override
  void dispose() {
    super.dispose();
    _router.removeListener(_listener);
  }

  void _listener() {
    final parentRoute = _router.parent();
    // Обновлять панель табов необходимо только если сейчас активен роут с табами.
    if (parentRoute != null && parentRoute.current.name == HomeTabsRoute.name) {
      MainNavPanelWrapper.updateTabIndexOf(context, index: _router.activeIndex);
    }
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}
