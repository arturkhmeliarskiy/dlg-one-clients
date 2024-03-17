import 'package:auto_route/auto_route.dart';
import 'package:dls_one/app/router/app_router.dart';
import 'package:dls_one/features/auth/presentation/ui/email_confirmation_page/email_confirmation_page.dart';
import 'package:flutter/material.dart';

@RoutePage()
class RegistrationSMSPage extends StatelessWidget {
  const RegistrationSMSPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return EmailConfirmationPage(
      type: ConfirmationType.registration,
      onSuccess: () => context.navigateTo(const RegistrationNewPasswordRoute()),
    );
  }
}
