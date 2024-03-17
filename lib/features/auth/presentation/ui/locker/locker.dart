import 'package:auto_route/auto_route.dart';
import 'package:dls_one/app/router/app_router.dart';
import 'package:dls_one/core/auth/stream_auth_scope.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/core/widgets/dls_loader/dls_loader_scope.dart';
import 'package:dls_one/features/auth/presentation/bloc/locker_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:local_auth/local_auth.dart';
import 'package:move_to_background/move_to_background.dart';
import 'package:rest_api/rest_api.dart';

@RoutePage()
class LockerPage extends StatefulWidget {
  const LockerPage({super.key});

  @override
  State<LockerPage> createState() => _LockerPageState();
}

class _LockerPageState extends State<LockerPage> with NotificationsMixin {
  bool redirected = false;

  @override
  void initState() {
    super.initState();
    auth();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      /// иначе пользователь сможет вернутся назад
      onWillPop: () async {
        await MoveToBackground.moveTaskToBack();
        return false;
      },
      child: BlocListener<LockerBloc, LockerState>(
        listener: (context, state) {
          if (state.error401 == true) {
            StreamAuthScope.of(context).signOut().then(
                  (value) => context.navigateTo(
                    const AuthRootRoute(),
                  ),
                );
          } else if (!state.isLocked && !redirected) {
            AutoRouter.of(context).replace(const HomeRoute());
            redirected = true;
          }
        },
        child: BlocBuilder<LockerBloc, LockerState>(
          builder: (context, state) {
            if (state.loading) {
              return Container(
                color: context.c_white_text,
                child: const DLSPreloader(),
              );
            }

            return Scaffold(
              body: SizedBox(
                height: MediaQuery.of(context).size.height,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        PinCodeDots(
                          count: state.pin.length,
                          text: S.current.type_pin_code,
                          activeColor: context.c_blue,
                        ),
                      ],
                    ).expanded(),
                    PinKeyboard(
                      onExit: () async {
                        final authScope = StreamAuthScope.of(context);
                        final router = AutoRouter.of(context);
                        final ans = await showDLSDialog(
                          context,
                          null,
                          S.current.you_sure_want_reset_pin,
                          contentTextStyle: context.ts_s14h22_4w400
                              .copyWith(color: context.c_text),
                        );
                        if (ans == DLSDialogAnswer.confirm) {
                          await authScope.signOut();
                          await router.navigate(const AuthRootRoute());
                        }
                      },
                      onBackspace: () {
                        if (state.pin.length < 4) {
                          context.read<LockerBloc>().add(
                                LockerEvent.unlock(
                                  pin: state.pin
                                      .substring(0, state.pin.length - 1),
                                  callback: (ok, user) {},
                                ),
                              );
                        }
                      },
                      onTapCallback: (int val) {
                        if (state.pin.length < 4) {
                          context.read<LockerBloc>().add(
                                LockerEvent.unlock(
                                  pin: state.pin + val.toString(),
                                  callback: (ok, user) async {
                                    if (ok) {
                                      /// логиним
                                      /// редирект перебросит в корень
                                      DLSLoaderScope.showLoaderOf(
                                        context,
                                        future: StreamAuthScope.of(context)
                                            .signIn(user!),
                                      );

                                      // todo hotfix
                                      // context.read<LockerBloc>().add(
                                      //       const LockerEvent.update(
                                      //         loading: false,
                                      //       ),
                                      //     );
                                    }

                                    if (ok == false) {
                                      showDLSSnackBar(
                                        context,
                                        S.current.pin_is_invalid,
                                      );
                                    }
                                  },
                                ),
                              );
                        }
                      },
                    ),
                    SizedBox(
                      height: 68.h,
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  void auth() {
    if (context.read<LockerBloc>().state.bioStore) {
      final localAuthentication = LocalAuthentication();
      localAuthentication
          .authenticate(
        localizedReason: S.current.scan_bio_for_auth,
        options: const AuthenticationOptions(
          stickyAuth: true,
          biometricOnly: true,
        ),
      )
          .then((value) {
        if (value) {
          context.read<LockerBloc>().add(
                LockerEvent.unlock(
                  bio: true,
                  callback: (bool ok, DLSUser? dlsUser) async {
                    if (ok) {
                      /// логиним
                      /// редирект перебросит в корень
                      await StreamAuthScope.of(context).signIn(dlsUser!);
                      context
                          .read<LockerBloc>()
                          .add(const LockerEvent.update(loading: false));
                    }
                  },
                ),
              );
        }
      });
    }
  }
}
