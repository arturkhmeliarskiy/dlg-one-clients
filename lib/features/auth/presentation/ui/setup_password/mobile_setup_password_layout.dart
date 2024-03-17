import 'package:dls_one/core/core.dart';
import 'package:dls_one/core/widgets/src/dls_app_bar.dart';
import 'package:flutter/material.dart';

class MobileSetupPasswordLayout extends StatelessWidget {
  const MobileSetupPasswordLayout({
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
    return Unfocuser(
      child: Scaffold(
        backgroundColor: context.c_white_text,
        appBar: DLSAppBar(
          title: Text(S.current.registration_create_password),
          actions: [
            TextButton(
              onPressed: onDone,
              child: Text(S.current.next),
            )
          ],
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DLSInput(
                isObscure: true,
                autofocus: true,
                hint: S.current.password_example,
                label: S.current.password,
                onChanged: onChangePassword,
                textInputAction: TextInputAction.next,
              ),
              SizedBox(height: 20.h),
              DLSInput(
                isObscure: true,
                hint: S.current.password_example,
                label: S.current.repeat_password,
                onChanged: onChangeRepeatPassord,
                onSubmitted: onSubmitRepeatPassword,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
