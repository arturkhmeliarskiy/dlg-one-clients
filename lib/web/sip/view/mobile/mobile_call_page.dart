import 'package:auto_route/auto_route.dart';
import 'package:collection/collection.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/grid/grid_builder.dart';
import 'package:dls_one/web/sip/sip.dart';
import 'package:dls_one/web/sip/view/widgets/username_label.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_webrtc/flutter_webrtc.dart';

class MobileCallPage extends StatelessWidget {
  const MobileCallPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: context.c_calls_background,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: context.c_calls_background,
          body: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                Container(
                  height: 60.h,
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  color: context.c_calls_background,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      const DlsBackButton(),
                      BlocBuilder<SipBloc, SipState>(
                        builder: (context, s) {
                          return s.maybeMap(
                            orElse: () => const SizedBox(),
                            activeCall: (state) {
                              final startAt =
                                  state.currentActiveCall.callMeta.startAt;
                              return startAt == null
                                  ? const SizedBox()
                                  : CallTextTickerWidget(
                                      init: startAt,
                                      style: context.ts_s12h12w400.copyWith(
                                        color: context.c_placeholder,
                                      ),
                                    );
                            },
                          );
                        },
                      ),
                      DLSButtonIcon(
                        icon: Assets.icons.usersAlt1.svg(
                          colorFilter: context.c_placeholder_color_filter,
                          width: 18.r,
                          height: 18.h,
                        ),
                        color: Colors.transparent,
                        onTap: () => context
                            .read<CallUsersBloc>()
                            .add(const CallUsersEvent.onTap()),
                      )
                    ],
                  ),
                ),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    BlocBuilder<SipBloc, SipState>(
                      builder: (context, s) {
                        return s.map(
                          idle: (state) => state.message == null
                              ? const MobileIdleState()
                              : DlsFailure(
                                  message: state.message!,
                                  color: context.c_calls_background,
                                  textColor: context.c_white_text,
                                  onTap: () {
                                    if (AutoRouter.of(context).canPop()) {
                                      context.popRoute();
                                    }
                                  },
                                ),
                          hangUp: (_) => const MobileHangUpState(),
                          calling: (state) => MobileCallingState(state.info),
                          activeCall: (state) {
                            return GridBuilder(
                              maxHeight: 500.h,
                              maxWidth: MediaQuery.of(context).size.width,
                              color: context.c_calls_background,
                              children: _getGridItems(context, state),
                            );
                          },
                        );
                      },
                    ),
                    const CallUsersOverlay(),
                  ],
                ),

                /// кнопки управления звонком
                Expanded(
                  child: Container(
                    color: context.c_calls_background,
                    alignment: Alignment.center,
                    child: BlocBuilder<SipBloc, SipState>(
                      builder: (context, s) {
                        final sip = context.read<SipBloc>();
                        return s.maybeMap(
                          orElse: () => const SizedBox(),
                          activeCall: (state) => CallControlsWidget(
                            isVideoMuted: state.isVideoMuted,
                            isAudioMuted: state.isAudioMuted,
                            onDoHangUp: () => sip.add(
                              const SipEvent.hangUp(),
                            ),
                            onAudioMute: () => sip.add(
                              SipEvent.muteAudio(
                                state.currentActiveCall.callMeta.chatId,
                              ),
                            ),
                            onVideoMute: () => sip.add(
                              SipEvent.muteVideo(
                                state.currentActiveCall.callMeta.chatId,
                              ),
                            ),
                            onSwitchCamera: () => sip.add(
                              SipEvent.switchCamera(
                                state.currentActiveCall.callMeta.chatId,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  List<Widget> _getGridItems(BuildContext context, SipState s) {
    return s.maybeMap(
      orElse: () => [],
      activeCall: (state) {
        final renders = <Widget>[];
        for (var i = 0; i < state.remoteStreamers.length; ++i) {
          renders.add(
            Padding(
              padding: EdgeInsets.all(4.r),
              child: Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(4.r),
                    child: RTCVideoView(
                      state.remoteStreamers[i].renderer,
                      objectFit:
                          RTCVideoViewObjectFit.RTCVideoViewObjectFitCover,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 8.w,
                      vertical: 8.h,
                    ),
                    child: BlocBuilder<SipBloc, SipState>(
                      builder: (context, state) {
                        return UsernameLabel(
                          name: state.mapOrNull(
                            activeCall: (value) =>
                                value.currentActiveCall.callMeta.callers
                                    .firstWhereOrNull(
                                      (element) =>
                                          element.label ==
                                          value.remoteStreamers[i].label,
                                    )
                                    ?.name,
                          ),
                        );
                      },
                    ),
                  ),
                  BlocBuilder<SipBloc, SipState>(
                    builder: (context, state) {
                      return state.maybeMap(
                        orElse: () => const SizedBox(),
                        activeCall: (value) =>
                            (value.currentActiveCall.callMeta.callers
                                        .firstWhereOrNull(
                                          (element) =>
                                              element.label ==
                                              value.remoteStreamers[i].label,
                                        )
                                        ?.speak ??
                                    false)
                                ? Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        width: 3.r,
                                        color: context.c_green,
                                      ),
                                      borderRadius: BorderRadius.circular(4.r),
                                    ),
                                  )
                                : const SizedBox(),
                      );
                    },
                  ),
                ],
              ),
            ),
          );
        }
        if (state.localStreamer != null) {
          renders.add(
            Padding(
              padding: EdgeInsets.all(4.r),
              child: Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(4.r),
                    child: RTCVideoView(
                      state.localStreamer!.renderer,
                      objectFit:
                          RTCVideoViewObjectFit.RTCVideoViewObjectFitCover,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 8.w,
                      vertical: 8.h,
                    ),
                    child: UsernameLabel(
                      name: S.current.me,
                    ),
                  ),
                  BlocBuilder<SipBloc, SipState>(
                    builder: (context, state) {
                      return state.maybeMap(
                        orElse: () => const SizedBox(),
                        activeCall: (value) =>
                            (value.currentActiveCall.callMeta.callers
                                        .firstWhereOrNull(
                                          (element) =>
                                              element.dlsId ==
                                              context
                                                  .read<UsersBloc>()
                                                  .state
                                                  .currentUser
                                                  ?.dlsId,
                                        )
                                        ?.speak ??
                                    false)
                                ? Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        width: 3.r,
                                        color: context.c_green,
                                      ),
                                      borderRadius: BorderRadius.circular(4.r),
                                    ),
                                  )
                                : const SizedBox(),
                      );
                    },
                  ),
                ],
              ),
            ),
          );
        } else {
          renders.add(
            Container(
              height: 500.h,
              width: 320.w,
              alignment: Alignment.center,
              color: context.c_calls_background,
              child: DLSBody.s1421(
                state.map(
                  idle: (value) => S.current.currentCallIsEmpty,
                  hangUp: (value) => S.current.currentCallIsEmpty,
                  calling: (value) {
                    switch (value.info) {
                      case CallInitStep.one:
                        return S.current.callInitStep(1, 2);
                      case CallInitStep.two:
                        return S.current.callInitStep(2, 2);
                    }
                  },
                  activeCall: (value) => S.current.localStreamerIsEmpty,
                ),
                color: context.c_white_text,
              ),
            ),
          );
        }
        return renders;
      },
    );
  }
}
