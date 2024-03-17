import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';

class CallControlsWidget extends StatelessWidget {
  const CallControlsWidget({
    super.key,
    required this.isVideoMuted,
    required this.isAudioMuted,
    required this.onAudioMute,
    required this.onVideoMute,
    required this.onDoHangUp,
    required this.onSwitchCamera,
  });

  final bool isVideoMuted;
  final bool isAudioMuted;
  final VoidCallback onAudioMute;
  final VoidCallback onVideoMute;
  final VoidCallback onDoHangUp;
  final VoidCallback onSwitchCamera;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // if (!kIsWeb)
        //   DlsButtonIcon(
        //     height: 40,
        //     width: 40,
        //     onTap: () => context.read<CallerBloc>().add(CallerEvent.muteSpeaker(!(me.isSpeakerphoneMuted ?? false))),
        //     color: !(me.isSpeakerphoneMuted ?? false) ? context.c_calls_active_button : Colors.transparent,
        //     icon: (me.isSpeakerphoneMuted ?? false)
        //         ? Assets.icons.volumeMute1.svg(
        //             height: 18,
        //             width: 18,
        //             color: context.c_white_text,
        //           )
        //         : Assets.icons.volume1.svg(height: 18, width: 18, color: context.c_white_text),
        //   ).paddingOnly(right: 8.w),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 4.w),
          child: WebButtonIconWithTooltip(
            height: 40.r,
            width: 40.r,
            onTap: onSwitchCamera,
            icon: Assets.icons.sync1.path,
            iconColor: context.c_white_text,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 4.w),
          child: WebButtonIconWithTooltip(
            height: 40.r,
            width: 40.r,
            onTap: onVideoMute,
            icon: isVideoMuted
                ? Assets.icons.videoSlash1.path
                : Assets.icons.video1.path,
            iconColor: context.c_white_text,
            pressedIconColor: context.c_calls_background,
            pressedBackground: context.c_white_text,
            isPressed: isVideoMuted,
          ),
        ),
        Padding(
            padding: EdgeInsets.symmetric(horizontal: 4.w),
            child: WebButtonIconWithTooltip(
              height: 40.r,
              width: 40.r,
              onTap: onAudioMute,
              icon: isAudioMuted
                  ? Assets.icons.microphoneSlash1.path
                  : Assets.icons.microphone1.path,
              iconColor: context.c_white_text,
              pressedIconColor: context.c_calls_background,
              pressedBackground: context.c_white_text,
              isPressed: isAudioMuted,
            )),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 4.w),
          child: WebButtonIconWithTooltip(
            height: 40.r,
            width: 40.r,
            onTap: onDoHangUp,
            icon: Assets.icons.phoneTimes1.path,
            iconColor: context.c_white_text,
            background: context.c_red,
          ),
        ),
      ],
    );
  }
}
