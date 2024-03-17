import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class AuthRootPage extends StatelessWidget {
  const AuthRootPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AutoRouter();
  }
}
