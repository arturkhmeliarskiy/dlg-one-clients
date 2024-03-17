import 'package:equatable/equatable.dart';

class SipActiveCallState extends Equatable {
  const SipActiveCallState({
    this.isAudioMuted = false,
    this.isVideoMuted = false,
    this.isCallHeld = false,
    this.isSpeakerOn = true,
  });

  final bool isAudioMuted;
  final bool isVideoMuted;
  final bool isCallHeld;
  final bool isSpeakerOn;

  SipActiveCallState copyWith({
    bool? isAudioMuted,
    bool? isVideoMuted,
    bool? isCallHeld,
    bool? isSpeakerOn,
  }) {
    return SipActiveCallState(
      isAudioMuted: isAudioMuted ?? this.isAudioMuted,
      isVideoMuted: isVideoMuted ?? this.isVideoMuted,
      isCallHeld: isCallHeld ?? this.isCallHeld,
      isSpeakerOn: isSpeakerOn ?? this.isSpeakerOn,
    );
  }

  @override
  List<Object?> get props => [
        isAudioMuted,
        isVideoMuted,
        isCallHeld,
        isSpeakerOn,
      ];
}
