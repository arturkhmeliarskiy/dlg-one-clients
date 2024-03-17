import 'package:auto_route/auto_route.dart';
import 'package:collection/collection.dart';
import 'package:dls_matrix_client/dls_matrix_client.dart';
import 'package:dls_one/app/router/app_router.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/sip/sip.dart';
import 'package:dls_one/web/sip/view/desktop/view/desktop_call_window.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DesktopCallPage extends StatelessWidget {
  const DesktopCallPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: BlocBuilder<SipBloc, SipState>(
        builder: (context, s) {
          return s.map(
            idle: (state) => state.message == null
                ? _InfoWidget(
                    text: S.current.currentCallIsEmpty,
                  )
                : DlsFailure(
                    message: state.message!,
                    borderWidth: 1,
                    onTap: () {
                      if (AutoRouter.of(context).canPop()) {
                        context.popRoute();
                      }
                    },
                  ),
            hangUp: (_) => _InfoWidget(
              text: S.current.currentCallIsEmpty,
            ),
            calling: (state) {
              switch (state.info) {
                case CallInitStep.one:
                  return _InfoWidget(text: S.current.callInitStep(1, 2));
                case CallInitStep.two:
                  return _InfoWidget(text: S.current.callInitStep(2, 2));
              }
            },
            activeCall: (state) => Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: context.c_calls_background.withOpacity(0.75),
              alignment: Alignment.center,
              child: DesktopCallWindow(
                maxHeight: (state.isMaximized ?? false)
                    ? MediaQuery.of(context).size.height
                    : 582.h,
                maxWidth: (state.isMaximized ?? false)
                    ? MediaQuery.of(context).size.width
                    : 582.w,
                localStreamer: state.localStreamer,
                remoteStreamers: state.remoteStreamers,
                isAudioMuted: state.isAudioMuted,
                isVideoMuted: state.isVideoMuted,
                onMin: () {
                  if (AutoRouter.of(context).canPop()) {
                    context.popRoute();
                  } else {
                    final matrixClient = context.read<DlsMatrixClient>();
                    final items =
                        matrixClient.privateRooms.firstOrNull?.id.split(':');

                    context.navigateTo(
                      WebChatPersonalWrapperRoute(
                        children: items != null
                            ? [
                                WebChatPersonalRoute(
                                  chatId: items.first,
                                  server: items.last,
                                ),
                              ]
                            : null,
                      ),
                    );
                  }
                },
                onMax: () =>
                    context.read<SipBloc>().add(const SipEvent.maximize()),
              ),
            ),
          );
        },
      ),
    );
  }
}

class _InfoWidget extends StatelessWidget {
  const _InfoWidget({
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(text),
      ),
    );
  }
}
