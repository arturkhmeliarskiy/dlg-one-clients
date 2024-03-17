import 'package:auto_route/auto_route.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/features/settings/presentation/bloc/settings_pin_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:storage/storage.dart';

@RoutePage()
class SettingsPinPage extends StatelessWidget {
  const SettingsPinPage({
    required this.pinHash,
    super.key,
  });

  /// Хэш текущего пина.
  final String pinHash;

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (context) => SettingsPinBloc(
          store: context.read<KeyValueStore>(),
        ),
        child: _SettingsPinLayout(pinHash: pinHash),
      );
}

class _SettingsPinLayout extends StatelessWidget with NotificationsMixin {
  const _SettingsPinLayout({required this.pinHash});

  final String pinHash;

  @override
  Widget build(BuildContext context) {
    return BlocListener<SettingsPinBloc, SettingsPinState>(
      listener: (context, state) => state.when(
        valid: (pin, repin) => context.navigateBack(),
        data: (pin, repin) {
          return;
        },
        invalid: (pin, repin) {
          showDLSSnackBar(context, S.current.pins_not_same);
          context.read<SettingsPinBloc>().add(const SettingsPinEvent.reset());
          return;
        },
      ),
      child: Scaffold(
        body: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              BlocBuilder<SettingsPinBloc, SettingsPinState>(
                builder: (context, state) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      PinCodeDots(
                        count: state.pin.length,
                        text: S.current.create_access_code,
                        activeColor: context.c_blue,
                      ),
                      if (state.pin.length == 4)
                        Padding(
                          padding: EdgeInsets.only(top: 28.h),
                          child: PinCodeDots(
                            count: state.repin.length,
                            text: S.current.repeat_access_code,
                            activeColor: context.c_red,
                          ),
                        )
                    ],
                  );
                },
              ).expanded(),
              PinKeyboard(
                onBackspace: () => context
                    .read<SettingsPinBloc>()
                    .add(const SettingsPinEvent.backspace()),
                onTapCallback: (int val) => context
                    .read<SettingsPinBloc>()
                    .add(SettingsPinEvent.tap(val.toString(), pinHash)),
              ),
              SizedBox(
                height: 68.h,
              )
            ],
          ),
        ),
      ),
    );
  }
}
