import 'package:dls_one/core/core.dart';
import 'package:dls_one/core/widgets/dls_loader/dls_loader_scope.dart';
import 'package:dls_one/core/widgets/src/dls_app_bar.dart';
import 'package:dls_one/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MobileAuthLoginLayout extends StatelessWidget {
  const MobileAuthLoginLayout({
    required this.emailController,
    required this.passwordController,
    required this.passwordFocusNode,
    required this.onTapRegister,
    required this.onForgotPassword,
    required this.onSubmitEmail,
    required this.auth,
    super.key,
  });

  final TextEditingController emailController;
  final TextEditingController passwordController;
  final FocusNode passwordFocusNode;

  final VoidCallback onTapRegister;
  final VoidCallback onForgotPassword;
  final ValueChanged<String> onSubmitEmail;
  final VoidCallback auth;

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listenWhen: (previous, current) => !previous.loading && current.loading,
      listener: (context, state) {
        final bloc = BlocProvider.of<AuthBloc>(context);
        DLSLoaderScope.showLoaderOf(
          context,
          future: bloc.stream.firstWhere((state) => !state.loading),
        );
      },
      child: BlocBuilder<AuthBloc, AuthState>(
        builder: (context, state) {
          return Scaffold(
            appBar: DLSAppBar(
              title: Text(S.current.authorization),
              actions: [
                TextButton(
                  onPressed:
                      state.loginValid && state.passwordValid ? auth : null,
                  child: Text(S.current.login),
                ),
              ],
            ),
            body: SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    S.current.auth_phone_message,
                    style: context.ts_s14h22_4w400.copyWith(
                      color: context.c_text_grey,
                    ),
                  ),
                  SizedBox(height: 20.h),
                  DLSInput(
                    textInputAction: TextInputAction.next,
                    controller: emailController,
                    hint: S.current.registration_tel_ex,
                    label: S.current.email,
                    errorMessage: state.failure,
                    onSubmitted: onSubmitEmail,
                  ),
                  SizedBox(height: 16.h),
                  DLSInput(
                    textInputAction: TextInputAction.send,
                    focusNode: passwordFocusNode,
                    controller: passwordController,
                    isObscure: true,
                    hint: S.current.password_example,
                    label: S.current.password,
                    errorMessage: state.failure,
                    onSubmitted: (_) {
                      auth();
                    },
                  ),
                  SizedBox(height: 12.h),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: state.loginValid ? onForgotPassword : null,
                      child: Text(
                        S.current.dont_remember_password,
                        style: TextStyle(
                          fontSize: 12.sp,
                          height: 14.06 / 12,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20.h),
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      text: S.current.have_not_acc,
                      style: context.ts_s14h22_4w400.copyWith(
                        color: context.c_text_grey,
                      ),
                      children: [
                        TextSpan(
                          text: ' ${S.current.register}',
                          style: context.ts_s14h22_4w400.copyWith(
                            color: context.c_blue,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = onTapRegister,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
