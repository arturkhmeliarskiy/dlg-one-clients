import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:dls_one/app/router/app_router.dart';
import 'package:dls_one/core/auth/stream_auth_scope.dart';
import 'package:dls_one/core/widgets/dls_loader/dls_loader_scope.dart';
import 'package:dls_one/features/auth/presentation/bloc/reg_bloc.dart';
import 'package:dls_one/features/auth/presentation/ui/setup_password/setup_password_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class ResetPasswordUpdatePasswordPage extends StatelessWidget {
  const ResetPasswordUpdatePasswordPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SetupPasswordPage(
      onDone: () {
        context.read<RegBloc>().add(
          RegEvent.resetPassword(
            callback: (ok) async {
              if (!ok) {
                return;
              }
              if (DlsPlatform.dlsPlatform == DlsPlatformType.mobile) {
                await context.navigateTo(const AuthSetupLockerRoute());
              } else {
                final signIn = StreamAuthScope.of(context).trySignIn();

                DLSLoaderScope.showLoaderOf(context, future: signIn);
              }
            },
          ),
        );
      },
    );
  }
}
