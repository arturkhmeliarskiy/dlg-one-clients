import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ResetPasswordRootPage extends StatelessWidget {
  const ResetPasswordRootPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AutoRouter(
      placeholder: (context) => const SizedBox(),
    );
  }
}
