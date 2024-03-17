import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

mixin AutoRouterObserverMixin<T extends StatefulWidget> on State<T> {
  late final RoutingController router = AutoRouter.of(context);

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _routerListener();
      router.addListener(_routerListener);
    });
  }

  @override
  void dispose() {
    router.removeListener(_routerListener);

    super.dispose();
  }

  void _routerListener() {
    final name = router.current.name;
    updateRouteName(routeName: name);
  }

  void updateRouteName({required String routeName});
}
