import 'package:auto_route/auto_route.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/features/settings/presentation/bloc/pin_validator_bloc.dart';
import 'package:dls_one/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:storage/storage.dart';

class PinValidatorPage extends StatefulWidget {
  const PinValidatorPage({super.key});

  /// метод вызывается роутером для генерации необходимых bloc provider
  static Widget route() {
    return BlocProvider(
      create: (context) =>
          PinValidatorBloc(store: context.read<KeyValueStore>()),
      child: const PinValidatorPage(),
    );
  }

  @override
  State<PinValidatorPage> createState() => _PinValidatorPageState();
}

class _PinValidatorPageState extends State<PinValidatorPage>
    with NotificationsMixin {
  String _pin = '';

  @override
  Widget build(BuildContext context) {
    return BlocListener<PinValidatorBloc, PinValidatorState>(
      listener: (context, state) {
        state.when(
          valid: () {
            context.popRoute(generateMd5(_pin));
          },
          data: () {},
          invalid: () {
            showDLSSnackBar(context, S.current.pin_is_invalid);
            context
                .read<PinValidatorBloc>()
                .add(const PinValidatorEvent.reset());
          },
        );
      },
      child: Scaffold(
        body: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              BlocBuilder<PinValidatorBloc, PinValidatorState>(
                builder: (context, state) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      PinCodeDots(
                        count: _pin.length,
                        text: S.current.type_pin_code,
                        activeColor: context.c_blue,
                      ),
                    ],
                  );
                },
              ).expanded(),
              PinKeyboard(
                onBackspace: () {
                  if (_pin.isNotEmpty) {
                    setState(() => _pin = _pin.substring(0, _pin.length - 1));
                  }
                },
                onTapCallback: (int val) {
                  if (_pin.length <= 4) {
                    setState(() => _pin = '$_pin$val');
                  }
                  context
                      .read<PinValidatorBloc>()
                      .add(PinValidatorEvent.validate(_pin));
                },
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
