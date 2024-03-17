part of 'sip_bloc.dart';

@freezed
class SipEvent with _$SipEvent {
  const SipEvent._();

  /// позвонить
  const factory SipEvent.doCall(
    String chatId,
    bool isVideoMuted,
  ) = _DoCallSipEvent;

  /// повесить трубку
  const factory SipEvent.hangUp({
    OutcomingPersonalCallStatus? outcomingPersonalCallStatus,
  }) = _DoHangUpSipEvent;

  /// повесить трубку
  const factory SipEvent.forceHangUp() = _ForceHangUpSipEvent;

  /// выключить микрофон
  const factory SipEvent.muteAudio(String chatId) = _MuteAudioSipEvent;

  /// выключить видео
  const factory SipEvent.muteVideo(String chatId) = _MuteVideoSipEvent;

  /// выключить динамик/наушники
  const factory SipEvent.muteSpeaker(String chatId) = _MuteSpeakerSipEvent;

  /// переключить камеру
  const factory SipEvent.switchCamera(String chatId) = _SwitchCameraSipEvent;

  /// с сокета пришли данные
  const factory SipEvent.onSocketUpdate(List<CallMeta>? callsMeta) =
      _OnSocketUpdateSipEvent;

  /// с сокета пришли данные о том что пользователь положил трубку
  const factory SipEvent.onSocketRemoteUserHangup(int dlsId, String number) =
      _OnSocketRemoteUserHangup;

  /// с сокета пришли данные о том что пользователь отклонил звонок
  const factory SipEvent.onSocketRemoteUserReject(int dlsId, String number) =
      _OnSocketRemoteUserRejectSipEvent;

  /// с сокета пришли данные о том, что пользователь разговаривает
  const factory SipEvent.onSocketRemoteUserBusy(int dlsId, String number) =
      _OnSocketRemoteUserBusySipEvent;

  const factory SipEvent.onSocketSpeak({
    required CallMeta callMeta,
  }) = _OnSocketSpeakSipEvent;

  /// оформить новый звонок
  const factory SipEvent.onCallStateChanged(
    String callId,
    SipActiveCallState callState,
  ) = _OnCallStateChangedSipEvent;

  const factory SipEvent.onSipCallStream(SipActiveCall sipCall) =
      _OnSipCallStreamSipEvent;

  const factory SipEvent.onSipNewCall(
    SipActiveCall sipCall,
    SipActiveCallState callState,
  ) = _OnSipNewCallSipEvent;

  const factory SipEvent.onSipCallEnded(SipActiveCall sipCall) =
      _OnSipCallEndedSipEvent;

  const factory SipEvent.onSipMuted(
    SipActiveCall sipCall,
    bool isAudioMuted,
    bool isVideoMuted,
  ) = _OnSipMutedSipEvent;

  const factory SipEvent.onSipUnmuted(
    SipActiveCall sipCall,
    bool isAudioMuted,
    bool isVideoMuted,
  ) = _OnSipUnmutedSipEvent;

  /// развернуть на весь экран
  const factory SipEvent.maximize() = _MaximizeSipEvent;

  /// отклонить входящий
  const factory SipEvent.rejectIncoming() = _RejectIncomingSipEvent;

  /// линия занята
  const factory SipEvent.busyIncoming(ActiveCall activeCall) =
      _BusyIncomingSipEvent;

  /// принять входящий
  const factory SipEvent.acceptIncoming() = _AcceptIncomingSipEvent;
}
