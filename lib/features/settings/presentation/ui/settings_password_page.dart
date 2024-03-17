import 'package:auto_route/auto_route.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/core/widgets/dls_page_builder.dart';
import 'package:dls_one/features/settings/presentation/bloc/settings_password_bloc.dart';
import 'package:dls_one/web/settings/password/view/web_settings_password_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rest_api/rest_api.dart';

@RoutePage()
class SettingsPasswordPage extends StatelessWidget {
  const SettingsPasswordPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (context) => SettingsPasswordBloc(
          restApi: context.read<DlsRestApi>(),
        ),
        child: const DLSPageBuilder(
          wide: WebSettingsPasswordLayout(),
          narrow: SettingsPasswordLayout(),
        ),
      );
}

class SettingsPasswordLayout extends StatefulWidget {
  const SettingsPasswordLayout({super.key});

  @override
  State<SettingsPasswordLayout> createState() => _SettingsPasswordLayoutState();
}

class _SettingsPasswordLayoutState extends State<SettingsPasswordLayout>
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
      backgroundColor: context.c_appbar,
      appBar: OldDlsAppBar(
        title: S.current.change_password,
        titleStyle: context.ts_s18h21w500,
        rightButtonIcon:
            BlocBuilder<SettingsPasswordBloc, SettingsPasswordState>(
          builder: (context, state) => state.maybeWhen(
            orElse: Container.new,
            data: (
              password,
              nPassword,
              nRePassword,
              isValid,
              errorMessage,
            ) =>
                DLSButtonText(
              text: S.current.done,
              width: 45.w,
              onTap: onSave,
              isDisabled: !isValid,
            ),
          ),
        ),
        height: 60.h,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
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
            builder: (context, state) => state.when(
              saved: () => DLSPreloader.newDLS.paddingOnly(top: 20.h),
              loading: () => DLSPreloader.newDLS.paddingOnly(top: 20.h),
              failure: (message) => DlsFailure(message: message),
              data: (
                password,
                nPassword,
                nRePassword,
                isValid,
                errorMessage,
              ) =>
                  Column(
                children: [
                  SizedBox(height: 20.h),
                  DLSInput(
                    width: 288.w,
                    controller: passwordController,
                    isObscure: true,
                    label: S.current.old_password,
                    autofocus: true,
                    hint: S.current.password_example,
                    errorMessage: errorMessage,
                    onChanged: onChangedPassword,
                  ),
                  SizedBox(height: 20.h),
                  DLSInput(
                    width: 288.w,
                    controller: nPasswordController,
                    isObscure: true,
                    label: S.current.new_password,
                    hint: S.current.password_example,
                    onChanged: onChangedNPassword,
                  ),
                  SizedBox(height: 20.h),
                  DLSInput(
                    width: 288.w,
                    controller: nRePasswordController,
                    isObscure: true,
                    label: S.current.repeat_new_password,
                    hint: S.current.password_example,
                    onChanged: onChangedNRePassword,
                  ),
                ],
              ),
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
