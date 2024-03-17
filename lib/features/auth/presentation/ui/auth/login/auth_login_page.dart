import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:dls_one/app/router/app_router.dart';
import 'package:dls_one/core/auth/stream_auth_scope.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/core/widgets/dls_loader/dls_loader_scope.dart';
import 'package:dls_one/core/widgets/dls_page_builder.dart';
import 'package:dls_one/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:dls_one/features/auth/presentation/bloc/reg_bloc.dart';
import 'package:dls_one/features/auth/presentation/ui/auth/login/mobile_auth_login_layout.dart';
import 'package:dls_one/features/auth/presentation/ui/auth/login/web_auth_login_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class AuthLoginPage extends StatefulWidget {
  const AuthLoginPage({
    @queryParam this.initialEmail,
    @queryParam this.initialName,
    super.key,
  });

  final String? initialEmail;
  final String? initialName;

  @override
  State<AuthLoginPage> createState() => _AuthLoginPageState();
}

class _AuthLoginPageState extends State<AuthLoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final passwordNode = FocusNode();

  void _auth() {
    context.read<AuthBloc>().add(
      AuthEvent.auth(
        (ok) async {
          if (ok) {
            if (!context.mounted) {
              return;
            }

            if (DlsPlatform.dlsPlatform == DlsPlatformType.mobile) {
              await context.router.replaceAll([
                const AuthSetupLockerRoute(),
              ]);
            } else {
              DLSLoaderScope.showLoaderOf(
                context,
                future: StreamAuthScope.of(
                  context,
                ).signIn(
                  context.read<AuthBloc>().state.dlsUser!,
                ),
              );
            }
          }
        },
      ),
    );
  }

  void _onUpdateEmail() {
    final value = emailController.text;
    context.read<AuthBloc>().add(
          AuthEvent.update(
            login: value,
          ),
        );
  }

  void _onUpdatePassword() {
    final value = passwordController.text;
    context.read<AuthBloc>().add(
          AuthEvent.update(
            password: value,
          ),
        );
  }

  void _onTapRegister() {
    context.read<RegBloc>().add(const RegEvent.freshState());
    context.navigateTo(
      const RegistrationRootRoute(
        children: [RegistrationLoginRoute()],
      ),
    );
  }

  void _onForgotPassword() {
    final email = emailController.text;

    context.read<RegBloc>()
      ..add(const RegEvent.freshState())
      ..add(RegEvent.update(login: email))
      ..add(
        const RegEvent.getResetPasswordApproveCode(),
      );

    context.navigateTo(
      const ResetPasswordRootRoute(),
    );
  }

  void _onSubmitEmail(String value) {
    passwordNode.requestFocus();
  }

  void _imNotDany() {
    context.read<AuthBloc>().add(
      AuthEvent.iAmNotDany((bool success) {
        if (success) {
          context.router.replaceAll([AuthLoginRoute()]);
        }
      }),
    );
  }

  @override
  void initState() {
    super.initState();
    final email = widget.initialEmail;
    if (email != null) {
      emailController.text = email;
    }

    emailController.addListener(_onUpdateEmail);
    passwordController.addListener(_onUpdatePassword);
  }

  @override
  void didUpdateWidget(AuthLoginPage oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.initialEmail != oldWidget.initialEmail) {
      emailController.text = widget.initialEmail ?? '';
    }
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    passwordNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Unfocuser(
      child: DLSPageBuilder(
        wide: WebAuthLoginLayout(
          name: widget.initialName,
          emailController: emailController,
          passwordController: passwordController,
          passwordFocusNode: passwordNode,
          onTapRegister: _onTapRegister,
          onForgotPassword: _onForgotPassword,
          onSubmitEmail: _onSubmitEmail,
          auth: _auth,
          imNotDany: _imNotDany,
        ),
        narrow: MobileAuthLoginLayout(
          emailController: emailController,
          passwordController: passwordController,
          passwordFocusNode: passwordNode,
          onTapRegister: _onTapRegister,
          onForgotPassword: _onForgotPassword,
          onSubmitEmail: _onSubmitEmail,
          auth: _auth,
        ),
      ),
    );
  }
}
