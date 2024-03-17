import 'package:collection/collection.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/grid/grid_builder.dart';
import 'package:dls_one/web/sip/sip.dart';
import 'package:dls_one/web/sip/view/widgets/username_label.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_webrtc/flutter_webrtc.dart';
import 'package:sip_repository/sip_repository.dart';

class DesktopCallWindow extends StatelessWidget {
  const DesktopCallWindow({
    required this.localStreamer,
    required this.remoteStreamers,
    required this.isAudioMuted,
    required this.isVideoMuted,
    required this.onMin,
    required this.onMax,
    required this.maxHeight,
    required this.maxWidth,
    super.key,
  });

  final Streamer? localStreamer;
  final List<Streamer?>? remoteStreamers;
  final bool isAudioMuted;
  final bool isVideoMuted;
  final VoidCallback onMin;
  final VoidCallback onMax;
  final double maxHeight;
  final double maxWidth;

  @override
  Widget build(BuildContext context) {
    final renders = <Widget>[];
    for (var i = 0; i < (remoteStreamers ?? []).length; ++i) {
      renders.add(
        Padding(
          padding: EdgeInsets.all(4.r),
          child: Stack(
            alignment: Alignment.bottomLeft,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(4.r),
                child: RTCVideoView(
                  remoteStreamers![i]!.renderer,
                  objectFit: RTCVideoViewObjectFit.RTCVideoViewObjectFitCover,
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
    if (localStreamer != null) {
      renders.add(
        Padding(
          padding: EdgeInsets.all(4.r),
          child: Stack(
            alignment: Alignment.bottomLeft,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(4.r),
                child: RTCVideoView(
                  localStreamer!.renderer,
                  objectFit: RTCVideoViewObjectFit.RTCVideoViewObjectFitCover,
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
                          element.dlsId == context.read<UsersBloc>().state.currentUser?.dlsId,
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
        Center(
          child: Text(
            S.current.localStreamerIsEmpty,
            style: context.ts_s14h14w500.copyWith(color: context.c_white_text),
          ),
        ),
      );
    }
    final videoMaxHeight = maxHeight - 132.h;
    return Container(
      height: maxHeight,
      width: maxWidth,
      color: context.c_calls_background,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 52.h),
            child: SizedBox(
              height: videoMaxHeight,
              child: GridBuilder(
                maxHeight: videoMaxHeight,
                maxWidth: maxWidth,
                color: context.c_calls_background,
                children: renders,
              ),
            ),
          ),

          /// ---------------------------------- ///

          /// управление звонком
          Positioned(
            bottom: 20.h,
            child: BlocBuilder<SipBloc, SipState>(
              builder: (context, s) {
                return s.maybeMap(
                  orElse: () => const SizedBox(),
                  activeCall: (state) => CallControlsWidget(
                    isVideoMuted: isVideoMuted,
                    isAudioMuted: isAudioMuted,
                    onDoHangUp: () => context.read<SipBloc>().add(
                          const SipEvent.hangUp(),
                        ),
                    onAudioMute: () => context.read<SipBloc>().add(
                          SipEvent.muteAudio(
                            state.currentActiveCall.callMeta.chatId,
                          ),
                        ),
                    onVideoMute: () => context.read<SipBloc>().add(
                          SipEvent.muteVideo(
                            state.currentActiveCall.callMeta.chatId,
                          ),
                        ),
                    onSwitchCamera: () => context.read<SipBloc>().add(
                          SipEvent.switchCamera(
                            state.currentActiveCall.callMeta.chatId,
                          ),
                        ),
                  ),
                );
              },
            ),
          ),

          /// ---------------------------------- ///

          /// раскрывашки закрывашки
          Positioned(
            right: 20.h,
            top: 13.h,
            child: Row(
              children: [
                WebButtonIconWithTooltip(
                  icon: Assets.icons.square2.path,
                  tooltip: S.current.minimize,
                  onTap: onMin,
                ),
                WebButtonIconWithTooltip(
                  icon: Assets.icons.focus1.path,
                  tooltip: S.current.maximize,
                  onTap: onMax,
                ).paddingOnly(left: 8),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
