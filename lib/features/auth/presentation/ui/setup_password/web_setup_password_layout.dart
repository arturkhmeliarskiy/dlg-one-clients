import 'package:dls_one/core/core.dart';
import 'package:dls_one/features/auth/presentation/ui/web_auth_header.dart';
import 'package:flutter/material.dart';

class WebSetupPasswordLayout extends StatelessWidget {
  const WebSetupPasswordLayout({
    required this.onDone,
    required this.onChangePassword,
    required this.onSubmitRepeatPassword,
    required this.onChangeRepeatPassord,
    super.key,
  });

  final VoidCallback? onDone;

  final ValueChanged<String> onChangePassword;
  final ValueChanged<String> onSubmitRepeatPassword;
  final ValueChanged<String> onChangeRepeatPassord;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        WebAuthHeader(title: S.current.registration_create_password),
        SizedBox(height: 24.h),
        DLSInput(
          isObscure: true,
          autofocus: true,
          hint: S.current.password_example,
          label: S.current.password,
          onChanged: onChangePassword,
          textInputAction: TextInputAction.next,
        ),
        SizedBox(height: 16.h),
        DLSInput(
          isObscure: true,
          hint: S.current.password_example,
          label: S.current.repeat_password,
          onChanged: onChangeRepeatPassord,
          onSubmitted: onSubmitRepeatPassword,
        ),
        SizedBox(height: 24.h),
        ElevatedButton(
          onPressed: onDone,
          child: Text(S.current.done),
        ),
      ],
    );
  }
}
