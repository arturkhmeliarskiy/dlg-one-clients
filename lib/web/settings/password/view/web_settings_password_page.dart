import 'package:dls_one/core/core.dart';
import 'package:dls_one/core/widgets/src/dls_app_bar.dart';
import 'package:dls_one/web/settings/password/bloc/web_settings_password_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WebSettingsPasswordLayout extends StatefulWidget {
  const WebSettingsPasswordLayout({super.key});

  @override
  State<WebSettingsPasswordLayout> createState() =>
      _WebSettingsPasswordLayoutState();
}

class _WebSettingsPasswordLayoutState extends State<WebSettingsPasswordLayout>
    with NotificationsMixin {
  final passwordController = TextEditingController();
  final nPasswordController = TextEditingController();
  final nRePasswordController = TextEditingController();

  @override
  void dispose() {
    passwordController.dispose();
    nPasswordController.dispose();
    nRePasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.c_white_text,
      appBar: DLSAppBar(
        automaticallyImplyLeading: false,
        title: Text(S.current.password),
      ),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.topCenter,
          child: BlocListener<SettingsPasswordBloc, SettingsPasswordState>(
            listener: (context, state) {
              state.whenOrNull(
                saved: () {
                  passwordController.clear();
                  nPasswordController.clear();
                  nRePasswordController.clear();
                  showDLSSnackBar(context, S.current.saved);
                },
              );
            },
            listenWhen: (previous, current) {
              return current.maybeWhen(
                orElse: () => false,
                saved: () => true,
              );
            },
            child: BlocBuilder<SettingsPasswordBloc, SettingsPasswordState>(
              builder: (context, state) {
                return state.when(
                  saved: () => DLSPreloader.newDLS.paddingOnly(top: 20.h),
                  loading: () => DLSPreloader.newDLS.paddingOnly(top: 20.h),
                  data: (
                    password,
                    nPassword,
                    nRePassword,
                    isValid,
                    errorMessage,
                  ) =>
                      Column(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.75,
                        child: Flex(
                          mainAxisSize: MainAxisSize.min,
                          direction: Axis.vertical,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(height: 36.h),
                            DLSInput(
                              autofocus: true,
                              isObscure: true,
                              width: MediaQuery.of(context).size.width * 0.75,
                              controller: passwordController,
                              label: S.current.old_password,
                              hint: S.current.old_password,
                              errorMessage: errorMessage,
                              onChanged: onChangedPassword,
                            ),
                            SizedBox(height: 20.h),
                            DLSInput(
                              isObscure: true,
                              width: MediaQuery.of(context).size.width * 0.75,
                              controller: nPasswordController,
                              label: S.current.new_password,
                              hint: S.current.new_password,
                              onChanged: onChangedNPassword,
                            ),
                            SizedBox(height: 20.h),
                            DLSInput(
                              isObscure: true,
                              width: MediaQuery.of(context).size.width * 0.75,
                              controller: nRePasswordController,
                              label: S.current.repeat_new_password,
                              hint: S.current.repeat_new_password,
                              onChanged: onChangedNRePassword,
                            ),
                            SizedBox(height: 28.h),
                            Flex(
                              mainAxisAlignment: MainAxisAlignment.end,
                              direction: Axis.horizontal,
                              children: [
                                DLSButtonFlat(
                                  width: 102.w,
                                  isBordered: false,
                                  isDisabled: !isValid,
                                  disabledColor: context.c_blue_disabled,
                                  color: context.c_blue,
                                  text: S.current.save,
                                  textStyle: context.ts_s14h16_4w400
                                      .copyWith(color: context.c_white_text),
                                  onTap: onSave,
                                ),
                              ],
                            ),
                          ],
                        ).paddingSymmetric(vertical: 16.h),
                      ),
                    ],
                  ),
                  failure: (message) => DlsFailure(message: message),
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  void onSave() => context
      .read<SettingsPasswordBloc>()
      .add(const SettingsPasswordEvent.save());

  void onChangedPassword(String val) => context
      .read<SettingsPasswordBloc>()
      .add(SettingsPasswordEvent.update(password: val));

  void onChangedNPassword(String val) => context
      .read<SettingsPasswordBloc>()
      .add(SettingsPasswordEvent.update(nPassword: val));

  void onChangedNRePassword(String val) => context
      .read<SettingsPasswordBloc>()
      .add(SettingsPasswordEvent.update(nRePassword: val));
}
