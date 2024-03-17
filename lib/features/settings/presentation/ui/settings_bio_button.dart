import 'package:dls_one/core/core.dart';
import 'package:dls_one/features/settings/presentation/bloc/settings_bio_bloc.dart';
import 'package:dls_one/features/settings/presentation/ui/pin_validator_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:storage/storage.dart';

class SettingsBioButton extends StatefulWidget {
  const SettingsBioButton({super.key});

  /// создать виджет с BlocProvider
  static Widget withProvider() {
    return BlocProvider(
      create: (context) =>
          SettingsBioBloc(store: context.read<KeyValueStore>()),
      child: const SettingsBioButton(),
    );
  }

  @override
  State<SettingsBioButton> createState() => _SettingsBioButtonState();
}

class _SettingsBioButtonState extends State<SettingsBioButton> {
  @override
  void initState() {
    super.initState();
    context.read<SettingsBioBloc>().add(const SettingsBioEvent.read());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsBioBloc, SettingsBioState>(
      builder: (context, state) {
        return Stack(
          alignment: Alignment.centerRight,
          children: [
            DLSButtonFlat(
              icon: Assets.icons.biometryNano
                  .svg(
                    colorFilter: ColorFilter.mode(
                      context.c_text_grey,
                      BlendMode.srcIn,
                    ),
                  )
                  .paddingOnly(right: 8.w, left: 12),
              text: S.current.biometrics,
              height: 50.h,
              border: Border.all(color: context.c_grey_stoke),
              textStyle: context.ts_s14h14w500.copyWith(color: context.c_text),
              contentAlignment: Alignment.centerLeft,
            ),
            if (state.isEnabled)
              Stack(
                alignment: Alignment.centerRight,
                children: [
                  DlsSwitchPartBackground(color: context.c_blue),
                  const DlsSwitchPartCircle().paddingSymmetric(horizontal: 2.w),
                ],
              ).paddingOnly(right: 12)
            else
              Stack(
                alignment: Alignment.centerLeft,
                children: [
                  DlsSwitchPartBackground(
                    color: context.c_grey_hover,
                  ),
                  const DlsSwitchPartCircle().paddingSymmetric(horizontal: 2.w),
                ],
              ).paddingOnly(right: 12)
          ],
        ).gestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => PinValidatorPage.route(),
              ),
            ).then(
              (pinHash) {
                if (pinHash != null) {
                  showDLSDialog(context, null, S.current.enable_bio).then(
                    (value) {
                      if (value == DLSDialogAnswer.confirm) {
                        context
                            .read<SettingsBioBloc>()
                            .add(SettingsBioEvent.setup(pinHash as String));
                      }
                      if (value == DLSDialogAnswer.cancel) {
                        context
                            .read<SettingsBioBloc>()
                            .add(SettingsBioEvent.delete(pinHash as String));
                      }
                    },
                  );
                }
              },
            );
          },
        );
      },
    );
  }
}
