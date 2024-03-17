import 'package:auto_route/auto_route.dart';
import 'package:dls_one/core/auth/stream_auth_scope.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/core/widgets/dls_loader/dls_loader_scope.dart';
import 'package:dls_one/features/auth/auth.dart';
import 'package:dls_one/features/auth/presentation/bloc/locker_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class AuthSetupLockerPage extends StatelessWidget {
  const AuthSetupLockerPage({super.key});

  void onTapKeyboard(BuildContext context, LockerState state, int value) {
    final lockerBloc = context.read<LockerBloc>();

    if (state.pin.length < 4) {
      lockerBloc.add(
        LockerEvent.update(
          pin: state.pin + value.toString(),
        ),
      );
    } else {
      /// обновляем репин
      lockerBloc.add(
        LockerEvent.update(
          repin: state.repin + value.toString(),
          callback: (bool ok) async {
            /// пины совпали
            if (ok) {
              /// спрашиваем про отпечаток
              // TODO: добавить проверку поддержки
              final ans = await showDLSDialog(
                context,
                null,
                S.current.enable_bio,
                contentTextStyle:
                    context.ts_s14h22_4w400.copyWith(color: context.c_text),
              );

              /// кидаем ответ
              lockerBloc.add(
                LockerEvent.update(
                  loading: true,
                  enableBio: ans == DLSDialogAnswer.confirm,
                  callback: (bool ok) async {
                    /// внутри блока уже совпавшие пины и состояние отпечатка
                    /// пользователь есть, тк на этот экран можно попасть только с экрана логина
                    /// (возможно эту логику можно использовать и для ностроек)
                    if (ok && context.read<AuthBloc>().state.dlsUser != null) {
                      /// разблокируем и логиним
                      lockerBloc.add(
                        LockerEvent.update(
                          isLocked: false,
                          callback: (
                            bool ok,
                          ) async {
                            if (ok) {
                              /// сохраняем состояние наличия пина и био
                              /// чтобы потом можно было войти через них
                              lockerBloc.add(
                                const LockerEvent.save(),
                              );

                              /// логиним
                              /// редирект перебросит в корень
                              DLSLoaderScope.showLoaderOf(
                                context,
                                future: StreamAuthScope.of(
                                  context,
                                ).signIn(
                                  context.read<AuthBloc>().state.dlsUser!,
                                ),
                              );
                            }
                          },
                        ),
                      );
                    }
                  },
                ),
              );
            }
          },
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final lockerBloc = context.read<LockerBloc>();

    return Unfocuser(
      child: BlocConsumer<LockerBloc, LockerState>(
        listenWhen: (previous, current) => !previous.loading && current.loading,
        listener: (context, state) {
          DLSLoaderScope.showLoaderOf(
            context,
            future: lockerBloc.stream.firstWhere((state) => !state.loading),
          );
        },
        builder: (context, state) {
          return Scaffold(
            body: SingleChildScrollView(
              child: SizedBox(
                height: MediaQuery.of(context).size.height,
                child: Column(
                  children: [
                    SizedBox(
                      height: state.pin.length == 4
                          ? (MediaQuery.of(context).size.height > 640
                              ? 127.h
                              : 127.h * 0.6)
                          : (MediaQuery.of(context).size.height > 640
                              ? 160.h
                              : 160.h * 0.6),
                      width: MediaQuery.of(context).size.width,
                    ),
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
                    else
                      const SizedBox(),
                    SizedBox(
                      height: state.pin.length == 4
                          ? (MediaQuery.of(context).size.height > 640
                              ? 92.h
                              : 92.h * 0.6)
                          : (MediaQuery.of(context).size.height > 640
                              ? 140.h
                              : 140.h * 0.6),
                    ),
                    PinKeyboard(
                      onBackspace: () {
                        if (state.pin.length - 1 < 0) return;
                        if (state.pin.length <= 4 && state.repin.isEmpty) {
                          lockerBloc.add(
                            LockerEvent.update(
                              pin: state.pin.substring(0, state.pin.length - 1),
                            ),
                          );
                        } else {
                          lockerBloc.add(
                            LockerEvent.update(
                              repin: state.repin
                                  .substring(0, state.repin.length - 1),
                            ),
                          );
                        }
                      },
                      onTapCallback: (int value) {
                        onTapKeyboard(context, state, value);
                      },
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
