import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:dls_one/app/router/app_router.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/utils/utils.dart';
import 'package:dls_one/web/sip/sip.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class IncomingCallPage extends StatelessWidget {
  const IncomingCallPage({
    required this.activeCall,
    super.key,
  });

  final ActiveCall activeCall;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          IncomingCallBloc(
            IncomingCallState.initial(activeCall, getUuid),
            usersBloc: context.read<UsersBloc>(),
          ),
      child: const _IncomingCallLayout._(),
    );
  }
}

class _IncomingCallLayout extends StatelessWidget {
  const _IncomingCallLayout._();

  void onAccept(BuildContext context) =>
      context.read<IncomingCallBloc>().add(const IncomingCallEvent.accept());

  void onReject(BuildContext context) =>
      context.read<IncomingCallBloc>().add(const IncomingCallEvent.reject());

  @override
  Widget build(BuildContext context) {
    return BlocListener<SipBloc, SipState>(
      listener: (context, state) {
        /// когда на той стороне просто сбросили звонок, а мы не ответили
        state.mapOrNull(
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
      child: BlocListener<IncomingCallBloc, IncomingCallState>(
        listener: (context, state) {
          state.whenOrNull(
            accepted: (activeCall, _, caller) {
              context.replaceRoute(const CallRoute());
              context.read<SipBloc>().add(const SipEvent.acceptIncoming());
            },
            rejected: (activeCall, _, caller) {
              if (AutoRouter.of(context).canPop()) {
                context.popRoute();
              } else {
                context.navigateTo(const ChatsRootRoute());
              }
              context.read<SipBloc>().add(const SipEvent.rejectIncoming());
            },
          );
        },

        /// platform views
        child: DlsPlatform.dlsPlatform == DlsPlatformType.mobile
            ? MobileIncomingCallPage(
          onAccept: () => onAccept(context),
          onReject: () => onReject(context),
        )
            : DesktopIncomingCallPage(
          onAccept: () => onAccept(context),
          onReject: () => onReject(context),
        ),
      ),
    );
  }
}
