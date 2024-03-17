import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:dls_one/app/router/app_router.dart';
import 'package:dls_one/web/sip/sip.dart';
import 'package:dls_one/web/sip/view/desktop/desktop_call_page.dart';
import 'package:dls_one/web/sip/view/mobile/mobile_call_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class CallPage extends StatelessWidget {
  const CallPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CallUsersBloc(),
      child: BlocListener<SipBloc, SipState>(
        listener: (context, state) {
          state.mapOrNull(
            /// когда мы находимся в звонке
            hangUp: (_) {
              final router = AutoRouter.of(context);
              if (router.canPop()) {
                router.pop();
              } else {
                router.replace(const HomeRoute());
              }
            },
          );
        },
        child: DlsPlatform.dlsPlatform == DlsPlatformType.mobile
            ? const MobileCallPage()
            : const DesktopCallPage(),
      ),
    );
  }
}
