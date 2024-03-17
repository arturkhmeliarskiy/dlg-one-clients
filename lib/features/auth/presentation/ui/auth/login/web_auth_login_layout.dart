import 'package:dls_one/core/core.dart';
import 'package:dls_one/core/widgets/dls_loader/dls_loader_scope.dart';
import 'package:dls_one/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:dls_one/features/auth/presentation/ui/web_auth_header.dart';
import 'package:dls_one/features/auth/presentation/ui/web_screen_frame.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WebAuthLoginLayout extends StatelessWidget {
  const WebAuthLoginLayout({
    required this.name,
    required this.emailController,
    required this.passwordController,
    required this.passwordFocusNode,
    required this.onTapRegister,
    required this.onForgotPassword,
    required this.onSubmitEmail,
    required this.auth,
    required this.imNotDany,
    super.key,
  });

  final String? name;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final FocusNode passwordFocusNode;

  final VoidCallback onTapRegister;
  final VoidCallback onForgotPassword;
  final ValueChanged<String> onSubmitEmail;
  final VoidCallback auth;
  final VoidCallback imNotDany;

  @override
  Widget build(BuildContext context) {
    // TODO: Переделать на сливеры для обработки переполнения стека по вертикали
    return WebScreenFrame(
      child: BlocListener<AuthBloc, AuthState>(
        listenWhen: (previous, current) => !previous.loading && current.loading,
        listener: (context, state) {
          DLSLoaderScope.showLoaderOf(
            context,
            future: context
                .read<AuthBloc>()
                .stream
                .firstWhere((state) => !state.loading),
          );
        },
        child: BlocBuilder<AuthBloc, AuthState>(
          builder: (context, state) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (name != null)
                  WebAuthHeader(
                    title: S.current.hello_name(name!),
                  )
                else
                  WebAuthHeader(
                    title: S.current.authorization,
                    subtitle: S.current.auth_login_subtitle,
                  ),
                SizedBox(height: 24.h),
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
                SizedBox(height: 8.h),
                Row(
                  children: [
                    if (name != null)
                      TextButton(
                        onPressed: imNotDany,
                        child: Text(
                          S.current.i_am_not_name(name!),
                          style: TextStyle(
                            fontSize: 14.sp,
                            height: 14.06 / 12,
                          ),
                        ),
                      ),
                    const Spacer(),
                    TextButton(
                      onPressed: state.loginValid ? onForgotPassword : null,
                      child: Text(
                        S.current.dont_remember_password,
                        style: TextStyle(
                          fontSize: 14.sp,
                          height: 14.06 / 12,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 24.h),
                ElevatedButton(
                  onPressed:
                      state.loginValid && state.passwordValid ? auth : null,
                  child: Text(S.current.login),
                ),
                SizedBox(height: 24.h),
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
            );
          },
        ),
      ),
    );
  }
}
