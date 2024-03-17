import 'package:auto_route/auto_route.dart';
import 'package:dls_one/app/router/app_router.dart';
import 'package:dls_one/features/auth/presentation/ui/setup_password/setup_password_page.dart';
import 'package:flutter/material.dart';

@RoutePage()
class RegistrationNewPasswordPage extends StatelessWidget {
  const RegistrationNewPasswordPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SetupPasswordPage(
      onDone: () {
        context.navigateTo(
          const RegistrationPersonalDataRoute(),
        );
      },
    );
  }
}
