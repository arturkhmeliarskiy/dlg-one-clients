import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

/// Корневой экран основного flow приложения.
@RoutePage()
class MainPage extends StatelessWidget {
  const MainPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AutoRouter();
  }
}
