import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';

class AppNavigationObserver extends AutoRouteObserver {
  AppNavigationObserver(this._logger);

  final DlsLogger _logger;

  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    super.didPush(route, previousRoute);
    _logger.infoPrinter('AutoRoute: didPush $route');
  }

  @override
  void didInitTabRoute(TabPageRoute route, TabPageRoute? previousRoute) {
    super.didInitTabRoute(route, previousRoute);
    _logger.infoPrinter('AutoRoute: didInitTab $route');
  }

  @override
  void didChangeTabRoute(TabPageRoute route, TabPageRoute previousRoute) {
    super.didChangeTabRoute(route, previousRoute);
    _logger.infoPrinter('AutoRoute: didChange $route');
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    super.didPop(route, previousRoute);

    _logger.infoPrinter('AutoRoute: didPop $route');
  }

}
