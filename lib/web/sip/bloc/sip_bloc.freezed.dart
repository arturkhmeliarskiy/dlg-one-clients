// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sip_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SipEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String chatId, bool isVideoMuted) doCall,
    required TResult Function(
            OutcomingPersonalCallStatus? outcomingPersonalCallStatus)
        hangUp,
    required TResult Function() forceHangUp,
    required TResult Function(String chatId) muteAudio,
    required TResult Function(String chatId) muteVideo,
    required TResult Function(String chatId) muteSpeaker,
    required TResult Function(String chatId) switchCamera,
    required TResult Function(List<CallMeta>? callsMeta) onSocketUpdate,
    required TResult Function(int dlsId, String number)
        onSocketRemoteUserHangup,
    required TResult Function(int dlsId, String number)
        onSocketRemoteUserReject,
    required TResult Function(int dlsId, String number) onSocketRemoteUserBusy,
    required TResult Function(CallMeta callMeta) onSocketSpeak,
    required TResult Function(String callId, SipActiveCallState callState)
        onCallStateChanged,
    required TResult Function(SipActiveCall sipCall) onSipCallStream,
    required TResult Function(
            SipActiveCall sipCall, SipActiveCallState callState)
        onSipNewCall,
    required TResult Function(SipActiveCall sipCall) onSipCallEnded,
    required TResult Function(
            SipActiveCall sipCall, bool isAudioMuted, bool isVideoMuted)
        onSipMuted,
    required TResult Function(
            SipActiveCall sipCall, bool isAudioMuted, bool isVideoMuted)
        onSipUnmuted,
    required TResult Function() maximize,
    required TResult Function() rejectIncoming,
    required TResult Function(ActiveCall activeCall) busyIncoming,
    required TResult Function() acceptIncoming,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String chatId, bool isVideoMuted)? doCall,
    TResult? Function(OutcomingPersonalCallStatus? outcomingPersonalCallStatus)?
        hangUp,
    TResult? Function()? forceHangUp,
    TResult? Function(String chatId)? muteAudio,
    TResult? Function(String chatId)? muteVideo,
    TResult? Function(String chatId)? muteSpeaker,
    TResult? Function(String chatId)? switchCamera,
    TResult? Function(List<CallMeta>? callsMeta)? onSocketUpdate,
    TResult? Function(int dlsId, String number)? onSocketRemoteUserHangup,
    TResult? Function(int dlsId, String number)? onSocketRemoteUserReject,
    TResult? Function(int dlsId, String number)? onSocketRemoteUserBusy,
    TResult? Function(CallMeta callMeta)? onSocketSpeak,
    TResult? Function(String callId, SipActiveCallState callState)?
        onCallStateChanged,
    TResult? Function(SipActiveCall sipCall)? onSipCallStream,
    TResult? Function(SipActiveCall sipCall, SipActiveCallState callState)?
        onSipNewCall,
    TResult? Function(SipActiveCall sipCall)? onSipCallEnded,
    TResult? Function(
            SipActiveCall sipCall, bool isAudioMuted, bool isVideoMuted)?
        onSipMuted,
    TResult? Function(
            SipActiveCall sipCall, bool isAudioMuted, bool isVideoMuted)?
        onSipUnmuted,
    TResult? Function()? maximize,
    TResult? Function()? rejectIncoming,
    TResult? Function(ActiveCall activeCall)? busyIncoming,
    TResult? Function()? acceptIncoming,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String chatId, bool isVideoMuted)? doCall,
    TResult Function(OutcomingPersonalCallStatus? outcomingPersonalCallStatus)?
        hangUp,
    TResult Function()? forceHangUp,
    TResult Function(String chatId)? muteAudio,
    TResult Function(String chatId)? muteVideo,
    TResult Function(String chatId)? muteSpeaker,
    TResult Function(String chatId)? switchCamera,
    TResult Function(List<CallMeta>? callsMeta)? onSocketUpdate,
    TResult Function(int dlsId, String number)? onSocketRemoteUserHangup,
    TResult Function(int dlsId, String number)? onSocketRemoteUserReject,
    TResult Function(int dlsId, String number)? onSocketRemoteUserBusy,
    TResult Function(CallMeta callMeta)? onSocketSpeak,
    TResult Function(String callId, SipActiveCallState callState)?
        onCallStateChanged,
    TResult Function(SipActiveCall sipCall)? onSipCallStream,
    TResult Function(SipActiveCall sipCall, SipActiveCallState callState)?
        onSipNewCall,
    TResult Function(SipActiveCall sipCall)? onSipCallEnded,
    TResult Function(
            SipActiveCall sipCall, bool isAudioMuted, bool isVideoMuted)?
        onSipMuted,
    TResult Function(
            SipActiveCall sipCall, bool isAudioMuted, bool isVideoMuted)?
        onSipUnmuted,
    TResult Function()? maximize,
    TResult Function()? rejectIncoming,
    TResult Function(ActiveCall activeCall)? busyIncoming,
    TResult Function()? acceptIncoming,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DoCallSipEvent value) doCall,
    required TResult Function(_DoHangUpSipEvent value) hangUp,
    required TResult Function(_ForceHangUpSipEvent value) forceHangUp,
    required TResult Function(_MuteAudioSipEvent value) muteAudio,
    required TResult Function(_MuteVideoSipEvent value) muteVideo,
    required TResult Function(_MuteSpeakerSipEvent value) muteSpeaker,
    required TResult Function(_SwitchCameraSipEvent value) switchCamera,
    required TResult Function(_OnSocketUpdateSipEvent value) onSocketUpdate,
    required TResult Function(_OnSocketRemoteUserHangup value)
        onSocketRemoteUserHangup,
    required TResult Function(_OnSocketRemoteUserRejectSipEvent value)
        onSocketRemoteUserReject,
    required TResult Function(_OnSocketRemoteUserBusySipEvent value)
        onSocketRemoteUserBusy,
    required TResult Function(_OnSocketSpeakSipEvent value) onSocketSpeak,
    required TResult Function(_OnCallStateChangedSipEvent value)
        onCallStateChanged,
    required TResult Function(_OnSipCallStreamSipEvent value) onSipCallStream,
    required TResult Function(_OnSipNewCallSipEvent value) onSipNewCall,
    required TResult Function(_OnSipCallEndedSipEvent value) onSipCallEnded,
    required TResult Function(_OnSipMutedSipEvent value) onSipMuted,
    required TResult Function(_OnSipUnmutedSipEvent value) onSipUnmuted,
    required TResult Function(_MaximizeSipEvent value) maximize,
    required TResult Function(_RejectIncomingSipEvent value) rejectIncoming,
    required TResult Function(_BusyIncomingSipEvent value) busyIncoming,
    required TResult Function(_AcceptIncomingSipEvent value) acceptIncoming,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DoCallSipEvent value)? doCall,
    TResult? Function(_DoHangUpSipEvent value)? hangUp,
    TResult? Function(_ForceHangUpSipEvent value)? forceHangUp,
    TResult? Function(_MuteAudioSipEvent value)? muteAudio,
    TResult? Function(_MuteVideoSipEvent value)? muteVideo,
    TResult? Function(_MuteSpeakerSipEvent value)? muteSpeaker,
    TResult? Function(_SwitchCameraSipEvent value)? switchCamera,
    TResult? Function(_OnSocketUpdateSipEvent value)? onSocketUpdate,
    TResult? Function(_OnSocketRemoteUserHangup value)?
        onSocketRemoteUserHangup,
    TResult? Function(_OnSocketRemoteUserRejectSipEvent value)?
        onSocketRemoteUserReject,
    TResult? Function(_OnSocketRemoteUserBusySipEvent value)?
        onSocketRemoteUserBusy,
    TResult? Function(_OnSocketSpeakSipEvent value)? onSocketSpeak,
    TResult? Function(_OnCallStateChangedSipEvent value)? onCallStateChanged,
    TResult? Function(_OnSipCallStreamSipEvent value)? onSipCallStream,
    TResult? Function(_OnSipNewCallSipEvent value)? onSipNewCall,
    TResult? Function(_OnSipCallEndedSipEvent value)? onSipCallEnded,
    TResult? Function(_OnSipMutedSipEvent value)? onSipMuted,
    TResult? Function(_OnSipUnmutedSipEvent value)? onSipUnmuted,
    TResult? Function(_MaximizeSipEvent value)? maximize,
    TResult? Function(_RejectIncomingSipEvent value)? rejectIncoming,
    TResult? Function(_BusyIncomingSipEvent value)? busyIncoming,
    TResult? Function(_AcceptIncomingSipEvent value)? acceptIncoming,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DoCallSipEvent value)? doCall,
    TResult Function(_DoHangUpSipEvent value)? hangUp,
    TResult Function(_ForceHangUpSipEvent value)? forceHangUp,
    TResult Function(_MuteAudioSipEvent value)? muteAudio,
    TResult Function(_MuteVideoSipEvent value)? muteVideo,
    TResult Function(_MuteSpeakerSipEvent value)? muteSpeaker,
    TResult Function(_SwitchCameraSipEvent value)? switchCamera,
    TResult Function(_OnSocketUpdateSipEvent value)? onSocketUpdate,
    TResult Function(_OnSocketRemoteUserHangup value)? onSocketRemoteUserHangup,
    TResult Function(_OnSocketRemoteUserRejectSipEvent value)?
        onSocketRemoteUserReject,
    TResult Function(_OnSocketRemoteUserBusySipEvent value)?
        onSocketRemoteUserBusy,
    TResult Function(_OnSocketSpeakSipEvent value)? onSocketSpeak,
    TResult Function(_OnCallStateChangedSipEvent value)? onCallStateChanged,
    TResult Function(_OnSipCallStreamSipEvent value)? onSipCallStream,
    TResult Function(_OnSipNewCallSipEvent value)? onSipNewCall,
    TResult Function(_OnSipCallEndedSipEvent value)? onSipCallEnded,
    TResult Function(_OnSipMutedSipEvent value)? onSipMuted,
    TResult Function(_OnSipUnmutedSipEvent value)? onSipUnmuted,
    TResult Function(_MaximizeSipEvent value)? maximize,
    TResult Function(_RejectIncomingSipEvent value)? rejectIncoming,
    TResult Function(_BusyIncomingSipEvent value)? busyIncoming,
    TResult Function(_AcceptIncomingSipEvent value)? acceptIncoming,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SipEventCopyWith<$Res> {
  factory $SipEventCopyWith(SipEvent value, $Res Function(SipEvent) then) =
      _$SipEventCopyWithImpl<$Res, SipEvent>;
}

/// @nodoc
class _$SipEventCopyWithImpl<$Res, $Val extends SipEvent>
    implements $SipEventCopyWith<$Res> {
  _$SipEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_DoCallSipEventCopyWith<$Res> {
  factory _$$_DoCallSipEventCopyWith(
          _$_DoCallSipEvent value, $Res Function(_$_DoCallSipEvent) then) =
      __$$_DoCallSipEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String chatId, bool isVideoMuted});
}

/// @nodoc
class __$$_DoCallSipEventCopyWithImpl<$Res>
    extends _$SipEventCopyWithImpl<$Res, _$_DoCallSipEvent>
    implements _$$_DoCallSipEventCopyWith<$Res> {
  __$$_DoCallSipEventCopyWithImpl(
      _$_DoCallSipEvent _value, $Res Function(_$_DoCallSipEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatId = null,
    Object? isVideoMuted = null,
  }) {
    return _then(_$_DoCallSipEvent(
      null == chatId
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as String,
      null == isVideoMuted
          ? _value.isVideoMuted
          : isVideoMuted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_DoCallSipEvent extends _DoCallSipEvent with DiagnosticableTreeMixin {
  const _$_DoCallSipEvent(this.chatId, this.isVideoMuted) : super._();

  @override
  final String chatId;
  @override
  final bool isVideoMuted;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SipEvent.doCall(chatId: $chatId, isVideoMuted: $isVideoMuted)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SipEvent.doCall'))
      ..add(DiagnosticsProperty('chatId', chatId))
      ..add(DiagnosticsProperty('isVideoMuted', isVideoMuted));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DoCallSipEvent &&
            (identical(other.chatId, chatId) || other.chatId == chatId) &&
            (identical(other.isVideoMuted, isVideoMuted) ||
                other.isVideoMuted == isVideoMuted));
  }

  @override
  int get hashCode => Object.hash(runtimeType, chatId, isVideoMuted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DoCallSipEventCopyWith<_$_DoCallSipEvent> get copyWith =>
      __$$_DoCallSipEventCopyWithImpl<_$_DoCallSipEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String chatId, bool isVideoMuted) doCall,
    required TResult Function(
            OutcomingPersonalCallStatus? outcomingPersonalCallStatus)
        hangUp,
    required TResult Function() forceHangUp,
    required TResult Function(String chatId) muteAudio,
    required TResult Function(String chatId) muteVideo,
    required TResult Function(String chatId) muteSpeaker,
    required TResult Function(String chatId) switchCamera,
    required TResult Function(List<CallMeta>? callsMeta) onSocketUpdate,
    required TResult Function(int dlsId, String number)
        onSocketRemoteUserHangup,
    required TResult Function(int dlsId, String number)
        onSocketRemoteUserReject,
    required TResult Function(int dlsId, String number) onSocketRemoteUserBusy,
    required TResult Function(CallMeta callMeta) onSocketSpeak,
    required TResult Function(String callId, SipActiveCallState callState)
        onCallStateChanged,
    required TResult Function(SipActiveCall sipCall) onSipCallStream,
    required TResult Function(
            SipActiveCall sipCall, SipActiveCallState callState)
        onSipNewCall,
    required TResult Function(SipActiveCall sipCall) onSipCallEnded,
    required TResult Function(
            SipActiveCall sipCall, bool isAudioMuted, bool isVideoMuted)
        onSipMuted,
    required TResult Function(
            SipActiveCall sipCall, bool isAudioMuted, bool isVideoMuted)
        onSipUnmuted,
    required TResult Function() maximize,
    required TResult Function() rejectIncoming,
    required TResult Function(ActiveCall activeCall) busyIncoming,
    required TResult Function() acceptIncoming,
  }) {
    return doCall(chatId, isVideoMuted);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String chatId, bool isVideoMuted)? doCall,
    TResult? Function(OutcomingPersonalCallStatus? outcomingPersonalCallStatus)?
        hangUp,
    TResult? Function()? forceHangUp,
    TResult? Function(String chatId)? muteAudio,
    TResult? Function(String chatId)? muteVideo,
    TResult? Function(String chatId)? muteSpeaker,
    TResult? Function(String chatId)? switchCamera,
    TResult? Function(List<CallMeta>? callsMeta)? onSocketUpdate,
    TResult? Function(int dlsId, String number)? onSocketRemoteUserHangup,
    TResult? Function(int dlsId, String number)? onSocketRemoteUserReject,
    TResult? Function(int dlsId, String number)? onSocketRemoteUserBusy,
    TResult? Function(CallMeta callMeta)? onSocketSpeak,
    TResult? Function(String callId, SipActiveCallState callState)?
        onCallStateChanged,
    TResult? Function(SipActiveCall sipCall)? onSipCallStream,
    TResult? Function(SipActiveCall sipCall, SipActiveCallState callState)?
        onSipNewCall,
    TResult? Function(SipActiveCall sipCall)? onSipCallEnded,
    TResult? Function(
            SipActiveCall sipCall, bool isAudioMuted, bool isVideoMuted)?
        onSipMuted,
    TResult? Function(
            SipActiveCall sipCall, bool isAudioMuted, bool isVideoMuted)?
        onSipUnmuted,
    TResult? Function()? maximize,
    TResult? Function()? rejectIncoming,
    TResult? Function(ActiveCall activeCall)? busyIncoming,
    TResult? Function()? acceptIncoming,
  }) {
    return doCall?.call(chatId, isVideoMuted);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String chatId, bool isVideoMuted)? doCall,
    TResult Function(OutcomingPersonalCallStatus? outcomingPersonalCallStatus)?
        hangUp,
    TResult Function()? forceHangUp,
    TResult Function(String chatId)? muteAudio,
    TResult Function(String chatId)? muteVideo,
    TResult Function(String chatId)? muteSpeaker,
    TResult Function(String chatId)? switchCamera,
    TResult Function(List<CallMeta>? callsMeta)? onSocketUpdate,
    TResult Function(int dlsId, String number)? onSocketRemoteUserHangup,
    TResult Function(int dlsId, String number)? onSocketRemoteUserReject,
    TResult Function(int dlsId, String number)? onSocketRemoteUserBusy,
    TResult Function(CallMeta callMeta)? onSocketSpeak,
    TResult Function(String callId, SipActiveCallState callState)?
        onCallStateChanged,
    TResult Function(SipActiveCall sipCall)? onSipCallStream,
    TResult Function(SipActiveCall sipCall, SipActiveCallState callState)?
        onSipNewCall,
    TResult Function(SipActiveCall sipCall)? onSipCallEnded,
    TResult Function(
            SipActiveCall sipCall, bool isAudioMuted, bool isVideoMuted)?
        onSipMuted,
    TResult Function(
            SipActiveCall sipCall, bool isAudioMuted, bool isVideoMuted)?
        onSipUnmuted,
    TResult Function()? maximize,
    TResult Function()? rejectIncoming,
    TResult Function(ActiveCall activeCall)? busyIncoming,
    TResult Function()? acceptIncoming,
    required TResult orElse(),
  }) {
    if (doCall != null) {
      return doCall(chatId, isVideoMuted);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DoCallSipEvent value) doCall,
    required TResult Function(_DoHangUpSipEvent value) hangUp,
    required TResult Function(_ForceHangUpSipEvent value) forceHangUp,
    required TResult Function(_MuteAudioSipEvent value) muteAudio,
    required TResult Function(_MuteVideoSipEvent value) muteVideo,
    required TResult Function(_MuteSpeakerSipEvent value) muteSpeaker,
    required TResult Function(_SwitchCameraSipEvent value) switchCamera,
    required TResult Function(_OnSocketUpdateSipEvent value) onSocketUpdate,
    required TResult Function(_OnSocketRemoteUserHangup value)
        onSocketRemoteUserHangup,
    required TResult Function(_OnSocketRemoteUserRejectSipEvent value)
        onSocketRemoteUserReject,
    required TResult Function(_OnSocketRemoteUserBusySipEvent value)
        onSocketRemoteUserBusy,
    required TResult Function(_OnSocketSpeakSipEvent value) onSocketSpeak,
    required TResult Function(_OnCallStateChangedSipEvent value)
        onCallStateChanged,
    required TResult Function(_OnSipCallStreamSipEvent value) onSipCallStream,
    required TResult Function(_OnSipNewCallSipEvent value) onSipNewCall,
    required TResult Function(_OnSipCallEndedSipEvent value) onSipCallEnded,
    required TResult Function(_OnSipMutedSipEvent value) onSipMuted,
    required TResult Function(_OnSipUnmutedSipEvent value) onSipUnmuted,
    required TResult Function(_MaximizeSipEvent value) maximize,
    required TResult Function(_RejectIncomingSipEvent value) rejectIncoming,
    required TResult Function(_BusyIncomingSipEvent value) busyIncoming,
    required TResult Function(_AcceptIncomingSipEvent value) acceptIncoming,
  }) {
    return doCall(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DoCallSipEvent value)? doCall,
    TResult? Function(_DoHangUpSipEvent value)? hangUp,
    TResult? Function(_ForceHangUpSipEvent value)? forceHangUp,
    TResult? Function(_MuteAudioSipEvent value)? muteAudio,
    TResult? Function(_MuteVideoSipEvent value)? muteVideo,
    TResult? Function(_MuteSpeakerSipEvent value)? muteSpeaker,
    TResult? Function(_SwitchCameraSipEvent value)? switchCamera,
    TResult? Function(_OnSocketUpdateSipEvent value)? onSocketUpdate,
    TResult? Function(_OnSocketRemoteUserHangup value)?
        onSocketRemoteUserHangup,
    TResult? Function(_OnSocketRemoteUserRejectSipEvent value)?
        onSocketRemoteUserReject,
    TResult? Function(_OnSocketRemoteUserBusySipEvent value)?
        onSocketRemoteUserBusy,
    TResult? Function(_OnSocketSpeakSipEvent value)? onSocketSpeak,
    TResult? Function(_OnCallStateChangedSipEvent value)? onCallStateChanged,
    TResult? Function(_OnSipCallStreamSipEvent value)? onSipCallStream,
    TResult? Function(_OnSipNewCallSipEvent value)? onSipNewCall,
    TResult? Function(_OnSipCallEndedSipEvent value)? onSipCallEnded,
    TResult? Function(_OnSipMutedSipEvent value)? onSipMuted,
    TResult? Function(_OnSipUnmutedSipEvent value)? onSipUnmuted,
    TResult? Function(_MaximizeSipEvent value)? maximize,
    TResult? Function(_RejectIncomingSipEvent value)? rejectIncoming,
    TResult? Function(_BusyIncomingSipEvent value)? busyIncoming,
    TResult? Function(_AcceptIncomingSipEvent value)? acceptIncoming,
  }) {
    return doCall?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DoCallSipEvent value)? doCall,
    TResult Function(_DoHangUpSipEvent value)? hangUp,
    TResult Function(_ForceHangUpSipEvent value)? forceHangUp,
    TResult Function(_MuteAudioSipEvent value)? muteAudio,
    TResult Function(_MuteVideoSipEvent value)? muteVideo,
    TResult Function(_MuteSpeakerSipEvent value)? muteSpeaker,
    TResult Function(_SwitchCameraSipEvent value)? switchCamera,
    TResult Function(_OnSocketUpdateSipEvent value)? onSocketUpdate,
    TResult Function(_OnSocketRemoteUserHangup value)? onSocketRemoteUserHangup,
    TResult Function(_OnSocketRemoteUserRejectSipEvent value)?
        onSocketRemoteUserReject,
    TResult Function(_OnSocketRemoteUserBusySipEvent value)?
        onSocketRemoteUserBusy,
    TResult Function(_OnSocketSpeakSipEvent value)? onSocketSpeak,
    TResult Function(_OnCallStateChangedSipEvent value)? onCallStateChanged,
    TResult Function(_OnSipCallStreamSipEvent value)? onSipCallStream,
    TResult Function(_OnSipNewCallSipEvent value)? onSipNewCall,
    TResult Function(_OnSipCallEndedSipEvent value)? onSipCallEnded,
    TResult Function(_OnSipMutedSipEvent value)? onSipMuted,
    TResult Function(_OnSipUnmutedSipEvent value)? onSipUnmuted,
    TResult Function(_MaximizeSipEvent value)? maximize,
    TResult Function(_RejectIncomingSipEvent value)? rejectIncoming,
    TResult Function(_BusyIncomingSipEvent value)? busyIncoming,
    TResult Function(_AcceptIncomingSipEvent value)? acceptIncoming,
    required TResult orElse(),
  }) {
    if (doCall != null) {
      return doCall(this);
    }
    return orElse();
  }
}

abstract class _DoCallSipEvent extends SipEvent {
  const factory _DoCallSipEvent(final String chatId, final bool isVideoMuted) =
      _$_DoCallSipEvent;
  const _DoCallSipEvent._() : super._();

  String get chatId;
  bool get isVideoMuted;
  @JsonKey(ignore: true)
  _$$_DoCallSipEventCopyWith<_$_DoCallSipEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DoHangUpSipEventCopyWith<$Res> {
  factory _$$_DoHangUpSipEventCopyWith(
          _$_DoHangUpSipEvent value, $Res Function(_$_DoHangUpSipEvent) then) =
      __$$_DoHangUpSipEventCopyWithImpl<$Res>;
  @useResult
  $Res call({OutcomingPersonalCallStatus? outcomingPersonalCallStatus});

  $OutcomingPersonalCallStatusCopyWith<$Res>? get outcomingPersonalCallStatus;
}

/// @nodoc
class __$$_DoHangUpSipEventCopyWithImpl<$Res>
    extends _$SipEventCopyWithImpl<$Res, _$_DoHangUpSipEvent>
    implements _$$_DoHangUpSipEventCopyWith<$Res> {
  __$$_DoHangUpSipEventCopyWithImpl(
      _$_DoHangUpSipEvent _value, $Res Function(_$_DoHangUpSipEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? outcomingPersonalCallStatus = freezed,
  }) {
    return _then(_$_DoHangUpSipEvent(
      outcomingPersonalCallStatus: freezed == outcomingPersonalCallStatus
          ? _value.outcomingPersonalCallStatus
          : outcomingPersonalCallStatus // ignore: cast_nullable_to_non_nullable
              as OutcomingPersonalCallStatus?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $OutcomingPersonalCallStatusCopyWith<$Res>? get outcomingPersonalCallStatus {
    if (_value.outcomingPersonalCallStatus == null) {
      return null;
    }

    return $OutcomingPersonalCallStatusCopyWith<$Res>(
        _value.outcomingPersonalCallStatus!, (value) {
      return _then(_value.copyWith(outcomingPersonalCallStatus: value));
    });
  }
}

/// @nodoc

class _$_DoHangUpSipEvent extends _DoHangUpSipEvent
    with DiagnosticableTreeMixin {
  const _$_DoHangUpSipEvent({this.outcomingPersonalCallStatus}) : super._();

  @override
  final OutcomingPersonalCallStatus? outcomingPersonalCallStatus;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SipEvent.hangUp(outcomingPersonalCallStatus: $outcomingPersonalCallStatus)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SipEvent.hangUp'))
      ..add(DiagnosticsProperty(
          'outcomingPersonalCallStatus', outcomingPersonalCallStatus));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DoHangUpSipEvent &&
            (identical(other.outcomingPersonalCallStatus,
                    outcomingPersonalCallStatus) ||
                other.outcomingPersonalCallStatus ==
                    outcomingPersonalCallStatus));
  }

  @override
  int get hashCode => Object.hash(runtimeType, outcomingPersonalCallStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DoHangUpSipEventCopyWith<_$_DoHangUpSipEvent> get copyWith =>
      __$$_DoHangUpSipEventCopyWithImpl<_$_DoHangUpSipEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String chatId, bool isVideoMuted) doCall,
    required TResult Function(
            OutcomingPersonalCallStatus? outcomingPersonalCallStatus)
        hangUp,
    required TResult Function() forceHangUp,
    required TResult Function(String chatId) muteAudio,
    required TResult Function(String chatId) muteVideo,
    required TResult Function(String chatId) muteSpeaker,
    required TResult Function(String chatId) switchCamera,
    required TResult Function(List<CallMeta>? callsMeta) onSocketUpdate,
    required TResult Function(int dlsId, String number)
        onSocketRemoteUserHangup,
    required TResult Function(int dlsId, String number)
        onSocketRemoteUserReject,
    required TResult Function(int dlsId, String number) onSocketRemoteUserBusy,
    required TResult Function(CallMeta callMeta) onSocketSpeak,
    required TResult Function(String callId, SipActiveCallState callState)
        onCallStateChanged,
    required TResult Function(SipActiveCall sipCall) onSipCallStream,
    required TResult Function(
            SipActiveCall sipCall, SipActiveCallState callState)
        onSipNewCall,
    required TResult Function(SipActiveCall sipCall) onSipCallEnded,
    required TResult Function(
            SipActiveCall sipCall, bool isAudioMuted, bool isVideoMuted)
        onSipMuted,
    required TResult Function(
            SipActiveCall sipCall, bool isAudioMuted, bool isVideoMuted)
        onSipUnmuted,
    required TResult Function() maximize,
    required TResult Function() rejectIncoming,
    required TResult Function(ActiveCall activeCall) busyIncoming,
    required TResult Function() acceptIncoming,
  }) {
    return hangUp(outcomingPersonalCallStatus);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String chatId, bool isVideoMuted)? doCall,
    TResult? Function(OutcomingPersonalCallStatus? outcomingPersonalCallStatus)?
        hangUp,
    TResult? Function()? forceHangUp,
    TResult? Function(String chatId)? muteAudio,
    TResult? Function(String chatId)? muteVideo,
    TResult? Function(String chatId)? muteSpeaker,
    TResult? Function(String chatId)? switchCamera,
    TResult? Function(List<CallMeta>? callsMeta)? onSocketUpdate,
    TResult? Function(int dlsId, String number)? onSocketRemoteUserHangup,
    TResult? Function(int dlsId, String number)? onSocketRemoteUserReject,
    TResult? Function(int dlsId, String number)? onSocketRemoteUserBusy,
    TResult? Function(CallMeta callMeta)? onSocketSpeak,
    TResult? Function(String callId, SipActiveCallState callState)?
        onCallStateChanged,
    TResult? Function(SipActiveCall sipCall)? onSipCallStream,
    TResult? Function(SipActiveCall sipCall, SipActiveCallState callState)?
        onSipNewCall,
    TResult? Function(SipActiveCall sipCall)? onSipCallEnded,
    TResult? Function(
            SipActiveCall sipCall, bool isAudioMuted, bool isVideoMuted)?
        onSipMuted,
    TResult? Function(
            SipActiveCall sipCall, bool isAudioMuted, bool isVideoMuted)?
        onSipUnmuted,
    TResult? Function()? maximize,
    TResult? Function()? rejectIncoming,
    TResult? Function(ActiveCall activeCall)? busyIncoming,
    TResult? Function()? acceptIncoming,
  }) {
    return hangUp?.call(outcomingPersonalCallStatus);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String chatId, bool isVideoMuted)? doCall,
    TResult Function(OutcomingPersonalCallStatus? outcomingPersonalCallStatus)?
        hangUp,
    TResult Function()? forceHangUp,
    TResult Function(String chatId)? muteAudio,
    TResult Function(String chatId)? muteVideo,
    TResult Function(String chatId)? muteSpeaker,
    TResult Function(String chatId)? switchCamera,
    TResult Function(List<CallMeta>? callsMeta)? onSocketUpdate,
    TResult Function(int dlsId, String number)? onSocketRemoteUserHangup,
    TResult Function(int dlsId, String number)? onSocketRemoteUserReject,
    TResult Function(int dlsId, String number)? onSocketRemoteUserBusy,
    TResult Function(CallMeta callMeta)? onSocketSpeak,
    TResult Function(String callId, SipActiveCallState callState)?
        onCallStateChanged,
    TResult Function(SipActiveCall sipCall)? onSipCallStream,
    TResult Function(SipActiveCall sipCall, SipActiveCallState callState)?
        onSipNewCall,
    TResult Function(SipActiveCall sipCall)? onSipCallEnded,
    TResult Function(
            SipActiveCall sipCall, bool isAudioMuted, bool isVideoMuted)?
        onSipMuted,
    TResult Function(
            SipActiveCall sipCall, bool isAudioMuted, bool isVideoMuted)?
        onSipUnmuted,
    TResult Function()? maximize,
    TResult Function()? rejectIncoming,
    TResult Function(ActiveCall activeCall)? busyIncoming,
    TResult Function()? acceptIncoming,
    required TResult orElse(),
  }) {
    if (hangUp != null) {
      return hangUp(outcomingPersonalCallStatus);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DoCallSipEvent value) doCall,
    required TResult Function(_DoHangUpSipEvent value) hangUp,
    required TResult Function(_ForceHangUpSipEvent value) forceHangUp,
    required TResult Function(_MuteAudioSipEvent value) muteAudio,
    required TResult Function(_MuteVideoSipEvent value) muteVideo,
    required TResult Function(_MuteSpeakerSipEvent value) muteSpeaker,
    required TResult Function(_SwitchCameraSipEvent value) switchCamera,
    required TResult Function(_OnSocketUpdateSipEvent value) onSocketUpdate,
    required TResult Function(_OnSocketRemoteUserHangup value)
        onSocketRemoteUserHangup,
    required TResult Function(_OnSocketRemoteUserRejectSipEvent value)
        onSocketRemoteUserReject,
    required TResult Function(_OnSocketRemoteUserBusySipEvent value)
        onSocketRemoteUserBusy,
    required TResult Function(_OnSocketSpeakSipEvent value) onSocketSpeak,
    required TResult Function(_OnCallStateChangedSipEvent value)
        onCallStateChanged,
    required TResult Function(_OnSipCallStreamSipEvent value) onSipCallStream,
    required TResult Function(_OnSipNewCallSipEvent value) onSipNewCall,
    required TResult Function(_OnSipCallEndedSipEvent value) onSipCallEnded,
    required TResult Function(_OnSipMutedSipEvent value) onSipMuted,
    required TResult Function(_OnSipUnmutedSipEvent value) onSipUnmuted,
    required TResult Function(_MaximizeSipEvent value) maximize,
    required TResult Function(_RejectIncomingSipEvent value) rejectIncoming,
    required TResult Function(_BusyIncomingSipEvent value) busyIncoming,
    required TResult Function(_AcceptIncomingSipEvent value) acceptIncoming,
  }) {
    return hangUp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DoCallSipEvent value)? doCall,
    TResult? Function(_DoHangUpSipEvent value)? hangUp,
    TResult? Function(_ForceHangUpSipEvent value)? forceHangUp,
    TResult? Function(_MuteAudioSipEvent value)? muteAudio,
    TResult? Function(_MuteVideoSipEvent value)? muteVideo,
    TResult? Function(_MuteSpeakerSipEvent value)? muteSpeaker,
    TResult? Function(_SwitchCameraSipEvent value)? switchCamera,
    TResult? Function(_OnSocketUpdateSipEvent value)? onSocketUpdate,
    TResult? Function(_OnSocketRemoteUserHangup value)?
        onSocketRemoteUserHangup,
    TResult? Function(_OnSocketRemoteUserRejectSipEvent value)?
        onSocketRemoteUserReject,
    TResult? Function(_OnSocketRemoteUserBusySipEvent value)?
        onSocketRemoteUserBusy,
    TResult? Function(_OnSocketSpeakSipEvent value)? onSocketSpeak,
    TResult? Function(_OnCallStateChangedSipEvent value)? onCallStateChanged,
    TResult? Function(_OnSipCallStreamSipEvent value)? onSipCallStream,
    TResult? Function(_OnSipNewCallSipEvent value)? onSipNewCall,
    TResult? Function(_OnSipCallEndedSipEvent value)? onSipCallEnded,
    TResult? Function(_OnSipMutedSipEvent value)? onSipMuted,
    TResult? Function(_OnSipUnmutedSipEvent value)? onSipUnmuted,
    TResult? Function(_MaximizeSipEvent value)? maximize,
    TResult? Function(_RejectIncomingSipEvent value)? rejectIncoming,
    TResult? Function(_BusyIncomingSipEvent value)? busyIncoming,
    TResult? Function(_AcceptIncomingSipEvent value)? acceptIncoming,
  }) {
    return hangUp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DoCallSipEvent value)? doCall,
    TResult Function(_DoHangUpSipEvent value)? hangUp,
    TResult Function(_ForceHangUpSipEvent value)? forceHangUp,
    TResult Function(_MuteAudioSipEvent value)? muteAudio,
    TResult Function(_MuteVideoSipEvent value)? muteVideo,
    TResult Function(_MuteSpeakerSipEvent value)? muteSpeaker,
    TResult Function(_SwitchCameraSipEvent value)? switchCamera,
    TResult Function(_OnSocketUpdateSipEvent value)? onSocketUpdate,
    TResult Function(_OnSocketRemoteUserHangup value)? onSocketRemoteUserHangup,
    TResult Function(_OnSocketRemoteUserRejectSipEvent value)?
        onSocketRemoteUserReject,
    TResult Function(_OnSocketRemoteUserBusySipEvent value)?
        onSocketRemoteUserBusy,
    TResult Function(_OnSocketSpeakSipEvent value)? onSocketSpeak,
    TResult Function(_OnCallStateChangedSipEvent value)? onCallStateChanged,
    TResult Function(_OnSipCallStreamSipEvent value)? onSipCallStream,
    TResult Function(_OnSipNewCallSipEvent value)? onSipNewCall,
    TResult Function(_OnSipCallEndedSipEvent value)? onSipCallEnded,
    TResult Function(_OnSipMutedSipEvent value)? onSipMuted,
    TResult Function(_OnSipUnmutedSipEvent value)? onSipUnmuted,
    TResult Function(_MaximizeSipEvent value)? maximize,
    TResult Function(_RejectIncomingSipEvent value)? rejectIncoming,
    TResult Function(_BusyIncomingSipEvent value)? busyIncoming,
    TResult Function(_AcceptIncomingSipEvent value)? acceptIncoming,
    required TResult orElse(),
  }) {
    if (hangUp != null) {
      return hangUp(this);
    }
    return orElse();
  }
}

abstract class _DoHangUpSipEvent extends SipEvent {
  const factory _DoHangUpSipEvent(
          {final OutcomingPersonalCallStatus? outcomingPersonalCallStatus}) =
      _$_DoHangUpSipEvent;
  const _DoHangUpSipEvent._() : super._();

  OutcomingPersonalCallStatus? get outcomingPersonalCallStatus;
  @JsonKey(ignore: true)
  _$$_DoHangUpSipEventCopyWith<_$_DoHangUpSipEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ForceHangUpSipEventCopyWith<$Res> {
  factory _$$_ForceHangUpSipEventCopyWith(_$_ForceHangUpSipEvent value,
          $Res Function(_$_ForceHangUpSipEvent) then) =
      __$$_ForceHangUpSipEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ForceHangUpSipEventCopyWithImpl<$Res>
    extends _$SipEventCopyWithImpl<$Res, _$_ForceHangUpSipEvent>
    implements _$$_ForceHangUpSipEventCopyWith<$Res> {
  __$$_ForceHangUpSipEventCopyWithImpl(_$_ForceHangUpSipEvent _value,
      $Res Function(_$_ForceHangUpSipEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ForceHangUpSipEvent extends _ForceHangUpSipEvent
    with DiagnosticableTreeMixin {
  const _$_ForceHangUpSipEvent() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SipEvent.forceHangUp()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'SipEvent.forceHangUp'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ForceHangUpSipEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String chatId, bool isVideoMuted) doCall,
    required TResult Function(
            OutcomingPersonalCallStatus? outcomingPersonalCallStatus)
        hangUp,
    required TResult Function() forceHangUp,
    required TResult Function(String chatId) muteAudio,
    required TResult Function(String chatId) muteVideo,
    required TResult Function(String chatId) muteSpeaker,
    required TResult Function(String chatId) switchCamera,
    required TResult Function(List<CallMeta>? callsMeta) onSocketUpdate,
    required TResult Function(int dlsId, String number)
        onSocketRemoteUserHangup,
    required TResult Function(int dlsId, String number)
        onSocketRemoteUserReject,
    required TResult Function(int dlsId, String number) onSocketRemoteUserBusy,
    required TResult Function(CallMeta callMeta) onSocketSpeak,
    required TResult Function(String callId, SipActiveCallState callState)
        onCallStateChanged,
    required TResult Function(SipActiveCall sipCall) onSipCallStream,
    required TResult Function(
            SipActiveCall sipCall, SipActiveCallState callState)
        onSipNewCall,
    required TResult Function(SipActiveCall sipCall) onSipCallEnded,
    required TResult Function(
            SipActiveCall sipCall, bool isAudioMuted, bool isVideoMuted)
        onSipMuted,
    required TResult Function(
            SipActiveCall sipCall, bool isAudioMuted, bool isVideoMuted)
        onSipUnmuted,
    required TResult Function() maximize,
    required TResult Function() rejectIncoming,
    required TResult Function(ActiveCall activeCall) busyIncoming,
    required TResult Function() acceptIncoming,
  }) {
    return forceHangUp();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String chatId, bool isVideoMuted)? doCall,
    TResult? Function(OutcomingPersonalCallStatus? outcomingPersonalCallStatus)?
        hangUp,
    TResult? Function()? forceHangUp,
    TResult? Function(String chatId)? muteAudio,
    TResult? Function(String chatId)? muteVideo,
    TResult? Function(String chatId)? muteSpeaker,
    TResult? Function(String chatId)? switchCamera,
    TResult? Function(List<CallMeta>? callsMeta)? onSocketUpdate,
    TResult? Function(int dlsId, String number)? onSocketRemoteUserHangup,
    TResult? Function(int dlsId, String number)? onSocketRemoteUserReject,
    TResult? Function(int dlsId, String number)? onSocketRemoteUserBusy,
    TResult? Function(CallMeta callMeta)? onSocketSpeak,
    TResult? Function(String callId, SipActiveCallState callState)?
        onCallStateChanged,
    TResult? Function(SipActiveCall sipCall)? onSipCallStream,
    TResult? Function(SipActiveCall sipCall, SipActiveCallState callState)?
        onSipNewCall,
    TResult? Function(SipActiveCall sipCall)? onSipCallEnded,
    TResult? Function(
            SipActiveCall sipCall, bool isAudioMuted, bool isVideoMuted)?
        onSipMuted,
    TResult? Function(
            SipActiveCall sipCall, bool isAudioMuted, bool isVideoMuted)?
        onSipUnmuted,
    TResult? Function()? maximize,
    TResult? Function()? rejectIncoming,
    TResult? Function(ActiveCall activeCall)? busyIncoming,
    TResult? Function()? acceptIncoming,
  }) {
    return forceHangUp?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String chatId, bool isVideoMuted)? doCall,
    TResult Function(OutcomingPersonalCallStatus? outcomingPersonalCallStatus)?
        hangUp,
    TResult Function()? forceHangUp,
    TResult Function(String chatId)? muteAudio,
    TResult Function(String chatId)? muteVideo,
    TResult Function(String chatId)? muteSpeaker,
    TResult Function(String chatId)? switchCamera,
    TResult Function(List<CallMeta>? callsMeta)? onSocketUpdate,
    TResult Function(int dlsId, String number)? onSocketRemoteUserHangup,
    TResult Function(int dlsId, String number)? onSocketRemoteUserReject,
    TResult Function(int dlsId, String number)? onSocketRemoteUserBusy,
    TResult Function(CallMeta callMeta)? onSocketSpeak,
    TResult Function(String callId, SipActiveCallState callState)?
        onCallStateChanged,
    TResult Function(SipActiveCall sipCall)? onSipCallStream,
    TResult Function(SipActiveCall sipCall, SipActiveCallState callState)?
        onSipNewCall,
    TResult Function(SipActiveCall sipCall)? onSipCallEnded,
    TResult Function(
            SipActiveCall sipCall, bool isAudioMuted, bool isVideoMuted)?
        onSipMuted,
    TResult Function(
            SipActiveCall sipCall, bool isAudioMuted, bool isVideoMuted)?
        onSipUnmuted,
    TResult Function()? maximize,
    TResult Function()? rejectIncoming,
    TResult Function(ActiveCall activeCall)? busyIncoming,
    TResult Function()? acceptIncoming,
    required TResult orElse(),
  }) {
    if (forceHangUp != null) {
      return forceHangUp();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DoCallSipEvent value) doCall,
    required TResult Function(_DoHangUpSipEvent value) hangUp,
    required TResult Function(_ForceHangUpSipEvent value) forceHangUp,
    required TResult Function(_MuteAudioSipEvent value) muteAudio,
    required TResult Function(_MuteVideoSipEvent value) muteVideo,
    required TResult Function(_MuteSpeakerSipEvent value) muteSpeaker,
    required TResult Function(_SwitchCameraSipEvent value) switchCamera,
    required TResult Function(_OnSocketUpdateSipEvent value) onSocketUpdate,
    required TResult Function(_OnSocketRemoteUserHangup value)
        onSocketRemoteUserHangup,
    required TResult Function(_OnSocketRemoteUserRejectSipEvent value)
        onSocketRemoteUserReject,
    required TResult Function(_OnSocketRemoteUserBusySipEvent value)
        onSocketRemoteUserBusy,
    required TResult Function(_OnSocketSpeakSipEvent value) onSocketSpeak,
    required TResult Function(_OnCallStateChangedSipEvent value)
        onCallStateChanged,
    required TResult Function(_OnSipCallStreamSipEvent value) onSipCallStream,
    required TResult Function(_OnSipNewCallSipEvent value) onSipNewCall,
    required TResult Function(_OnSipCallEndedSipEvent value) onSipCallEnded,
    required TResult Function(_OnSipMutedSipEvent value) onSipMuted,
    required TResult Function(_OnSipUnmutedSipEvent value) onSipUnmuted,
    required TResult Function(_MaximizeSipEvent value) maximize,
    required TResult Function(_RejectIncomingSipEvent value) rejectIncoming,
    required TResult Function(_BusyIncomingSipEvent value) busyIncoming,
    required TResult Function(_AcceptIncomingSipEvent value) acceptIncoming,
  }) {
    return forceHangUp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DoCallSipEvent value)? doCall,
    TResult? Function(_DoHangUpSipEvent value)? hangUp,
    TResult? Function(_ForceHangUpSipEvent value)? forceHangUp,
    TResult? Function(_MuteAudioSipEvent value)? muteAudio,
    TResult? Function(_MuteVideoSipEvent value)? muteVideo,
    TResult? Function(_MuteSpeakerSipEvent value)? muteSpeaker,
    TResult? Function(_SwitchCameraSipEvent value)? switchCamera,
    TResult? Function(_OnSocketUpdateSipEvent value)? onSocketUpdate,
    TResult? Function(_OnSocketRemoteUserHangup value)?
        onSocketRemoteUserHangup,
    TResult? Function(_OnSocketRemoteUserRejectSipEvent value)?
        onSocketRemoteUserReject,
    TResult? Function(_OnSocketRemoteUserBusySipEvent value)?
        onSocketRemoteUserBusy,
    TResult? Function(_OnSocketSpeakSipEvent value)? onSocketSpeak,
    TResult? Function(_OnCallStateChangedSipEvent value)? onCallStateChanged,
    TResult? Function(_OnSipCallStreamSipEvent value)? onSipCallStream,
    TResult? Function(_OnSipNewCallSipEvent value)? onSipNewCall,
    TResult? Function(_OnSipCallEndedSipEvent value)? onSipCallEnded,
    TResult? Function(_OnSipMutedSipEvent value)? onSipMuted,
    TResult? Function(_OnSipUnmutedSipEvent value)? onSipUnmuted,
    TResult? Function(_MaximizeSipEvent value)? maximize,
    TResult? Function(_RejectIncomingSipEvent value)? rejectIncoming,
    TResult? Function(_BusyIncomingSipEvent value)? busyIncoming,
    TResult? Function(_AcceptIncomingSipEvent value)? acceptIncoming,
  }) {
    return forceHangUp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DoCallSipEvent value)? doCall,
    TResult Function(_DoHangUpSipEvent value)? hangUp,
    TResult Function(_ForceHangUpSipEvent value)? forceHangUp,
    TResult Function(_MuteAudioSipEvent value)? muteAudio,
    TResult Function(_MuteVideoSipEvent value)? muteVideo,
    TResult Function(_MuteSpeakerSipEvent value)? muteSpeaker,
    TResult Function(_SwitchCameraSipEvent value)? switchCamera,
    TResult Function(_OnSocketUpdateSipEvent value)? onSocketUpdate,
    TResult Function(_OnSocketRemoteUserHangup value)? onSocketRemoteUserHangup,
    TResult Function(_OnSocketRemoteUserRejectSipEvent value)?
        onSocketRemoteUserReject,
    TResult Function(_OnSocketRemoteUserBusySipEvent value)?
        onSocketRemoteUserBusy,
    TResult Function(_OnSocketSpeakSipEvent value)? onSocketSpeak,
    TResult Function(_OnCallStateChangedSipEvent value)? onCallStateChanged,
    TResult Function(_OnSipCallStreamSipEvent value)? onSipCallStream,
    TResult Function(_OnSipNewCallSipEvent value)? onSipNewCall,
    TResult Function(_OnSipCallEndedSipEvent value)? onSipCallEnded,
    TResult Function(_OnSipMutedSipEvent value)? onSipMuted,
    TResult Function(_OnSipUnmutedSipEvent value)? onSipUnmuted,
    TResult Function(_MaximizeSipEvent value)? maximize,
    TResult Function(_RejectIncomingSipEvent value)? rejectIncoming,
    TResult Function(_BusyIncomingSipEvent value)? busyIncoming,
    TResult Function(_AcceptIncomingSipEvent value)? acceptIncoming,
    required TResult orElse(),
  }) {
    if (forceHangUp != null) {
      return forceHangUp(this);
    }
    return orElse();
  }
}

abstract class _ForceHangUpSipEvent extends SipEvent {
  const factory _ForceHangUpSipEvent() = _$_ForceHangUpSipEvent;
  const _ForceHangUpSipEvent._() : super._();
}

/// @nodoc
abstract class _$$_MuteAudioSipEventCopyWith<$Res> {
  factory _$$_MuteAudioSipEventCopyWith(_$_MuteAudioSipEvent value,
          $Res Function(_$_MuteAudioSipEvent) then) =
      __$$_MuteAudioSipEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String chatId});
}

/// @nodoc
class __$$_MuteAudioSipEventCopyWithImpl<$Res>
    extends _$SipEventCopyWithImpl<$Res, _$_MuteAudioSipEvent>
    implements _$$_MuteAudioSipEventCopyWith<$Res> {
  __$$_MuteAudioSipEventCopyWithImpl(
      _$_MuteAudioSipEvent _value, $Res Function(_$_MuteAudioSipEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatId = null,
  }) {
    return _then(_$_MuteAudioSipEvent(
      null == chatId
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_MuteAudioSipEvent extends _MuteAudioSipEvent
    with DiagnosticableTreeMixin {
  const _$_MuteAudioSipEvent(this.chatId) : super._();

  @override
  final String chatId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SipEvent.muteAudio(chatId: $chatId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SipEvent.muteAudio'))
      ..add(DiagnosticsProperty('chatId', chatId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MuteAudioSipEvent &&
            (identical(other.chatId, chatId) || other.chatId == chatId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, chatId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MuteAudioSipEventCopyWith<_$_MuteAudioSipEvent> get copyWith =>
      __$$_MuteAudioSipEventCopyWithImpl<_$_MuteAudioSipEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String chatId, bool isVideoMuted) doCall,
    required TResult Function(
            OutcomingPersonalCallStatus? outcomingPersonalCallStatus)
        hangUp,
    required TResult Function() forceHangUp,
    required TResult Function(String chatId) muteAudio,
    required TResult Function(String chatId) muteVideo,
    required TResult Function(String chatId) muteSpeaker,
    required TResult Function(String chatId) switchCamera,
    required TResult Function(List<CallMeta>? callsMeta) onSocketUpdate,
    required TResult Function(int dlsId, String number)
        onSocketRemoteUserHangup,
    required TResult Function(int dlsId, String number)
        onSocketRemoteUserReject,
    required TResult Function(int dlsId, String number) onSocketRemoteUserBusy,
    required TResult Function(CallMeta callMeta) onSocketSpeak,
    required TResult Function(String callId, SipActiveCallState callState)
        onCallStateChanged,
    required TResult Function(SipActiveCall sipCall) onSipCallStream,
    required TResult Function(
            SipActiveCall sipCall, SipActiveCallState callState)
        onSipNewCall,
    required TResult Function(SipActiveCall sipCall) onSipCallEnded,
    required TResult Function(
            SipActiveCall sipCall, bool isAudioMuted, bool isVideoMuted)
        onSipMuted,
    required TResult Function(
            SipActiveCall sipCall, bool isAudioMuted, bool isVideoMuted)
        onSipUnmuted,
    required TResult Function() maximize,
    required TResult Function() rejectIncoming,
    required TResult Function(ActiveCall activeCall) busyIncoming,
    required TResult Function() acceptIncoming,
  }) {
    return muteAudio(chatId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String chatId, bool isVideoMuted)? doCall,
    TResult? Function(OutcomingPersonalCallStatus? outcomingPersonalCallStatus)?
        hangUp,
    TResult? Function()? forceHangUp,
    TResult? Function(String chatId)? muteAudio,
    TResult? Function(String chatId)? muteVideo,
    TResult? Function(String chatId)? muteSpeaker,
    TResult? Function(String chatId)? switchCamera,
    TResult? Function(List<CallMeta>? callsMeta)? onSocketUpdate,
    TResult? Function(int dlsId, String number)? onSocketRemoteUserHangup,
    TResult? Function(int dlsId, String number)? onSocketRemoteUserReject,
    TResult? Function(int dlsId, String number)? onSocketRemoteUserBusy,
    TResult? Function(CallMeta callMeta)? onSocketSpeak,
    TResult? Function(String callId, SipActiveCallState callState)?
        onCallStateChanged,
    TResult? Function(SipActiveCall sipCall)? onSipCallStream,
    TResult? Function(SipActiveCall sipCall, SipActiveCallState callState)?
        onSipNewCall,
    TResult? Function(SipActiveCall sipCall)? onSipCallEnded,
    TResult? Function(
            SipActiveCall sipCall, bool isAudioMuted, bool isVideoMuted)?
        onSipMuted,
    TResult? Function(
            SipActiveCall sipCall, bool isAudioMuted, bool isVideoMuted)?
        onSipUnmuted,
    TResult? Function()? maximize,
    TResult? Function()? rejectIncoming,
    TResult? Function(ActiveCall activeCall)? busyIncoming,
    TResult? Function()? acceptIncoming,
  }) {
    return muteAudio?.call(chatId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String chatId, bool isVideoMuted)? doCall,
    TResult Function(OutcomingPersonalCallStatus? outcomingPersonalCallStatus)?
        hangUp,
    TResult Function()? forceHangUp,
    TResult Function(String chatId)? muteAudio,
    TResult Function(String chatId)? muteVideo,
    TResult Function(String chatId)? muteSpeaker,
    TResult Function(String chatId)? switchCamera,
    TResult Function(List<CallMeta>? callsMeta)? onSocketUpdate,
    TResult Function(int dlsId, String number)? onSocketRemoteUserHangup,
    TResult Function(int dlsId, String number)? onSocketRemoteUserReject,
    TResult Function(int dlsId, String number)? onSocketRemoteUserBusy,
    TResult Function(CallMeta callMeta)? onSocketSpeak,
    TResult Function(String callId, SipActiveCallState callState)?
        onCallStateChanged,
    TResult Function(SipActiveCall sipCall)? onSipCallStream,
    TResult Function(SipActiveCall sipCall, SipActiveCallState callState)?
        onSipNewCall,
    TResult Function(SipActiveCall sipCall)? onSipCallEnded,
    TResult Function(
            SipActiveCall sipCall, bool isAudioMuted, bool isVideoMuted)?
        onSipMuted,
    TResult Function(
            SipActiveCall sipCall, bool isAudioMuted, bool isVideoMuted)?
        onSipUnmuted,
    TResult Function()? maximize,
    TResult Function()? rejectIncoming,
    TResult Function(ActiveCall activeCall)? busyIncoming,
    TResult Function()? acceptIncoming,
    required TResult orElse(),
  }) {
    if (muteAudio != null) {
      return muteAudio(chatId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DoCallSipEvent value) doCall,
    required TResult Function(_DoHangUpSipEvent value) hangUp,
    required TResult Function(_ForceHangUpSipEvent value) forceHangUp,
    required TResult Function(_MuteAudioSipEvent value) muteAudio,
    required TResult Function(_MuteVideoSipEvent value) muteVideo,
    required TResult Function(_MuteSpeakerSipEvent value) muteSpeaker,
    required TResult Function(_SwitchCameraSipEvent value) switchCamera,
    required TResult Function(_OnSocketUpdateSipEvent value) onSocketUpdate,
    required TResult Function(_OnSocketRemoteUserHangup value)
        onSocketRemoteUserHangup,
    required TResult Function(_OnSocketRemoteUserRejectSipEvent value)
        onSocketRemoteUserReject,
    required TResult Function(_OnSocketRemoteUserBusySipEvent value)
        onSocketRemoteUserBusy,
    required TResult Function(_OnSocketSpeakSipEvent value) onSocketSpeak,
    required TResult Function(_OnCallStateChangedSipEvent value)
        onCallStateChanged,
    required TResult Function(_OnSipCallStreamSipEvent value) onSipCallStream,
    required TResult Function(_OnSipNewCallSipEvent value) onSipNewCall,
    required TResult Function(_OnSipCallEndedSipEvent value) onSipCallEnded,
    required TResult Function(_OnSipMutedSipEvent value) onSipMuted,
    required TResult Function(_OnSipUnmutedSipEvent value) onSipUnmuted,
    required TResult Function(_MaximizeSipEvent value) maximize,
    required TResult Function(_RejectIncomingSipEvent value) rejectIncoming,
    required TResult Function(_BusyIncomingSipEvent value) busyIncoming,
    required TResult Function(_AcceptIncomingSipEvent value) acceptIncoming,
  }) {
    return muteAudio(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DoCallSipEvent value)? doCall,
    TResult? Function(_DoHangUpSipEvent value)? hangUp,
    TResult? Function(_ForceHangUpSipEvent value)? forceHangUp,
    TResult? Function(_MuteAudioSipEvent value)? muteAudio,
    TResult? Function(_MuteVideoSipEvent value)? muteVideo,
    TResult? Function(_MuteSpeakerSipEvent value)? muteSpeaker,
    TResult? Function(_SwitchCameraSipEvent value)? switchCamera,
    TResult? Function(_OnSocketUpdateSipEvent value)? onSocketUpdate,
    TResult? Function(_OnSocketRemoteUserHangup value)?
        onSocketRemoteUserHangup,
    TResult? Function(_OnSocketRemoteUserRejectSipEvent value)?
        onSocketRemoteUserReject,
    TResult? Function(_OnSocketRemoteUserBusySipEvent value)?
        onSocketRemoteUserBusy,
    TResult? Function(_OnSocketSpeakSipEvent value)? onSocketSpeak,
    TResult? Function(_OnCallStateChangedSipEvent value)? onCallStateChanged,
    TResult? Function(_OnSipCallStreamSipEvent value)? onSipCallStream,
    TResult? Function(_OnSipNewCallSipEvent value)? onSipNewCall,
    TResult? Function(_OnSipCallEndedSipEvent value)? onSipCallEnded,
    TResult? Function(_OnSipMutedSipEvent value)? onSipMuted,
    TResult? Function(_OnSipUnmutedSipEvent value)? onSipUnmuted,
    TResult? Function(_MaximizeSipEvent value)? maximize,
    TResult? Function(_RejectIncomingSipEvent value)? rejectIncoming,
    TResult? Function(_BusyIncomingSipEvent value)? busyIncoming,
    TResult? Function(_AcceptIncomingSipEvent value)? acceptIncoming,
  }) {
    return muteAudio?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DoCallSipEvent value)? doCall,
    TResult Function(_DoHangUpSipEvent value)? hangUp,
    TResult Function(_ForceHangUpSipEvent value)? forceHangUp,
    TResult Function(_MuteAudioSipEvent value)? muteAudio,
    TResult Function(_MuteVideoSipEvent value)? muteVideo,
    TResult Function(_MuteSpeakerSipEvent value)? muteSpeaker,
    TResult Function(_SwitchCameraSipEvent value)? switchCamera,
    TResult Function(_OnSocketUpdateSipEvent value)? onSocketUpdate,
    TResult Function(_OnSocketRemoteUserHangup value)? onSocketRemoteUserHangup,
    TResult Function(_OnSocketRemoteUserRejectSipEvent value)?
        onSocketRemoteUserReject,
    TResult Function(_OnSocketRemoteUserBusySipEvent value)?
        onSocketRemoteUserBusy,
    TResult Function(_OnSocketSpeakSipEvent value)? onSocketSpeak,
    TResult Function(_OnCallStateChangedSipEvent value)? onCallStateChanged,
    TResult Function(_OnSipCallStreamSipEvent value)? onSipCallStream,
    TResult Function(_OnSipNewCallSipEvent value)? onSipNewCall,
    TResult Function(_OnSipCallEndedSipEvent value)? onSipCallEnded,
    TResult Function(_OnSipMutedSipEvent value)? onSipMuted,
    TResult Function(_OnSipUnmutedSipEvent value)? onSipUnmuted,
    TResult Function(_MaximizeSipEvent value)? maximize,
    TResult Function(_RejectIncomingSipEvent value)? rejectIncoming,
    TResult Function(_BusyIncomingSipEvent value)? busyIncoming,
    TResult Function(_AcceptIncomingSipEvent value)? acceptIncoming,
    required TResult orElse(),
  }) {
    if (muteAudio != null) {
      return muteAudio(this);
    }
    return orElse();
  }
}

abstract class _MuteAudioSipEvent extends SipEvent {
  const factory _MuteAudioSipEvent(final String chatId) = _$_MuteAudioSipEvent;
  const _MuteAudioSipEvent._() : super._();

  String get chatId;
  @JsonKey(ignore: true)
  _$$_MuteAudioSipEventCopyWith<_$_MuteAudioSipEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_MuteVideoSipEventCopyWith<$Res> {
  factory _$$_MuteVideoSipEventCopyWith(_$_MuteVideoSipEvent value,
          $Res Function(_$_MuteVideoSipEvent) then) =
      __$$_MuteVideoSipEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String chatId});
}

/// @nodoc
class __$$_MuteVideoSipEventCopyWithImpl<$Res>
    extends _$SipEventCopyWithImpl<$Res, _$_MuteVideoSipEvent>
    implements _$$_MuteVideoSipEventCopyWith<$Res> {
  __$$_MuteVideoSipEventCopyWithImpl(
      _$_MuteVideoSipEvent _value, $Res Function(_$_MuteVideoSipEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatId = null,
  }) {
    return _then(_$_MuteVideoSipEvent(
      null == chatId
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_MuteVideoSipEvent extends _MuteVideoSipEvent
    with DiagnosticableTreeMixin {
  const _$_MuteVideoSipEvent(this.chatId) : super._();

  @override
  final String chatId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SipEvent.muteVideo(chatId: $chatId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SipEvent.muteVideo'))
      ..add(DiagnosticsProperty('chatId', chatId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MuteVideoSipEvent &&
            (identical(other.chatId, chatId) || other.chatId == chatId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, chatId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MuteVideoSipEventCopyWith<_$_MuteVideoSipEvent> get copyWith =>
      __$$_MuteVideoSipEventCopyWithImpl<_$_MuteVideoSipEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String chatId, bool isVideoMuted) doCall,
    required TResult Function(
            OutcomingPersonalCallStatus? outcomingPersonalCallStatus)
        hangUp,
    required TResult Function() forceHangUp,
    required TResult Function(String chatId) muteAudio,
    required TResult Function(String chatId) muteVideo,
    required TResult Function(String chatId) muteSpeaker,
    required TResult Function(String chatId) switchCamera,
    required TResult Function(List<CallMeta>? callsMeta) onSocketUpdate,
    required TResult Function(int dlsId, String number)
        onSocketRemoteUserHangup,
    required TResult Function(int dlsId, String number)
        onSocketRemoteUserReject,
    required TResult Function(int dlsId, String number) onSocketRemoteUserBusy,
    required TResult Function(CallMeta callMeta) onSocketSpeak,
    required TResult Function(String callId, SipActiveCallState callState)
        onCallStateChanged,
    required TResult Function(SipActiveCall sipCall) onSipCallStream,
    required TResult Function(
            SipActiveCall sipCall, SipActiveCallState callState)
        onSipNewCall,
    required TResult Function(SipActiveCall sipCall) onSipCallEnded,
    required TResult Function(
            SipActiveCall sipCall, bool isAudioMuted, bool isVideoMuted)
        onSipMuted,
    required TResult Function(
            SipActiveCall sipCall, bool isAudioMuted, bool isVideoMuted)
        onSipUnmuted,
    required TResult Function() maximize,
    required TResult Function() rejectIncoming,
    required TResult Function(ActiveCall activeCall) busyIncoming,
    required TResult Function() acceptIncoming,
  }) {
    return muteVideo(chatId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String chatId, bool isVideoMuted)? doCall,
    TResult? Function(OutcomingPersonalCallStatus? outcomingPersonalCallStatus)?
        hangUp,
    TResult? Function()? forceHangUp,
    TResult? Function(String chatId)? muteAudio,
    TResult? Function(String chatId)? muteVideo,
    TResult? Function(String chatId)? muteSpeaker,
    TResult? Function(String chatId)? switchCamera,
    TResult? Function(List<CallMeta>? callsMeta)? onSocketUpdate,
    TResult? Function(int dlsId, String number)? onSocketRemoteUserHangup,
    TResult? Function(int dlsId, String number)? onSocketRemoteUserReject,
    TResult? Function(int dlsId, String number)? onSocketRemoteUserBusy,
    TResult? Function(CallMeta callMeta)? onSocketSpeak,
    TResult? Function(String callId, SipActiveCallState callState)?
        onCallStateChanged,
    TResult? Function(SipActiveCall sipCall)? onSipCallStream,
    TResult? Function(SipActiveCall sipCall, SipActiveCallState callState)?
        onSipNewCall,
    TResult? Function(SipActiveCall sipCall)? onSipCallEnded,
    TResult? Function(
            SipActiveCall sipCall, bool isAudioMuted, bool isVideoMuted)?
        onSipMuted,
    TResult? Function(
            SipActiveCall sipCall, bool isAudioMuted, bool isVideoMuted)?
        onSipUnmuted,
    TResult? Function()? maximize,
    TResult? Function()? rejectIncoming,
    TResult? Function(ActiveCall activeCall)? busyIncoming,
    TResult? Function()? acceptIncoming,
  }) {
    return muteVideo?.call(chatId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String chatId, bool isVideoMuted)? doCall,
    TResult Function(OutcomingPersonalCallStatus? outcomingPersonalCallStatus)?
        hangUp,
    TResult Function()? forceHangUp,
    TResult Function(String chatId)? muteAudio,
    TResult Function(String chatId)? muteVideo,
    TResult Function(String chatId)? muteSpeaker,
    TResult Function(String chatId)? switchCamera,
    TResult Function(List<CallMeta>? callsMeta)? onSocketUpdate,
    TResult Function(int dlsId, String number)? onSocketRemoteUserHangup,
    TResult Function(int dlsId, String number)? onSocketRemoteUserReject,
    TResult Function(int dlsId, String number)? onSocketRemoteUserBusy,
    TResult Function(CallMeta callMeta)? onSocketSpeak,
    TResult Function(String callId, SipActiveCallState callState)?
        onCallStateChanged,
    TResult Function(SipActiveCall sipCall)? onSipCallStream,
    TResult Function(SipActiveCall sipCall, SipActiveCallState callState)?
        onSipNewCall,
    TResult Function(SipActiveCall sipCall)? onSipCallEnded,
    TResult Function(
            SipActiveCall sipCall, bool isAudioMuted, bool isVideoMuted)?
        onSipMuted,
    TResult Function(
            SipActiveCall sipCall, bool isAudioMuted, bool isVideoMuted)?
        onSipUnmuted,
    TResult Function()? maximize,
    TResult Function()? rejectIncoming,
    TResult Function(ActiveCall activeCall)? busyIncoming,
    TResult Function()? acceptIncoming,
    required TResult orElse(),
  }) {
    if (muteVideo != null) {
      return muteVideo(chatId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DoCallSipEvent value) doCall,
    required TResult Function(_DoHangUpSipEvent value) hangUp,
    required TResult Function(_ForceHangUpSipEvent value) forceHangUp,
    required TResult Function(_MuteAudioSipEvent value) muteAudio,
    required TResult Function(_MuteVideoSipEvent value) muteVideo,
    required TResult Function(_MuteSpeakerSipEvent value) muteSpeaker,
    required TResult Function(_SwitchCameraSipEvent value) switchCamera,
    required TResult Function(_OnSocketUpdateSipEvent value) onSocketUpdate,
    required TResult Function(_OnSocketRemoteUserHangup value)
        onSocketRemoteUserHangup,
    required TResult Function(_OnSocketRemoteUserRejectSipEvent value)
        onSocketRemoteUserReject,
    required TResult Function(_OnSocketRemoteUserBusySipEvent value)
        onSocketRemoteUserBusy,
    required TResult Function(_OnSocketSpeakSipEvent value) onSocketSpeak,
    required TResult Function(_OnCallStateChangedSipEvent value)
        onCallStateChanged,
    required TResult Function(_OnSipCallStreamSipEvent value) onSipCallStream,
    required TResult Function(_OnSipNewCallSipEvent value) onSipNewCall,
    required TResult Function(_OnSipCallEndedSipEvent value) onSipCallEnded,
    required TResult Function(_OnSipMutedSipEvent value) onSipMuted,
    required TResult Function(_OnSipUnmutedSipEvent value) onSipUnmuted,
    required TResult Function(_MaximizeSipEvent value) maximize,
    required TResult Function(_RejectIncomingSipEvent value) rejectIncoming,
    required TResult Function(_BusyIncomingSipEvent value) busyIncoming,
    required TResult Function(_AcceptIncomingSipEvent value) acceptIncoming,
  }) {
    return muteVideo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DoCallSipEvent value)? doCall,
    TResult? Function(_DoHangUpSipEvent value)? hangUp,
    TResult? Function(_ForceHangUpSipEvent value)? forceHangUp,
    TResult? Function(_MuteAudioSipEvent value)? muteAudio,
    TResult? Function(_MuteVideoSipEvent value)? muteVideo,
    TResult? Function(_MuteSpeakerSipEvent value)? muteSpeaker,
    TResult? Function(_SwitchCameraSipEvent value)? switchCamera,
    TResult? Function(_OnSocketUpdateSipEvent value)? onSocketUpdate,
    TResult? Function(_OnSocketRemoteUserHangup value)?
        onSocketRemoteUserHangup,
    TResult? Function(_OnSocketRemoteUserRejectSipEvent value)?
        onSocketRemoteUserReject,
    TResult? Function(_OnSocketRemoteUserBusySipEvent value)?
        onSocketRemoteUserBusy,
    TResult? Function(_OnSocketSpeakSipEvent value)? onSocketSpeak,
    TResult? Function(_OnCallStateChangedSipEvent value)? onCallStateChanged,
    TResult? Function(_OnSipCallStreamSipEvent value)? onSipCallStream,
    TResult? Function(_OnSipNewCallSipEvent value)? onSipNewCall,
    TResult? Function(_OnSipCallEndedSipEvent value)? onSipCallEnded,
    TResult? Function(_OnSipMutedSipEvent value)? onSipMuted,
    TResult? Function(_OnSipUnmutedSipEvent value)? onSipUnmuted,
    TResult? Function(_MaximizeSipEvent value)? maximize,
    TResult? Function(_RejectIncomingSipEvent value)? rejectIncoming,
    TResult? Function(_BusyIncomingSipEvent value)? busyIncoming,
    TResult? Function(_AcceptIncomingSipEvent value)? acceptIncoming,
  }) {
    return muteVideo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DoCallSipEvent value)? doCall,
    TResult Function(_DoHangUpSipEvent value)? hangUp,
    TResult Function(_ForceHangUpSipEvent value)? forceHangUp,
    TResult Function(_MuteAudioSipEvent value)? muteAudio,
    TResult Function(_MuteVideoSipEvent value)? muteVideo,
    TResult Function(_MuteSpeakerSipEvent value)? muteSpeaker,
    TResult Function(_SwitchCameraSipEvent value)? switchCamera,
    TResult Function(_OnSocketUpdateSipEvent value)? onSocketUpdate,
    TResult Function(_OnSocketRemoteUserHangup value)? onSocketRemoteUserHangup,
    TResult Function(_OnSocketRemoteUserRejectSipEvent value)?
        onSocketRemoteUserReject,
    TResult Function(_OnSocketRemoteUserBusySipEvent value)?
        onSocketRemoteUserBusy,
    TResult Function(_OnSocketSpeakSipEvent value)? onSocketSpeak,
    TResult Function(_OnCallStateChangedSipEvent value)? onCallStateChanged,
    TResult Function(_OnSipCallStreamSipEvent value)? onSipCallStream,
    TResult Function(_OnSipNewCallSipEvent value)? onSipNewCall,
    TResult Function(_OnSipCallEndedSipEvent value)? onSipCallEnded,
    TResult Function(_OnSipMutedSipEvent value)? onSipMuted,
    TResult Function(_OnSipUnmutedSipEvent value)? onSipUnmuted,
    TResult Function(_MaximizeSipEvent value)? maximize,
    TResult Function(_RejectIncomingSipEvent value)? rejectIncoming,
    TResult Function(_BusyIncomingSipEvent value)? busyIncoming,
    TResult Function(_AcceptIncomingSipEvent value)? acceptIncoming,
    required TResult orElse(),
  }) {
    if (muteVideo != null) {
      return muteVideo(this);
    }
    return orElse();
  }
}

abstract class _MuteVideoSipEvent extends SipEvent {
  const factory _MuteVideoSipEvent(final String chatId) = _$_MuteVideoSipEvent;
  const _MuteVideoSipEvent._() : super._();

  String get chatId;
  @JsonKey(ignore: true)
  _$$_MuteVideoSipEventCopyWith<_$_MuteVideoSipEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_MuteSpeakerSipEventCopyWith<$Res> {
  factory _$$_MuteSpeakerSipEventCopyWith(_$_MuteSpeakerSipEvent value,
          $Res Function(_$_MuteSpeakerSipEvent) then) =
      __$$_MuteSpeakerSipEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String chatId});
}

/// @nodoc
class __$$_MuteSpeakerSipEventCopyWithImpl<$Res>
    extends _$SipEventCopyWithImpl<$Res, _$_MuteSpeakerSipEvent>
    implements _$$_MuteSpeakerSipEventCopyWith<$Res> {
  __$$_MuteSpeakerSipEventCopyWithImpl(_$_MuteSpeakerSipEvent _value,
      $Res Function(_$_MuteSpeakerSipEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatId = null,
  }) {
    return _then(_$_MuteSpeakerSipEvent(
      null == chatId
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_MuteSpeakerSipEvent extends _MuteSpeakerSipEvent
    with DiagnosticableTreeMixin {
  const _$_MuteSpeakerSipEvent(this.chatId) : super._();

  @override
  final String chatId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SipEvent.muteSpeaker(chatId: $chatId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SipEvent.muteSpeaker'))
      ..add(DiagnosticsProperty('chatId', chatId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MuteSpeakerSipEvent &&
            (identical(other.chatId, chatId) || other.chatId == chatId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, chatId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MuteSpeakerSipEventCopyWith<_$_MuteSpeakerSipEvent> get copyWith =>
      __$$_MuteSpeakerSipEventCopyWithImpl<_$_MuteSpeakerSipEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String chatId, bool isVideoMuted) doCall,
    required TResult Function(
            OutcomingPersonalCallStatus? outcomingPersonalCallStatus)
        hangUp,
    required TResult Function() forceHangUp,
    required TResult Function(String chatId) muteAudio,
    required TResult Function(String chatId) muteVideo,
    required TResult Function(String chatId) muteSpeaker,
    required TResult Function(String chatId) switchCamera,
    required TResult Function(List<CallMeta>? callsMeta) onSocketUpdate,
    required TResult Function(int dlsId, String number)
        onSocketRemoteUserHangup,
    required TResult Function(int dlsId, String number)
        onSocketRemoteUserReject,
    required TResult Function(int dlsId, String number) onSocketRemoteUserBusy,
    required TResult Function(CallMeta callMeta) onSocketSpeak,
    required TResult Function(String callId, SipActiveCallState callState)
        onCallStateChanged,
    required TResult Function(SipActiveCall sipCall) onSipCallStream,
    required TResult Function(
            SipActiveCall sipCall, SipActiveCallState callState)
        onSipNewCall,
    required TResult Function(SipActiveCall sipCall) onSipCallEnded,
    required TResult Function(
            SipActiveCall sipCall, bool isAudioMuted, bool isVideoMuted)
        onSipMuted,
    required TResult Function(
            SipActiveCall sipCall, bool isAudioMuted, bool isVideoMuted)
        onSipUnmuted,
    required TResult Function() maximize,
    required TResult Function() rejectIncoming,
    required TResult Function(ActiveCall activeCall) busyIncoming,
    required TResult Function() acceptIncoming,
  }) {
    return muteSpeaker(chatId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String chatId, bool isVideoMuted)? doCall,
    TResult? Function(OutcomingPersonalCallStatus? outcomingPersonalCallStatus)?
        hangUp,
    TResult? Function()? forceHangUp,
    TResult? Function(String chatId)? muteAudio,
    TResult? Function(String chatId)? muteVideo,
    TResult? Function(String chatId)? muteSpeaker,
    TResult? Function(String chatId)? switchCamera,
    TResult? Function(List<CallMeta>? callsMeta)? onSocketUpdate,
    TResult? Function(int dlsId, String number)? onSocketRemoteUserHangup,
    TResult? Function(int dlsId, String number)? onSocketRemoteUserReject,
    TResult? Function(int dlsId, String number)? onSocketRemoteUserBusy,
    TResult? Function(CallMeta callMeta)? onSocketSpeak,
    TResult? Function(String callId, SipActiveCallState callState)?
        onCallStateChanged,
    TResult? Function(SipActiveCall sipCall)? onSipCallStream,
    TResult? Function(SipActiveCall sipCall, SipActiveCallState callState)?
        onSipNewCall,
    TResult? Function(SipActiveCall sipCall)? onSipCallEnded,
    TResult? Function(
            SipActiveCall sipCall, bool isAudioMuted, bool isVideoMuted)?
        onSipMuted,
    TResult? Function(
            SipActiveCall sipCall, bool isAudioMuted, bool isVideoMuted)?
        onSipUnmuted,
    TResult? Function()? maximize,
    TResult? Function()? rejectIncoming,
    TResult? Function(ActiveCall activeCall)? busyIncoming,
    TResult? Function()? acceptIncoming,
  }) {
    return muteSpeaker?.call(chatId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String chatId, bool isVideoMuted)? doCall,
    TResult Function(OutcomingPersonalCallStatus? outcomingPersonalCallStatus)?
        hangUp,
    TResult Function()? forceHangUp,
    TResult Function(String chatId)? muteAudio,
    TResult Function(String chatId)? muteVideo,
    TResult Function(String chatId)? muteSpeaker,
    TResult Function(String chatId)? switchCamera,
    TResult Function(List<CallMeta>? callsMeta)? onSocketUpdate,
    TResult Function(int dlsId, String number)? onSocketRemoteUserHangup,
    TResult Function(int dlsId, String number)? onSocketRemoteUserReject,
    TResult Function(int dlsId, String number)? onSocketRemoteUserBusy,
    TResult Function(CallMeta callMeta)? onSocketSpeak,
    TResult Function(String callId, SipActiveCallState callState)?
        onCallStateChanged,
    TResult Function(SipActiveCall sipCall)? onSipCallStream,
    TResult Function(SipActiveCall sipCall, SipActiveCallState callState)?
        onSipNewCall,
    TResult Function(SipActiveCall sipCall)? onSipCallEnded,
    TResult Function(
            SipActiveCall sipCall, bool isAudioMuted, bool isVideoMuted)?
        onSipMuted,
    TResult Function(
            SipActiveCall sipCall, bool isAudioMuted, bool isVideoMuted)?
        onSipUnmuted,
    TResult Function()? maximize,
    TResult Function()? rejectIncoming,
    TResult Function(ActiveCall activeCall)? busyIncoming,
    TResult Function()? acceptIncoming,
    required TResult orElse(),
  }) {
    if (muteSpeaker != null) {
      return muteSpeaker(chatId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DoCallSipEvent value) doCall,
    required TResult Function(_DoHangUpSipEvent value) hangUp,
    required TResult Function(_ForceHangUpSipEvent value) forceHangUp,
    required TResult Function(_MuteAudioSipEvent value) muteAudio,
    required TResult Function(_MuteVideoSipEvent value) muteVideo,
    required TResult Function(_MuteSpeakerSipEvent value) muteSpeaker,
    required TResult Function(_SwitchCameraSipEvent value) switchCamera,
    required TResult Function(_OnSocketUpdateSipEvent value) onSocketUpdate,
    required TResult Function(_OnSocketRemoteUserHangup value)
        onSocketRemoteUserHangup,
    required TResult Function(_OnSocketRemoteUserRejectSipEvent value)
        onSocketRemoteUserReject,
    required TResult Function(_OnSocketRemoteUserBusySipEvent value)
        onSocketRemoteUserBusy,
    required TResult Function(_OnSocketSpeakSipEvent value) onSocketSpeak,
    required TResult Function(_OnCallStateChangedSipEvent value)
        onCallStateChanged,
    required TResult Function(_OnSipCallStreamSipEvent value) onSipCallStream,
    required TResult Function(_OnSipNewCallSipEvent value) onSipNewCall,
    required TResult Function(_OnSipCallEndedSipEvent value) onSipCallEnded,
    required TResult Function(_OnSipMutedSipEvent value) onSipMuted,
    required TResult Function(_OnSipUnmutedSipEvent value) onSipUnmuted,
    required TResult Function(_MaximizeSipEvent value) maximize,
    required TResult Function(_RejectIncomingSipEvent value) rejectIncoming,
    required TResult Function(_BusyIncomingSipEvent value) busyIncoming,
    required TResult Function(_AcceptIncomingSipEvent value) acceptIncoming,
  }) {
    return muteSpeaker(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DoCallSipEvent value)? doCall,
    TResult? Function(_DoHangUpSipEvent value)? hangUp,
    TResult? Function(_ForceHangUpSipEvent value)? forceHangUp,
    TResult? Function(_MuteAudioSipEvent value)? muteAudio,
    TResult? Function(_MuteVideoSipEvent value)? muteVideo,
    TResult? Function(_MuteSpeakerSipEvent value)? muteSpeaker,
    TResult? Function(_SwitchCameraSipEvent value)? switchCamera,
    TResult? Function(_OnSocketUpdateSipEvent value)? onSocketUpdate,
    TResult? Function(_OnSocketRemoteUserHangup value)?
        onSocketRemoteUserHangup,
    TResult? Function(_OnSocketRemoteUserRejectSipEvent value)?
        onSocketRemoteUserReject,
    TResult? Function(_OnSocketRemoteUserBusySipEvent value)?
        onSocketRemoteUserBusy,
    TResult? Function(_OnSocketSpeakSipEvent value)? onSocketSpeak,
    TResult? Function(_OnCallStateChangedSipEvent value)? onCallStateChanged,
    TResult? Function(_OnSipCallStreamSipEvent value)? onSipCallStream,
    TResult? Function(_OnSipNewCallSipEvent value)? onSipNewCall,
    TResult? Function(_OnSipCallEndedSipEvent value)? onSipCallEnded,
    TResult? Function(_OnSipMutedSipEvent value)? onSipMuted,
    TResult? Function(_OnSipUnmutedSipEvent value)? onSipUnmuted,
    TResult? Function(_MaximizeSipEvent value)? maximize,
    TResult? Function(_RejectIncomingSipEvent value)? rejectIncoming,
    TResult? Function(_BusyIncomingSipEvent value)? busyIncoming,
    TResult? Function(_AcceptIncomingSipEvent value)? acceptIncoming,
  }) {
    return muteSpeaker?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DoCallSipEvent value)? doCall,
    TResult Function(_DoHangUpSipEvent value)? hangUp,
    TResult Function(_ForceHangUpSipEvent value)? forceHangUp,
    TResult Function(_MuteAudioSipEvent value)? muteAudio,
    TResult Function(_MuteVideoSipEvent value)? muteVideo,
    TResult Function(_MuteSpeakerSipEvent value)? muteSpeaker,
    TResult Function(_SwitchCameraSipEvent value)? switchCamera,
    TResult Function(_OnSocketUpdateSipEvent value)? onSocketUpdate,
    TResult Function(_OnSocketRemoteUserHangup value)? onSocketRemoteUserHangup,
    TResult Function(_OnSocketRemoteUserRejectSipEvent value)?
        onSocketRemoteUserReject,
    TResult Function(_OnSocketRemoteUserBusySipEvent value)?
        onSocketRemoteUserBusy,
    TResult Function(_OnSocketSpeakSipEvent value)? onSocketSpeak,
    TResult Function(_OnCallStateChangedSipEvent value)? onCallStateChanged,
    TResult Function(_OnSipCallStreamSipEvent value)? onSipCallStream,
    TResult Function(_OnSipNewCallSipEvent value)? onSipNewCall,
    TResult Function(_OnSipCallEndedSipEvent value)? onSipCallEnded,
    TResult Function(_OnSipMutedSipEvent value)? onSipMuted,
    TResult Function(_OnSipUnmutedSipEvent value)? onSipUnmuted,
    TResult Function(_MaximizeSipEvent value)? maximize,
    TResult Function(_RejectIncomingSipEvent value)? rejectIncoming,
    TResult Function(_BusyIncomingSipEvent value)? busyIncoming,
    TResult Function(_AcceptIncomingSipEvent value)? acceptIncoming,
    required TResult orElse(),
  }) {
    if (muteSpeaker != null) {
      return muteSpeaker(this);
    }
    return orElse();
  }
}

abstract class _MuteSpeakerSipEvent extends SipEvent {
  const factory _MuteSpeakerSipEvent(final String chatId) =
      _$_MuteSpeakerSipEvent;
  const _MuteSpeakerSipEvent._() : super._();

  String get chatId;
  @JsonKey(ignore: true)
  _$$_MuteSpeakerSipEventCopyWith<_$_MuteSpeakerSipEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SwitchCameraSipEventCopyWith<$Res> {
  factory _$$_SwitchCameraSipEventCopyWith(_$_SwitchCameraSipEvent value,
          $Res Function(_$_SwitchCameraSipEvent) then) =
      __$$_SwitchCameraSipEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String chatId});
}

/// @nodoc
class __$$_SwitchCameraSipEventCopyWithImpl<$Res>
    extends _$SipEventCopyWithImpl<$Res, _$_SwitchCameraSipEvent>
    implements _$$_SwitchCameraSipEventCopyWith<$Res> {
  __$$_SwitchCameraSipEventCopyWithImpl(_$_SwitchCameraSipEvent _value,
      $Res Function(_$_SwitchCameraSipEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatId = null,
  }) {
    return _then(_$_SwitchCameraSipEvent(
      null == chatId
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SwitchCameraSipEvent extends _SwitchCameraSipEvent
    with DiagnosticableTreeMixin {
  const _$_SwitchCameraSipEvent(this.chatId) : super._();

  @override
  final String chatId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SipEvent.switchCamera(chatId: $chatId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SipEvent.switchCamera'))
      ..add(DiagnosticsProperty('chatId', chatId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SwitchCameraSipEvent &&
            (identical(other.chatId, chatId) || other.chatId == chatId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, chatId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SwitchCameraSipEventCopyWith<_$_SwitchCameraSipEvent> get copyWith =>
      __$$_SwitchCameraSipEventCopyWithImpl<_$_SwitchCameraSipEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String chatId, bool isVideoMuted) doCall,
    required TResult Function(
            OutcomingPersonalCallStatus? outcomingPersonalCallStatus)
        hangUp,
    required TResult Function() forceHangUp,
    required TResult Function(String chatId) muteAudio,
    required TResult Function(String chatId) muteVideo,
    required TResult Function(String chatId) muteSpeaker,
    required TResult Function(String chatId) switchCamera,
    required TResult Function(List<CallMeta>? callsMeta) onSocketUpdate,
    required TResult Function(int dlsId, String number)
        onSocketRemoteUserHangup,
    required TResult Function(int dlsId, String number)
        onSocketRemoteUserReject,
    required TResult Function(int dlsId, String number) onSocketRemoteUserBusy,
    required TResult Function(CallMeta callMeta) onSocketSpeak,
    required TResult Function(String callId, SipActiveCallState callState)
        onCallStateChanged,
    required TResult Function(SipActiveCall sipCall) onSipCallStream,
    required TResult Function(
            SipActiveCall sipCall, SipActiveCallState callState)
        onSipNewCall,
    required TResult Function(SipActiveCall sipCall) onSipCallEnded,
    required TResult Function(
            SipActiveCall sipCall, bool isAudioMuted, bool isVideoMuted)
        onSipMuted,
    required TResult Function(
            SipActiveCall sipCall, bool isAudioMuted, bool isVideoMuted)
        onSipUnmuted,
    required TResult Function() maximize,
    required TResult Function() rejectIncoming,
    required TResult Function(ActiveCall activeCall) busyIncoming,
    required TResult Function() acceptIncoming,
  }) {
    return switchCamera(chatId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String chatId, bool isVideoMuted)? doCall,
    TResult? Function(OutcomingPersonalCallStatus? outcomingPersonalCallStatus)?
        hangUp,
    TResult? Function()? forceHangUp,
    TResult? Function(String chatId)? muteAudio,
    TResult? Function(String chatId)? muteVideo,
    TResult? Function(String chatId)? muteSpeaker,
    TResult? Function(String chatId)? switchCamera,
    TResult? Function(List<CallMeta>? callsMeta)? onSocketUpdate,
    TResult? Function(int dlsId, String number)? onSocketRemoteUserHangup,
    TResult? Function(int dlsId, String number)? onSocketRemoteUserReject,
    TResult? Function(int dlsId, String number)? onSocketRemoteUserBusy,
    TResult? Function(CallMeta callMeta)? onSocketSpeak,
    TResult? Function(String callId, SipActiveCallState callState)?
        onCallStateChanged,
    TResult? Function(SipActiveCall sipCall)? onSipCallStream,
    TResult? Function(SipActiveCall sipCall, SipActiveCallState callState)?
        onSipNewCall,
    TResult? Function(SipActiveCall sipCall)? onSipCallEnded,
    TResult? Function(
            SipActiveCall sipCall, bool isAudioMuted, bool isVideoMuted)?
        onSipMuted,
    TResult? Function(
            SipActiveCall sipCall, bool isAudioMuted, bool isVideoMuted)?
        onSipUnmuted,
    TResult? Function()? maximize,
    TResult? Function()? rejectIncoming,
    TResult? Function(ActiveCall activeCall)? busyIncoming,
    TResult? Function()? acceptIncoming,
  }) {
    return switchCamera?.call(chatId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String chatId, bool isVideoMuted)? doCall,
    TResult Function(OutcomingPersonalCallStatus? outcomingPersonalCallStatus)?
        hangUp,
    TResult Function()? forceHangUp,
    TResult Function(String chatId)? muteAudio,
    TResult Function(String chatId)? muteVideo,
    TResult Function(String chatId)? muteSpeaker,
    TResult Function(String chatId)? switchCamera,
    TResult Function(List<CallMeta>? callsMeta)? onSocketUpdate,
    TResult Function(int dlsId, String number)? onSocketRemoteUserHangup,
    TResult Function(int dlsId, String number)? onSocketRemoteUserReject,
    TResult Function(int dlsId, String number)? onSocketRemoteUserBusy,
    TResult Function(CallMeta callMeta)? onSocketSpeak,
    TResult Function(String callId, SipActiveCallState callState)?
        onCallStateChanged,
    TResult Function(SipActiveCall sipCall)? onSipCallStream,
    TResult Function(SipActiveCall sipCall, SipActiveCallState callState)?
        onSipNewCall,
    TResult Function(SipActiveCall sipCall)? onSipCallEnded,
    TResult Function(
            SipActiveCall sipCall, bool isAudioMuted, bool isVideoMuted)?
        onSipMuted,
    TResult Function(
            SipActiveCall sipCall, bool isAudioMuted, bool isVideoMuted)?
        onSipUnmuted,
    TResult Function()? maximize,
    TResult Function()? rejectIncoming,
    TResult Function(ActiveCall activeCall)? busyIncoming,
    TResult Function()? acceptIncoming,
    required TResult orElse(),
  }) {
    if (switchCamera != null) {
      return switchCamera(chatId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DoCallSipEvent value) doCall,
    required TResult Function(_DoHangUpSipEvent value) hangUp,
    required TResult Function(_ForceHangUpSipEvent value) forceHangUp,
    required TResult Function(_MuteAudioSipEvent value) muteAudio,
    required TResult Function(_MuteVideoSipEvent value) muteVideo,
    required TResult Function(_MuteSpeakerSipEvent value) muteSpeaker,
    required TResult Function(_SwitchCameraSipEvent value) switchCamera,
    required TResult Function(_OnSocketUpdateSipEvent value) onSocketUpdate,
    required TResult Function(_OnSocketRemoteUserHangup value)
        onSocketRemoteUserHangup,
    required TResult Function(_OnSocketRemoteUserRejectSipEvent value)
        onSocketRemoteUserReject,
    required TResult Function(_OnSocketRemoteUserBusySipEvent value)
        onSocketRemoteUserBusy,
    required TResult Function(_OnSocketSpeakSipEvent value) onSocketSpeak,
    required TResult Function(_OnCallStateChangedSipEvent value)
        onCallStateChanged,
    required TResult Function(_OnSipCallStreamSipEvent value) onSipCallStream,
    required TResult Function(_OnSipNewCallSipEvent value) onSipNewCall,
    required TResult Function(_OnSipCallEndedSipEvent value) onSipCallEnded,
    required TResult Function(_OnSipMutedSipEvent value) onSipMuted,
    required TResult Function(_OnSipUnmutedSipEvent value) onSipUnmuted,
    required TResult Function(_MaximizeSipEvent value) maximize,
    required TResult Function(_RejectIncomingSipEvent value) rejectIncoming,
    required TResult Function(_BusyIncomingSipEvent value) busyIncoming,
    required TResult Function(_AcceptIncomingSipEvent value) acceptIncoming,
  }) {
    return switchCamera(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DoCallSipEvent value)? doCall,
    TResult? Function(_DoHangUpSipEvent value)? hangUp,
    TResult? Function(_ForceHangUpSipEvent value)? forceHangUp,
    TResult? Function(_MuteAudioSipEvent value)? muteAudio,
    TResult? Function(_MuteVideoSipEvent value)? muteVideo,
    TResult? Function(_MuteSpeakerSipEvent value)? muteSpeaker,
    TResult? Function(_SwitchCameraSipEvent value)? switchCamera,
    TResult? Function(_OnSocketUpdateSipEvent value)? onSocketUpdate,
    TResult? Function(_OnSocketRemoteUserHangup value)?
        onSocketRemoteUserHangup,
    TResult? Function(_OnSocketRemoteUserRejectSipEvent value)?
        onSocketRemoteUserReject,
    TResult? Function(_OnSocketRemoteUserBusySipEvent value)?
        onSocketRemoteUserBusy,
    TResult? Function(_OnSocketSpeakSipEvent value)? onSocketSpeak,
    TResult? Function(_OnCallStateChangedSipEvent value)? onCallStateChanged,
    TResult? Function(_OnSipCallStreamSipEvent value)? onSipCallStream,
    TResult? Function(_OnSipNewCallSipEvent value)? onSipNewCall,
    TResult? Function(_OnSipCallEndedSipEvent value)? onSipCallEnded,
    TResult? Function(_OnSipMutedSipEvent value)? onSipMuted,
    TResult? Function(_OnSipUnmutedSipEvent value)? onSipUnmuted,
    TResult? Function(_MaximizeSipEvent value)? maximize,
    TResult? Function(_RejectIncomingSipEvent value)? rejectIncoming,
    TResult? Function(_BusyIncomingSipEvent value)? busyIncoming,
    TResult? Function(_AcceptIncomingSipEvent value)? acceptIncoming,
  }) {
    return switchCamera?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DoCallSipEvent value)? doCall,
    TResult Function(_DoHangUpSipEvent value)? hangUp,
    TResult Function(_ForceHangUpSipEvent value)? forceHangUp,
    TResult Function(_MuteAudioSipEvent value)? muteAudio,
    TResult Function(_MuteVideoSipEvent value)? muteVideo,
    TResult Function(_MuteSpeakerSipEvent value)? muteSpeaker,
    TResult Function(_SwitchCameraSipEvent value)? switchCamera,
    TResult Function(_OnSocketUpdateSipEvent value)? onSocketUpdate,
    TResult Function(_OnSocketRemoteUserHangup value)? onSocketRemoteUserHangup,
    TResult Function(_OnSocketRemoteUserRejectSipEvent value)?
        onSocketRemoteUserReject,
    TResult Function(_OnSocketRemoteUserBusySipEvent value)?
        onSocketRemoteUserBusy,
    TResult Function(_OnSocketSpeakSipEvent value)? onSocketSpeak,
    TResult Function(_OnCallStateChangedSipEvent value)? onCallStateChanged,
    TResult Function(_OnSipCallStreamSipEvent value)? onSipCallStream,
    TResult Function(_OnSipNewCallSipEvent value)? onSipNewCall,
    TResult Function(_OnSipCallEndedSipEvent value)? onSipCallEnded,
    TResult Function(_OnSipMutedSipEvent value)? onSipMuted,
    TResult Function(_OnSipUnmutedSipEvent value)? onSipUnmuted,
    TResult Function(_MaximizeSipEvent value)? maximize,
    TResult Function(_RejectIncomingSipEvent value)? rejectIncoming,
    TResult Function(_BusyIncomingSipEvent value)? busyIncoming,
    TResult Function(_AcceptIncomingSipEvent value)? acceptIncoming,
    required TResult orElse(),
  }) {
    if (switchCamera != null) {
      return switchCamera(this);
    }
    return orElse();
  }
}

abstract class _SwitchCameraSipEvent extends SipEvent {
  const factory _SwitchCameraSipEvent(final String chatId) =
      _$_SwitchCameraSipEvent;
  const _SwitchCameraSipEvent._() : super._();

  String get chatId;
  @JsonKey(ignore: true)
  _$$_SwitchCameraSipEventCopyWith<_$_SwitchCameraSipEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_OnSocketUpdateSipEventCopyWith<$Res> {
  factory _$$_OnSocketUpdateSipEventCopyWith(_$_OnSocketUpdateSipEvent value,
          $Res Function(_$_OnSocketUpdateSipEvent) then) =
      __$$_OnSocketUpdateSipEventCopyWithImpl<$Res>;
  @useResult
  $Res call({List<CallMeta>? callsMeta});
}

/// @nodoc
class __$$_OnSocketUpdateSipEventCopyWithImpl<$Res>
    extends _$SipEventCopyWithImpl<$Res, _$_OnSocketUpdateSipEvent>
    implements _$$_OnSocketUpdateSipEventCopyWith<$Res> {
  __$$_OnSocketUpdateSipEventCopyWithImpl(_$_OnSocketUpdateSipEvent _value,
      $Res Function(_$_OnSocketUpdateSipEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? callsMeta = freezed,
  }) {
    return _then(_$_OnSocketUpdateSipEvent(
      freezed == callsMeta
          ? _value._callsMeta
          : callsMeta // ignore: cast_nullable_to_non_nullable
              as List<CallMeta>?,
    ));
  }
}

/// @nodoc

class _$_OnSocketUpdateSipEvent extends _OnSocketUpdateSipEvent
    with DiagnosticableTreeMixin {
  const _$_OnSocketUpdateSipEvent(final List<CallMeta>? callsMeta)
      : _callsMeta = callsMeta,
        super._();

  final List<CallMeta>? _callsMeta;
  @override
  List<CallMeta>? get callsMeta {
    final value = _callsMeta;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SipEvent.onSocketUpdate(callsMeta: $callsMeta)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SipEvent.onSocketUpdate'))
      ..add(DiagnosticsProperty('callsMeta', callsMeta));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OnSocketUpdateSipEvent &&
            const DeepCollectionEquality()
                .equals(other._callsMeta, _callsMeta));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_callsMeta));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OnSocketUpdateSipEventCopyWith<_$_OnSocketUpdateSipEvent> get copyWith =>
      __$$_OnSocketUpdateSipEventCopyWithImpl<_$_OnSocketUpdateSipEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String chatId, bool isVideoMuted) doCall,
    required TResult Function(
            OutcomingPersonalCallStatus? outcomingPersonalCallStatus)
        hangUp,
    required TResult Function() forceHangUp,
    required TResult Function(String chatId) muteAudio,
    required TResult Function(String chatId) muteVideo,
    required TResult Function(String chatId) muteSpeaker,
    required TResult Function(String chatId) switchCamera,
    required TResult Function(List<CallMeta>? callsMeta) onSocketUpdate,
    required TResult Function(int dlsId, String number)
        onSocketRemoteUserHangup,
    required TResult Function(int dlsId, String number)
        onSocketRemoteUserReject,
    required TResult Function(int dlsId, String number) onSocketRemoteUserBusy,
    required TResult Function(CallMeta callMeta) onSocketSpeak,
    required TResult Function(String callId, SipActiveCallState callState)
        onCallStateChanged,
    required TResult Function(SipActiveCall sipCall) onSipCallStream,
    required TResult Function(
            SipActiveCall sipCall, SipActiveCallState callState)
        onSipNewCall,
    required TResult Function(SipActiveCall sipCall) onSipCallEnded,
    required TResult Function(
            SipActiveCall sipCall, bool isAudioMuted, bool isVideoMuted)
        onSipMuted,
    required TResult Function(
            SipActiveCall sipCall, bool isAudioMuted, bool isVideoMuted)
        onSipUnmuted,
    required TResult Function() maximize,
    required TResult Function() rejectIncoming,
    required TResult Function(ActiveCall activeCall) busyIncoming,
    required TResult Function() acceptIncoming,
  }) {
    return onSocketUpdate(callsMeta);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String chatId, bool isVideoMuted)? doCall,
    TResult? Function(OutcomingPersonalCallStatus? outcomingPersonalCallStatus)?
        hangUp,
    TResult? Function()? forceHangUp,
    TResult? Function(String chatId)? muteAudio,
    TResult? Function(String chatId)? muteVideo,
    TResult? Function(String chatId)? muteSpeaker,
    TResult? Function(String chatId)? switchCamera,
    TResult? Function(List<CallMeta>? callsMeta)? onSocketUpdate,
    TResult? Function(int dlsId, String number)? onSocketRemoteUserHangup,
    TResult? Function(int dlsId, String number)? onSocketRemoteUserReject,
    TResult? Function(int dlsId, String number)? onSocketRemoteUserBusy,
    TResult? Function(CallMeta callMeta)? onSocketSpeak,
    TResult? Function(String callId, SipActiveCallState callState)?
        onCallStateChanged,
    TResult? Function(SipActiveCall sipCall)? onSipCallStream,
    TResult? Function(SipActiveCall sipCall, SipActiveCallState callState)?
        onSipNewCall,
    TResult? Function(SipActiveCall sipCall)? onSipCallEnded,
    TResult? Function(
            SipActiveCall sipCall, bool isAudioMuted, bool isVideoMuted)?
        onSipMuted,
    TResult? Function(
            SipActiveCall sipCall, bool isAudioMuted, bool isVideoMuted)?
        onSipUnmuted,
    TResult? Function()? maximize,
    TResult? Function()? rejectIncoming,
    TResult? Function(ActiveCall activeCall)? busyIncoming,
    TResult? Function()? acceptIncoming,
  }) {
    return onSocketUpdate?.call(callsMeta);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String chatId, bool isVideoMuted)? doCall,
    TResult Function(OutcomingPersonalCallStatus? outcomingPersonalCallStatus)?
        hangUp,
    TResult Function()? forceHangUp,
    TResult Function(String chatId)? muteAudio,
    TResult Function(String chatId)? muteVideo,
    TResult Function(String chatId)? muteSpeaker,
    TResult Function(String chatId)? switchCamera,
    TResult Function(List<CallMeta>? callsMeta)? onSocketUpdate,
    TResult Function(int dlsId, String number)? onSocketRemoteUserHangup,
    TResult Function(int dlsId, String number)? onSocketRemoteUserReject,
    TResult Function(int dlsId, String number)? onSocketRemoteUserBusy,
    TResult Function(CallMeta callMeta)? onSocketSpeak,
    TResult Function(String callId, SipActiveCallState callState)?
        onCallStateChanged,
    TResult Function(SipActiveCall sipCall)? onSipCallStream,
    TResult Function(SipActiveCall sipCall, SipActiveCallState callState)?
        onSipNewCall,
    TResult Function(SipActiveCall sipCall)? onSipCallEnded,
    TResult Function(
            SipActiveCall sipCall, bool isAudioMuted, bool isVideoMuted)?
        onSipMuted,
    TResult Function(
            SipActiveCall sipCall, bool isAudioMuted, bool isVideoMuted)?
        onSipUnmuted,
    TResult Function()? maximize,
    TResult Function()? rejectIncoming,
    TResult Function(ActiveCall activeCall)? busyIncoming,
    TResult Function()? acceptIncoming,
    required TResult orElse(),
  }) {
    if (onSocketUpdate != null) {
      return onSocketUpdate(callsMeta);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DoCallSipEvent value) doCall,
    required TResult Function(_DoHangUpSipEvent value) hangUp,
    required TResult Function(_ForceHangUpSipEvent value) forceHangUp,
    required TResult Function(_MuteAudioSipEvent value) muteAudio,
    required TResult Function(_MuteVideoSipEvent value) muteVideo,
    required TResult Function(_MuteSpeakerSipEvent value) muteSpeaker,
    required TResult Function(_SwitchCameraSipEvent value) switchCamera,
    required TResult Function(_OnSocketUpdateSipEvent value) onSocketUpdate,
    required TResult Function(_OnSocketRemoteUserHangup value)
        onSocketRemoteUserHangup,
    required TResult Function(_OnSocketRemoteUserRejectSipEvent value)
        onSocketRemoteUserReject,
    required TResult Function(_OnSocketRemoteUserBusySipEvent value)
        onSocketRemoteUserBusy,
    required TResult Function(_OnSocketSpeakSipEvent value) onSocketSpeak,
    required TResult Function(_OnCallStateChangedSipEvent value)
        onCallStateChanged,
    required TResult Function(_OnSipCallStreamSipEvent value) onSipCallStream,
    required TResult Function(_OnSipNewCallSipEvent value) onSipNewCall,
    required TResult Function(_OnSipCallEndedSipEvent value) onSipCallEnded,
    required TResult Function(_OnSipMutedSipEvent value) onSipMuted,
    required TResult Function(_OnSipUnmutedSipEvent value) onSipUnmuted,
    required TResult Function(_MaximizeSipEvent value) maximize,
    required TResult Function(_RejectIncomingSipEvent value) rejectIncoming,
    required TResult Function(_BusyIncomingSipEvent value) busyIncoming,
    required TResult Function(_AcceptIncomingSipEvent value) acceptIncoming,
  }) {
    return onSocketUpdate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DoCallSipEvent value)? doCall,
    TResult? Function(_DoHangUpSipEvent value)? hangUp,
    TResult? Function(_ForceHangUpSipEvent value)? forceHangUp,
    TResult? Function(_MuteAudioSipEvent value)? muteAudio,
    TResult? Function(_MuteVideoSipEvent value)? muteVideo,
    TResult? Function(_MuteSpeakerSipEvent value)? muteSpeaker,
    TResult? Function(_SwitchCameraSipEvent value)? switchCamera,
    TResult? Function(_OnSocketUpdateSipEvent value)? onSocketUpdate,
    TResult? Function(_OnSocketRemoteUserHangup value)?
        onSocketRemoteUserHangup,
    TResult? Function(_OnSocketRemoteUserRejectSipEvent value)?
        onSocketRemoteUserReject,
    TResult? Function(_OnSocketRemoteUserBusySipEvent value)?
        onSocketRemoteUserBusy,
    TResult? Function(_OnSocketSpeakSipEvent value)? onSocketSpeak,
    TResult? Function(_OnCallStateChangedSipEvent value)? onCallStateChanged,
    TResult? Function(_OnSipCallStreamSipEvent value)? onSipCallStream,
    TResult? Function(_OnSipNewCallSipEvent value)? onSipNewCall,
    TResult? Function(_OnSipCallEndedSipEvent value)? onSipCallEnded,
    TResult? Function(_OnSipMutedSipEvent value)? onSipMuted,
    TResult? Function(_OnSipUnmutedSipEvent value)? onSipUnmuted,
    TResult? Function(_MaximizeSipEvent value)? maximize,
    TResult? Function(_RejectIncomingSipEvent value)? rejectIncoming,
    TResult? Function(_BusyIncomingSipEvent value)? busyIncoming,
    TResult? Function(_AcceptIncomingSipEvent value)? acceptIncoming,
  }) {
    return onSocketUpdate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DoCallSipEvent value)? doCall,
    TResult Function(_DoHangUpSipEvent value)? hangUp,
    TResult Function(_ForceHangUpSipEvent value)? forceHangUp,
    TResult Function(_MuteAudioSipEvent value)? muteAudio,
    TResult Function(_MuteVideoSipEvent value)? muteVideo,
    TResult Function(_MuteSpeakerSipEvent value)? muteSpeaker,
    TResult Function(_SwitchCameraSipEvent value)? switchCamera,
    TResult Function(_OnSocketUpdateSipEvent value)? onSocketUpdate,
    TResult Function(_OnSocketRemoteUserHangup value)? onSocketRemoteUserHangup,
    TResult Function(_OnSocketRemoteUserRejectSipEvent value)?
        onSocketRemoteUserReject,
    TResult Function(_OnSocketRemoteUserBusySipEvent value)?
        onSocketRemoteUserBusy,
    TResult Function(_OnSocketSpeakSipEvent value)? onSocketSpeak,
    TResult Function(_OnCallStateChangedSipEvent value)? onCallStateChanged,
    TResult Function(_OnSipCallStreamSipEvent value)? onSipCallStream,
    TResult Function(_OnSipNewCallSipEvent value)? onSipNewCall,
    TResult Function(_OnSipCallEndedSipEvent value)? onSipCallEnded,
    TResult Function(_OnSipMutedSipEvent value)? onSipMuted,
    TResult Function(_OnSipUnmutedSipEvent value)? onSipUnmuted,
    TResult Function(_MaximizeSipEvent value)? maximize,
    TResult Function(_RejectIncomingSipEvent value)? rejectIncoming,
    TResult Function(_BusyIncomingSipEvent value)? busyIncoming,
    TResult Function(_AcceptIncomingSipEvent value)? acceptIncoming,
    required TResult orElse(),
  }) {
    if (onSocketUpdate != null) {
      return onSocketUpdate(this);
    }
    return orElse();
  }
}

abstract class _OnSocketUpdateSipEvent extends SipEvent {
  const factory _OnSocketUpdateSipEvent(final List<CallMeta>? callsMeta) =
      _$_OnSocketUpdateSipEvent;
  const _OnSocketUpdateSipEvent._() : super._();

  List<CallMeta>? get callsMeta;
  @JsonKey(ignore: true)
  _$$_OnSocketUpdateSipEventCopyWith<_$_OnSocketUpdateSipEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_OnSocketRemoteUserHangupCopyWith<$Res> {
  factory _$$_OnSocketRemoteUserHangupCopyWith(
          _$_OnSocketRemoteUserHangup value,
          $Res Function(_$_OnSocketRemoteUserHangup) then) =
      __$$_OnSocketRemoteUserHangupCopyWithImpl<$Res>;
  @useResult
  $Res call({int dlsId, String number});
}

/// @nodoc
class __$$_OnSocketRemoteUserHangupCopyWithImpl<$Res>
    extends _$SipEventCopyWithImpl<$Res, _$_OnSocketRemoteUserHangup>
    implements _$$_OnSocketRemoteUserHangupCopyWith<$Res> {
  __$$_OnSocketRemoteUserHangupCopyWithImpl(_$_OnSocketRemoteUserHangup _value,
      $Res Function(_$_OnSocketRemoteUserHangup) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dlsId = null,
    Object? number = null,
  }) {
    return _then(_$_OnSocketRemoteUserHangup(
      null == dlsId
          ? _value.dlsId
          : dlsId // ignore: cast_nullable_to_non_nullable
              as int,
      null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_OnSocketRemoteUserHangup extends _OnSocketRemoteUserHangup
    with DiagnosticableTreeMixin {
  const _$_OnSocketRemoteUserHangup(this.dlsId, this.number) : super._();

  @override
  final int dlsId;
  @override
  final String number;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SipEvent.onSocketRemoteUserHangup(dlsId: $dlsId, number: $number)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SipEvent.onSocketRemoteUserHangup'))
      ..add(DiagnosticsProperty('dlsId', dlsId))
      ..add(DiagnosticsProperty('number', number));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OnSocketRemoteUserHangup &&
            (identical(other.dlsId, dlsId) || other.dlsId == dlsId) &&
            (identical(other.number, number) || other.number == number));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dlsId, number);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OnSocketRemoteUserHangupCopyWith<_$_OnSocketRemoteUserHangup>
      get copyWith => __$$_OnSocketRemoteUserHangupCopyWithImpl<
          _$_OnSocketRemoteUserHangup>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String chatId, bool isVideoMuted) doCall,
    required TResult Function(
            OutcomingPersonalCallStatus? outcomingPersonalCallStatus)
        hangUp,
    required TResult Function() forceHangUp,
    required TResult Function(String chatId) muteAudio,
    required TResult Function(String chatId) muteVideo,
    required TResult Function(String chatId) muteSpeaker,
    required TResult Function(String chatId) switchCamera,
    required TResult Function(List<CallMeta>? callsMeta) onSocketUpdate,
    required TResult Function(int dlsId, String number)
        onSocketRemoteUserHangup,
    required TResult Function(int dlsId, String number)
        onSocketRemoteUserReject,
    required TResult Function(int dlsId, String number) onSocketRemoteUserBusy,
    required TResult Function(CallMeta callMeta) onSocketSpeak,
    required TResult Function(String callId, SipActiveCallState callState)
        onCallStateChanged,
    required TResult Function(SipActiveCall sipCall) onSipCallStream,
    required TResult Function(
            SipActiveCall sipCall, SipActiveCallState callState)
        onSipNewCall,
    required TResult Function(SipActiveCall sipCall) onSipCallEnded,
    required TResult Function(
            SipActiveCall sipCall, bool isAudioMuted, bool isVideoMuted)
        onSipMuted,
    required TResult Function(
            SipActiveCall sipCall, bool isAudioMuted, bool isVideoMuted)
        onSipUnmuted,
    required TResult Function() maximize,
    required TResult Function() rejectIncoming,
    required TResult Function(ActiveCall activeCall) busyIncoming,
    required TResult Function() acceptIncoming,
  }) {
    return onSocketRemoteUserHangup(dlsId, number);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String chatId, bool isVideoMuted)? doCall,
    TResult? Function(OutcomingPersonalCallStatus? outcomingPersonalCallStatus)?
        hangUp,
    TResult? Function()? forceHangUp,
    TResult? Function(String chatId)? muteAudio,
    TResult? Function(String chatId)? muteVideo,
    TResult? Function(String chatId)? muteSpeaker,
    TResult? Function(String chatId)? switchCamera,
    TResult? Function(List<CallMeta>? callsMeta)? onSocketUpdate,
    TResult? Function(int dlsId, String number)? onSocketRemoteUserHangup,
    TResult? Function(int dlsId, String number)? onSocketRemoteUserReject,
    TResult? Function(int dlsId, String number)? onSocketRemoteUserBusy,
    TResult? Function(CallMeta callMeta)? onSocketSpeak,
    TResult? Function(String callId, SipActiveCallState callState)?
        onCallStateChanged,
    TResult? Function(SipActiveCall sipCall)? onSipCallStream,
    TResult? Function(SipActiveCall sipCall, SipActiveCallState callState)?
        onSipNewCall,
    TResult? Function(SipActiveCall sipCall)? onSipCallEnded,
    TResult? Function(
            SipActiveCall sipCall, bool isAudioMuted, bool isVideoMuted)?
        onSipMuted,
    TResult? Function(
            SipActiveCall sipCall, bool isAudioMuted, bool isVideoMuted)?
        onSipUnmuted,
    TResult? Function()? maximize,
    TResult? Function()? rejectIncoming,
    TResult? Function(ActiveCall activeCall)? busyIncoming,
    TResult? Function()? acceptIncoming,
  }) {
    return onSocketRemoteUserHangup?.call(dlsId, number);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String chatId, bool isVideoMuted)? doCall,
    TResult Function(OutcomingPersonalCallStatus? outcomingPersonalCallStatus)?
        hangUp,
    TResult Function()? forceHangUp,
    TResult Function(String chatId)? muteAudio,
    TResult Function(String chatId)? muteVideo,
    TResult Function(String chatId)? muteSpeaker,
    TResult Function(String chatId)? switchCamera,
    TResult Function(List<CallMeta>? callsMeta)? onSocketUpdate,
    TResult Function(int dlsId, String number)? onSocketRemoteUserHangup,
    TResult Function(int dlsId, String number)? onSocketRemoteUserReject,
    TResult Function(int dlsId, String number)? onSocketRemoteUserBusy,
    TResult Function(CallMeta callMeta)? onSocketSpeak,
    TResult Function(String callId, SipActiveCallState callState)?
        onCallStateChanged,
    TResult Function(SipActiveCall sipCall)? onSipCallStream,
    TResult Function(SipActiveCall sipCall, SipActiveCallState callState)?
        onSipNewCall,
    TResult Function(SipActiveCall sipCall)? onSipCallEnded,
    TResult Function(
            SipActiveCall sipCall, bool isAudioMuted, bool isVideoMuted)?
        onSipMuted,
    TResult Function(
            SipActiveCall sipCall, bool isAudioMuted, bool isVideoMuted)?
        onSipUnmuted,
    TResult Function()? maximize,
    TResult Function()? rejectIncoming,
    TResult Function(ActiveCall activeCall)? busyIncoming,
    TResult Function()? acceptIncoming,
    required TResult orElse(),
  }) {
    if (onSocketRemoteUserHangup != null) {
      return onSocketRemoteUserHangup(dlsId, number);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DoCallSipEvent value) doCall,
    required TResult Function(_DoHangUpSipEvent value) hangUp,
    required TResult Function(_ForceHangUpSipEvent value) forceHangUp,
    required TResult Function(_MuteAudioSipEvent value) muteAudio,
    required TResult Function(_MuteVideoSipEvent value) muteVideo,
    required TResult Function(_MuteSpeakerSipEvent value) muteSpeaker,
    required TResult Function(_SwitchCameraSipEvent value) switchCamera,
    required TResult Function(_OnSocketUpdateSipEvent value) onSocketUpdate,
    required TResult Function(_OnSocketRemoteUserHangup value)
        onSocketRemoteUserHangup,
    required TResult Function(_OnSocketRemoteUserRejectSipEvent value)
        onSocketRemoteUserReject,
    required TResult Function(_OnSocketRemoteUserBusySipEvent value)
        onSocketRemoteUserBusy,
    required TResult Function(_OnSocketSpeakSipEvent value) onSocketSpeak,
    required TResult Function(_OnCallStateChangedSipEvent value)
        onCallStateChanged,
    required TResult Function(_OnSipCallStreamSipEvent value) onSipCallStream,
    required TResult Function(_OnSipNewCallSipEvent value) onSipNewCall,
    required TResult Function(_OnSipCallEndedSipEvent value) onSipCallEnded,
    required TResult Function(_OnSipMutedSipEvent value) onSipMuted,
    required TResult Function(_OnSipUnmutedSipEvent value) onSipUnmuted,
    required TResult Function(_MaximizeSipEvent value) maximize,
    required TResult Function(_RejectIncomingSipEvent value) rejectIncoming,
    required TResult Function(_BusyIncomingSipEvent value) busyIncoming,
    required TResult Function(_AcceptIncomingSipEvent value) acceptIncoming,
  }) {
    return onSocketRemoteUserHangup(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DoCallSipEvent value)? doCall,
    TResult? Function(_DoHangUpSipEvent value)? hangUp,
    TResult? Function(_ForceHangUpSipEvent value)? forceHangUp,
    TResult? Function(_MuteAudioSipEvent value)? muteAudio,
    TResult? Function(_MuteVideoSipEvent value)? muteVideo,
    TResult? Function(_MuteSpeakerSipEvent value)? muteSpeaker,
    TResult? Function(_SwitchCameraSipEvent value)? switchCamera,
    TResult? Function(_OnSocketUpdateSipEvent value)? onSocketUpdate,
    TResult? Function(_OnSocketRemoteUserHangup value)?
        onSocketRemoteUserHangup,
    TResult? Function(_OnSocketRemoteUserRejectSipEvent value)?
        onSocketRemoteUserReject,
    TResult? Function(_OnSocketRemoteUserBusySipEvent value)?
        onSocketRemoteUserBusy,
    TResult? Function(_OnSocketSpeakSipEvent value)? onSocketSpeak,
    TResult? Function(_OnCallStateChangedSipEvent value)? onCallStateChanged,
    TResult? Function(_OnSipCallStreamSipEvent value)? onSipCallStream,
    TResult? Function(_OnSipNewCallSipEvent value)? onSipNewCall,
    TResult? Function(_OnSipCallEndedSipEvent value)? onSipCallEnded,
    TResult? Function(_OnSipMutedSipEvent value)? onSipMuted,
    TResult? Function(_OnSipUnmutedSipEvent value)? onSipUnmuted,
    TResult? Function(_MaximizeSipEvent value)? maximize,
    TResult? Function(_RejectIncomingSipEvent value)? rejectIncoming,
    TResult? Function(_BusyIncomingSipEvent value)? busyIncoming,
    TResult? Function(_AcceptIncomingSipEvent value)? acceptIncoming,
  }) {
    return onSocketRemoteUserHangup?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DoCallSipEvent value)? doCall,
    TResult Function(_DoHangUpSipEvent value)? hangUp,
    TResult Function(_ForceHangUpSipEvent value)? forceHangUp,
    TResult Function(_MuteAudioSipEvent value)? muteAudio,
    TResult Function(_MuteVideoSipEvent value)? muteVideo,
    TResult Function(_MuteSpeakerSipEvent value)? muteSpeaker,
    TResult Function(_SwitchCameraSipEvent value)? switchCamera,
    TResult Function(_OnSocketUpdateSipEvent value)? onSocketUpdate,
    TResult Function(_OnSocketRemoteUserHangup value)? onSocketRemoteUserHangup,
    TResult Function(_OnSocketRemoteUserRejectSipEvent value)?
        onSocketRemoteUserReject,
    TResult Function(_OnSocketRemoteUserBusySipEvent value)?
        onSocketRemoteUserBusy,
    TResult Function(_OnSocketSpeakSipEvent value)? onSocketSpeak,
    TResult Function(_OnCallStateChangedSipEvent value)? onCallStateChanged,
    TResult Function(_OnSipCallStreamSipEvent value)? onSipCallStream,
    TResult Function(_OnSipNewCallSipEvent value)? onSipNewCall,
    TResult Function(_OnSipCallEndedSipEvent value)? onSipCallEnded,
    TResult Function(_OnSipMutedSipEvent value)? onSipMuted,
    TResult Function(_OnSipUnmutedSipEvent value)? onSipUnmuted,
    TResult Function(_MaximizeSipEvent value)? maximize,
    TResult Function(_RejectIncomingSipEvent value)? rejectIncoming,
    TResult Function(_BusyIncomingSipEvent value)? busyIncoming,
    TResult Function(_AcceptIncomingSipEvent value)? acceptIncoming,
    required TResult orElse(),
  }) {
    if (onSocketRemoteUserHangup != null) {
      return onSocketRemoteUserHangup(this);
    }
    return orElse();
  }
}

abstract class _OnSocketRemoteUserHangup extends SipEvent {
  const factory _OnSocketRemoteUserHangup(
      final int dlsId, final String number) = _$_OnSocketRemoteUserHangup;
  const _OnSocketRemoteUserHangup._() : super._();

  int get dlsId;
  String get number;
  @JsonKey(ignore: true)
  _$$_OnSocketRemoteUserHangupCopyWith<_$_OnSocketRemoteUserHangup>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_OnSocketRemoteUserRejectSipEventCopyWith<$Res> {
  factory _$$_OnSocketRemoteUserRejectSipEventCopyWith(
          _$_OnSocketRemoteUserRejectSipEvent value,
          $Res Function(_$_OnSocketRemoteUserRejectSipEvent) then) =
      __$$_OnSocketRemoteUserRejectSipEventCopyWithImpl<$Res>;
  @useResult
  $Res call({int dlsId, String number});
}

/// @nodoc
class __$$_OnSocketRemoteUserRejectSipEventCopyWithImpl<$Res>
    extends _$SipEventCopyWithImpl<$Res, _$_OnSocketRemoteUserRejectSipEvent>
    implements _$$_OnSocketRemoteUserRejectSipEventCopyWith<$Res> {
  __$$_OnSocketRemoteUserRejectSipEventCopyWithImpl(
      _$_OnSocketRemoteUserRejectSipEvent _value,
      $Res Function(_$_OnSocketRemoteUserRejectSipEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dlsId = null,
    Object? number = null,
  }) {
    return _then(_$_OnSocketRemoteUserRejectSipEvent(
      null == dlsId
          ? _value.dlsId
          : dlsId // ignore: cast_nullable_to_non_nullable
              as int,
      null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_OnSocketRemoteUserRejectSipEvent
    extends _OnSocketRemoteUserRejectSipEvent with DiagnosticableTreeMixin {
  const _$_OnSocketRemoteUserRejectSipEvent(this.dlsId, this.number)
      : super._();

  @override
  final int dlsId;
  @override
  final String number;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SipEvent.onSocketRemoteUserReject(dlsId: $dlsId, number: $number)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SipEvent.onSocketRemoteUserReject'))
      ..add(DiagnosticsProperty('dlsId', dlsId))
      ..add(DiagnosticsProperty('number', number));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OnSocketRemoteUserRejectSipEvent &&
            (identical(other.dlsId, dlsId) || other.dlsId == dlsId) &&
            (identical(other.number, number) || other.number == number));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dlsId, number);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OnSocketRemoteUserRejectSipEventCopyWith<
          _$_OnSocketRemoteUserRejectSipEvent>
      get copyWith => __$$_OnSocketRemoteUserRejectSipEventCopyWithImpl<
          _$_OnSocketRemoteUserRejectSipEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String chatId, bool isVideoMuted) doCall,
    required TResult Function(
            OutcomingPersonalCallStatus? outcomingPersonalCallStatus)
        hangUp,
    required TResult Function() forceHangUp,
    required TResult Function(String chatId) muteAudio,
    required TResult Function(String chatId) muteVideo,
    required TResult Function(String chatId) muteSpeaker,
    required TResult Function(String chatId) switchCamera,
    required TResult Function(List<CallMeta>? callsMeta) onSocketUpdate,
    required TResult Function(int dlsId, String number)
        onSocketRemoteUserHangup,
    required TResult Function(int dlsId, String number)
        onSocketRemoteUserReject,
    required TResult Function(int dlsId, String number) onSocketRemoteUserBusy,
    required TResult Function(CallMeta callMeta) onSocketSpeak,
    required TResult Function(String callId, SipActiveCallState callState)
        onCallStateChanged,
    required TResult Function(SipActiveCall sipCall) onSipCallStream,
    required TResult Function(
            SipActiveCall sipCall, SipActiveCallState callState)
        onSipNewCall,
    required TResult Function(SipActiveCall sipCall) onSipCallEnded,
    required TResult Function(
            SipActiveCall sipCall, bool isAudioMuted, bool isVideoMuted)
        onSipMuted,
    required TResult Function(
            SipActiveCall sipCall, bool isAudioMuted, bool isVideoMuted)
        onSipUnmuted,
    required TResult Function() maximize,
    required TResult Function() rejectIncoming,
    required TResult Function(ActiveCall activeCall) busyIncoming,
    required TResult Function() acceptIncoming,
  }) {
    return onSocketRemoteUserReject(dlsId, number);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String chatId, bool isVideoMuted)? doCall,
    TResult? Function(OutcomingPersonalCallStatus? outcomingPersonalCallStatus)?
        hangUp,
    TResult? Function()? forceHangUp,
    TResult? Function(String chatId)? muteAudio,
    TResult? Function(String chatId)? muteVideo,
    TResult? Function(String chatId)? muteSpeaker,
    TResult? Function(String chatId)? switchCamera,
    TResult? Function(List<CallMeta>? callsMeta)? onSocketUpdate,
    TResult? Function(int dlsId, String number)? onSocketRemoteUserHangup,
    TResult? Function(int dlsId, String number)? onSocketRemoteUserReject,
    TResult? Function(int dlsId, String number)? onSocketRemoteUserBusy,
    TResult? Function(CallMeta callMeta)? onSocketSpeak,
    TResult? Function(String callId, SipActiveCallState callState)?
        onCallStateChanged,
    TResult? Function(SipActiveCall sipCall)? onSipCallStream,
    TResult? Function(SipActiveCall sipCall, SipActiveCallState callState)?
        onSipNewCall,
    TResult? Function(SipActiveCall sipCall)? onSipCallEnded,
    TResult? Function(
            SipActiveCall sipCall, bool isAudioMuted, bool isVideoMuted)?
        onSipMuted,
    TResult? Function(
            SipActiveCall sipCall, bool isAudioMuted, bool isVideoMuted)?
        onSipUnmuted,
    TResult? Function()? maximize,
    TResult? Function()? rejectIncoming,
    TResult? Function(ActiveCall activeCall)? busyIncoming,
    TResult? Function()? acceptIncoming,
  }) {
    return onSocketRemoteUserReject?.call(dlsId, number);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String chatId, bool isVideoMuted)? doCall,
    TResult Function(OutcomingPersonalCallStatus? outcomingPersonalCallStatus)?
        hangUp,
    TResult Function()? forceHangUp,
    TResult Function(String chatId)? muteAudio,
    TResult Function(String chatId)? muteVideo,
    TResult Function(String chatId)? muteSpeaker,
    TResult Function(String chatId)? switchCamera,
    TResult Function(List<CallMeta>? callsMeta)? onSocketUpdate,
    TResult Function(int dlsId, String number)? onSocketRemoteUserHangup,
    TResult Function(int dlsId, String number)? onSocketRemoteUserReject,
    TResult Function(int dlsId, String number)? onSocketRemoteUserBusy,
    TResult Function(CallMeta callMeta)? onSocketSpeak,
    TResult Function(String callId, SipActiveCallState callState)?
        onCallStateChanged,
    TResult Function(SipActiveCall sipCall)? onSipCallStream,
    TResult Function(SipActiveCall sipCall, SipActiveCallState callState)?
        onSipNewCall,
    TResult Function(SipActiveCall sipCall)? onSipCallEnded,
    TResult Function(
            SipActiveCall sipCall, bool isAudioMuted, bool isVideoMuted)?
        onSipMuted,
    TResult Function(
            SipActiveCall sipCall, bool isAudioMuted, bool isVideoMuted)?
        onSipUnmuted,
    TResult Function()? maximize,
    TResult Function()? rejectIncoming,
    TResult Function(ActiveCall activeCall)? busyIncoming,
    TResult Function()? acceptIncoming,
    required TResult orElse(),
  }) {
    if (onSocketRemoteUserReject != null) {
      return onSocketRemoteUserReject(dlsId, number);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DoCallSipEvent value) doCall,
    required TResult Function(_DoHangUpSipEvent value) hangUp,
    required TResult Function(_ForceHangUpSipEvent value) forceHangUp,
    required TResult Function(_MuteAudioSipEvent value) muteAudio,
    required TResult Function(_MuteVideoSipEvent value) muteVideo,
    required TResult Function(_MuteSpeakerSipEvent value) muteSpeaker,
    required TResult Function(_SwitchCameraSipEvent value) switchCamera,
    required TResult Function(_OnSocketUpdateSipEvent value) onSocketUpdate,
    required TResult Function(_OnSocketRemoteUserHangup value)
        onSocketRemoteUserHangup,
    required TResult Function(_OnSocketRemoteUserRejectSipEvent value)
        onSocketRemoteUserReject,
    required TResult Function(_OnSocketRemoteUserBusySipEvent value)
        onSocketRemoteUserBusy,
    required TResult Function(_OnSocketSpeakSipEvent value) onSocketSpeak,
    required TResult Function(_OnCallStateChangedSipEvent value)
        onCallStateChanged,
    required TResult Function(_OnSipCallStreamSipEvent value) onSipCallStream,
    required TResult Function(_OnSipNewCallSipEvent value) onSipNewCall,
    required TResult Function(_OnSipCallEndedSipEvent value) onSipCallEnded,
    required TResult Function(_OnSipMutedSipEvent value) onSipMuted,
    required TResult Function(_OnSipUnmutedSipEvent value) onSipUnmuted,
    required TResult Function(_MaximizeSipEvent value) maximize,
    required TResult Function(_RejectIncomingSipEvent value) rejectIncoming,
    required TResult Function(_BusyIncomingSipEvent value) busyIncoming,
    required TResult Function(_AcceptIncomingSipEvent value) acceptIncoming,
  }) {
    return onSocketRemoteUserReject(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DoCallSipEvent value)? doCall,
    TResult? Function(_DoHangUpSipEvent value)? hangUp,
    TResult? Function(_ForceHangUpSipEvent value)? forceHangUp,
    TResult? Function(_MuteAudioSipEvent value)? muteAudio,
    TResult? Function(_MuteVideoSipEvent value)? muteVideo,
    TResult? Function(_MuteSpeakerSipEvent value)? muteSpeaker,
    TResult? Function(_SwitchCameraSipEvent value)? switchCamera,
    TResult? Function(_OnSocketUpdateSipEvent value)? onSocketUpdate,
    TResult? Function(_OnSocketRemoteUserHangup value)?
        onSocketRemoteUserHangup,
    TResult? Function(_OnSocketRemoteUserRejectSipEvent value)?
        onSocketRemoteUserReject,
    TResult? Function(_OnSocketRemoteUserBusySipEvent value)?
        onSocketRemoteUserBusy,
    TResult? Function(_OnSocketSpeakSipEvent value)? onSocketSpeak,
    TResult? Function(_OnCallStateChangedSipEvent value)? onCallStateChanged,
    TResult? Function(_OnSipCallStreamSipEvent value)? onSipCallStream,
    TResult? Function(_OnSipNewCallSipEvent value)? onSipNewCall,
    TResult? Function(_OnSipCallEndedSipEvent value)? onSipCallEnded,
    TResult? Function(_OnSipMutedSipEvent value)? onSipMuted,
    TResult? Function(_OnSipUnmutedSipEvent value)? onSipUnmuted,
    TResult? Function(_MaximizeSipEvent value)? maximize,
    TResult? Function(_RejectIncomingSipEvent value)? rejectIncoming,
    TResult? Function(_BusyIncomingSipEvent value)? busyIncoming,
    TResult? Function(_AcceptIncomingSipEvent value)? acceptIncoming,
  }) {
    return onSocketRemoteUserReject?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DoCallSipEvent value)? doCall,
    TResult Function(_DoHangUpSipEvent value)? hangUp,
    TResult Function(_ForceHangUpSipEvent value)? forceHangUp,
    TResult Function(_MuteAudioSipEvent value)? muteAudio,
    TResult Function(_MuteVideoSipEvent value)? muteVideo,
    TResult Function(_MuteSpeakerSipEvent value)? muteSpeaker,
    TResult Function(_SwitchCameraSipEvent value)? switchCamera,
    TResult Function(_OnSocketUpdateSipEvent value)? onSocketUpdate,
    TResult Function(_OnSocketRemoteUserHangup value)? onSocketRemoteUserHangup,
    TResult Function(_OnSocketRemoteUserRejectSipEvent value)?
        onSocketRemoteUserReject,
    TResult Function(_OnSocketRemoteUserBusySipEvent value)?
        onSocketRemoteUserBusy,
    TResult Function(_OnSocketSpeakSipEvent value)? onSocketSpeak,
    TResult Function(_OnCallStateChangedSipEvent value)? onCallStateChanged,
    TResult Function(_OnSipCallStreamSipEvent value)? onSipCallStream,
    TResult Function(_OnSipNewCallSipEvent value)? onSipNewCall,
    TResult Function(_OnSipCallEndedSipEvent value)? onSipCallEnded,
    TResult Function(_OnSipMutedSipEvent value)? onSipMuted,
    TResult Function(_OnSipUnmutedSipEvent value)? onSipUnmuted,
    TResult Function(_MaximizeSipEvent value)? maximize,
    TResult Function(_RejectIncomingSipEvent value)? rejectIncoming,
    TResult Function(_BusyIncomingSipEvent value)? busyIncoming,
    TResult Function(_AcceptIncomingSipEvent value)? acceptIncoming,
    required TResult orElse(),
  }) {
    if (onSocketRemoteUserReject != null) {
      return onSocketRemoteUserReject(this);
    }
    return orElse();
  }
}

abstract class _OnSocketRemoteUserRejectSipEvent extends SipEvent {
  const factory _OnSocketRemoteUserRejectSipEvent(
          final int dlsId, final String number) =
      _$_OnSocketRemoteUserRejectSipEvent;
  const _OnSocketRemoteUserRejectSipEvent._() : super._();

  int get dlsId;
  String get number;
  @JsonKey(ignore: true)
  _$$_OnSocketRemoteUserRejectSipEventCopyWith<
          _$_OnSocketRemoteUserRejectSipEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_OnSocketRemoteUserBusySipEventCopyWith<$Res> {
  factory _$$_OnSocketRemoteUserBusySipEventCopyWith(
          _$_OnSocketRemoteUserBusySipEvent value,
          $Res Function(_$_OnSocketRemoteUserBusySipEvent) then) =
      __$$_OnSocketRemoteUserBusySipEventCopyWithImpl<$Res>;
  @useResult
  $Res call({int dlsId, String number});
}

/// @nodoc
class __$$_OnSocketRemoteUserBusySipEventCopyWithImpl<$Res>
    extends _$SipEventCopyWithImpl<$Res, _$_OnSocketRemoteUserBusySipEvent>
    implements _$$_OnSocketRemoteUserBusySipEventCopyWith<$Res> {
  __$$_OnSocketRemoteUserBusySipEventCopyWithImpl(
      _$_OnSocketRemoteUserBusySipEvent _value,
      $Res Function(_$_OnSocketRemoteUserBusySipEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dlsId = null,
    Object? number = null,
  }) {
    return _then(_$_OnSocketRemoteUserBusySipEvent(
      null == dlsId
          ? _value.dlsId
          : dlsId // ignore: cast_nullable_to_non_nullable
              as int,
      null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_OnSocketRemoteUserBusySipEvent extends _OnSocketRemoteUserBusySipEvent
    with DiagnosticableTreeMixin {
  const _$_OnSocketRemoteUserBusySipEvent(this.dlsId, this.number) : super._();

  @override
  final int dlsId;
  @override
  final String number;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SipEvent.onSocketRemoteUserBusy(dlsId: $dlsId, number: $number)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SipEvent.onSocketRemoteUserBusy'))
      ..add(DiagnosticsProperty('dlsId', dlsId))
      ..add(DiagnosticsProperty('number', number));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OnSocketRemoteUserBusySipEvent &&
            (identical(other.dlsId, dlsId) || other.dlsId == dlsId) &&
            (identical(other.number, number) || other.number == number));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dlsId, number);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OnSocketRemoteUserBusySipEventCopyWith<_$_OnSocketRemoteUserBusySipEvent>
      get copyWith => __$$_OnSocketRemoteUserBusySipEventCopyWithImpl<
          _$_OnSocketRemoteUserBusySipEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String chatId, bool isVideoMuted) doCall,
    required TResult Function(
            OutcomingPersonalCallStatus? outcomingPersonalCallStatus)
        hangUp,
    required TResult Function() forceHangUp,
    required TResult Function(String chatId) muteAudio,
    required TResult Function(String chatId) muteVideo,
    required TResult Function(String chatId) muteSpeaker,
    required TResult Function(String chatId) switchCamera,
    required TResult Function(List<CallMeta>? callsMeta) onSocketUpdate,
    required TResult Function(int dlsId, String number)
        onSocketRemoteUserHangup,
    required TResult Function(int dlsId, String number)
        onSocketRemoteUserReject,
    required TResult Function(int dlsId, String number) onSocketRemoteUserBusy,
    required TResult Function(CallMeta callMeta) onSocketSpeak,
    required TResult Function(String callId, SipActiveCallState callState)
        onCallStateChanged,
    required TResult Function(SipActiveCall sipCall) onSipCallStream,
    required TResult Function(
            SipActiveCall sipCall, SipActiveCallState callState)
        onSipNewCall,
    required TResult Function(SipActiveCall sipCall) onSipCallEnded,
    required TResult Function(
            SipActiveCall sipCall, bool isAudioMuted, bool isVideoMuted)
        onSipMuted,
    required TResult Function(
            SipActiveCall sipCall, bool isAudioMuted, bool isVideoMuted)
        onSipUnmuted,
    required TResult Function() maximize,
    required TResult Function() rejectIncoming,
    required TResult Function(ActiveCall activeCall) busyIncoming,
    required TResult Function() acceptIncoming,
  }) {
    return onSocketRemoteUserBusy(dlsId, number);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String chatId, bool isVideoMuted)? doCall,
    TResult? Function(OutcomingPersonalCallStatus? outcomingPersonalCallStatus)?
        hangUp,
    TResult? Function()? forceHangUp,
    TResult? Function(String chatId)? muteAudio,
    TResult? Function(String chatId)? muteVideo,
    TResult? Function(String chatId)? muteSpeaker,
    TResult? Function(String chatId)? switchCamera,
    TResult? Function(List<CallMeta>? callsMeta)? onSocketUpdate,
    TResult? Function(int dlsId, String number)? onSocketRemoteUserHangup,
    TResult? Function(int dlsId, String number)? onSocketRemoteUserReject,
    TResult? Function(int dlsId, String number)? onSocketRemoteUserBusy,
    TResult? Function(CallMeta callMeta)? onSocketSpeak,
    TResult? Function(String callId, SipActiveCallState callState)?
        onCallStateChanged,
    TResult? Function(SipActiveCall sipCall)? onSipCallStream,
    TResult? Function(SipActiveCall sipCall, SipActiveCallState callState)?
        onSipNewCall,
    TResult? Function(SipActiveCall sipCall)? onSipCallEnded,
    TResult? Function(
            SipActiveCall sipCall, bool isAudioMuted, bool isVideoMuted)?
        onSipMuted,
    TResult? Function(
            SipActiveCall sipCall, bool isAudioMuted, bool isVideoMuted)?
        onSipUnmuted,
    TResult? Function()? maximize,
    TResult? Function()? rejectIncoming,
    TResult? Function(ActiveCall activeCall)? busyIncoming,
    TResult? Function()? acceptIncoming,
  }) {
    return onSocketRemoteUserBusy?.call(dlsId, number);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String chatId, bool isVideoMuted)? doCall,
    TResult Function(OutcomingPersonalCallStatus? outcomingPersonalCallStatus)?
        hangUp,
    TResult Function()? forceHangUp,
    TResult Function(String chatId)? muteAudio,
    TResult Function(String chatId)? muteVideo,
    TResult Function(String chatId)? muteSpeaker,
    TResult Function(String chatId)? switchCamera,
    TResult Function(List<CallMeta>? callsMeta)? onSocketUpdate,
    TResult Function(int dlsId, String number)? onSocketRemoteUserHangup,
    TResult Function(int dlsId, String number)? onSocketRemoteUserReject,
    TResult Function(int dlsId, String number)? onSocketRemoteUserBusy,
    TResult Function(CallMeta callMeta)? onSocketSpeak,
    TResult Function(String callId, SipActiveCallState callState)?
        onCallStateChanged,
    TResult Function(SipActiveCall sipCall)? onSipCallStream,
    TResult Function(SipActiveCall sipCall, SipActiveCallState callState)?
        onSipNewCall,
    TResult Function(SipActiveCall sipCall)? onSipCallEnded,
    TResult Function(
            SipActiveCall sipCall, bool isAudioMuted, bool isVideoMuted)?
        onSipMuted,
    TResult Function(
            SipActiveCall sipCall, bool isAudioMuted, bool isVideoMuted)?
        onSipUnmuted,
    TResult Function()? maximize,
    TResult Function()? rejectIncoming,
    TResult Function(ActiveCall activeCall)? busyIncoming,
    TResult Function()? acceptIncoming,
    required TResult orElse(),
  }) {
    if (onSocketRemoteUserBusy != null) {
      return onSocketRemoteUserBusy(dlsId, number);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DoCallSipEvent value) doCall,
    required TResult Function(_DoHangUpSipEvent value) hangUp,
    required TResult Function(_ForceHangUpSipEvent value) forceHangUp,
    required TResult Function(_MuteAudioSipEvent value) muteAudio,
    required TResult Function(_MuteVideoSipEvent value) muteVideo,
    required TResult Function(_MuteSpeakerSipEvent value) muteSpeaker,
    required TResult Function(_SwitchCameraSipEvent value) switchCamera,
    required TResult Function(_OnSocketUpdateSipEvent value) onSocketUpdate,
    required TResult Function(_OnSocketRemoteUserHangup value)
        onSocketRemoteUserHangup,
    required TResult Function(_OnSocketRemoteUserRejectSipEvent value)
        onSocketRemoteUserReject,
    required TResult Function(_OnSocketRemoteUserBusySipEvent value)
        onSocketRemoteUserBusy,
    required TResult Function(_OnSocketSpeakSipEvent value) onSocketSpeak,
    required TResult Function(_OnCallStateChangedSipEvent value)
        onCallStateChanged,
    required TResult Function(_OnSipCallStreamSipEvent value) onSipCallStream,
    required TResult Function(_OnSipNewCallSipEvent value) onSipNewCall,
    required TResult Function(_OnSipCallEndedSipEvent value) onSipCallEnded,
    required TResult Function(_OnSipMutedSipEvent value) onSipMuted,
    required TResult Function(_OnSipUnmutedSipEvent value) onSipUnmuted,
    required TResult Function(_MaximizeSipEvent value) maximize,
    required TResult Function(_RejectIncomingSipEvent value) rejectIncoming,
    required TResult Function(_BusyIncomingSipEvent value) busyIncoming,
    required TResult Function(_AcceptIncomingSipEvent value) acceptIncoming,
  }) {
    return onSocketRemoteUserBusy(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DoCallSipEvent value)? doCall,
    TResult? Function(_DoHangUpSipEvent value)? hangUp,
    TResult? Function(_ForceHangUpSipEvent value)? forceHangUp,
    TResult? Function(_MuteAudioSipEvent value)? muteAudio,
    TResult? Function(_MuteVideoSipEvent value)? muteVideo,
    TResult? Function(_MuteSpeakerSipEvent value)? muteSpeaker,
    TResult? Function(_SwitchCameraSipEvent value)? switchCamera,
    TResult? Function(_OnSocketUpdateSipEvent value)? onSocketUpdate,
    TResult? Function(_OnSocketRemoteUserHangup value)?
        onSocketRemoteUserHangup,
    TResult? Function(_OnSocketRemoteUserRejectSipEvent value)?
        onSocketRemoteUserReject,
    TResult? Function(_OnSocketRemoteUserBusySipEvent value)?
        onSocketRemoteUserBusy,
    TResult? Function(_OnSocketSpeakSipEvent value)? onSocketSpeak,
    TResult? Function(_OnCallStateChangedSipEvent value)? onCallStateChanged,
    TResult? Function(_OnSipCallStreamSipEvent value)? onSipCallStream,
    TResult? Function(_OnSipNewCallSipEvent value)? onSipNewCall,
    TResult? Function(_OnSipCallEndedSipEvent value)? onSipCallEnded,
    TResult? Function(_OnSipMutedSipEvent value)? onSipMuted,
    TResult? Function(_OnSipUnmutedSipEvent value)? onSipUnmuted,
    TResult? Function(_MaximizeSipEvent value)? maximize,
    TResult? Function(_RejectIncomingSipEvent value)? rejectIncoming,
    TResult? Function(_BusyIncomingSipEvent value)? busyIncoming,
    TResult? Function(_AcceptIncomingSipEvent value)? acceptIncoming,
  }) {
    return onSocketRemoteUserBusy?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DoCallSipEvent value)? doCall,
    TResult Function(_DoHangUpSipEvent value)? hangUp,
    TResult Function(_ForceHangUpSipEvent value)? forceHangUp,
    TResult Function(_MuteAudioSipEvent value)? muteAudio,
    TResult Function(_MuteVideoSipEvent value)? muteVideo,
    TResult Function(_MuteSpeakerSipEvent value)? muteSpeaker,
    TResult Function(_SwitchCameraSipEvent value)? switchCamera,
    TResult Function(_OnSocketUpdateSipEvent value)? onSocketUpdate,
    TResult Function(_OnSocketRemoteUserHangup value)? onSocketRemoteUserHangup,
    TResult Function(_OnSocketRemoteUserRejectSipEvent value)?
        onSocketRemoteUserReject,
    TResult Function(_OnSocketRemoteUserBusySipEvent value)?
        onSocketRemoteUserBusy,
    TResult Function(_OnSocketSpeakSipEvent value)? onSocketSpeak,
    TResult Function(_OnCallStateChangedSipEvent value)? onCallStateChanged,
    TResult Function(_OnSipCallStreamSipEvent value)? onSipCallStream,
    TResult Function(_OnSipNewCallSipEvent value)? onSipNewCall,
    TResult Function(_OnSipCallEndedSipEvent value)? onSipCallEnded,
    TResult Function(_OnSipMutedSipEvent value)? onSipMuted,
    TResult Function(_OnSipUnmutedSipEvent value)? onSipUnmuted,
    TResult Function(_MaximizeSipEvent value)? maximize,
    TResult Function(_RejectIncomingSipEvent value)? rejectIncoming,
    TResult Function(_BusyIncomingSipEvent value)? busyIncoming,
    TResult Function(_AcceptIncomingSipEvent value)? acceptIncoming,
    required TResult orElse(),
  }) {
    if (onSocketRemoteUserBusy != null) {
      return onSocketRemoteUserBusy(this);
    }
    return orElse();
  }
}

abstract class _OnSocketRemoteUserBusySipEvent extends SipEvent {
  const factory _OnSocketRemoteUserBusySipEvent(
      final int dlsId, final String number) = _$_OnSocketRemoteUserBusySipEvent;
  const _OnSocketRemoteUserBusySipEvent._() : super._();

  int get dlsId;
  String get number;
  @JsonKey(ignore: true)
  _$$_OnSocketRemoteUserBusySipEventCopyWith<_$_OnSocketRemoteUserBusySipEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_OnSocketSpeakSipEventCopyWith<$Res> {
  factory _$$_OnSocketSpeakSipEventCopyWith(_$_OnSocketSpeakSipEvent value,
          $Res Function(_$_OnSocketSpeakSipEvent) then) =
      __$$_OnSocketSpeakSipEventCopyWithImpl<$Res>;
  @useResult
  $Res call({CallMeta callMeta});

  $CallMetaCopyWith<$Res> get callMeta;
}

/// @nodoc
class __$$_OnSocketSpeakSipEventCopyWithImpl<$Res>
    extends _$SipEventCopyWithImpl<$Res, _$_OnSocketSpeakSipEvent>
    implements _$$_OnSocketSpeakSipEventCopyWith<$Res> {
  __$$_OnSocketSpeakSipEventCopyWithImpl(_$_OnSocketSpeakSipEvent _value,
      $Res Function(_$_OnSocketSpeakSipEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? callMeta = null,
  }) {
    return _then(_$_OnSocketSpeakSipEvent(
      callMeta: null == callMeta
          ? _value.callMeta
          : callMeta // ignore: cast_nullable_to_non_nullable
              as CallMeta,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CallMetaCopyWith<$Res> get callMeta {
    return $CallMetaCopyWith<$Res>(_value.callMeta, (value) {
      return _then(_value.copyWith(callMeta: value));
    });
  }
}

/// @nodoc

class _$_OnSocketSpeakSipEvent extends _OnSocketSpeakSipEvent
    with DiagnosticableTreeMixin {
  const _$_OnSocketSpeakSipEvent({required this.callMeta}) : super._();

  @override
  final CallMeta callMeta;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SipEvent.onSocketSpeak(callMeta: $callMeta)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SipEvent.onSocketSpeak'))
      ..add(DiagnosticsProperty('callMeta', callMeta));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OnSocketSpeakSipEvent &&
            (identical(other.callMeta, callMeta) ||
                other.callMeta == callMeta));
  }

  @override
  int get hashCode => Object.hash(runtimeType, callMeta);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OnSocketSpeakSipEventCopyWith<_$_OnSocketSpeakSipEvent> get copyWith =>
      __$$_OnSocketSpeakSipEventCopyWithImpl<_$_OnSocketSpeakSipEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String chatId, bool isVideoMuted) doCall,
    required TResult Function(
            OutcomingPersonalCallStatus? outcomingPersonalCallStatus)
        hangUp,
    required TResult Function() forceHangUp,
    required TResult Function(String chatId) muteAudio,
    required TResult Function(String chatId) muteVideo,
    required TResult Function(String chatId) muteSpeaker,
    required TResult Function(String chatId) switchCamera,
    required TResult Function(List<CallMeta>? callsMeta) onSocketUpdate,
    required TResult Function(int dlsId, String number)
        onSocketRemoteUserHangup,
    required TResult Function(int dlsId, String number)
        onSocketRemoteUserReject,
    required TResult Function(int dlsId, String number) onSocketRemoteUserBusy,
    required TResult Function(CallMeta callMeta) onSocketSpeak,
    required TResult Function(String callId, SipActiveCallState callState)
        onCallStateChanged,
    required TResult Function(SipActiveCall sipCall) onSipCallStream,
    required TResult Function(
            SipActiveCall sipCall, SipActiveCallState callState)
        onSipNewCall,
    required TResult Function(SipActiveCall sipCall) onSipCallEnded,
    required TResult Function(
            SipActiveCall sipCall, bool isAudioMuted, bool isVideoMuted)
        onSipMuted,
    required TResult Function(
            SipActiveCall sipCall, bool isAudioMuted, bool isVideoMuted)
        onSipUnmuted,
    required TResult Function() maximize,
    required TResult Function() rejectIncoming,
    required TResult Function(ActiveCall activeCall) busyIncoming,
    required TResult Function() acceptIncoming,
  }) {
    return onSocketSpeak(callMeta);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String chatId, bool isVideoMuted)? doCall,
    TResult? Function(OutcomingPersonalCallStatus? outcomingPersonalCallStatus)?
        hangUp,
    TResult? Function()? forceHangUp,
    TResult? Function(String chatId)? muteAudio,
    TResult? Function(String chatId)? muteVideo,
    TResult? Function(String chatId)? muteSpeaker,
    TResult? Function(String chatId)? switchCamera,
    TResult? Function(List<CallMeta>? callsMeta)? onSocketUpdate,
    TResult? Function(int dlsId, String number)? onSocketRemoteUserHangup,
    TResult? Function(int dlsId, String number)? onSocketRemoteUserReject,
    TResult? Function(int dlsId, String number)? onSocketRemoteUserBusy,
    TResult? Function(CallMeta callMeta)? onSocketSpeak,
    TResult? Function(String callId, SipActiveCallState callState)?
        onCallStateChanged,
    TResult? Function(SipActiveCall sipCall)? onSipCallStream,
    TResult? Function(SipActiveCall sipCall, SipActiveCallState callState)?
        onSipNewCall,
    TResult? Function(SipActiveCall sipCall)? onSipCallEnded,
    TResult? Function(
            SipActiveCall sipCall, bool isAudioMuted, bool isVideoMuted)?
        onSipMuted,
    TResult? Function(
            SipActiveCall sipCall, bool isAudioMuted, bool isVideoMuted)?
        onSipUnmuted,
    TResult? Function()? maximize,
    TResult? Function()? rejectIncoming,
    TResult? Function(ActiveCall activeCall)? busyIncoming,
    TResult? Function()? acceptIncoming,
  }) {
    return onSocketSpeak?.call(callMeta);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String chatId, bool isVideoMuted)? doCall,
    TResult Function(OutcomingPersonalCallStatus? outcomingPersonalCallStatus)?
        hangUp,
    TResult Function()? forceHangUp,
    TResult Function(String chatId)? muteAudio,
    TResult Function(String chatId)? muteVideo,
    TResult Function(String chatId)? muteSpeaker,
    TResult Function(String chatId)? switchCamera,
    TResult Function(List<CallMeta>? callsMeta)? onSocketUpdate,
    TResult Function(int dlsId, String number)? onSocketRemoteUserHangup,
    TResult Function(int dlsId, String number)? onSocketRemoteUserReject,
    TResult Function(int dlsId, String number)? onSocketRemoteUserBusy,
    TResult Function(CallMeta callMeta)? onSocketSpeak,
    TResult Function(String callId, SipActiveCallState callState)?
        onCallStateChanged,
    TResult Function(SipActiveCall sipCall)? onSipCallStream,
    TResult Function(SipActiveCall sipCall, SipActiveCallState callState)?
        onSipNewCall,
    TResult Function(SipActiveCall sipCall)? onSipCallEnded,
    TResult Function(
            SipActiveCall sipCall, bool isAudioMuted, bool isVideoMuted)?
        onSipMuted,
    TResult Function(
            SipActiveCall sipCall, bool isAudioMuted, bool isVideoMuted)?
        onSipUnmuted,
    TResult Function()? maximize,
    TResult Function()? rejectIncoming,
    TResult Function(ActiveCall activeCall)? busyIncoming,
    TResult Function()? acceptIncoming,
    required TResult orElse(),
  }) {
    if (onSocketSpeak != null) {
      return onSocketSpeak(callMeta);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DoCallSipEvent value) doCall,
    required TResult Function(_DoHangUpSipEvent value) hangUp,
    required TResult Function(_ForceHangUpSipEvent value) forceHangUp,
    required TResult Function(_MuteAudioSipEvent value) muteAudio,
    required TResult Function(_MuteVideoSipEvent value) muteVideo,
    required TResult Function(_MuteSpeakerSipEvent value) muteSpeaker,
    required TResult Function(_SwitchCameraSipEvent value) switchCamera,
    required TResult Function(_OnSocketUpdateSipEvent value) onSocketUpdate,
    required TResult Function(_OnSocketRemoteUserHangup value)
        onSocketRemoteUserHangup,
    required TResult Function(_OnSocketRemoteUserRejectSipEvent value)
        onSocketRemoteUserReject,
    required TResult Function(_OnSocketRemoteUserBusySipEvent value)
        onSocketRemoteUserBusy,
    required TResult Function(_OnSocketSpeakSipEvent value) onSocketSpeak,
    required TResult Function(_OnCallStateChangedSipEvent value)
        onCallStateChanged,
    required TResult Function(_OnSipCallStreamSipEvent value) onSipCallStream,
    required TResult Function(_OnSipNewCallSipEvent value) onSipNewCall,
    required TResult Function(_OnSipCallEndedSipEvent value) onSipCallEnded,
    required TResult Function(_OnSipMutedSipEvent value) onSipMuted,
    required TResult Function(_OnSipUnmutedSipEvent value) onSipUnmuted,
    required TResult Function(_MaximizeSipEvent value) maximize,
    required TResult Function(_RejectIncomingSipEvent value) rejectIncoming,
    required TResult Function(_BusyIncomingSipEvent value) busyIncoming,
    required TResult Function(_AcceptIncomingSipEvent value) acceptIncoming,
  }) {
    return onSocketSpeak(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DoCallSipEvent value)? doCall,
    TResult? Function(_DoHangUpSipEvent value)? hangUp,
    TResult? Function(_ForceHangUpSipEvent value)? forceHangUp,
    TResult? Function(_MuteAudioSipEvent value)? muteAudio,
    TResult? Function(_MuteVideoSipEvent value)? muteVideo,
    TResult? Function(_MuteSpeakerSipEvent value)? muteSpeaker,
    TResult? Function(_SwitchCameraSipEvent value)? switchCamera,
    TResult? Function(_OnSocketUpdateSipEvent value)? onSocketUpdate,
    TResult? Function(_OnSocketRemoteUserHangup value)?
        onSocketRemoteUserHangup,
    TResult? Function(_OnSocketRemoteUserRejectSipEvent value)?
        onSocketRemoteUserReject,
    TResult? Function(_OnSocketRemoteUserBusySipEvent value)?
        onSocketRemoteUserBusy,
    TResult? Function(_OnSocketSpeakSipEvent value)? onSocketSpeak,
    TResult? Function(_OnCallStateChangedSipEvent value)? onCallStateChanged,
    TResult? Function(_OnSipCallStreamSipEvent value)? onSipCallStream,
    TResult? Function(_OnSipNewCallSipEvent value)? onSipNewCall,
    TResult? Function(_OnSipCallEndedSipEvent value)? onSipCallEnded,
    TResult? Function(_OnSipMutedSipEvent value)? onSipMuted,
    TResult? Function(_OnSipUnmutedSipEvent value)? onSipUnmuted,
    TResult? Function(_MaximizeSipEvent value)? maximize,
    TResult? Function(_RejectIncomingSipEvent value)? rejectIncoming,
    TResult? Function(_BusyIncomingSipEvent value)? busyIncoming,
    TResult? Function(_AcceptIncomingSipEvent value)? acceptIncoming,
  }) {
    return onSocketSpeak?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DoCallSipEvent value)? doCall,
    TResult Function(_DoHangUpSipEvent value)? hangUp,
    TResult Function(_ForceHangUpSipEvent value)? forceHangUp,
    TResult Function(_MuteAudioSipEvent value)? muteAudio,
    TResult Function(_MuteVideoSipEvent value)? muteVideo,
    TResult Function(_MuteSpeakerSipEvent value)? muteSpeaker,
    TResult Function(_SwitchCameraSipEvent value)? switchCamera,
    TResult Function(_OnSocketUpdateSipEvent value)? onSocketUpdate,
    TResult Function(_OnSocketRemoteUserHangup value)? onSocketRemoteUserHangup,
    TResult Function(_OnSocketRemoteUserRejectSipEvent value)?
        onSocketRemoteUserReject,
    TResult Function(_OnSocketRemoteUserBusySipEvent value)?
        onSocketRemoteUserBusy,
    TResult Function(_OnSocketSpeakSipEvent value)? onSocketSpeak,
    TResult Function(_OnCallStateChangedSipEvent value)? onCallStateChanged,
    TResult Function(_OnSipCallStreamSipEvent value)? onSipCallStream,
    TResult Function(_OnSipNewCallSipEvent value)? onSipNewCall,
    TResult Function(_OnSipCallEndedSipEvent value)? onSipCallEnded,
    TResult Function(_OnSipMutedSipEvent value)? onSipMuted,
    TResult Function(_OnSipUnmutedSipEvent value)? onSipUnmuted,
    TResult Function(_MaximizeSipEvent value)? maximize,
    TResult Function(_RejectIncomingSipEvent value)? rejectIncoming,
    TResult Function(_BusyIncomingSipEvent value)? busyIncoming,
    TResult Function(_AcceptIncomingSipEvent value)? acceptIncoming,
    required TResult orElse(),
  }) {
    if (onSocketSpeak != null) {
      return onSocketSpeak(this);
    }
    return orElse();
  }
}

abstract class _OnSocketSpeakSipEvent extends SipEvent {
  const factory _OnSocketSpeakSipEvent({required final CallMeta callMeta}) =
      _$_OnSocketSpeakSipEvent;
  const _OnSocketSpeakSipEvent._() : super._();

  CallMeta get callMeta;
  @JsonKey(ignore: true)
  _$$_OnSocketSpeakSipEventCopyWith<_$_OnSocketSpeakSipEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_OnCallStateChangedSipEventCopyWith<$Res> {
  factory _$$_OnCallStateChangedSipEventCopyWith(
          _$_OnCallStateChangedSipEvent value,
          $Res Function(_$_OnCallStateChangedSipEvent) then) =
      __$$_OnCallStateChangedSipEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String callId, SipActiveCallState callState});
}

/// @nodoc
class __$$_OnCallStateChangedSipEventCopyWithImpl<$Res>
    extends _$SipEventCopyWithImpl<$Res, _$_OnCallStateChangedSipEvent>
    implements _$$_OnCallStateChangedSipEventCopyWith<$Res> {
  __$$_OnCallStateChangedSipEventCopyWithImpl(
      _$_OnCallStateChangedSipEvent _value,
      $Res Function(_$_OnCallStateChangedSipEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? callId = null,
    Object? callState = null,
  }) {
    return _then(_$_OnCallStateChangedSipEvent(
      null == callId
          ? _value.callId
          : callId // ignore: cast_nullable_to_non_nullable
              as String,
      null == callState
          ? _value.callState
          : callState // ignore: cast_nullable_to_non_nullable
              as SipActiveCallState,
    ));
  }
}

/// @nodoc

class _$_OnCallStateChangedSipEvent extends _OnCallStateChangedSipEvent
    with DiagnosticableTreeMixin {
  const _$_OnCallStateChangedSipEvent(this.callId, this.callState) : super._();

  @override
  final String callId;
  @override
  final SipActiveCallState callState;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SipEvent.onCallStateChanged(callId: $callId, callState: $callState)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SipEvent.onCallStateChanged'))
      ..add(DiagnosticsProperty('callId', callId))
      ..add(DiagnosticsProperty('callState', callState));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OnCallStateChangedSipEvent &&
            (identical(other.callId, callId) || other.callId == callId) &&
            (identical(other.callState, callState) ||
                other.callState == callState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, callId, callState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OnCallStateChangedSipEventCopyWith<_$_OnCallStateChangedSipEvent>
      get copyWith => __$$_OnCallStateChangedSipEventCopyWithImpl<
          _$_OnCallStateChangedSipEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String chatId, bool isVideoMuted) doCall,
    required TResult Function(
            OutcomingPersonalCallStatus? outcomingPersonalCallStatus)
        hangUp,
    required TResult Function() forceHangUp,
    required TResult Function(String chatId) muteAudio,
    required TResult Function(String chatId) muteVideo,
    required TResult Function(String chatId) muteSpeaker,
    required TResult Function(String chatId) switchCamera,
    required TResult Function(List<CallMeta>? callsMeta) onSocketUpdate,
    required TResult Function(int dlsId, String number)
        onSocketRemoteUserHangup,
    required TResult Function(int dlsId, String number)
        onSocketRemoteUserReject,
    required TResult Function(int dlsId, String number) onSocketRemoteUserBusy,
    required TResult Function(CallMeta callMeta) onSocketSpeak,
    required TResult Function(String callId, SipActiveCallState callState)
        onCallStateChanged,
    required TResult Function(SipActiveCall sipCall) onSipCallStream,
    required TResult Function(
            SipActiveCall sipCall, SipActiveCallState callState)
        onSipNewCall,
    required TResult Function(SipActiveCall sipCall) onSipCallEnded,
    required TResult Function(
            SipActiveCall sipCall, bool isAudioMuted, bool isVideoMuted)
        onSipMuted,
    required TResult Function(
            SipActiveCall sipCall, bool isAudioMuted, bool isVideoMuted)
        onSipUnmuted,
    required TResult Function() maximize,
    required TResult Function() rejectIncoming,
    required TResult Function(ActiveCall activeCall) busyIncoming,
    required TResult Function() acceptIncoming,
  }) {
    return onCallStateChanged(callId, callState);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String chatId, bool isVideoMuted)? doCall,
    TResult? Function(OutcomingPersonalCallStatus? outcomingPersonalCallStatus)?
        hangUp,
    TResult? Function()? forceHangUp,
    TResult? Function(String chatId)? muteAudio,
    TResult? Function(String chatId)? muteVideo,
    TResult? Function(String chatId)? muteSpeaker,
    TResult? Function(String chatId)? switchCamera,
    TResult? Function(List<CallMeta>? callsMeta)? onSocketUpdate,
    TResult? Function(int dlsId, String number)? onSocketRemoteUserHangup,
    TResult? Function(int dlsId, String number)? onSocketRemoteUserReject,
    TResult? Function(int dlsId, String number)? onSocketRemoteUserBusy,
    TResult? Function(CallMeta callMeta)? onSocketSpeak,
    TResult? Function(String callId, SipActiveCallState callState)?
        onCallStateChanged,
    TResult? Function(SipActiveCall sipCall)? onSipCallStream,
    TResult? Function(SipActiveCall sipCall, SipActiveCallState callState)?
        onSipNewCall,
    TResult? Function(SipActiveCall sipCall)? onSipCallEnded,
    TResult? Function(
            SipActiveCall sipCall, bool isAudioMuted, bool isVideoMuted)?
        onSipMuted,
    TResult? Function(
            SipActiveCall sipCall, bool isAudioMuted, bool isVideoMuted)?
        onSipUnmuted,
    TResult? Function()? maximize,
    TResult? Function()? rejectIncoming,
    TResult? Function(ActiveCall activeCall)? busyIncoming,
    TResult? Function()? acceptIncoming,
  }) {
    return onCallStateChanged?.call(callId, callState);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String chatId, bool isVideoMuted)? doCall,
    TResult Function(OutcomingPersonalCallStatus? outcomingPersonalCallStatus)?
        hangUp,
    TResult Function()? forceHangUp,
    TResult Function(String chatId)? muteAudio,
    TResult Function(String chatId)? muteVideo,
    TResult Function(String chatId)? muteSpeaker,
    TResult Function(String chatId)? switchCamera,
    TResult Function(List<CallMeta>? callsMeta)? onSocketUpdate,
    TResult Function(int dlsId, String number)? onSocketRemoteUserHangup,
    TResult Function(int dlsId, String number)? onSocketRemoteUserReject,
    TResult Function(int dlsId, String number)? onSocketRemoteUserBusy,
    TResult Function(CallMeta callMeta)? onSocketSpeak,
    TResult Function(String callId, SipActiveCallState callState)?
        onCallStateChanged,
    TResult Function(SipActiveCall sipCall)? onSipCallStream,
    TResult Function(SipActiveCall sipCall, SipActiveCallState callState)?
        onSipNewCall,
    TResult Function(SipActiveCall sipCall)? onSipCallEnded,
    TResult Function(
            SipActiveCall sipCall, bool isAudioMuted, bool isVideoMuted)?
        onSipMuted,
    TResult Function(
            SipActiveCall sipCall, bool isAudioMuted, bool isVideoMuted)?
        onSipUnmuted,
    TResult Function()? maximize,
    TResult Function()? rejectIncoming,
    TResult Function(ActiveCall activeCall)? busyIncoming,
    TResult Function()? acceptIncoming,
    required TResult orElse(),
  }) {
    if (onCallStateChanged != null) {
      return onCallStateChanged(callId, callState);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DoCallSipEvent value) doCall,
    required TResult Function(_DoHangUpSipEvent value) hangUp,
    required TResult Function(_ForceHangUpSipEvent value) forceHangUp,
    required TResult Function(_MuteAudioSipEvent value) muteAudio,
    required TResult Function(_MuteVideoSipEvent value) muteVideo,
    required TResult Function(_MuteSpeakerSipEvent value) muteSpeaker,
    required TResult Function(_SwitchCameraSipEvent value) switchCamera,
    required TResult Function(_OnSocketUpdateSipEvent value) onSocketUpdate,
    required TResult Function(_OnSocketRemoteUserHangup value)
        onSocketRemoteUserHangup,
    required TResult Function(_OnSocketRemoteUserRejectSipEvent value)
        onSocketRemoteUserReject,
    required TResult Function(_OnSocketRemoteUserBusySipEvent value)
        onSocketRemoteUserBusy,
    required TResult Function(_OnSocketSpeakSipEvent value) onSocketSpeak,
    required TResult Function(_OnCallStateChangedSipEvent value)
        onCallStateChanged,
    required TResult Function(_OnSipCallStreamSipEvent value) onSipCallStream,
    required TResult Function(_OnSipNewCallSipEvent value) onSipNewCall,
    required TResult Function(_OnSipCallEndedSipEvent value) onSipCallEnded,
    required TResult Function(_OnSipMutedSipEvent value) onSipMuted,
    required TResult Function(_OnSipUnmutedSipEvent value) onSipUnmuted,
    required TResult Function(_MaximizeSipEvent value) maximize,
    required TResult Function(_RejectIncomingSipEvent value) rejectIncoming,
    required TResult Function(_BusyIncomingSipEvent value) busyIncoming,
    required TResult Function(_AcceptIncomingSipEvent value) acceptIncoming,
  }) {
    return onCallStateChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DoCallSipEvent value)? doCall,
    TResult? Function(_DoHangUpSipEvent value)? hangUp,
    TResult? Function(_ForceHangUpSipEvent value)? forceHangUp,
    TResult? Function(_MuteAudioSipEvent value)? muteAudio,
    TResult? Function(_MuteVideoSipEvent value)? muteVideo,
    TResult? Function(_MuteSpeakerSipEvent value)? muteSpeaker,
    TResult? Function(_SwitchCameraSipEvent value)? switchCamera,
    TResult? Function(_OnSocketUpdateSipEvent value)? onSocketUpdate,
    TResult? Function(_OnSocketRemoteUserHangup value)?
        onSocketRemoteUserHangup,
    TResult? Function(_OnSocketRemoteUserRejectSipEvent value)?
        onSocketRemoteUserReject,
    TResult? Function(_OnSocketRemoteUserBusySipEvent value)?
        onSocketRemoteUserBusy,
    TResult? Function(_OnSocketSpeakSipEvent value)? onSocketSpeak,
    TResult? Function(_OnCallStateChangedSipEvent value)? onCallStateChanged,
    TResult? Function(_OnSipCallStreamSipEvent value)? onSipCallStream,
    TResult? Function(_OnSipNewCallSipEvent value)? onSipNewCall,
    TResult? Function(_OnSipCallEndedSipEvent value)? onSipCallEnded,
    TResult? Function(_OnSipMutedSipEvent value)? onSipMuted,
    TResult? Function(_OnSipUnmutedSipEvent value)? onSipUnmuted,
    TResult? Function(_MaximizeSipEvent value)? maximize,
    TResult? Function(_RejectIncomingSipEvent value)? rejectIncoming,
    TResult? Function(_BusyIncomingSipEvent value)? busyIncoming,
    TResult? Function(_AcceptIncomingSipEvent value)? acceptIncoming,
  }) {
    return onCallStateChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DoCallSipEvent value)? doCall,
    TResult Function(_DoHangUpSipEvent value)? hangUp,
    TResult Function(_ForceHangUpSipEvent value)? forceHangUp,
    TResult Function(_MuteAudioSipEvent value)? muteAudio,
    TResult Function(_MuteVideoSipEvent value)? muteVideo,
    TResult Function(_MuteSpeakerSipEvent value)? muteSpeaker,
    TResult Function(_SwitchCameraSipEvent value)? switchCamera,
    TResult Function(_OnSocketUpdateSipEvent value)? onSocketUpdate,
    TResult Function(_OnSocketRemoteUserHangup value)? onSocketRemoteUserHangup,
    TResult Function(_OnSocketRemoteUserRejectSipEvent value)?
        onSocketRemoteUserReject,
    TResult Function(_OnSocketRemoteUserBusySipEvent value)?
        onSocketRemoteUserBusy,
    TResult Function(_OnSocketSpeakSipEvent value)? onSocketSpeak,
    TResult Function(_OnCallStateChangedSipEvent value)? onCallStateChanged,
    TResult Function(_OnSipCallStreamSipEvent value)? onSipCallStream,
    TResult Function(_OnSipNewCallSipEvent value)? onSipNewCall,
    TResult Function(_OnSipCallEndedSipEvent value)? onSipCallEnded,
    TResult Function(_OnSipMutedSipEvent value)? onSipMuted,
    TResult Function(_OnSipUnmutedSipEvent value)? onSipUnmuted,
    TResult Function(_MaximizeSipEvent value)? maximize,
    TResult Function(_RejectIncomingSipEvent value)? rejectIncoming,
    TResult Function(_BusyIncomingSipEvent value)? busyIncoming,
    TResult Function(_AcceptIncomingSipEvent value)? acceptIncoming,
    required TResult orElse(),
  }) {
    if (onCallStateChanged != null) {
      return onCallStateChanged(this);
    }
    return orElse();
  }
}

abstract class _OnCallStateChangedSipEvent extends SipEvent {
  const factory _OnCallStateChangedSipEvent(
          final String callId, final SipActiveCallState callState) =
      _$_OnCallStateChangedSipEvent;
  const _OnCallStateChangedSipEvent._() : super._();

  String get callId;
  SipActiveCallState get callState;
  @JsonKey(ignore: true)
  _$$_OnCallStateChangedSipEventCopyWith<_$_OnCallStateChangedSipEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_OnSipCallStreamSipEventCopyWith<$Res> {
  factory _$$_OnSipCallStreamSipEventCopyWith(_$_OnSipCallStreamSipEvent value,
          $Res Function(_$_OnSipCallStreamSipEvent) then) =
      __$$_OnSipCallStreamSipEventCopyWithImpl<$Res>;
  @useResult
  $Res call({SipActiveCall sipCall});
}

/// @nodoc
class __$$_OnSipCallStreamSipEventCopyWithImpl<$Res>
    extends _$SipEventCopyWithImpl<$Res, _$_OnSipCallStreamSipEvent>
    implements _$$_OnSipCallStreamSipEventCopyWith<$Res> {
  __$$_OnSipCallStreamSipEventCopyWithImpl(_$_OnSipCallStreamSipEvent _value,
      $Res Function(_$_OnSipCallStreamSipEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sipCall = null,
  }) {
    return _then(_$_OnSipCallStreamSipEvent(
      null == sipCall
          ? _value.sipCall
          : sipCall // ignore: cast_nullable_to_non_nullable
              as SipActiveCall,
    ));
  }
}

/// @nodoc

class _$_OnSipCallStreamSipEvent extends _OnSipCallStreamSipEvent
    with DiagnosticableTreeMixin {
  const _$_OnSipCallStreamSipEvent(this.sipCall) : super._();

  @override
  final SipActiveCall sipCall;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SipEvent.onSipCallStream(sipCall: $sipCall)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SipEvent.onSipCallStream'))
      ..add(DiagnosticsProperty('sipCall', sipCall));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OnSipCallStreamSipEvent &&
            (identical(other.sipCall, sipCall) || other.sipCall == sipCall));
  }

  @override
  int get hashCode => Object.hash(runtimeType, sipCall);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OnSipCallStreamSipEventCopyWith<_$_OnSipCallStreamSipEvent>
      get copyWith =>
          __$$_OnSipCallStreamSipEventCopyWithImpl<_$_OnSipCallStreamSipEvent>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String chatId, bool isVideoMuted) doCall,
    required TResult Function(
            OutcomingPersonalCallStatus? outcomingPersonalCallStatus)
        hangUp,
    required TResult Function() forceHangUp,
    required TResult Function(String chatId) muteAudio,
    required TResult Function(String chatId) muteVideo,
    required TResult Function(String chatId) muteSpeaker,
    required TResult Function(String chatId) switchCamera,
    required TResult Function(List<CallMeta>? callsMeta) onSocketUpdate,
    required TResult Function(int dlsId, String number)
        onSocketRemoteUserHangup,
    required TResult Function(int dlsId, String number)
        onSocketRemoteUserReject,
    required TResult Function(int dlsId, String number) onSocketRemoteUserBusy,
    required TResult Function(CallMeta callMeta) onSocketSpeak,
    required TResult Function(String callId, SipActiveCallState callState)
        onCallStateChanged,
    required TResult Function(SipActiveCall sipCall) onSipCallStream,
    required TResult Function(
            SipActiveCall sipCall, SipActiveCallState callState)
        onSipNewCall,
    required TResult Function(SipActiveCall sipCall) onSipCallEnded,
    required TResult Function(
            SipActiveCall sipCall, bool isAudioMuted, bool isVideoMuted)
        onSipMuted,
    required TResult Function(
            SipActiveCall sipCall, bool isAudioMuted, bool isVideoMuted)
        onSipUnmuted,
    required TResult Function() maximize,
    required TResult Function() rejectIncoming,
    required TResult Function(ActiveCall activeCall) busyIncoming,
    required TResult Function() acceptIncoming,
  }) {
    return onSipCallStream(sipCall);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String chatId, bool isVideoMuted)? doCall,
    TResult? Function(OutcomingPersonalCallStatus? outcomingPersonalCallStatus)?
        hangUp,
    TResult? Function()? forceHangUp,
    TResult? Function(String chatId)? muteAudio,
    TResult? Function(String chatId)? muteVideo,
    TResult? Function(String chatId)? muteSpeaker,
    TResult? Function(String chatId)? switchCamera,
    TResult? Function(List<CallMeta>? callsMeta)? onSocketUpdate,
    TResult? Function(int dlsId, String number)? onSocketRemoteUserHangup,
    TResult? Function(int dlsId, String number)? onSocketRemoteUserReject,
    TResult? Function(int dlsId, String number)? onSocketRemoteUserBusy,
    TResult? Function(CallMeta callMeta)? onSocketSpeak,
    TResult? Function(String callId, SipActiveCallState callState)?
        onCallStateChanged,
    TResult? Function(SipActiveCall sipCall)? onSipCallStream,
    TResult? Function(SipActiveCall sipCall, SipActiveCallState callState)?
        onSipNewCall,
    TResult? Function(SipActiveCall sipCall)? onSipCallEnded,
    TResult? Function(
            SipActiveCall sipCall, bool isAudioMuted, bool isVideoMuted)?
        onSipMuted,
    TResult? Function(
            SipActiveCall sipCall, bool isAudioMuted, bool isVideoMuted)?
        onSipUnmuted,
    TResult? Function()? maximize,
    TResult? Function()? rejectIncoming,
    TResult? Function(ActiveCall activeCall)? busyIncoming,
    TResult? Function()? acceptIncoming,
  }) {
    return onSipCallStream?.call(sipCall);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String chatId, bool isVideoMuted)? doCall,
    TResult Function(OutcomingPersonalCallStatus? outcomingPersonalCallStatus)?
        hangUp,
    TResult Function()? forceHangUp,
    TResult Function(String chatId)? muteAudio,
    TResult Function(String chatId)? muteVideo,
    TResult Function(String chatId)? muteSpeaker,
    TResult Function(String chatId)? switchCamera,
    TResult Function(List<CallMeta>? callsMeta)? onSocketUpdate,
    TResult Function(int dlsId, String number)? onSocketRemoteUserHangup,
    TResult Function(int dlsId, String number)? onSocketRemoteUserReject,
    TResult Function(int dlsId, String number)? onSocketRemoteUserBusy,
    TResult Function(CallMeta callMeta)? onSocketSpeak,
    TResult Function(String callId, SipActiveCallState callState)?
        onCallStateChanged,
    TResult Function(SipActiveCall sipCall)? onSipCallStream,
    TResult Function(SipActiveCall sipCall, SipActiveCallState callState)?
        onSipNewCall,
    TResult Function(SipActiveCall sipCall)? onSipCallEnded,
    TResult Function(
            SipActiveCall sipCall, bool isAudioMuted, bool isVideoMuted)?
        onSipMuted,
    TResult Function(
            SipActiveCall sipCall, bool isAudioMuted, bool isVideoMuted)?
        onSipUnmuted,
    TResult Function()? maximize,
    TResult Function()? rejectIncoming,
    TResult Function(ActiveCall activeCall)? busyIncoming,
    TResult Function()? acceptIncoming,
    required TResult orElse(),
  }) {
    if (onSipCallStream != null) {
      return onSipCallStream(sipCall);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DoCallSipEvent value) doCall,
    required TResult Function(_DoHangUpSipEvent value) hangUp,
    required TResult Function(_ForceHangUpSipEvent value) forceHangUp,
    required TResult Function(_MuteAudioSipEvent value) muteAudio,
    required TResult Function(_MuteVideoSipEvent value) muteVideo,
    required TResult Function(_MuteSpeakerSipEvent value) muteSpeaker,
    required TResult Function(_SwitchCameraSipEvent value) switchCamera,
    required TResult Function(_OnSocketUpdateSipEvent value) onSocketUpdate,
    required TResult Function(_OnSocketRemoteUserHangup value)
        onSocketRemoteUserHangup,
    required TResult Function(_OnSocketRemoteUserRejectSipEvent value)
        onSocketRemoteUserReject,
    required TResult Function(_OnSocketRemoteUserBusySipEvent value)
        onSocketRemoteUserBusy,
    required TResult Function(_OnSocketSpeakSipEvent value) onSocketSpeak,
    required TResult Function(_OnCallStateChangedSipEvent value)
        onCallStateChanged,
    required TResult Function(_OnSipCallStreamSipEvent value) onSipCallStream,
    required TResult Function(_OnSipNewCallSipEvent value) onSipNewCall,
    required TResult Function(_OnSipCallEndedSipEvent value) onSipCallEnded,
    required TResult Function(_OnSipMutedSipEvent value) onSipMuted,
    required TResult Function(_OnSipUnmutedSipEvent value) onSipUnmuted,
    required TResult Function(_MaximizeSipEvent value) maximize,
    required TResult Function(_RejectIncomingSipEvent value) rejectIncoming,
    required TResult Function(_BusyIncomingSipEvent value) busyIncoming,
    required TResult Function(_AcceptIncomingSipEvent value) acceptIncoming,
  }) {
    return onSipCallStream(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DoCallSipEvent value)? doCall,
    TResult? Function(_DoHangUpSipEvent value)? hangUp,
    TResult? Function(_ForceHangUpSipEvent value)? forceHangUp,
    TResult? Function(_MuteAudioSipEvent value)? muteAudio,
    TResult? Function(_MuteVideoSipEvent value)? muteVideo,
    TResult? Function(_MuteSpeakerSipEvent value)? muteSpeaker,
    TResult? Function(_SwitchCameraSipEvent value)? switchCamera,
    TResult? Function(_OnSocketUpdateSipEvent value)? onSocketUpdate,
    TResult? Function(_OnSocketRemoteUserHangup value)?
        onSocketRemoteUserHangup,
    TResult? Function(_OnSocketRemoteUserRejectSipEvent value)?
        onSocketRemoteUserReject,
    TResult? Function(_OnSocketRemoteUserBusySipEvent value)?
        onSocketRemoteUserBusy,
    TResult? Function(_OnSocketSpeakSipEvent value)? onSocketSpeak,
    TResult? Function(_OnCallStateChangedSipEvent value)? onCallStateChanged,
    TResult? Function(_OnSipCallStreamSipEvent value)? onSipCallStream,
    TResult? Function(_OnSipNewCallSipEvent value)? onSipNewCall,
    TResult? Function(_OnSipCallEndedSipEvent value)? onSipCallEnded,
    TResult? Function(_OnSipMutedSipEvent value)? onSipMuted,
    TResult? Function(_OnSipUnmutedSipEvent value)? onSipUnmuted,
    TResult? Function(_MaximizeSipEvent value)? maximize,
    TResult? Function(_RejectIncomingSipEvent value)? rejectIncoming,
    TResult? Function(_BusyIncomingSipEvent value)? busyIncoming,
    TResult? Function(_AcceptIncomingSipEvent value)? acceptIncoming,
  }) {
    return onSipCallStream?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DoCallSipEvent value)? doCall,
    TResult Function(_DoHangUpSipEvent value)? hangUp,
    TResult Function(_ForceHangUpSipEvent value)? forceHangUp,
    TResult Function(_MuteAudioSipEvent value)? muteAudio,
    TResult Function(_MuteVideoSipEvent value)? muteVideo,
    TResult Function(_MuteSpeakerSipEvent value)? muteSpeaker,
    TResult Function(_SwitchCameraSipEvent value)? switchCamera,
    TResult Function(_OnSocketUpdateSipEvent value)? onSocketUpdate,
    TResult Function(_OnSocketRemoteUserHangup value)? onSocketRemoteUserHangup,
    TResult Function(_OnSocketRemoteUserRejectSipEvent value)?
        onSocketRemoteUserReject,
    TResult Function(_OnSocketRemoteUserBusySipEvent value)?
        onSocketRemoteUserBusy,
    TResult Function(_OnSocketSpeakSipEvent value)? onSocketSpeak,
    TResult Function(_OnCallStateChangedSipEvent value)? onCallStateChanged,
    TResult Function(_OnSipCallStreamSipEvent value)? onSipCallStream,
    TResult Function(_OnSipNewCallSipEvent value)? onSipNewCall,
    TResult Function(_OnSipCallEndedSipEvent value)? onSipCallEnded,
    TResult Function(_OnSipMutedSipEvent value)? onSipMuted,
    TResult Function(_OnSipUnmutedSipEvent value)? onSipUnmuted,
    TResult Function(_MaximizeSipEvent value)? maximize,
    TResult Function(_RejectIncomingSipEvent value)? rejectIncoming,
    TResult Function(_BusyIncomingSipEvent value)? busyIncoming,
    TResult Function(_AcceptIncomingSipEvent value)? acceptIncoming,
    required TResult orElse(),
  }) {
    if (onSipCallStream != null) {
      return onSipCallStream(this);
    }
    return orElse();
  }
}

abstract class _OnSipCallStreamSipEvent extends SipEvent {
  const factory _OnSipCallStreamSipEvent(final SipActiveCall sipCall) =
      _$_OnSipCallStreamSipEvent;
  const _OnSipCallStreamSipEvent._() : super._();

  SipActiveCall get sipCall;
  @JsonKey(ignore: true)
  _$$_OnSipCallStreamSipEventCopyWith<_$_OnSipCallStreamSipEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_OnSipNewCallSipEventCopyWith<$Res> {
  factory _$$_OnSipNewCallSipEventCopyWith(_$_OnSipNewCallSipEvent value,
          $Res Function(_$_OnSipNewCallSipEvent) then) =
      __$$_OnSipNewCallSipEventCopyWithImpl<$Res>;
  @useResult
  $Res call({SipActiveCall sipCall, SipActiveCallState callState});
}

/// @nodoc
class __$$_OnSipNewCallSipEventCopyWithImpl<$Res>
    extends _$SipEventCopyWithImpl<$Res, _$_OnSipNewCallSipEvent>
    implements _$$_OnSipNewCallSipEventCopyWith<$Res> {
  __$$_OnSipNewCallSipEventCopyWithImpl(_$_OnSipNewCallSipEvent _value,
      $Res Function(_$_OnSipNewCallSipEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sipCall = null,
    Object? callState = null,
  }) {
    return _then(_$_OnSipNewCallSipEvent(
      null == sipCall
          ? _value.sipCall
          : sipCall // ignore: cast_nullable_to_non_nullable
              as SipActiveCall,
      null == callState
          ? _value.callState
          : callState // ignore: cast_nullable_to_non_nullable
              as SipActiveCallState,
    ));
  }
}

/// @nodoc

class _$_OnSipNewCallSipEvent extends _OnSipNewCallSipEvent
    with DiagnosticableTreeMixin {
  const _$_OnSipNewCallSipEvent(this.sipCall, this.callState) : super._();

  @override
  final SipActiveCall sipCall;
  @override
  final SipActiveCallState callState;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SipEvent.onSipNewCall(sipCall: $sipCall, callState: $callState)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SipEvent.onSipNewCall'))
      ..add(DiagnosticsProperty('sipCall', sipCall))
      ..add(DiagnosticsProperty('callState', callState));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OnSipNewCallSipEvent &&
            (identical(other.sipCall, sipCall) || other.sipCall == sipCall) &&
            (identical(other.callState, callState) ||
                other.callState == callState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, sipCall, callState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OnSipNewCallSipEventCopyWith<_$_OnSipNewCallSipEvent> get copyWith =>
      __$$_OnSipNewCallSipEventCopyWithImpl<_$_OnSipNewCallSipEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String chatId, bool isVideoMuted) doCall,
    required TResult Function(
            OutcomingPersonalCallStatus? outcomingPersonalCallStatus)
        hangUp,
    required TResult Function() forceHangUp,
    required TResult Function(String chatId) muteAudio,
    required TResult Function(String chatId) muteVideo,
    required TResult Function(String chatId) muteSpeaker,
    required TResult Function(String chatId) switchCamera,
    required TResult Function(List<CallMeta>? callsMeta) onSocketUpdate,
    required TResult Function(int dlsId, String number)
        onSocketRemoteUserHangup,
    required TResult Function(int dlsId, String number)
        onSocketRemoteUserReject,
    required TResult Function(int dlsId, String number) onSocketRemoteUserBusy,
    required TResult Function(CallMeta callMeta) onSocketSpeak,
    required TResult Function(String callId, SipActiveCallState callState)
        onCallStateChanged,
    required TResult Function(SipActiveCall sipCall) onSipCallStream,
    required TResult Function(
            SipActiveCall sipCall, SipActiveCallState callState)
        onSipNewCall,
    required TResult Function(SipActiveCall sipCall) onSipCallEnded,
    required TResult Function(
            SipActiveCall sipCall, bool isAudioMuted, bool isVideoMuted)
        onSipMuted,
    required TResult Function(
            SipActiveCall sipCall, bool isAudioMuted, bool isVideoMuted)
        onSipUnmuted,
    required TResult Function() maximize,
    required TResult Function() rejectIncoming,
    required TResult Function(ActiveCall activeCall) busyIncoming,
    required TResult Function() acceptIncoming,
  }) {
    return onSipNewCall(sipCall, callState);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String chatId, bool isVideoMuted)? doCall,
    TResult? Function(OutcomingPersonalCallStatus? outcomingPersonalCallStatus)?
        hangUp,
    TResult? Function()? forceHangUp,
    TResult? Function(String chatId)? muteAudio,
    TResult? Function(String chatId)? muteVideo,
    TResult? Function(String chatId)? muteSpeaker,
    TResult? Function(String chatId)? switchCamera,
    TResult? Function(List<CallMeta>? callsMeta)? onSocketUpdate,
    TResult? Function(int dlsId, String number)? onSocketRemoteUserHangup,
    TResult? Function(int dlsId, String number)? onSocketRemoteUserReject,
    TResult? Function(int dlsId, String number)? onSocketRemoteUserBusy,
    TResult? Function(CallMeta callMeta)? onSocketSpeak,
    TResult? Function(String callId, SipActiveCallState callState)?
        onCallStateChanged,
    TResult? Function(SipActiveCall sipCall)? onSipCallStream,
    TResult? Function(SipActiveCall sipCall, SipActiveCallState callState)?
        onSipNewCall,
    TResult? Function(SipActiveCall sipCall)? onSipCallEnded,
    TResult? Function(
            SipActiveCall sipCall, bool isAudioMuted, bool isVideoMuted)?
        onSipMuted,
    TResult? Function(
            SipActiveCall sipCall, bool isAudioMuted, bool isVideoMuted)?
        onSipUnmuted,
    TResult? Function()? maximize,
    TResult? Function()? rejectIncoming,
    TResult? Function(ActiveCall activeCall)? busyIncoming,
    TResult? Function()? acceptIncoming,
  }) {
    return onSipNewCall?.call(sipCall, callState);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String chatId, bool isVideoMuted)? doCall,
    TResult Function(OutcomingPersonalCallStatus? outcomingPersonalCallStatus)?
        hangUp,
    TResult Function()? forceHangUp,
    TResult Function(String chatId)? muteAudio,
    TResult Function(String chatId)? muteVideo,
    TResult Function(String chatId)? muteSpeaker,
    TResult Function(String chatId)? switchCamera,
    TResult Function(List<CallMeta>? callsMeta)? onSocketUpdate,
    TResult Function(int dlsId, String number)? onSocketRemoteUserHangup,
    TResult Function(int dlsId, String number)? onSocketRemoteUserReject,
    TResult Function(int dlsId, String number)? onSocketRemoteUserBusy,
    TResult Function(CallMeta callMeta)? onSocketSpeak,
    TResult Function(String callId, SipActiveCallState callState)?
        onCallStateChanged,
    TResult Function(SipActiveCall sipCall)? onSipCallStream,
    TResult Function(SipActiveCall sipCall, SipActiveCallState callState)?
        onSipNewCall,
    TResult Function(SipActiveCall sipCall)? onSipCallEnded,
    TResult Function(
            SipActiveCall sipCall, bool isAudioMuted, bool isVideoMuted)?
        onSipMuted,
    TResult Function(
            SipActiveCall sipCall, bool isAudioMuted, bool isVideoMuted)?
        onSipUnmuted,
    TResult Function()? maximize,
    TResult Function()? rejectIncoming,
    TResult Function(ActiveCall activeCall)? busyIncoming,
    TResult Function()? acceptIncoming,
    required TResult orElse(),
  }) {
    if (onSipNewCall != null) {
      return onSipNewCall(sipCall, callState);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DoCallSipEvent value) doCall,
    required TResult Function(_DoHangUpSipEvent value) hangUp,
    required TResult Function(_ForceHangUpSipEvent value) forceHangUp,
    required TResult Function(_MuteAudioSipEvent value) muteAudio,
    required TResult Function(_MuteVideoSipEvent value) muteVideo,
    required TResult Function(_MuteSpeakerSipEvent value) muteSpeaker,
    required TResult Function(_SwitchCameraSipEvent value) switchCamera,
    required TResult Function(_OnSocketUpdateSipEvent value) onSocketUpdate,
    required TResult Function(_OnSocketRemoteUserHangup value)
        onSocketRemoteUserHangup,
    required TResult Function(_OnSocketRemoteUserRejectSipEvent value)
        onSocketRemoteUserReject,
    required TResult Function(_OnSocketRemoteUserBusySipEvent value)
        onSocketRemoteUserBusy,
    required TResult Function(_OnSocketSpeakSipEvent value) onSocketSpeak,
    required TResult Function(_OnCallStateChangedSipEvent value)
        onCallStateChanged,
    required TResult Function(_OnSipCallStreamSipEvent value) onSipCallStream,
    required TResult Function(_OnSipNewCallSipEvent value) onSipNewCall,
    required TResult Function(_OnSipCallEndedSipEvent value) onSipCallEnded,
    required TResult Function(_OnSipMutedSipEvent value) onSipMuted,
    required TResult Function(_OnSipUnmutedSipEvent value) onSipUnmuted,
    required TResult Function(_MaximizeSipEvent value) maximize,
    required TResult Function(_RejectIncomingSipEvent value) rejectIncoming,
    required TResult Function(_BusyIncomingSipEvent value) busyIncoming,
    required TResult Function(_AcceptIncomingSipEvent value) acceptIncoming,
  }) {
    return onSipNewCall(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DoCallSipEvent value)? doCall,
    TResult? Function(_DoHangUpSipEvent value)? hangUp,
    TResult? Function(_ForceHangUpSipEvent value)? forceHangUp,
    TResult? Function(_MuteAudioSipEvent value)? muteAudio,
    TResult? Function(_MuteVideoSipEvent value)? muteVideo,
    TResult? Function(_MuteSpeakerSipEvent value)? muteSpeaker,
    TResult? Function(_SwitchCameraSipEvent value)? switchCamera,
    TResult? Function(_OnSocketUpdateSipEvent value)? onSocketUpdate,
    TResult? Function(_OnSocketRemoteUserHangup value)?
        onSocketRemoteUserHangup,
    TResult? Function(_OnSocketRemoteUserRejectSipEvent value)?
        onSocketRemoteUserReject,
    TResult? Function(_OnSocketRemoteUserBusySipEvent value)?
        onSocketRemoteUserBusy,
    TResult? Function(_OnSocketSpeakSipEvent value)? onSocketSpeak,
    TResult? Function(_OnCallStateChangedSipEvent value)? onCallStateChanged,
    TResult? Function(_OnSipCallStreamSipEvent value)? onSipCallStream,
    TResult? Function(_OnSipNewCallSipEvent value)? onSipNewCall,
    TResult? Function(_OnSipCallEndedSipEvent value)? onSipCallEnded,
    TResult? Function(_OnSipMutedSipEvent value)? onSipMuted,
    TResult? Function(_OnSipUnmutedSipEvent value)? onSipUnmuted,
    TResult? Function(_MaximizeSipEvent value)? maximize,
    TResult? Function(_RejectIncomingSipEvent value)? rejectIncoming,
    TResult? Function(_BusyIncomingSipEvent value)? busyIncoming,
    TResult? Function(_AcceptIncomingSipEvent value)? acceptIncoming,
  }) {
    return onSipNewCall?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DoCallSipEvent value)? doCall,
    TResult Function(_DoHangUpSipEvent value)? hangUp,
    TResult Function(_ForceHangUpSipEvent value)? forceHangUp,
    TResult Function(_MuteAudioSipEvent value)? muteAudio,
    TResult Function(_MuteVideoSipEvent value)? muteVideo,
    TResult Function(_MuteSpeakerSipEvent value)? muteSpeaker,
    TResult Function(_SwitchCameraSipEvent value)? switchCamera,
    TResult Function(_OnSocketUpdateSipEvent value)? onSocketUpdate,
    TResult Function(_OnSocketRemoteUserHangup value)? onSocketRemoteUserHangup,
    TResult Function(_OnSocketRemoteUserRejectSipEvent value)?
        onSocketRemoteUserReject,
    TResult Function(_OnSocketRemoteUserBusySipEvent value)?
        onSocketRemoteUserBusy,
    TResult Function(_OnSocketSpeakSipEvent value)? onSocketSpeak,
    TResult Function(_OnCallStateChangedSipEvent value)? onCallStateChanged,
    TResult Function(_OnSipCallStreamSipEvent value)? onSipCallStream,
    TResult Function(_OnSipNewCallSipEvent value)? onSipNewCall,
    TResult Function(_OnSipCallEndedSipEvent value)? onSipCallEnded,
    TResult Function(_OnSipMutedSipEvent value)? onSipMuted,
    TResult Function(_OnSipUnmutedSipEvent value)? onSipUnmuted,
    TResult Function(_MaximizeSipEvent value)? maximize,
    TResult Function(_RejectIncomingSipEvent value)? rejectIncoming,
    TResult Function(_BusyIncomingSipEvent value)? busyIncoming,
    TResult Function(_AcceptIncomingSipEvent value)? acceptIncoming,
    required TResult orElse(),
  }) {
    if (onSipNewCall != null) {
      return onSipNewCall(this);
    }
    return orElse();
  }
}

abstract class _OnSipNewCallSipEvent extends SipEvent {
  const factory _OnSipNewCallSipEvent(
          final SipActiveCall sipCall, final SipActiveCallState callState) =
      _$_OnSipNewCallSipEvent;
  const _OnSipNewCallSipEvent._() : super._();

  SipActiveCall get sipCall;
  SipActiveCallState get callState;
  @JsonKey(ignore: true)
  _$$_OnSipNewCallSipEventCopyWith<_$_OnSipNewCallSipEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_OnSipCallEndedSipEventCopyWith<$Res> {
  factory _$$_OnSipCallEndedSipEventCopyWith(_$_OnSipCallEndedSipEvent value,
          $Res Function(_$_OnSipCallEndedSipEvent) then) =
      __$$_OnSipCallEndedSipEventCopyWithImpl<$Res>;
  @useResult
  $Res call({SipActiveCall sipCall});
}

/// @nodoc
class __$$_OnSipCallEndedSipEventCopyWithImpl<$Res>
    extends _$SipEventCopyWithImpl<$Res, _$_OnSipCallEndedSipEvent>
    implements _$$_OnSipCallEndedSipEventCopyWith<$Res> {
  __$$_OnSipCallEndedSipEventCopyWithImpl(_$_OnSipCallEndedSipEvent _value,
      $Res Function(_$_OnSipCallEndedSipEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sipCall = null,
  }) {
    return _then(_$_OnSipCallEndedSipEvent(
      null == sipCall
          ? _value.sipCall
          : sipCall // ignore: cast_nullable_to_non_nullable
              as SipActiveCall,
    ));
  }
}

/// @nodoc

class _$_OnSipCallEndedSipEvent extends _OnSipCallEndedSipEvent
    with DiagnosticableTreeMixin {
  const _$_OnSipCallEndedSipEvent(this.sipCall) : super._();

  @override
  final SipActiveCall sipCall;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SipEvent.onSipCallEnded(sipCall: $sipCall)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SipEvent.onSipCallEnded'))
      ..add(DiagnosticsProperty('sipCall', sipCall));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OnSipCallEndedSipEvent &&
            (identical(other.sipCall, sipCall) || other.sipCall == sipCall));
  }

  @override
  int get hashCode => Object.hash(runtimeType, sipCall);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OnSipCallEndedSipEventCopyWith<_$_OnSipCallEndedSipEvent> get copyWith =>
      __$$_OnSipCallEndedSipEventCopyWithImpl<_$_OnSipCallEndedSipEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String chatId, bool isVideoMuted) doCall,
    required TResult Function(
            OutcomingPersonalCallStatus? outcomingPersonalCallStatus)
        hangUp,
    required TResult Function() forceHangUp,
    required TResult Function(String chatId) muteAudio,
    required TResult Function(String chatId) muteVideo,
    required TResult Function(String chatId) muteSpeaker,
    required TResult Function(String chatId) switchCamera,
    required TResult Function(List<CallMeta>? callsMeta) onSocketUpdate,
    required TResult Function(int dlsId, String number)
        onSocketRemoteUserHangup,
    required TResult Function(int dlsId, String number)
        onSocketRemoteUserReject,
    required TResult Function(int dlsId, String number) onSocketRemoteUserBusy,
    required TResult Function(CallMeta callMeta) onSocketSpeak,
    required TResult Function(String callId, SipActiveCallState callState)
        onCallStateChanged,
    required TResult Function(SipActiveCall sipCall) onSipCallStream,
    required TResult Function(
            SipActiveCall sipCall, SipActiveCallState callState)
        onSipNewCall,
    required TResult Function(SipActiveCall sipCall) onSipCallEnded,
    required TResult Function(
            SipActiveCall sipCall, bool isAudioMuted, bool isVideoMuted)
        onSipMuted,
    required TResult Function(
            SipActiveCall sipCall, bool isAudioMuted, bool isVideoMuted)
        onSipUnmuted,
    required TResult Function() maximize,
    required TResult Function() rejectIncoming,
    required TResult Function(ActiveCall activeCall) busyIncoming,
    required TResult Function() acceptIncoming,
  }) {
    return onSipCallEnded(sipCall);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String chatId, bool isVideoMuted)? doCall,
    TResult? Function(OutcomingPersonalCallStatus? outcomingPersonalCallStatus)?
        hangUp,
    TResult? Function()? forceHangUp,
    TResult? Function(String chatId)? muteAudio,
    TResult? Function(String chatId)? muteVideo,
    TResult? Function(String chatId)? muteSpeaker,
    TResult? Function(String chatId)? switchCamera,
    TResult? Function(List<CallMeta>? callsMeta)? onSocketUpdate,
    TResult? Function(int dlsId, String number)? onSocketRemoteUserHangup,
    TResult? Function(int dlsId, String number)? onSocketRemoteUserReject,
    TResult? Function(int dlsId, String number)? onSocketRemoteUserBusy,
    TResult? Function(CallMeta callMeta)? onSocketSpeak,
    TResult? Function(String callId, SipActiveCallState callState)?
        onCallStateChanged,
    TResult? Function(SipActiveCall sipCall)? onSipCallStream,
    TResult? Function(SipActiveCall sipCall, SipActiveCallState callState)?
        onSipNewCall,
    TResult? Function(SipActiveCall sipCall)? onSipCallEnded,
    TResult? Function(
            SipActiveCall sipCall, bool isAudioMuted, bool isVideoMuted)?
        onSipMuted,
    TResult? Function(
            SipActiveCall sipCall, bool isAudioMuted, bool isVideoMuted)?
        onSipUnmuted,
    TResult? Function()? maximize,
    TResult? Function()? rejectIncoming,
    TResult? Function(ActiveCall activeCall)? busyIncoming,
    TResult? Function()? acceptIncoming,
  }) {
    return onSipCallEnded?.call(sipCall);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String chatId, bool isVideoMuted)? doCall,
    TResult Function(OutcomingPersonalCallStatus? outcomingPersonalCallStatus)?
        hangUp,
    TResult Function()? forceHangUp,
    TResult Function(String chatId)? muteAudio,
    TResult Function(String chatId)? muteVideo,
    TResult Function(String chatId)? muteSpeaker,
    TResult Function(String chatId)? switchCamera,
    TResult Function(List<CallMeta>? callsMeta)? onSocketUpdate,
    TResult Function(int dlsId, String number)? onSocketRemoteUserHangup,
    TResult Function(int dlsId, String number)? onSocketRemoteUserReject,
    TResult Function(int dlsId, String number)? onSocketRemoteUserBusy,
    TResult Function(CallMeta callMeta)? onSocketSpeak,
    TResult Function(String callId, SipActiveCallState callState)?
        onCallStateChanged,
    TResult Function(SipActiveCall sipCall)? onSipCallStream,
    TResult Function(SipActiveCall sipCall, SipActiveCallState callState)?
        onSipNewCall,
    TResult Function(SipActiveCall sipCall)? onSipCallEnded,
    TResult Function(
            SipActiveCall sipCall, bool isAudioMuted, bool isVideoMuted)?
        onSipMuted,
    TResult Function(
            SipActiveCall sipCall, bool isAudioMuted, bool isVideoMuted)?
        onSipUnmuted,
    TResult Function()? maximize,
    TResult Function()? rejectIncoming,
    TResult Function(ActiveCall activeCall)? busyIncoming,
    TResult Function()? acceptIncoming,
    required TResult orElse(),
  }) {
    if (onSipCallEnded != null) {
      return onSipCallEnded(sipCall);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DoCallSipEvent value) doCall,
    required TResult Function(_DoHangUpSipEvent value) hangUp,
    required TResult Function(_ForceHangUpSipEvent value) forceHangUp,
    required TResult Function(_MuteAudioSipEvent value) muteAudio,
    required TResult Function(_MuteVideoSipEvent value) muteVideo,
    required TResult Function(_MuteSpeakerSipEvent value) muteSpeaker,
    required TResult Function(_SwitchCameraSipEvent value) switchCamera,
    required TResult Function(_OnSocketUpdateSipEvent value) onSocketUpdate,
    required TResult Function(_OnSocketRemoteUserHangup value)
        onSocketRemoteUserHangup,
    required TResult Function(_OnSocketRemoteUserRejectSipEvent value)
        onSocketRemoteUserReject,
    required TResult Function(_OnSocketRemoteUserBusySipEvent value)
        onSocketRemoteUserBusy,
    required TResult Function(_OnSocketSpeakSipEvent value) onSocketSpeak,
    required TResult Function(_OnCallStateChangedSipEvent value)
        onCallStateChanged,
    required TResult Function(_OnSipCallStreamSipEvent value) onSipCallStream,
    required TResult Function(_OnSipNewCallSipEvent value) onSipNewCall,
    required TResult Function(_OnSipCallEndedSipEvent value) onSipCallEnded,
    required TResult Function(_OnSipMutedSipEvent value) onSipMuted,
    required TResult Function(_OnSipUnmutedSipEvent value) onSipUnmuted,
    required TResult Function(_MaximizeSipEvent value) maximize,
    required TResult Function(_RejectIncomingSipEvent value) rejectIncoming,
    required TResult Function(_BusyIncomingSipEvent value) busyIncoming,
    required TResult Function(_AcceptIncomingSipEvent value) acceptIncoming,
  }) {
    return onSipCallEnded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DoCallSipEvent value)? doCall,
    TResult? Function(_DoHangUpSipEvent value)? hangUp,
    TResult? Function(_ForceHangUpSipEvent value)? forceHangUp,
    TResult? Function(_MuteAudioSipEvent value)? muteAudio,
    TResult? Function(_MuteVideoSipEvent value)? muteVideo,
    TResult? Function(_MuteSpeakerSipEvent value)? muteSpeaker,
    TResult? Function(_SwitchCameraSipEvent value)? switchCamera,
    TResult? Function(_OnSocketUpdateSipEvent value)? onSocketUpdate,
    TResult? Function(_OnSocketRemoteUserHangup value)?
        onSocketRemoteUserHangup,
    TResult? Function(_OnSocketRemoteUserRejectSipEvent value)?
        onSocketRemoteUserReject,
    TResult? Function(_OnSocketRemoteUserBusySipEvent value)?
        onSocketRemoteUserBusy,
    TResult? Function(_OnSocketSpeakSipEvent value)? onSocketSpeak,
    TResult? Function(_OnCallStateChangedSipEvent value)? onCallStateChanged,
    TResult? Function(_OnSipCallStreamSipEvent value)? onSipCallStream,
    TResult? Function(_OnSipNewCallSipEvent value)? onSipNewCall,
    TResult? Function(_OnSipCallEndedSipEvent value)? onSipCallEnded,
    TResult? Function(_OnSipMutedSipEvent value)? onSipMuted,
    TResult? Function(_OnSipUnmutedSipEvent value)? onSipUnmuted,
    TResult? Function(_MaximizeSipEvent value)? maximize,
    TResult? Function(_RejectIncomingSipEvent value)? rejectIncoming,
    TResult? Function(_BusyIncomingSipEvent value)? busyIncoming,
    TResult? Function(_AcceptIncomingSipEvent value)? acceptIncoming,
  }) {
    return onSipCallEnded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DoCallSipEvent value)? doCall,
    TResult Function(_DoHangUpSipEvent value)? hangUp,
    TResult Function(_ForceHangUpSipEvent value)? forceHangUp,
    TResult Function(_MuteAudioSipEvent value)? muteAudio,
    TResult Function(_MuteVideoSipEvent value)? muteVideo,
    TResult Function(_MuteSpeakerSipEvent value)? muteSpeaker,
    TResult Function(_SwitchCameraSipEvent value)? switchCamera,
    TResult Function(_OnSocketUpdateSipEvent value)? onSocketUpdate,
    TResult Function(_OnSocketRemoteUserHangup value)? onSocketRemoteUserHangup,
    TResult Function(_OnSocketRemoteUserRejectSipEvent value)?
        onSocketRemoteUserReject,
    TResult Function(_OnSocketRemoteUserBusySipEvent value)?
        onSocketRemoteUserBusy,
    TResult Function(_OnSocketSpeakSipEvent value)? onSocketSpeak,
    TResult Function(_OnCallStateChangedSipEvent value)? onCallStateChanged,
    TResult Function(_OnSipCallStreamSipEvent value)? onSipCallStream,
    TResult Function(_OnSipNewCallSipEvent value)? onSipNewCall,
    TResult Function(_OnSipCallEndedSipEvent value)? onSipCallEnded,
    TResult Function(_OnSipMutedSipEvent value)? onSipMuted,
    TResult Function(_OnSipUnmutedSipEvent value)? onSipUnmuted,
    TResult Function(_MaximizeSipEvent value)? maximize,
    TResult Function(_RejectIncomingSipEvent value)? rejectIncoming,
    TResult Function(_BusyIncomingSipEvent value)? busyIncoming,
    TResult Function(_AcceptIncomingSipEvent value)? acceptIncoming,
    required TResult orElse(),
  }) {
    if (onSipCallEnded != null) {
      return onSipCallEnded(this);
    }
    return orElse();
  }
}

abstract class _OnSipCallEndedSipEvent extends SipEvent {
  const factory _OnSipCallEndedSipEvent(final SipActiveCall sipCall) =
      _$_OnSipCallEndedSipEvent;
  const _OnSipCallEndedSipEvent._() : super._();

  SipActiveCall get sipCall;
  @JsonKey(ignore: true)
  _$$_OnSipCallEndedSipEventCopyWith<_$_OnSipCallEndedSipEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_OnSipMutedSipEventCopyWith<$Res> {
  factory _$$_OnSipMutedSipEventCopyWith(_$_OnSipMutedSipEvent value,
          $Res Function(_$_OnSipMutedSipEvent) then) =
      __$$_OnSipMutedSipEventCopyWithImpl<$Res>;
  @useResult
  $Res call({SipActiveCall sipCall, bool isAudioMuted, bool isVideoMuted});
}

/// @nodoc
class __$$_OnSipMutedSipEventCopyWithImpl<$Res>
    extends _$SipEventCopyWithImpl<$Res, _$_OnSipMutedSipEvent>
    implements _$$_OnSipMutedSipEventCopyWith<$Res> {
  __$$_OnSipMutedSipEventCopyWithImpl(
      _$_OnSipMutedSipEvent _value, $Res Function(_$_OnSipMutedSipEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sipCall = null,
    Object? isAudioMuted = null,
    Object? isVideoMuted = null,
  }) {
    return _then(_$_OnSipMutedSipEvent(
      null == sipCall
          ? _value.sipCall
          : sipCall // ignore: cast_nullable_to_non_nullable
              as SipActiveCall,
      null == isAudioMuted
          ? _value.isAudioMuted
          : isAudioMuted // ignore: cast_nullable_to_non_nullable
              as bool,
      null == isVideoMuted
          ? _value.isVideoMuted
          : isVideoMuted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_OnSipMutedSipEvent extends _OnSipMutedSipEvent
    with DiagnosticableTreeMixin {
  const _$_OnSipMutedSipEvent(
      this.sipCall, this.isAudioMuted, this.isVideoMuted)
      : super._();

  @override
  final SipActiveCall sipCall;
  @override
  final bool isAudioMuted;
  @override
  final bool isVideoMuted;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SipEvent.onSipMuted(sipCall: $sipCall, isAudioMuted: $isAudioMuted, isVideoMuted: $isVideoMuted)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SipEvent.onSipMuted'))
      ..add(DiagnosticsProperty('sipCall', sipCall))
      ..add(DiagnosticsProperty('isAudioMuted', isAudioMuted))
      ..add(DiagnosticsProperty('isVideoMuted', isVideoMuted));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OnSipMutedSipEvent &&
            (identical(other.sipCall, sipCall) || other.sipCall == sipCall) &&
            (identical(other.isAudioMuted, isAudioMuted) ||
                other.isAudioMuted == isAudioMuted) &&
            (identical(other.isVideoMuted, isVideoMuted) ||
                other.isVideoMuted == isVideoMuted));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, sipCall, isAudioMuted, isVideoMuted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OnSipMutedSipEventCopyWith<_$_OnSipMutedSipEvent> get copyWith =>
      __$$_OnSipMutedSipEventCopyWithImpl<_$_OnSipMutedSipEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String chatId, bool isVideoMuted) doCall,
    required TResult Function(
            OutcomingPersonalCallStatus? outcomingPersonalCallStatus)
        hangUp,
    required TResult Function() forceHangUp,
    required TResult Function(String chatId) muteAudio,
    required TResult Function(String chatId) muteVideo,
    required TResult Function(String chatId) muteSpeaker,
    required TResult Function(String chatId) switchCamera,
    required TResult Function(List<CallMeta>? callsMeta) onSocketUpdate,
    required TResult Function(int dlsId, String number)
        onSocketRemoteUserHangup,
    required TResult Function(int dlsId, String number)
        onSocketRemoteUserReject,
    required TResult Function(int dlsId, String number) onSocketRemoteUserBusy,
    required TResult Function(CallMeta callMeta) onSocketSpeak,
    required TResult Function(String callId, SipActiveCallState callState)
        onCallStateChanged,
    required TResult Function(SipActiveCall sipCall) onSipCallStream,
    required TResult Function(
            SipActiveCall sipCall, SipActiveCallState callState)
        onSipNewCall,
    required TResult Function(SipActiveCall sipCall) onSipCallEnded,
    required TResult Function(
            SipActiveCall sipCall, bool isAudioMuted, bool isVideoMuted)
        onSipMuted,
    required TResult Function(
            SipActiveCall sipCall, bool isAudioMuted, bool isVideoMuted)
        onSipUnmuted,
    required TResult Function() maximize,
    required TResult Function() rejectIncoming,
    required TResult Function(ActiveCall activeCall) busyIncoming,
    required TResult Function() acceptIncoming,
  }) {
    return onSipMuted(sipCall, isAudioMuted, isVideoMuted);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String chatId, bool isVideoMuted)? doCall,
    TResult? Function(OutcomingPersonalCallStatus? outcomingPersonalCallStatus)?
        hangUp,
    TResult? Function()? forceHangUp,
    TResult? Function(String chatId)? muteAudio,
    TResult? Function(String chatId)? muteVideo,
    TResult? Function(String chatId)? muteSpeaker,
    TResult? Function(String chatId)? switchCamera,
    TResult? Function(List<CallMeta>? callsMeta)? onSocketUpdate,
    TResult? Function(int dlsId, String number)? onSocketRemoteUserHangup,
    TResult? Function(int dlsId, String number)? onSocketRemoteUserReject,
    TResult? Function(int dlsId, String number)? onSocketRemoteUserBusy,
    TResult? Function(CallMeta callMeta)? onSocketSpeak,
    TResult? Function(String callId, SipActiveCallState callState)?
        onCallStateChanged,
    TResult? Function(SipActiveCall sipCall)? onSipCallStream,
    TResult? Function(SipActiveCall sipCall, SipActiveCallState callState)?
        onSipNewCall,
    TResult? Function(SipActiveCall sipCall)? onSipCallEnded,
    TResult? Function(
            SipActiveCall sipCall, bool isAudioMuted, bool isVideoMuted)?
        onSipMuted,
    TResult? Function(
            SipActiveCall sipCall, bool isAudioMuted, bool isVideoMuted)?
        onSipUnmuted,
    TResult? Function()? maximize,
    TResult? Function()? rejectIncoming,
    TResult? Function(ActiveCall activeCall)? busyIncoming,
    TResult? Function()? acceptIncoming,
  }) {
    return onSipMuted?.call(sipCall, isAudioMuted, isVideoMuted);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String chatId, bool isVideoMuted)? doCall,
    TResult Function(OutcomingPersonalCallStatus? outcomingPersonalCallStatus)?
        hangUp,
    TResult Function()? forceHangUp,
    TResult Function(String chatId)? muteAudio,
    TResult Function(String chatId)? muteVideo,
    TResult Function(String chatId)? muteSpeaker,
    TResult Function(String chatId)? switchCamera,
    TResult Function(List<CallMeta>? callsMeta)? onSocketUpdate,
    TResult Function(int dlsId, String number)? onSocketRemoteUserHangup,
    TResult Function(int dlsId, String number)? onSocketRemoteUserReject,
    TResult Function(int dlsId, String number)? onSocketRemoteUserBusy,
    TResult Function(CallMeta callMeta)? onSocketSpeak,
    TResult Function(String callId, SipActiveCallState callState)?
        onCallStateChanged,
    TResult Function(SipActiveCall sipCall)? onSipCallStream,
    TResult Function(SipActiveCall sipCall, SipActiveCallState callState)?
        onSipNewCall,
    TResult Function(SipActiveCall sipCall)? onSipCallEnded,
    TResult Function(
            SipActiveCall sipCall, bool isAudioMuted, bool isVideoMuted)?
        onSipMuted,
    TResult Function(
            SipActiveCall sipCall, bool isAudioMuted, bool isVideoMuted)?
        onSipUnmuted,
    TResult Function()? maximize,
    TResult Function()? rejectIncoming,
    TResult Function(ActiveCall activeCall)? busyIncoming,
    TResult Function()? acceptIncoming,
    required TResult orElse(),
  }) {
    if (onSipMuted != null) {
      return onSipMuted(sipCall, isAudioMuted, isVideoMuted);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DoCallSipEvent value) doCall,
    required TResult Function(_DoHangUpSipEvent value) hangUp,
    required TResult Function(_ForceHangUpSipEvent value) forceHangUp,
    required TResult Function(_MuteAudioSipEvent value) muteAudio,
    required TResult Function(_MuteVideoSipEvent value) muteVideo,
    required TResult Function(_MuteSpeakerSipEvent value) muteSpeaker,
    required TResult Function(_SwitchCameraSipEvent value) switchCamera,
    required TResult Function(_OnSocketUpdateSipEvent value) onSocketUpdate,
    required TResult Function(_OnSocketRemoteUserHangup value)
        onSocketRemoteUserHangup,
    required TResult Function(_OnSocketRemoteUserRejectSipEvent value)
        onSocketRemoteUserReject,
    required TResult Function(_OnSocketRemoteUserBusySipEvent value)
        onSocketRemoteUserBusy,
    required TResult Function(_OnSocketSpeakSipEvent value) onSocketSpeak,
    required TResult Function(_OnCallStateChangedSipEvent value)
        onCallStateChanged,
    required TResult Function(_OnSipCallStreamSipEvent value) onSipCallStream,
    required TResult Function(_OnSipNewCallSipEvent value) onSipNewCall,
    required TResult Function(_OnSipCallEndedSipEvent value) onSipCallEnded,
    required TResult Function(_OnSipMutedSipEvent value) onSipMuted,
    required TResult Function(_OnSipUnmutedSipEvent value) onSipUnmuted,
    required TResult Function(_MaximizeSipEvent value) maximize,
    required TResult Function(_RejectIncomingSipEvent value) rejectIncoming,
    required TResult Function(_BusyIncomingSipEvent value) busyIncoming,
    required TResult Function(_AcceptIncomingSipEvent value) acceptIncoming,
  }) {
    return onSipMuted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DoCallSipEvent value)? doCall,
    TResult? Function(_DoHangUpSipEvent value)? hangUp,
    TResult? Function(_ForceHangUpSipEvent value)? forceHangUp,
    TResult? Function(_MuteAudioSipEvent value)? muteAudio,
    TResult? Function(_MuteVideoSipEvent value)? muteVideo,
    TResult? Function(_MuteSpeakerSipEvent value)? muteSpeaker,
    TResult? Function(_SwitchCameraSipEvent value)? switchCamera,
    TResult? Function(_OnSocketUpdateSipEvent value)? onSocketUpdate,
    TResult? Function(_OnSocketRemoteUserHangup value)?
        onSocketRemoteUserHangup,
    TResult? Function(_OnSocketRemoteUserRejectSipEvent value)?
        onSocketRemoteUserReject,
    TResult? Function(_OnSocketRemoteUserBusySipEvent value)?
        onSocketRemoteUserBusy,
    TResult? Function(_OnSocketSpeakSipEvent value)? onSocketSpeak,
    TResult? Function(_OnCallStateChangedSipEvent value)? onCallStateChanged,
    TResult? Function(_OnSipCallStreamSipEvent value)? onSipCallStream,
    TResult? Function(_OnSipNewCallSipEvent value)? onSipNewCall,
    TResult? Function(_OnSipCallEndedSipEvent value)? onSipCallEnded,
    TResult? Function(_OnSipMutedSipEvent value)? onSipMuted,
    TResult? Function(_OnSipUnmutedSipEvent value)? onSipUnmuted,
    TResult? Function(_MaximizeSipEvent value)? maximize,
    TResult? Function(_RejectIncomingSipEvent value)? rejectIncoming,
    TResult? Function(_BusyIncomingSipEvent value)? busyIncoming,
    TResult? Function(_AcceptIncomingSipEvent value)? acceptIncoming,
  }) {
    return onSipMuted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DoCallSipEvent value)? doCall,
    TResult Function(_DoHangUpSipEvent value)? hangUp,
    TResult Function(_ForceHangUpSipEvent value)? forceHangUp,
    TResult Function(_MuteAudioSipEvent value)? muteAudio,
    TResult Function(_MuteVideoSipEvent value)? muteVideo,
    TResult Function(_MuteSpeakerSipEvent value)? muteSpeaker,
    TResult Function(_SwitchCameraSipEvent value)? switchCamera,
    TResult Function(_OnSocketUpdateSipEvent value)? onSocketUpdate,
    TResult Function(_OnSocketRemoteUserHangup value)? onSocketRemoteUserHangup,
    TResult Function(_OnSocketRemoteUserRejectSipEvent value)?
        onSocketRemoteUserReject,
    TResult Function(_OnSocketRemoteUserBusySipEvent value)?
        onSocketRemoteUserBusy,
    TResult Function(_OnSocketSpeakSipEvent value)? onSocketSpeak,
    TResult Function(_OnCallStateChangedSipEvent value)? onCallStateChanged,
    TResult Function(_OnSipCallStreamSipEvent value)? onSipCallStream,
    TResult Function(_OnSipNewCallSipEvent value)? onSipNewCall,
    TResult Function(_OnSipCallEndedSipEvent value)? onSipCallEnded,
    TResult Function(_OnSipMutedSipEvent value)? onSipMuted,
    TResult Function(_OnSipUnmutedSipEvent value)? onSipUnmuted,
    TResult Function(_MaximizeSipEvent value)? maximize,
    TResult Function(_RejectIncomingSipEvent value)? rejectIncoming,
    TResult Function(_BusyIncomingSipEvent value)? busyIncoming,
    TResult Function(_AcceptIncomingSipEvent value)? acceptIncoming,
    required TResult orElse(),
  }) {
    if (onSipMuted != null) {
      return onSipMuted(this);
    }
    return orElse();
  }
}

abstract class _OnSipMutedSipEvent extends SipEvent {
  const factory _OnSipMutedSipEvent(final SipActiveCall sipCall,
      final bool isAudioMuted, final bool isVideoMuted) = _$_OnSipMutedSipEvent;
  const _OnSipMutedSipEvent._() : super._();

  SipActiveCall get sipCall;
  bool get isAudioMuted;
  bool get isVideoMuted;
  @JsonKey(ignore: true)
  _$$_OnSipMutedSipEventCopyWith<_$_OnSipMutedSipEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_OnSipUnmutedSipEventCopyWith<$Res> {
  factory _$$_OnSipUnmutedSipEventCopyWith(_$_OnSipUnmutedSipEvent value,
          $Res Function(_$_OnSipUnmutedSipEvent) then) =
      __$$_OnSipUnmutedSipEventCopyWithImpl<$Res>;
  @useResult
  $Res call({SipActiveCall sipCall, bool isAudioMuted, bool isVideoMuted});
}

/// @nodoc
class __$$_OnSipUnmutedSipEventCopyWithImpl<$Res>
    extends _$SipEventCopyWithImpl<$Res, _$_OnSipUnmutedSipEvent>
    implements _$$_OnSipUnmutedSipEventCopyWith<$Res> {
  __$$_OnSipUnmutedSipEventCopyWithImpl(_$_OnSipUnmutedSipEvent _value,
      $Res Function(_$_OnSipUnmutedSipEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sipCall = null,
    Object? isAudioMuted = null,
    Object? isVideoMuted = null,
  }) {
    return _then(_$_OnSipUnmutedSipEvent(
      null == sipCall
          ? _value.sipCall
          : sipCall // ignore: cast_nullable_to_non_nullable
              as SipActiveCall,
      null == isAudioMuted
          ? _value.isAudioMuted
          : isAudioMuted // ignore: cast_nullable_to_non_nullable
              as bool,
      null == isVideoMuted
          ? _value.isVideoMuted
          : isVideoMuted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_OnSipUnmutedSipEvent extends _OnSipUnmutedSipEvent
    with DiagnosticableTreeMixin {
  const _$_OnSipUnmutedSipEvent(
      this.sipCall, this.isAudioMuted, this.isVideoMuted)
      : super._();

  @override
  final SipActiveCall sipCall;
  @override
  final bool isAudioMuted;
  @override
  final bool isVideoMuted;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SipEvent.onSipUnmuted(sipCall: $sipCall, isAudioMuted: $isAudioMuted, isVideoMuted: $isVideoMuted)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SipEvent.onSipUnmuted'))
      ..add(DiagnosticsProperty('sipCall', sipCall))
      ..add(DiagnosticsProperty('isAudioMuted', isAudioMuted))
      ..add(DiagnosticsProperty('isVideoMuted', isVideoMuted));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OnSipUnmutedSipEvent &&
            (identical(other.sipCall, sipCall) || other.sipCall == sipCall) &&
            (identical(other.isAudioMuted, isAudioMuted) ||
                other.isAudioMuted == isAudioMuted) &&
            (identical(other.isVideoMuted, isVideoMuted) ||
                other.isVideoMuted == isVideoMuted));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, sipCall, isAudioMuted, isVideoMuted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OnSipUnmutedSipEventCopyWith<_$_OnSipUnmutedSipEvent> get copyWith =>
      __$$_OnSipUnmutedSipEventCopyWithImpl<_$_OnSipUnmutedSipEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String chatId, bool isVideoMuted) doCall,
    required TResult Function(
            OutcomingPersonalCallStatus? outcomingPersonalCallStatus)
        hangUp,
    required TResult Function() forceHangUp,
    required TResult Function(String chatId) muteAudio,
    required TResult Function(String chatId) muteVideo,
    required TResult Function(String chatId) muteSpeaker,
    required TResult Function(String chatId) switchCamera,
    required TResult Function(List<CallMeta>? callsMeta) onSocketUpdate,
    required TResult Function(int dlsId, String number)
        onSocketRemoteUserHangup,
    required TResult Function(int dlsId, String number)
        onSocketRemoteUserReject,
    required TResult Function(int dlsId, String number) onSocketRemoteUserBusy,
    required TResult Function(CallMeta callMeta) onSocketSpeak,
    required TResult Function(String callId, SipActiveCallState callState)
        onCallStateChanged,
    required TResult Function(SipActiveCall sipCall) onSipCallStream,
    required TResult Function(
            SipActiveCall sipCall, SipActiveCallState callState)
        onSipNewCall,
    required TResult Function(SipActiveCall sipCall) onSipCallEnded,
    required TResult Function(
            SipActiveCall sipCall, bool isAudioMuted, bool isVideoMuted)
        onSipMuted,
    required TResult Function(
            SipActiveCall sipCall, bool isAudioMuted, bool isVideoMuted)
        onSipUnmuted,
    required TResult Function() maximize,
    required TResult Function() rejectIncoming,
    required TResult Function(ActiveCall activeCall) busyIncoming,
    required TResult Function() acceptIncoming,
  }) {
    return onSipUnmuted(sipCall, isAudioMuted, isVideoMuted);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String chatId, bool isVideoMuted)? doCall,
    TResult? Function(OutcomingPersonalCallStatus? outcomingPersonalCallStatus)?
        hangUp,
    TResult? Function()? forceHangUp,
    TResult? Function(String chatId)? muteAudio,
    TResult? Function(String chatId)? muteVideo,
    TResult? Function(String chatId)? muteSpeaker,
    TResult? Function(String chatId)? switchCamera,
    TResult? Function(List<CallMeta>? callsMeta)? onSocketUpdate,
    TResult? Function(int dlsId, String number)? onSocketRemoteUserHangup,
    TResult? Function(int dlsId, String number)? onSocketRemoteUserReject,
    TResult? Function(int dlsId, String number)? onSocketRemoteUserBusy,
    TResult? Function(CallMeta callMeta)? onSocketSpeak,
    TResult? Function(String callId, SipActiveCallState callState)?
        onCallStateChanged,
    TResult? Function(SipActiveCall sipCall)? onSipCallStream,
    TResult? Function(SipActiveCall sipCall, SipActiveCallState callState)?
        onSipNewCall,
    TResult? Function(SipActiveCall sipCall)? onSipCallEnded,
    TResult? Function(
            SipActiveCall sipCall, bool isAudioMuted, bool isVideoMuted)?
        onSipMuted,
    TResult? Function(
            SipActiveCall sipCall, bool isAudioMuted, bool isVideoMuted)?
        onSipUnmuted,
    TResult? Function()? maximize,
    TResult? Function()? rejectIncoming,
    TResult? Function(ActiveCall activeCall)? busyIncoming,
    TResult? Function()? acceptIncoming,
  }) {
    return onSipUnmuted?.call(sipCall, isAudioMuted, isVideoMuted);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String chatId, bool isVideoMuted)? doCall,
    TResult Function(OutcomingPersonalCallStatus? outcomingPersonalCallStatus)?
        hangUp,
    TResult Function()? forceHangUp,
    TResult Function(String chatId)? muteAudio,
    TResult Function(String chatId)? muteVideo,
    TResult Function(String chatId)? muteSpeaker,
    TResult Function(String chatId)? switchCamera,
    TResult Function(List<CallMeta>? callsMeta)? onSocketUpdate,
    TResult Function(int dlsId, String number)? onSocketRemoteUserHangup,
    TResult Function(int dlsId, String number)? onSocketRemoteUserReject,
    TResult Function(int dlsId, String number)? onSocketRemoteUserBusy,
    TResult Function(CallMeta callMeta)? onSocketSpeak,
    TResult Function(String callId, SipActiveCallState callState)?
        onCallStateChanged,
    TResult Function(SipActiveCall sipCall)? onSipCallStream,
    TResult Function(SipActiveCall sipCall, SipActiveCallState callState)?
        onSipNewCall,
    TResult Function(SipActiveCall sipCall)? onSipCallEnded,
    TResult Function(
            SipActiveCall sipCall, bool isAudioMuted, bool isVideoMuted)?
        onSipMuted,
    TResult Function(
            SipActiveCall sipCall, bool isAudioMuted, bool isVideoMuted)?
        onSipUnmuted,
    TResult Function()? maximize,
    TResult Function()? rejectIncoming,
    TResult Function(ActiveCall activeCall)? busyIncoming,
    TResult Function()? acceptIncoming,
    required TResult orElse(),
  }) {
    if (onSipUnmuted != null) {
      return onSipUnmuted(sipCall, isAudioMuted, isVideoMuted);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DoCallSipEvent value) doCall,
    required TResult Function(_DoHangUpSipEvent value) hangUp,
    required TResult Function(_ForceHangUpSipEvent value) forceHangUp,
    required TResult Function(_MuteAudioSipEvent value) muteAudio,
    required TResult Function(_MuteVideoSipEvent value) muteVideo,
    required TResult Function(_MuteSpeakerSipEvent value) muteSpeaker,
    required TResult Function(_SwitchCameraSipEvent value) switchCamera,
    required TResult Function(_OnSocketUpdateSipEvent value) onSocketUpdate,
    required TResult Function(_OnSocketRemoteUserHangup value)
        onSocketRemoteUserHangup,
    required TResult Function(_OnSocketRemoteUserRejectSipEvent value)
        onSocketRemoteUserReject,
    required TResult Function(_OnSocketRemoteUserBusySipEvent value)
        onSocketRemoteUserBusy,
    required TResult Function(_OnSocketSpeakSipEvent value) onSocketSpeak,
    required TResult Function(_OnCallStateChangedSipEvent value)
        onCallStateChanged,
    required TResult Function(_OnSipCallStreamSipEvent value) onSipCallStream,
    required TResult Function(_OnSipNewCallSipEvent value) onSipNewCall,
    required TResult Function(_OnSipCallEndedSipEvent value) onSipCallEnded,
    required TResult Function(_OnSipMutedSipEvent value) onSipMuted,
    required TResult Function(_OnSipUnmutedSipEvent value) onSipUnmuted,
    required TResult Function(_MaximizeSipEvent value) maximize,
    required TResult Function(_RejectIncomingSipEvent value) rejectIncoming,
    required TResult Function(_BusyIncomingSipEvent value) busyIncoming,
    required TResult Function(_AcceptIncomingSipEvent value) acceptIncoming,
  }) {
    return onSipUnmuted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DoCallSipEvent value)? doCall,
    TResult? Function(_DoHangUpSipEvent value)? hangUp,
    TResult? Function(_ForceHangUpSipEvent value)? forceHangUp,
    TResult? Function(_MuteAudioSipEvent value)? muteAudio,
    TResult? Function(_MuteVideoSipEvent value)? muteVideo,
    TResult? Function(_MuteSpeakerSipEvent value)? muteSpeaker,
    TResult? Function(_SwitchCameraSipEvent value)? switchCamera,
    TResult? Function(_OnSocketUpdateSipEvent value)? onSocketUpdate,
    TResult? Function(_OnSocketRemoteUserHangup value)?
        onSocketRemoteUserHangup,
    TResult? Function(_OnSocketRemoteUserRejectSipEvent value)?
        onSocketRemoteUserReject,
    TResult? Function(_OnSocketRemoteUserBusySipEvent value)?
        onSocketRemoteUserBusy,
    TResult? Function(_OnSocketSpeakSipEvent value)? onSocketSpeak,
    TResult? Function(_OnCallStateChangedSipEvent value)? onCallStateChanged,
    TResult? Function(_OnSipCallStreamSipEvent value)? onSipCallStream,
    TResult? Function(_OnSipNewCallSipEvent value)? onSipNewCall,
    TResult? Function(_OnSipCallEndedSipEvent value)? onSipCallEnded,
    TResult? Function(_OnSipMutedSipEvent value)? onSipMuted,
    TResult? Function(_OnSipUnmutedSipEvent value)? onSipUnmuted,
    TResult? Function(_MaximizeSipEvent value)? maximize,
    TResult? Function(_RejectIncomingSipEvent value)? rejectIncoming,
    TResult? Function(_BusyIncomingSipEvent value)? busyIncoming,
    TResult? Function(_AcceptIncomingSipEvent value)? acceptIncoming,
  }) {
    return onSipUnmuted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DoCallSipEvent value)? doCall,
    TResult Function(_DoHangUpSipEvent value)? hangUp,
    TResult Function(_ForceHangUpSipEvent value)? forceHangUp,
    TResult Function(_MuteAudioSipEvent value)? muteAudio,
    TResult Function(_MuteVideoSipEvent value)? muteVideo,
    TResult Function(_MuteSpeakerSipEvent value)? muteSpeaker,
    TResult Function(_SwitchCameraSipEvent value)? switchCamera,
    TResult Function(_OnSocketUpdateSipEvent value)? onSocketUpdate,
    TResult Function(_OnSocketRemoteUserHangup value)? onSocketRemoteUserHangup,
    TResult Function(_OnSocketRemoteUserRejectSipEvent value)?
        onSocketRemoteUserReject,
    TResult Function(_OnSocketRemoteUserBusySipEvent value)?
        onSocketRemoteUserBusy,
    TResult Function(_OnSocketSpeakSipEvent value)? onSocketSpeak,
    TResult Function(_OnCallStateChangedSipEvent value)? onCallStateChanged,
    TResult Function(_OnSipCallStreamSipEvent value)? onSipCallStream,
    TResult Function(_OnSipNewCallSipEvent value)? onSipNewCall,
    TResult Function(_OnSipCallEndedSipEvent value)? onSipCallEnded,
    TResult Function(_OnSipMutedSipEvent value)? onSipMuted,
    TResult Function(_OnSipUnmutedSipEvent value)? onSipUnmuted,
    TResult Function(_MaximizeSipEvent value)? maximize,
    TResult Function(_RejectIncomingSipEvent value)? rejectIncoming,
    TResult Function(_BusyIncomingSipEvent value)? busyIncoming,
    TResult Function(_AcceptIncomingSipEvent value)? acceptIncoming,
    required TResult orElse(),
  }) {
    if (onSipUnmuted != null) {
      return onSipUnmuted(this);
    }
    return orElse();
  }
}

abstract class _OnSipUnmutedSipEvent extends SipEvent {
  const factory _OnSipUnmutedSipEvent(
      final SipActiveCall sipCall,
      final bool isAudioMuted,
      final bool isVideoMuted) = _$_OnSipUnmutedSipEvent;
  const _OnSipUnmutedSipEvent._() : super._();

  SipActiveCall get sipCall;
  bool get isAudioMuted;
  bool get isVideoMuted;
  @JsonKey(ignore: true)
  _$$_OnSipUnmutedSipEventCopyWith<_$_OnSipUnmutedSipEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_MaximizeSipEventCopyWith<$Res> {
  factory _$$_MaximizeSipEventCopyWith(
          _$_MaximizeSipEvent value, $Res Function(_$_MaximizeSipEvent) then) =
      __$$_MaximizeSipEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_MaximizeSipEventCopyWithImpl<$Res>
    extends _$SipEventCopyWithImpl<$Res, _$_MaximizeSipEvent>
    implements _$$_MaximizeSipEventCopyWith<$Res> {
  __$$_MaximizeSipEventCopyWithImpl(
      _$_MaximizeSipEvent _value, $Res Function(_$_MaximizeSipEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_MaximizeSipEvent extends _MaximizeSipEvent
    with DiagnosticableTreeMixin {
  const _$_MaximizeSipEvent() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SipEvent.maximize()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'SipEvent.maximize'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_MaximizeSipEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String chatId, bool isVideoMuted) doCall,
    required TResult Function(
            OutcomingPersonalCallStatus? outcomingPersonalCallStatus)
        hangUp,
    required TResult Function() forceHangUp,
    required TResult Function(String chatId) muteAudio,
    required TResult Function(String chatId) muteVideo,
    required TResult Function(String chatId) muteSpeaker,
    required TResult Function(String chatId) switchCamera,
    required TResult Function(List<CallMeta>? callsMeta) onSocketUpdate,
    required TResult Function(int dlsId, String number)
        onSocketRemoteUserHangup,
    required TResult Function(int dlsId, String number)
        onSocketRemoteUserReject,
    required TResult Function(int dlsId, String number) onSocketRemoteUserBusy,
    required TResult Function(CallMeta callMeta) onSocketSpeak,
    required TResult Function(String callId, SipActiveCallState callState)
        onCallStateChanged,
    required TResult Function(SipActiveCall sipCall) onSipCallStream,
    required TResult Function(
            SipActiveCall sipCall, SipActiveCallState callState)
        onSipNewCall,
    required TResult Function(SipActiveCall sipCall) onSipCallEnded,
    required TResult Function(
            SipActiveCall sipCall, bool isAudioMuted, bool isVideoMuted)
        onSipMuted,
    required TResult Function(
            SipActiveCall sipCall, bool isAudioMuted, bool isVideoMuted)
        onSipUnmuted,
    required TResult Function() maximize,
    required TResult Function() rejectIncoming,
    required TResult Function(ActiveCall activeCall) busyIncoming,
    required TResult Function() acceptIncoming,
  }) {
    return maximize();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String chatId, bool isVideoMuted)? doCall,
    TResult? Function(OutcomingPersonalCallStatus? outcomingPersonalCallStatus)?
        hangUp,
    TResult? Function()? forceHangUp,
    TResult? Function(String chatId)? muteAudio,
    TResult? Function(String chatId)? muteVideo,
    TResult? Function(String chatId)? muteSpeaker,
    TResult? Function(String chatId)? switchCamera,
    TResult? Function(List<CallMeta>? callsMeta)? onSocketUpdate,
    TResult? Function(int dlsId, String number)? onSocketRemoteUserHangup,
    TResult? Function(int dlsId, String number)? onSocketRemoteUserReject,
    TResult? Function(int dlsId, String number)? onSocketRemoteUserBusy,
    TResult? Function(CallMeta callMeta)? onSocketSpeak,
    TResult? Function(String callId, SipActiveCallState callState)?
        onCallStateChanged,
    TResult? Function(SipActiveCall sipCall)? onSipCallStream,
    TResult? Function(SipActiveCall sipCall, SipActiveCallState callState)?
        onSipNewCall,
    TResult? Function(SipActiveCall sipCall)? onSipCallEnded,
    TResult? Function(
            SipActiveCall sipCall, bool isAudioMuted, bool isVideoMuted)?
        onSipMuted,
    TResult? Function(
            SipActiveCall sipCall, bool isAudioMuted, bool isVideoMuted)?
        onSipUnmuted,
    TResult? Function()? maximize,
    TResult? Function()? rejectIncoming,
    TResult? Function(ActiveCall activeCall)? busyIncoming,
    TResult? Function()? acceptIncoming,
  }) {
    return maximize?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String chatId, bool isVideoMuted)? doCall,
    TResult Function(OutcomingPersonalCallStatus? outcomingPersonalCallStatus)?
        hangUp,
    TResult Function()? forceHangUp,
    TResult Function(String chatId)? muteAudio,
    TResult Function(String chatId)? muteVideo,
    TResult Function(String chatId)? muteSpeaker,
    TResult Function(String chatId)? switchCamera,
    TResult Function(List<CallMeta>? callsMeta)? onSocketUpdate,
    TResult Function(int dlsId, String number)? onSocketRemoteUserHangup,
    TResult Function(int dlsId, String number)? onSocketRemoteUserReject,
    TResult Function(int dlsId, String number)? onSocketRemoteUserBusy,
    TResult Function(CallMeta callMeta)? onSocketSpeak,
    TResult Function(String callId, SipActiveCallState callState)?
        onCallStateChanged,
    TResult Function(SipActiveCall sipCall)? onSipCallStream,
    TResult Function(SipActiveCall sipCall, SipActiveCallState callState)?
        onSipNewCall,
    TResult Function(SipActiveCall sipCall)? onSipCallEnded,
    TResult Function(
            SipActiveCall sipCall, bool isAudioMuted, bool isVideoMuted)?
        onSipMuted,
    TResult Function(
            SipActiveCall sipCall, bool isAudioMuted, bool isVideoMuted)?
        onSipUnmuted,
    TResult Function()? maximize,
    TResult Function()? rejectIncoming,
    TResult Function(ActiveCall activeCall)? busyIncoming,
    TResult Function()? acceptIncoming,
    required TResult orElse(),
  }) {
    if (maximize != null) {
      return maximize();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DoCallSipEvent value) doCall,
    required TResult Function(_DoHangUpSipEvent value) hangUp,
    required TResult Function(_ForceHangUpSipEvent value) forceHangUp,
    required TResult Function(_MuteAudioSipEvent value) muteAudio,
    required TResult Function(_MuteVideoSipEvent value) muteVideo,
    required TResult Function(_MuteSpeakerSipEvent value) muteSpeaker,
    required TResult Function(_SwitchCameraSipEvent value) switchCamera,
    required TResult Function(_OnSocketUpdateSipEvent value) onSocketUpdate,
    required TResult Function(_OnSocketRemoteUserHangup value)
        onSocketRemoteUserHangup,
    required TResult Function(_OnSocketRemoteUserRejectSipEvent value)
        onSocketRemoteUserReject,
    required TResult Function(_OnSocketRemoteUserBusySipEvent value)
        onSocketRemoteUserBusy,
    required TResult Function(_OnSocketSpeakSipEvent value) onSocketSpeak,
    required TResult Function(_OnCallStateChangedSipEvent value)
        onCallStateChanged,
    required TResult Function(_OnSipCallStreamSipEvent value) onSipCallStream,
    required TResult Function(_OnSipNewCallSipEvent value) onSipNewCall,
    required TResult Function(_OnSipCallEndedSipEvent value) onSipCallEnded,
    required TResult Function(_OnSipMutedSipEvent value) onSipMuted,
    required TResult Function(_OnSipUnmutedSipEvent value) onSipUnmuted,
    required TResult Function(_MaximizeSipEvent value) maximize,
    required TResult Function(_RejectIncomingSipEvent value) rejectIncoming,
    required TResult Function(_BusyIncomingSipEvent value) busyIncoming,
    required TResult Function(_AcceptIncomingSipEvent value) acceptIncoming,
  }) {
    return maximize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DoCallSipEvent value)? doCall,
    TResult? Function(_DoHangUpSipEvent value)? hangUp,
    TResult? Function(_ForceHangUpSipEvent value)? forceHangUp,
    TResult? Function(_MuteAudioSipEvent value)? muteAudio,
    TResult? Function(_MuteVideoSipEvent value)? muteVideo,
    TResult? Function(_MuteSpeakerSipEvent value)? muteSpeaker,
    TResult? Function(_SwitchCameraSipEvent value)? switchCamera,
    TResult? Function(_OnSocketUpdateSipEvent value)? onSocketUpdate,
    TResult? Function(_OnSocketRemoteUserHangup value)?
        onSocketRemoteUserHangup,
    TResult? Function(_OnSocketRemoteUserRejectSipEvent value)?
        onSocketRemoteUserReject,
    TResult? Function(_OnSocketRemoteUserBusySipEvent value)?
        onSocketRemoteUserBusy,
    TResult? Function(_OnSocketSpeakSipEvent value)? onSocketSpeak,
    TResult? Function(_OnCallStateChangedSipEvent value)? onCallStateChanged,
    TResult? Function(_OnSipCallStreamSipEvent value)? onSipCallStream,
    TResult? Function(_OnSipNewCallSipEvent value)? onSipNewCall,
    TResult? Function(_OnSipCallEndedSipEvent value)? onSipCallEnded,
    TResult? Function(_OnSipMutedSipEvent value)? onSipMuted,
    TResult? Function(_OnSipUnmutedSipEvent value)? onSipUnmuted,
    TResult? Function(_MaximizeSipEvent value)? maximize,
    TResult? Function(_RejectIncomingSipEvent value)? rejectIncoming,
    TResult? Function(_BusyIncomingSipEvent value)? busyIncoming,
    TResult? Function(_AcceptIncomingSipEvent value)? acceptIncoming,
  }) {
    return maximize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DoCallSipEvent value)? doCall,
    TResult Function(_DoHangUpSipEvent value)? hangUp,
    TResult Function(_ForceHangUpSipEvent value)? forceHangUp,
    TResult Function(_MuteAudioSipEvent value)? muteAudio,
    TResult Function(_MuteVideoSipEvent value)? muteVideo,
    TResult Function(_MuteSpeakerSipEvent value)? muteSpeaker,
    TResult Function(_SwitchCameraSipEvent value)? switchCamera,
    TResult Function(_OnSocketUpdateSipEvent value)? onSocketUpdate,
    TResult Function(_OnSocketRemoteUserHangup value)? onSocketRemoteUserHangup,
    TResult Function(_OnSocketRemoteUserRejectSipEvent value)?
        onSocketRemoteUserReject,
    TResult Function(_OnSocketRemoteUserBusySipEvent value)?
        onSocketRemoteUserBusy,
    TResult Function(_OnSocketSpeakSipEvent value)? onSocketSpeak,
    TResult Function(_OnCallStateChangedSipEvent value)? onCallStateChanged,
    TResult Function(_OnSipCallStreamSipEvent value)? onSipCallStream,
    TResult Function(_OnSipNewCallSipEvent value)? onSipNewCall,
    TResult Function(_OnSipCallEndedSipEvent value)? onSipCallEnded,
    TResult Function(_OnSipMutedSipEvent value)? onSipMuted,
    TResult Function(_OnSipUnmutedSipEvent value)? onSipUnmuted,
    TResult Function(_MaximizeSipEvent value)? maximize,
    TResult Function(_RejectIncomingSipEvent value)? rejectIncoming,
    TResult Function(_BusyIncomingSipEvent value)? busyIncoming,
    TResult Function(_AcceptIncomingSipEvent value)? acceptIncoming,
    required TResult orElse(),
  }) {
    if (maximize != null) {
      return maximize(this);
    }
    return orElse();
  }
}

abstract class _MaximizeSipEvent extends SipEvent {
  const factory _MaximizeSipEvent() = _$_MaximizeSipEvent;
  const _MaximizeSipEvent._() : super._();
}

/// @nodoc
abstract class _$$_RejectIncomingSipEventCopyWith<$Res> {
  factory _$$_RejectIncomingSipEventCopyWith(_$_RejectIncomingSipEvent value,
          $Res Function(_$_RejectIncomingSipEvent) then) =
      __$$_RejectIncomingSipEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_RejectIncomingSipEventCopyWithImpl<$Res>
    extends _$SipEventCopyWithImpl<$Res, _$_RejectIncomingSipEvent>
    implements _$$_RejectIncomingSipEventCopyWith<$Res> {
  __$$_RejectIncomingSipEventCopyWithImpl(_$_RejectIncomingSipEvent _value,
      $Res Function(_$_RejectIncomingSipEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_RejectIncomingSipEvent extends _RejectIncomingSipEvent
    with DiagnosticableTreeMixin {
  const _$_RejectIncomingSipEvent() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SipEvent.rejectIncoming()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'SipEvent.rejectIncoming'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RejectIncomingSipEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String chatId, bool isVideoMuted) doCall,
    required TResult Function(
            OutcomingPersonalCallStatus? outcomingPersonalCallStatus)
        hangUp,
    required TResult Function() forceHangUp,
    required TResult Function(String chatId) muteAudio,
    required TResult Function(String chatId) muteVideo,
    required TResult Function(String chatId) muteSpeaker,
    required TResult Function(String chatId) switchCamera,
    required TResult Function(List<CallMeta>? callsMeta) onSocketUpdate,
    required TResult Function(int dlsId, String number)
        onSocketRemoteUserHangup,
    required TResult Function(int dlsId, String number)
        onSocketRemoteUserReject,
    required TResult Function(int dlsId, String number) onSocketRemoteUserBusy,
    required TResult Function(CallMeta callMeta) onSocketSpeak,
    required TResult Function(String callId, SipActiveCallState callState)
        onCallStateChanged,
    required TResult Function(SipActiveCall sipCall) onSipCallStream,
    required TResult Function(
            SipActiveCall sipCall, SipActiveCallState callState)
        onSipNewCall,
    required TResult Function(SipActiveCall sipCall) onSipCallEnded,
    required TResult Function(
            SipActiveCall sipCall, bool isAudioMuted, bool isVideoMuted)
        onSipMuted,
    required TResult Function(
            SipActiveCall sipCall, bool isAudioMuted, bool isVideoMuted)
        onSipUnmuted,
    required TResult Function() maximize,
    required TResult Function() rejectIncoming,
    required TResult Function(ActiveCall activeCall) busyIncoming,
    required TResult Function() acceptIncoming,
  }) {
    return rejectIncoming();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String chatId, bool isVideoMuted)? doCall,
    TResult? Function(OutcomingPersonalCallStatus? outcomingPersonalCallStatus)?
        hangUp,
    TResult? Function()? forceHangUp,
    TResult? Function(String chatId)? muteAudio,
    TResult? Function(String chatId)? muteVideo,
    TResult? Function(String chatId)? muteSpeaker,
    TResult? Function(String chatId)? switchCamera,
    TResult? Function(List<CallMeta>? callsMeta)? onSocketUpdate,
    TResult? Function(int dlsId, String number)? onSocketRemoteUserHangup,
    TResult? Function(int dlsId, String number)? onSocketRemoteUserReject,
    TResult? Function(int dlsId, String number)? onSocketRemoteUserBusy,
    TResult? Function(CallMeta callMeta)? onSocketSpeak,
    TResult? Function(String callId, SipActiveCallState callState)?
        onCallStateChanged,
    TResult? Function(SipActiveCall sipCall)? onSipCallStream,
    TResult? Function(SipActiveCall sipCall, SipActiveCallState callState)?
        onSipNewCall,
    TResult? Function(SipActiveCall sipCall)? onSipCallEnded,
    TResult? Function(
            SipActiveCall sipCall, bool isAudioMuted, bool isVideoMuted)?
        onSipMuted,
    TResult? Function(
            SipActiveCall sipCall, bool isAudioMuted, bool isVideoMuted)?
        onSipUnmuted,
    TResult? Function()? maximize,
    TResult? Function()? rejectIncoming,
    TResult? Function(ActiveCall activeCall)? busyIncoming,
    TResult? Function()? acceptIncoming,
  }) {
    return rejectIncoming?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String chatId, bool isVideoMuted)? doCall,
    TResult Function(OutcomingPersonalCallStatus? outcomingPersonalCallStatus)?
        hangUp,
    TResult Function()? forceHangUp,
    TResult Function(String chatId)? muteAudio,
    TResult Function(String chatId)? muteVideo,
    TResult Function(String chatId)? muteSpeaker,
    TResult Function(String chatId)? switchCamera,
    TResult Function(List<CallMeta>? callsMeta)? onSocketUpdate,
    TResult Function(int dlsId, String number)? onSocketRemoteUserHangup,
    TResult Function(int dlsId, String number)? onSocketRemoteUserReject,
    TResult Function(int dlsId, String number)? onSocketRemoteUserBusy,
    TResult Function(CallMeta callMeta)? onSocketSpeak,
    TResult Function(String callId, SipActiveCallState callState)?
        onCallStateChanged,
    TResult Function(SipActiveCall sipCall)? onSipCallStream,
    TResult Function(SipActiveCall sipCall, SipActiveCallState callState)?
        onSipNewCall,
    TResult Function(SipActiveCall sipCall)? onSipCallEnded,
    TResult Function(
            SipActiveCall sipCall, bool isAudioMuted, bool isVideoMuted)?
        onSipMuted,
    TResult Function(
            SipActiveCall sipCall, bool isAudioMuted, bool isVideoMuted)?
        onSipUnmuted,
    TResult Function()? maximize,
    TResult Function()? rejectIncoming,
    TResult Function(ActiveCall activeCall)? busyIncoming,
    TResult Function()? acceptIncoming,
    required TResult orElse(),
  }) {
    if (rejectIncoming != null) {
      return rejectIncoming();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DoCallSipEvent value) doCall,
    required TResult Function(_DoHangUpSipEvent value) hangUp,
    required TResult Function(_ForceHangUpSipEvent value) forceHangUp,
    required TResult Function(_MuteAudioSipEvent value) muteAudio,
    required TResult Function(_MuteVideoSipEvent value) muteVideo,
    required TResult Function(_MuteSpeakerSipEvent value) muteSpeaker,
    required TResult Function(_SwitchCameraSipEvent value) switchCamera,
    required TResult Function(_OnSocketUpdateSipEvent value) onSocketUpdate,
    required TResult Function(_OnSocketRemoteUserHangup value)
        onSocketRemoteUserHangup,
    required TResult Function(_OnSocketRemoteUserRejectSipEvent value)
        onSocketRemoteUserReject,
    required TResult Function(_OnSocketRemoteUserBusySipEvent value)
        onSocketRemoteUserBusy,
    required TResult Function(_OnSocketSpeakSipEvent value) onSocketSpeak,
    required TResult Function(_OnCallStateChangedSipEvent value)
        onCallStateChanged,
    required TResult Function(_OnSipCallStreamSipEvent value) onSipCallStream,
    required TResult Function(_OnSipNewCallSipEvent value) onSipNewCall,
    required TResult Function(_OnSipCallEndedSipEvent value) onSipCallEnded,
    required TResult Function(_OnSipMutedSipEvent value) onSipMuted,
    required TResult Function(_OnSipUnmutedSipEvent value) onSipUnmuted,
    required TResult Function(_MaximizeSipEvent value) maximize,
    required TResult Function(_RejectIncomingSipEvent value) rejectIncoming,
    required TResult Function(_BusyIncomingSipEvent value) busyIncoming,
    required TResult Function(_AcceptIncomingSipEvent value) acceptIncoming,
  }) {
    return rejectIncoming(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DoCallSipEvent value)? doCall,
    TResult? Function(_DoHangUpSipEvent value)? hangUp,
    TResult? Function(_ForceHangUpSipEvent value)? forceHangUp,
    TResult? Function(_MuteAudioSipEvent value)? muteAudio,
    TResult? Function(_MuteVideoSipEvent value)? muteVideo,
    TResult? Function(_MuteSpeakerSipEvent value)? muteSpeaker,
    TResult? Function(_SwitchCameraSipEvent value)? switchCamera,
    TResult? Function(_OnSocketUpdateSipEvent value)? onSocketUpdate,
    TResult? Function(_OnSocketRemoteUserHangup value)?
        onSocketRemoteUserHangup,
    TResult? Function(_OnSocketRemoteUserRejectSipEvent value)?
        onSocketRemoteUserReject,
    TResult? Function(_OnSocketRemoteUserBusySipEvent value)?
        onSocketRemoteUserBusy,
    TResult? Function(_OnSocketSpeakSipEvent value)? onSocketSpeak,
    TResult? Function(_OnCallStateChangedSipEvent value)? onCallStateChanged,
    TResult? Function(_OnSipCallStreamSipEvent value)? onSipCallStream,
    TResult? Function(_OnSipNewCallSipEvent value)? onSipNewCall,
    TResult? Function(_OnSipCallEndedSipEvent value)? onSipCallEnded,
    TResult? Function(_OnSipMutedSipEvent value)? onSipMuted,
    TResult? Function(_OnSipUnmutedSipEvent value)? onSipUnmuted,
    TResult? Function(_MaximizeSipEvent value)? maximize,
    TResult? Function(_RejectIncomingSipEvent value)? rejectIncoming,
    TResult? Function(_BusyIncomingSipEvent value)? busyIncoming,
    TResult? Function(_AcceptIncomingSipEvent value)? acceptIncoming,
  }) {
    return rejectIncoming?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DoCallSipEvent value)? doCall,
    TResult Function(_DoHangUpSipEvent value)? hangUp,
    TResult Function(_ForceHangUpSipEvent value)? forceHangUp,
    TResult Function(_MuteAudioSipEvent value)? muteAudio,
    TResult Function(_MuteVideoSipEvent value)? muteVideo,
    TResult Function(_MuteSpeakerSipEvent value)? muteSpeaker,
    TResult Function(_SwitchCameraSipEvent value)? switchCamera,
    TResult Function(_OnSocketUpdateSipEvent value)? onSocketUpdate,
    TResult Function(_OnSocketRemoteUserHangup value)? onSocketRemoteUserHangup,
    TResult Function(_OnSocketRemoteUserRejectSipEvent value)?
        onSocketRemoteUserReject,
    TResult Function(_OnSocketRemoteUserBusySipEvent value)?
        onSocketRemoteUserBusy,
    TResult Function(_OnSocketSpeakSipEvent value)? onSocketSpeak,
    TResult Function(_OnCallStateChangedSipEvent value)? onCallStateChanged,
    TResult Function(_OnSipCallStreamSipEvent value)? onSipCallStream,
    TResult Function(_OnSipNewCallSipEvent value)? onSipNewCall,
    TResult Function(_OnSipCallEndedSipEvent value)? onSipCallEnded,
    TResult Function(_OnSipMutedSipEvent value)? onSipMuted,
    TResult Function(_OnSipUnmutedSipEvent value)? onSipUnmuted,
    TResult Function(_MaximizeSipEvent value)? maximize,
    TResult Function(_RejectIncomingSipEvent value)? rejectIncoming,
    TResult Function(_BusyIncomingSipEvent value)? busyIncoming,
    TResult Function(_AcceptIncomingSipEvent value)? acceptIncoming,
    required TResult orElse(),
  }) {
    if (rejectIncoming != null) {
      return rejectIncoming(this);
    }
    return orElse();
  }
}

abstract class _RejectIncomingSipEvent extends SipEvent {
  const factory _RejectIncomingSipEvent() = _$_RejectIncomingSipEvent;
  const _RejectIncomingSipEvent._() : super._();
}

/// @nodoc
abstract class _$$_BusyIncomingSipEventCopyWith<$Res> {
  factory _$$_BusyIncomingSipEventCopyWith(_$_BusyIncomingSipEvent value,
          $Res Function(_$_BusyIncomingSipEvent) then) =
      __$$_BusyIncomingSipEventCopyWithImpl<$Res>;
  @useResult
  $Res call({ActiveCall activeCall});

  $ActiveCallCopyWith<$Res> get activeCall;
}

/// @nodoc
class __$$_BusyIncomingSipEventCopyWithImpl<$Res>
    extends _$SipEventCopyWithImpl<$Res, _$_BusyIncomingSipEvent>
    implements _$$_BusyIncomingSipEventCopyWith<$Res> {
  __$$_BusyIncomingSipEventCopyWithImpl(_$_BusyIncomingSipEvent _value,
      $Res Function(_$_BusyIncomingSipEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activeCall = null,
  }) {
    return _then(_$_BusyIncomingSipEvent(
      null == activeCall
          ? _value.activeCall
          : activeCall // ignore: cast_nullable_to_non_nullable
              as ActiveCall,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ActiveCallCopyWith<$Res> get activeCall {
    return $ActiveCallCopyWith<$Res>(_value.activeCall, (value) {
      return _then(_value.copyWith(activeCall: value));
    });
  }
}

/// @nodoc

class _$_BusyIncomingSipEvent extends _BusyIncomingSipEvent
    with DiagnosticableTreeMixin {
  const _$_BusyIncomingSipEvent(this.activeCall) : super._();

  @override
  final ActiveCall activeCall;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SipEvent.busyIncoming(activeCall: $activeCall)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SipEvent.busyIncoming'))
      ..add(DiagnosticsProperty('activeCall', activeCall));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BusyIncomingSipEvent &&
            (identical(other.activeCall, activeCall) ||
                other.activeCall == activeCall));
  }

  @override
  int get hashCode => Object.hash(runtimeType, activeCall);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BusyIncomingSipEventCopyWith<_$_BusyIncomingSipEvent> get copyWith =>
      __$$_BusyIncomingSipEventCopyWithImpl<_$_BusyIncomingSipEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String chatId, bool isVideoMuted) doCall,
    required TResult Function(
            OutcomingPersonalCallStatus? outcomingPersonalCallStatus)
        hangUp,
    required TResult Function() forceHangUp,
    required TResult Function(String chatId) muteAudio,
    required TResult Function(String chatId) muteVideo,
    required TResult Function(String chatId) muteSpeaker,
    required TResult Function(String chatId) switchCamera,
    required TResult Function(List<CallMeta>? callsMeta) onSocketUpdate,
    required TResult Function(int dlsId, String number)
        onSocketRemoteUserHangup,
    required TResult Function(int dlsId, String number)
        onSocketRemoteUserReject,
    required TResult Function(int dlsId, String number) onSocketRemoteUserBusy,
    required TResult Function(CallMeta callMeta) onSocketSpeak,
    required TResult Function(String callId, SipActiveCallState callState)
        onCallStateChanged,
    required TResult Function(SipActiveCall sipCall) onSipCallStream,
    required TResult Function(
            SipActiveCall sipCall, SipActiveCallState callState)
        onSipNewCall,
    required TResult Function(SipActiveCall sipCall) onSipCallEnded,
    required TResult Function(
            SipActiveCall sipCall, bool isAudioMuted, bool isVideoMuted)
        onSipMuted,
    required TResult Function(
            SipActiveCall sipCall, bool isAudioMuted, bool isVideoMuted)
        onSipUnmuted,
    required TResult Function() maximize,
    required TResult Function() rejectIncoming,
    required TResult Function(ActiveCall activeCall) busyIncoming,
    required TResult Function() acceptIncoming,
  }) {
    return busyIncoming(activeCall);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String chatId, bool isVideoMuted)? doCall,
    TResult? Function(OutcomingPersonalCallStatus? outcomingPersonalCallStatus)?
        hangUp,
    TResult? Function()? forceHangUp,
    TResult? Function(String chatId)? muteAudio,
    TResult? Function(String chatId)? muteVideo,
    TResult? Function(String chatId)? muteSpeaker,
    TResult? Function(String chatId)? switchCamera,
    TResult? Function(List<CallMeta>? callsMeta)? onSocketUpdate,
    TResult? Function(int dlsId, String number)? onSocketRemoteUserHangup,
    TResult? Function(int dlsId, String number)? onSocketRemoteUserReject,
    TResult? Function(int dlsId, String number)? onSocketRemoteUserBusy,
    TResult? Function(CallMeta callMeta)? onSocketSpeak,
    TResult? Function(String callId, SipActiveCallState callState)?
        onCallStateChanged,
    TResult? Function(SipActiveCall sipCall)? onSipCallStream,
    TResult? Function(SipActiveCall sipCall, SipActiveCallState callState)?
        onSipNewCall,
    TResult? Function(SipActiveCall sipCall)? onSipCallEnded,
    TResult? Function(
            SipActiveCall sipCall, bool isAudioMuted, bool isVideoMuted)?
        onSipMuted,
    TResult? Function(
            SipActiveCall sipCall, bool isAudioMuted, bool isVideoMuted)?
        onSipUnmuted,
    TResult? Function()? maximize,
    TResult? Function()? rejectIncoming,
    TResult? Function(ActiveCall activeCall)? busyIncoming,
    TResult? Function()? acceptIncoming,
  }) {
    return busyIncoming?.call(activeCall);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String chatId, bool isVideoMuted)? doCall,
    TResult Function(OutcomingPersonalCallStatus? outcomingPersonalCallStatus)?
        hangUp,
    TResult Function()? forceHangUp,
    TResult Function(String chatId)? muteAudio,
    TResult Function(String chatId)? muteVideo,
    TResult Function(String chatId)? muteSpeaker,
    TResult Function(String chatId)? switchCamera,
    TResult Function(List<CallMeta>? callsMeta)? onSocketUpdate,
    TResult Function(int dlsId, String number)? onSocketRemoteUserHangup,
    TResult Function(int dlsId, String number)? onSocketRemoteUserReject,
    TResult Function(int dlsId, String number)? onSocketRemoteUserBusy,
    TResult Function(CallMeta callMeta)? onSocketSpeak,
    TResult Function(String callId, SipActiveCallState callState)?
        onCallStateChanged,
    TResult Function(SipActiveCall sipCall)? onSipCallStream,
    TResult Function(SipActiveCall sipCall, SipActiveCallState callState)?
        onSipNewCall,
    TResult Function(SipActiveCall sipCall)? onSipCallEnded,
    TResult Function(
            SipActiveCall sipCall, bool isAudioMuted, bool isVideoMuted)?
        onSipMuted,
    TResult Function(
            SipActiveCall sipCall, bool isAudioMuted, bool isVideoMuted)?
        onSipUnmuted,
    TResult Function()? maximize,
    TResult Function()? rejectIncoming,
    TResult Function(ActiveCall activeCall)? busyIncoming,
    TResult Function()? acceptIncoming,
    required TResult orElse(),
  }) {
    if (busyIncoming != null) {
      return busyIncoming(activeCall);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DoCallSipEvent value) doCall,
    required TResult Function(_DoHangUpSipEvent value) hangUp,
    required TResult Function(_ForceHangUpSipEvent value) forceHangUp,
    required TResult Function(_MuteAudioSipEvent value) muteAudio,
    required TResult Function(_MuteVideoSipEvent value) muteVideo,
    required TResult Function(_MuteSpeakerSipEvent value) muteSpeaker,
    required TResult Function(_SwitchCameraSipEvent value) switchCamera,
    required TResult Function(_OnSocketUpdateSipEvent value) onSocketUpdate,
    required TResult Function(_OnSocketRemoteUserHangup value)
        onSocketRemoteUserHangup,
    required TResult Function(_OnSocketRemoteUserRejectSipEvent value)
        onSocketRemoteUserReject,
    required TResult Function(_OnSocketRemoteUserBusySipEvent value)
        onSocketRemoteUserBusy,
    required TResult Function(_OnSocketSpeakSipEvent value) onSocketSpeak,
    required TResult Function(_OnCallStateChangedSipEvent value)
        onCallStateChanged,
    required TResult Function(_OnSipCallStreamSipEvent value) onSipCallStream,
    required TResult Function(_OnSipNewCallSipEvent value) onSipNewCall,
    required TResult Function(_OnSipCallEndedSipEvent value) onSipCallEnded,
    required TResult Function(_OnSipMutedSipEvent value) onSipMuted,
    required TResult Function(_OnSipUnmutedSipEvent value) onSipUnmuted,
    required TResult Function(_MaximizeSipEvent value) maximize,
    required TResult Function(_RejectIncomingSipEvent value) rejectIncoming,
    required TResult Function(_BusyIncomingSipEvent value) busyIncoming,
    required TResult Function(_AcceptIncomingSipEvent value) acceptIncoming,
  }) {
    return busyIncoming(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DoCallSipEvent value)? doCall,
    TResult? Function(_DoHangUpSipEvent value)? hangUp,
    TResult? Function(_ForceHangUpSipEvent value)? forceHangUp,
    TResult? Function(_MuteAudioSipEvent value)? muteAudio,
    TResult? Function(_MuteVideoSipEvent value)? muteVideo,
    TResult? Function(_MuteSpeakerSipEvent value)? muteSpeaker,
    TResult? Function(_SwitchCameraSipEvent value)? switchCamera,
    TResult? Function(_OnSocketUpdateSipEvent value)? onSocketUpdate,
    TResult? Function(_OnSocketRemoteUserHangup value)?
        onSocketRemoteUserHangup,
    TResult? Function(_OnSocketRemoteUserRejectSipEvent value)?
        onSocketRemoteUserReject,
    TResult? Function(_OnSocketRemoteUserBusySipEvent value)?
        onSocketRemoteUserBusy,
    TResult? Function(_OnSocketSpeakSipEvent value)? onSocketSpeak,
    TResult? Function(_OnCallStateChangedSipEvent value)? onCallStateChanged,
    TResult? Function(_OnSipCallStreamSipEvent value)? onSipCallStream,
    TResult? Function(_OnSipNewCallSipEvent value)? onSipNewCall,
    TResult? Function(_OnSipCallEndedSipEvent value)? onSipCallEnded,
    TResult? Function(_OnSipMutedSipEvent value)? onSipMuted,
    TResult? Function(_OnSipUnmutedSipEvent value)? onSipUnmuted,
    TResult? Function(_MaximizeSipEvent value)? maximize,
    TResult? Function(_RejectIncomingSipEvent value)? rejectIncoming,
    TResult? Function(_BusyIncomingSipEvent value)? busyIncoming,
    TResult? Function(_AcceptIncomingSipEvent value)? acceptIncoming,
  }) {
    return busyIncoming?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DoCallSipEvent value)? doCall,
    TResult Function(_DoHangUpSipEvent value)? hangUp,
    TResult Function(_ForceHangUpSipEvent value)? forceHangUp,
    TResult Function(_MuteAudioSipEvent value)? muteAudio,
    TResult Function(_MuteVideoSipEvent value)? muteVideo,
    TResult Function(_MuteSpeakerSipEvent value)? muteSpeaker,
    TResult Function(_SwitchCameraSipEvent value)? switchCamera,
    TResult Function(_OnSocketUpdateSipEvent value)? onSocketUpdate,
    TResult Function(_OnSocketRemoteUserHangup value)? onSocketRemoteUserHangup,
    TResult Function(_OnSocketRemoteUserRejectSipEvent value)?
        onSocketRemoteUserReject,
    TResult Function(_OnSocketRemoteUserBusySipEvent value)?
        onSocketRemoteUserBusy,
    TResult Function(_OnSocketSpeakSipEvent value)? onSocketSpeak,
    TResult Function(_OnCallStateChangedSipEvent value)? onCallStateChanged,
    TResult Function(_OnSipCallStreamSipEvent value)? onSipCallStream,
    TResult Function(_OnSipNewCallSipEvent value)? onSipNewCall,
    TResult Function(_OnSipCallEndedSipEvent value)? onSipCallEnded,
    TResult Function(_OnSipMutedSipEvent value)? onSipMuted,
    TResult Function(_OnSipUnmutedSipEvent value)? onSipUnmuted,
    TResult Function(_MaximizeSipEvent value)? maximize,
    TResult Function(_RejectIncomingSipEvent value)? rejectIncoming,
    TResult Function(_BusyIncomingSipEvent value)? busyIncoming,
    TResult Function(_AcceptIncomingSipEvent value)? acceptIncoming,
    required TResult orElse(),
  }) {
    if (busyIncoming != null) {
      return busyIncoming(this);
    }
    return orElse();
  }
}

abstract class _BusyIncomingSipEvent extends SipEvent {
  const factory _BusyIncomingSipEvent(final ActiveCall activeCall) =
      _$_BusyIncomingSipEvent;
  const _BusyIncomingSipEvent._() : super._();

  ActiveCall get activeCall;
  @JsonKey(ignore: true)
  _$$_BusyIncomingSipEventCopyWith<_$_BusyIncomingSipEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AcceptIncomingSipEventCopyWith<$Res> {
  factory _$$_AcceptIncomingSipEventCopyWith(_$_AcceptIncomingSipEvent value,
          $Res Function(_$_AcceptIncomingSipEvent) then) =
      __$$_AcceptIncomingSipEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AcceptIncomingSipEventCopyWithImpl<$Res>
    extends _$SipEventCopyWithImpl<$Res, _$_AcceptIncomingSipEvent>
    implements _$$_AcceptIncomingSipEventCopyWith<$Res> {
  __$$_AcceptIncomingSipEventCopyWithImpl(_$_AcceptIncomingSipEvent _value,
      $Res Function(_$_AcceptIncomingSipEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AcceptIncomingSipEvent extends _AcceptIncomingSipEvent
    with DiagnosticableTreeMixin {
  const _$_AcceptIncomingSipEvent() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SipEvent.acceptIncoming()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'SipEvent.acceptIncoming'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AcceptIncomingSipEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String chatId, bool isVideoMuted) doCall,
    required TResult Function(
            OutcomingPersonalCallStatus? outcomingPersonalCallStatus)
        hangUp,
    required TResult Function() forceHangUp,
    required TResult Function(String chatId) muteAudio,
    required TResult Function(String chatId) muteVideo,
    required TResult Function(String chatId) muteSpeaker,
    required TResult Function(String chatId) switchCamera,
    required TResult Function(List<CallMeta>? callsMeta) onSocketUpdate,
    required TResult Function(int dlsId, String number)
        onSocketRemoteUserHangup,
    required TResult Function(int dlsId, String number)
        onSocketRemoteUserReject,
    required TResult Function(int dlsId, String number) onSocketRemoteUserBusy,
    required TResult Function(CallMeta callMeta) onSocketSpeak,
    required TResult Function(String callId, SipActiveCallState callState)
        onCallStateChanged,
    required TResult Function(SipActiveCall sipCall) onSipCallStream,
    required TResult Function(
            SipActiveCall sipCall, SipActiveCallState callState)
        onSipNewCall,
    required TResult Function(SipActiveCall sipCall) onSipCallEnded,
    required TResult Function(
            SipActiveCall sipCall, bool isAudioMuted, bool isVideoMuted)
        onSipMuted,
    required TResult Function(
            SipActiveCall sipCall, bool isAudioMuted, bool isVideoMuted)
        onSipUnmuted,
    required TResult Function() maximize,
    required TResult Function() rejectIncoming,
    required TResult Function(ActiveCall activeCall) busyIncoming,
    required TResult Function() acceptIncoming,
  }) {
    return acceptIncoming();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String chatId, bool isVideoMuted)? doCall,
    TResult? Function(OutcomingPersonalCallStatus? outcomingPersonalCallStatus)?
        hangUp,
    TResult? Function()? forceHangUp,
    TResult? Function(String chatId)? muteAudio,
    TResult? Function(String chatId)? muteVideo,
    TResult? Function(String chatId)? muteSpeaker,
    TResult? Function(String chatId)? switchCamera,
    TResult? Function(List<CallMeta>? callsMeta)? onSocketUpdate,
    TResult? Function(int dlsId, String number)? onSocketRemoteUserHangup,
    TResult? Function(int dlsId, String number)? onSocketRemoteUserReject,
    TResult? Function(int dlsId, String number)? onSocketRemoteUserBusy,
    TResult? Function(CallMeta callMeta)? onSocketSpeak,
    TResult? Function(String callId, SipActiveCallState callState)?
        onCallStateChanged,
    TResult? Function(SipActiveCall sipCall)? onSipCallStream,
    TResult? Function(SipActiveCall sipCall, SipActiveCallState callState)?
        onSipNewCall,
    TResult? Function(SipActiveCall sipCall)? onSipCallEnded,
    TResult? Function(
            SipActiveCall sipCall, bool isAudioMuted, bool isVideoMuted)?
        onSipMuted,
    TResult? Function(
            SipActiveCall sipCall, bool isAudioMuted, bool isVideoMuted)?
        onSipUnmuted,
    TResult? Function()? maximize,
    TResult? Function()? rejectIncoming,
    TResult? Function(ActiveCall activeCall)? busyIncoming,
    TResult? Function()? acceptIncoming,
  }) {
    return acceptIncoming?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String chatId, bool isVideoMuted)? doCall,
    TResult Function(OutcomingPersonalCallStatus? outcomingPersonalCallStatus)?
        hangUp,
    TResult Function()? forceHangUp,
    TResult Function(String chatId)? muteAudio,
    TResult Function(String chatId)? muteVideo,
    TResult Function(String chatId)? muteSpeaker,
    TResult Function(String chatId)? switchCamera,
    TResult Function(List<CallMeta>? callsMeta)? onSocketUpdate,
    TResult Function(int dlsId, String number)? onSocketRemoteUserHangup,
    TResult Function(int dlsId, String number)? onSocketRemoteUserReject,
    TResult Function(int dlsId, String number)? onSocketRemoteUserBusy,
    TResult Function(CallMeta callMeta)? onSocketSpeak,
    TResult Function(String callId, SipActiveCallState callState)?
        onCallStateChanged,
    TResult Function(SipActiveCall sipCall)? onSipCallStream,
    TResult Function(SipActiveCall sipCall, SipActiveCallState callState)?
        onSipNewCall,
    TResult Function(SipActiveCall sipCall)? onSipCallEnded,
    TResult Function(
            SipActiveCall sipCall, bool isAudioMuted, bool isVideoMuted)?
        onSipMuted,
    TResult Function(
            SipActiveCall sipCall, bool isAudioMuted, bool isVideoMuted)?
        onSipUnmuted,
    TResult Function()? maximize,
    TResult Function()? rejectIncoming,
    TResult Function(ActiveCall activeCall)? busyIncoming,
    TResult Function()? acceptIncoming,
    required TResult orElse(),
  }) {
    if (acceptIncoming != null) {
      return acceptIncoming();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DoCallSipEvent value) doCall,
    required TResult Function(_DoHangUpSipEvent value) hangUp,
    required TResult Function(_ForceHangUpSipEvent value) forceHangUp,
    required TResult Function(_MuteAudioSipEvent value) muteAudio,
    required TResult Function(_MuteVideoSipEvent value) muteVideo,
    required TResult Function(_MuteSpeakerSipEvent value) muteSpeaker,
    required TResult Function(_SwitchCameraSipEvent value) switchCamera,
    required TResult Function(_OnSocketUpdateSipEvent value) onSocketUpdate,
    required TResult Function(_OnSocketRemoteUserHangup value)
        onSocketRemoteUserHangup,
    required TResult Function(_OnSocketRemoteUserRejectSipEvent value)
        onSocketRemoteUserReject,
    required TResult Function(_OnSocketRemoteUserBusySipEvent value)
        onSocketRemoteUserBusy,
    required TResult Function(_OnSocketSpeakSipEvent value) onSocketSpeak,
    required TResult Function(_OnCallStateChangedSipEvent value)
        onCallStateChanged,
    required TResult Function(_OnSipCallStreamSipEvent value) onSipCallStream,
    required TResult Function(_OnSipNewCallSipEvent value) onSipNewCall,
    required TResult Function(_OnSipCallEndedSipEvent value) onSipCallEnded,
    required TResult Function(_OnSipMutedSipEvent value) onSipMuted,
    required TResult Function(_OnSipUnmutedSipEvent value) onSipUnmuted,
    required TResult Function(_MaximizeSipEvent value) maximize,
    required TResult Function(_RejectIncomingSipEvent value) rejectIncoming,
    required TResult Function(_BusyIncomingSipEvent value) busyIncoming,
    required TResult Function(_AcceptIncomingSipEvent value) acceptIncoming,
  }) {
    return acceptIncoming(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DoCallSipEvent value)? doCall,
    TResult? Function(_DoHangUpSipEvent value)? hangUp,
    TResult? Function(_ForceHangUpSipEvent value)? forceHangUp,
    TResult? Function(_MuteAudioSipEvent value)? muteAudio,
    TResult? Function(_MuteVideoSipEvent value)? muteVideo,
    TResult? Function(_MuteSpeakerSipEvent value)? muteSpeaker,
    TResult? Function(_SwitchCameraSipEvent value)? switchCamera,
    TResult? Function(_OnSocketUpdateSipEvent value)? onSocketUpdate,
    TResult? Function(_OnSocketRemoteUserHangup value)?
        onSocketRemoteUserHangup,
    TResult? Function(_OnSocketRemoteUserRejectSipEvent value)?
        onSocketRemoteUserReject,
    TResult? Function(_OnSocketRemoteUserBusySipEvent value)?
        onSocketRemoteUserBusy,
    TResult? Function(_OnSocketSpeakSipEvent value)? onSocketSpeak,
    TResult? Function(_OnCallStateChangedSipEvent value)? onCallStateChanged,
    TResult? Function(_OnSipCallStreamSipEvent value)? onSipCallStream,
    TResult? Function(_OnSipNewCallSipEvent value)? onSipNewCall,
    TResult? Function(_OnSipCallEndedSipEvent value)? onSipCallEnded,
    TResult? Function(_OnSipMutedSipEvent value)? onSipMuted,
    TResult? Function(_OnSipUnmutedSipEvent value)? onSipUnmuted,
    TResult? Function(_MaximizeSipEvent value)? maximize,
    TResult? Function(_RejectIncomingSipEvent value)? rejectIncoming,
    TResult? Function(_BusyIncomingSipEvent value)? busyIncoming,
    TResult? Function(_AcceptIncomingSipEvent value)? acceptIncoming,
  }) {
    return acceptIncoming?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DoCallSipEvent value)? doCall,
    TResult Function(_DoHangUpSipEvent value)? hangUp,
    TResult Function(_ForceHangUpSipEvent value)? forceHangUp,
    TResult Function(_MuteAudioSipEvent value)? muteAudio,
    TResult Function(_MuteVideoSipEvent value)? muteVideo,
    TResult Function(_MuteSpeakerSipEvent value)? muteSpeaker,
    TResult Function(_SwitchCameraSipEvent value)? switchCamera,
    TResult Function(_OnSocketUpdateSipEvent value)? onSocketUpdate,
    TResult Function(_OnSocketRemoteUserHangup value)? onSocketRemoteUserHangup,
    TResult Function(_OnSocketRemoteUserRejectSipEvent value)?
        onSocketRemoteUserReject,
    TResult Function(_OnSocketRemoteUserBusySipEvent value)?
        onSocketRemoteUserBusy,
    TResult Function(_OnSocketSpeakSipEvent value)? onSocketSpeak,
    TResult Function(_OnCallStateChangedSipEvent value)? onCallStateChanged,
    TResult Function(_OnSipCallStreamSipEvent value)? onSipCallStream,
    TResult Function(_OnSipNewCallSipEvent value)? onSipNewCall,
    TResult Function(_OnSipCallEndedSipEvent value)? onSipCallEnded,
    TResult Function(_OnSipMutedSipEvent value)? onSipMuted,
    TResult Function(_OnSipUnmutedSipEvent value)? onSipUnmuted,
    TResult Function(_MaximizeSipEvent value)? maximize,
    TResult Function(_RejectIncomingSipEvent value)? rejectIncoming,
    TResult Function(_BusyIncomingSipEvent value)? busyIncoming,
    TResult Function(_AcceptIncomingSipEvent value)? acceptIncoming,
    required TResult orElse(),
  }) {
    if (acceptIncoming != null) {
      return acceptIncoming(this);
    }
    return orElse();
  }
}

abstract class _AcceptIncomingSipEvent extends SipEvent {
  const factory _AcceptIncomingSipEvent() = _$_AcceptIncomingSipEvent;
  const _AcceptIncomingSipEvent._() : super._();
}

/// @nodoc
mixin _$SipState {
  /// все звонки в приложении и их метаданные
  List<ActiveCall> get activeCalls => throw _privateConstructorUsedError;

  /// пойман входящий
  ActiveCall? get incomingCatched => throw _privateConstructorUsedError;

  /// приватные чаты, звонки которых будут игнорированы
  /// это те звонки в которых пользователь положил трубку
  /// но пользователь на другой стороне еще находится в звонке
  List<String> get uniqueLocalIgnoreCallIds =>
      throw _privateConstructorUsedError;
  String? get transaction => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<ActiveCall> activeCalls,
            ActiveCall? incomingCatched,
            List<String> uniqueLocalIgnoreCallIds,
            String? message,
            String? transaction)
        idle,
    required TResult Function(
            List<ActiveCall> activeCalls,
            ActiveCall? incomingCatched,
            CallInitStep info,
            List<String> uniqueLocalIgnoreCallIds,
            bool? isMaximized,
            String? transaction)
        calling,
    required TResult Function(
            List<ActiveCall> activeCalls,
            ActiveCall? incomingCatched,
            List<String> uniqueLocalIgnoreCallIds,
            ActiveCall currentActiveCall,
            bool isAudioMuted,
            bool isVideoMuted,
            Streamer? localStreamer,
            List<Streamer> remoteStreamers,
            bool? isMaximized,
            String? transaction)
        activeCall,
    required TResult Function(
            List<ActiveCall> activeCalls,
            ActiveCall? incomingCatched,
            List<String> uniqueLocalIgnoreCallIds,
            OutcomingPersonalCallStatus? status,
            String? transaction)
        hangUp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            List<ActiveCall> activeCalls,
            ActiveCall? incomingCatched,
            List<String> uniqueLocalIgnoreCallIds,
            String? message,
            String? transaction)?
        idle,
    TResult? Function(
            List<ActiveCall> activeCalls,
            ActiveCall? incomingCatched,
            CallInitStep info,
            List<String> uniqueLocalIgnoreCallIds,
            bool? isMaximized,
            String? transaction)?
        calling,
    TResult? Function(
            List<ActiveCall> activeCalls,
            ActiveCall? incomingCatched,
            List<String> uniqueLocalIgnoreCallIds,
            ActiveCall currentActiveCall,
            bool isAudioMuted,
            bool isVideoMuted,
            Streamer? localStreamer,
            List<Streamer> remoteStreamers,
            bool? isMaximized,
            String? transaction)?
        activeCall,
    TResult? Function(
            List<ActiveCall> activeCalls,
            ActiveCall? incomingCatched,
            List<String> uniqueLocalIgnoreCallIds,
            OutcomingPersonalCallStatus? status,
            String? transaction)?
        hangUp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<ActiveCall> activeCalls,
            ActiveCall? incomingCatched,
            List<String> uniqueLocalIgnoreCallIds,
            String? message,
            String? transaction)?
        idle,
    TResult Function(
            List<ActiveCall> activeCalls,
            ActiveCall? incomingCatched,
            CallInitStep info,
            List<String> uniqueLocalIgnoreCallIds,
            bool? isMaximized,
            String? transaction)?
        calling,
    TResult Function(
            List<ActiveCall> activeCalls,
            ActiveCall? incomingCatched,
            List<String> uniqueLocalIgnoreCallIds,
            ActiveCall currentActiveCall,
            bool isAudioMuted,
            bool isVideoMuted,
            Streamer? localStreamer,
            List<Streamer> remoteStreamers,
            bool? isMaximized,
            String? transaction)?
        activeCall,
    TResult Function(
            List<ActiveCall> activeCalls,
            ActiveCall? incomingCatched,
            List<String> uniqueLocalIgnoreCallIds,
            OutcomingPersonalCallStatus? status,
            String? transaction)?
        hangUp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IdleSipState value) idle,
    required TResult Function(_CallingSipState value) calling,
    required TResult Function(_ActiveCallSipState value) activeCall,
    required TResult Function(_HangupSipState value) hangUp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_IdleSipState value)? idle,
    TResult? Function(_CallingSipState value)? calling,
    TResult? Function(_ActiveCallSipState value)? activeCall,
    TResult? Function(_HangupSipState value)? hangUp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IdleSipState value)? idle,
    TResult Function(_CallingSipState value)? calling,
    TResult Function(_ActiveCallSipState value)? activeCall,
    TResult Function(_HangupSipState value)? hangUp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SipStateCopyWith<SipState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SipStateCopyWith<$Res> {
  factory $SipStateCopyWith(SipState value, $Res Function(SipState) then) =
      _$SipStateCopyWithImpl<$Res, SipState>;
  @useResult
  $Res call(
      {List<ActiveCall> activeCalls,
      ActiveCall? incomingCatched,
      List<String> uniqueLocalIgnoreCallIds,
      String? transaction});

  $ActiveCallCopyWith<$Res>? get incomingCatched;
}

/// @nodoc
class _$SipStateCopyWithImpl<$Res, $Val extends SipState>
    implements $SipStateCopyWith<$Res> {
  _$SipStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activeCalls = null,
    Object? incomingCatched = freezed,
    Object? uniqueLocalIgnoreCallIds = null,
    Object? transaction = freezed,
  }) {
    return _then(_value.copyWith(
      activeCalls: null == activeCalls
          ? _value.activeCalls
          : activeCalls // ignore: cast_nullable_to_non_nullable
              as List<ActiveCall>,
      incomingCatched: freezed == incomingCatched
          ? _value.incomingCatched
          : incomingCatched // ignore: cast_nullable_to_non_nullable
              as ActiveCall?,
      uniqueLocalIgnoreCallIds: null == uniqueLocalIgnoreCallIds
          ? _value.uniqueLocalIgnoreCallIds
          : uniqueLocalIgnoreCallIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      transaction: freezed == transaction
          ? _value.transaction
          : transaction // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ActiveCallCopyWith<$Res>? get incomingCatched {
    if (_value.incomingCatched == null) {
      return null;
    }

    return $ActiveCallCopyWith<$Res>(_value.incomingCatched!, (value) {
      return _then(_value.copyWith(incomingCatched: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_IdleSipStateCopyWith<$Res>
    implements $SipStateCopyWith<$Res> {
  factory _$$_IdleSipStateCopyWith(
          _$_IdleSipState value, $Res Function(_$_IdleSipState) then) =
      __$$_IdleSipStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<ActiveCall> activeCalls,
      ActiveCall? incomingCatched,
      List<String> uniqueLocalIgnoreCallIds,
      String? message,
      String? transaction});

  @override
  $ActiveCallCopyWith<$Res>? get incomingCatched;
}

/// @nodoc
class __$$_IdleSipStateCopyWithImpl<$Res>
    extends _$SipStateCopyWithImpl<$Res, _$_IdleSipState>
    implements _$$_IdleSipStateCopyWith<$Res> {
  __$$_IdleSipStateCopyWithImpl(
      _$_IdleSipState _value, $Res Function(_$_IdleSipState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activeCalls = null,
    Object? incomingCatched = freezed,
    Object? uniqueLocalIgnoreCallIds = null,
    Object? message = freezed,
    Object? transaction = freezed,
  }) {
    return _then(_$_IdleSipState(
      activeCalls: null == activeCalls
          ? _value._activeCalls
          : activeCalls // ignore: cast_nullable_to_non_nullable
              as List<ActiveCall>,
      incomingCatched: freezed == incomingCatched
          ? _value.incomingCatched
          : incomingCatched // ignore: cast_nullable_to_non_nullable
              as ActiveCall?,
      uniqueLocalIgnoreCallIds: null == uniqueLocalIgnoreCallIds
          ? _value._uniqueLocalIgnoreCallIds
          : uniqueLocalIgnoreCallIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      transaction: freezed == transaction
          ? _value.transaction
          : transaction // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_IdleSipState with DiagnosticableTreeMixin implements _IdleSipState {
  const _$_IdleSipState(
      {required final List<ActiveCall> activeCalls,
      required this.incomingCatched,
      required final List<String> uniqueLocalIgnoreCallIds,
      this.message,
      this.transaction})
      : _activeCalls = activeCalls,
        _uniqueLocalIgnoreCallIds = uniqueLocalIgnoreCallIds;

  /// все звонки в приложении и их метаданные
  final List<ActiveCall> _activeCalls;

  /// все звонки в приложении и их метаданные
  @override
  List<ActiveCall> get activeCalls {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_activeCalls);
  }

  /// пойман входящий
  @override
  final ActiveCall? incomingCatched;

  /// приватные чаты, звонки которых будут игнорированы
  /// это те звонки в которых пользователь положил трубку
  /// но пользователь на другой стороне еще находится в звонке
  final List<String> _uniqueLocalIgnoreCallIds;

  /// приватные чаты, звонки которых будут игнорированы
  /// это те звонки в которых пользователь положил трубку
  /// но пользователь на другой стороне еще находится в звонке
  @override
  List<String> get uniqueLocalIgnoreCallIds {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_uniqueLocalIgnoreCallIds);
  }

  /// сообщение об ошибке
  @override
  final String? message;
  @override
  final String? transaction;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SipState.idle(activeCalls: $activeCalls, incomingCatched: $incomingCatched, uniqueLocalIgnoreCallIds: $uniqueLocalIgnoreCallIds, message: $message, transaction: $transaction)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SipState.idle'))
      ..add(DiagnosticsProperty('activeCalls', activeCalls))
      ..add(DiagnosticsProperty('incomingCatched', incomingCatched))
      ..add(DiagnosticsProperty(
          'uniqueLocalIgnoreCallIds', uniqueLocalIgnoreCallIds))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty('transaction', transaction));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IdleSipState &&
            const DeepCollectionEquality()
                .equals(other._activeCalls, _activeCalls) &&
            (identical(other.incomingCatched, incomingCatched) ||
                other.incomingCatched == incomingCatched) &&
            const DeepCollectionEquality().equals(
                other._uniqueLocalIgnoreCallIds, _uniqueLocalIgnoreCallIds) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.transaction, transaction) ||
                other.transaction == transaction));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_activeCalls),
      incomingCatched,
      const DeepCollectionEquality().hash(_uniqueLocalIgnoreCallIds),
      message,
      transaction);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IdleSipStateCopyWith<_$_IdleSipState> get copyWith =>
      __$$_IdleSipStateCopyWithImpl<_$_IdleSipState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<ActiveCall> activeCalls,
            ActiveCall? incomingCatched,
            List<String> uniqueLocalIgnoreCallIds,
            String? message,
            String? transaction)
        idle,
    required TResult Function(
            List<ActiveCall> activeCalls,
            ActiveCall? incomingCatched,
            CallInitStep info,
            List<String> uniqueLocalIgnoreCallIds,
            bool? isMaximized,
            String? transaction)
        calling,
    required TResult Function(
            List<ActiveCall> activeCalls,
            ActiveCall? incomingCatched,
            List<String> uniqueLocalIgnoreCallIds,
            ActiveCall currentActiveCall,
            bool isAudioMuted,
            bool isVideoMuted,
            Streamer? localStreamer,
            List<Streamer> remoteStreamers,
            bool? isMaximized,
            String? transaction)
        activeCall,
    required TResult Function(
            List<ActiveCall> activeCalls,
            ActiveCall? incomingCatched,
            List<String> uniqueLocalIgnoreCallIds,
            OutcomingPersonalCallStatus? status,
            String? transaction)
        hangUp,
  }) {
    return idle(activeCalls, incomingCatched, uniqueLocalIgnoreCallIds, message,
        transaction);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            List<ActiveCall> activeCalls,
            ActiveCall? incomingCatched,
            List<String> uniqueLocalIgnoreCallIds,
            String? message,
            String? transaction)?
        idle,
    TResult? Function(
            List<ActiveCall> activeCalls,
            ActiveCall? incomingCatched,
            CallInitStep info,
            List<String> uniqueLocalIgnoreCallIds,
            bool? isMaximized,
            String? transaction)?
        calling,
    TResult? Function(
            List<ActiveCall> activeCalls,
            ActiveCall? incomingCatched,
            List<String> uniqueLocalIgnoreCallIds,
            ActiveCall currentActiveCall,
            bool isAudioMuted,
            bool isVideoMuted,
            Streamer? localStreamer,
            List<Streamer> remoteStreamers,
            bool? isMaximized,
            String? transaction)?
        activeCall,
    TResult? Function(
            List<ActiveCall> activeCalls,
            ActiveCall? incomingCatched,
            List<String> uniqueLocalIgnoreCallIds,
            OutcomingPersonalCallStatus? status,
            String? transaction)?
        hangUp,
  }) {
    return idle?.call(activeCalls, incomingCatched, uniqueLocalIgnoreCallIds,
        message, transaction);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<ActiveCall> activeCalls,
            ActiveCall? incomingCatched,
            List<String> uniqueLocalIgnoreCallIds,
            String? message,
            String? transaction)?
        idle,
    TResult Function(
            List<ActiveCall> activeCalls,
            ActiveCall? incomingCatched,
            CallInitStep info,
            List<String> uniqueLocalIgnoreCallIds,
            bool? isMaximized,
            String? transaction)?
        calling,
    TResult Function(
            List<ActiveCall> activeCalls,
            ActiveCall? incomingCatched,
            List<String> uniqueLocalIgnoreCallIds,
            ActiveCall currentActiveCall,
            bool isAudioMuted,
            bool isVideoMuted,
            Streamer? localStreamer,
            List<Streamer> remoteStreamers,
            bool? isMaximized,
            String? transaction)?
        activeCall,
    TResult Function(
            List<ActiveCall> activeCalls,
            ActiveCall? incomingCatched,
            List<String> uniqueLocalIgnoreCallIds,
            OutcomingPersonalCallStatus? status,
            String? transaction)?
        hangUp,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(activeCalls, incomingCatched, uniqueLocalIgnoreCallIds,
          message, transaction);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IdleSipState value) idle,
    required TResult Function(_CallingSipState value) calling,
    required TResult Function(_ActiveCallSipState value) activeCall,
    required TResult Function(_HangupSipState value) hangUp,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_IdleSipState value)? idle,
    TResult? Function(_CallingSipState value)? calling,
    TResult? Function(_ActiveCallSipState value)? activeCall,
    TResult? Function(_HangupSipState value)? hangUp,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IdleSipState value)? idle,
    TResult Function(_CallingSipState value)? calling,
    TResult Function(_ActiveCallSipState value)? activeCall,
    TResult Function(_HangupSipState value)? hangUp,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class _IdleSipState implements SipState {
  const factory _IdleSipState(
      {required final List<ActiveCall> activeCalls,
      required final ActiveCall? incomingCatched,
      required final List<String> uniqueLocalIgnoreCallIds,
      final String? message,
      final String? transaction}) = _$_IdleSipState;

  @override

  /// все звонки в приложении и их метаданные
  List<ActiveCall> get activeCalls;
  @override

  /// пойман входящий
  ActiveCall? get incomingCatched;
  @override

  /// приватные чаты, звонки которых будут игнорированы
  /// это те звонки в которых пользователь положил трубку
  /// но пользователь на другой стороне еще находится в звонке
  List<String> get uniqueLocalIgnoreCallIds;

  /// сообщение об ошибке
  String? get message;
  @override
  String? get transaction;
  @override
  @JsonKey(ignore: true)
  _$$_IdleSipStateCopyWith<_$_IdleSipState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CallingSipStateCopyWith<$Res>
    implements $SipStateCopyWith<$Res> {
  factory _$$_CallingSipStateCopyWith(
          _$_CallingSipState value, $Res Function(_$_CallingSipState) then) =
      __$$_CallingSipStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<ActiveCall> activeCalls,
      ActiveCall? incomingCatched,
      CallInitStep info,
      List<String> uniqueLocalIgnoreCallIds,
      bool? isMaximized,
      String? transaction});

  @override
  $ActiveCallCopyWith<$Res>? get incomingCatched;
}

/// @nodoc
class __$$_CallingSipStateCopyWithImpl<$Res>
    extends _$SipStateCopyWithImpl<$Res, _$_CallingSipState>
    implements _$$_CallingSipStateCopyWith<$Res> {
  __$$_CallingSipStateCopyWithImpl(
      _$_CallingSipState _value, $Res Function(_$_CallingSipState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activeCalls = null,
    Object? incomingCatched = freezed,
    Object? info = null,
    Object? uniqueLocalIgnoreCallIds = null,
    Object? isMaximized = freezed,
    Object? transaction = freezed,
  }) {
    return _then(_$_CallingSipState(
      activeCalls: null == activeCalls
          ? _value._activeCalls
          : activeCalls // ignore: cast_nullable_to_non_nullable
              as List<ActiveCall>,
      incomingCatched: freezed == incomingCatched
          ? _value.incomingCatched
          : incomingCatched // ignore: cast_nullable_to_non_nullable
              as ActiveCall?,
      info: null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as CallInitStep,
      uniqueLocalIgnoreCallIds: null == uniqueLocalIgnoreCallIds
          ? _value._uniqueLocalIgnoreCallIds
          : uniqueLocalIgnoreCallIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isMaximized: freezed == isMaximized
          ? _value.isMaximized
          : isMaximized // ignore: cast_nullable_to_non_nullable
              as bool?,
      transaction: freezed == transaction
          ? _value.transaction
          : transaction // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_CallingSipState
    with DiagnosticableTreeMixin
    implements _CallingSipState {
  const _$_CallingSipState(
      {required final List<ActiveCall> activeCalls,
      required this.incomingCatched,
      required this.info,
      required final List<String> uniqueLocalIgnoreCallIds,
      this.isMaximized,
      this.transaction})
      : _activeCalls = activeCalls,
        _uniqueLocalIgnoreCallIds = uniqueLocalIgnoreCallIds;

  /// все звонки в приложении и их метаданные
  final List<ActiveCall> _activeCalls;

  /// все звонки в приложении и их метаданные
  @override
  List<ActiveCall> get activeCalls {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_activeCalls);
  }

  /// пойман входящий
  @override
  final ActiveCall? incomingCatched;

  /// шаг на котором сейчас находится вызов
  @override
  final CallInitStep info;

  /// приватные чаты, звонки которых будут игнорированы
  /// это те звонки в которых пользователь положил трубку
  /// но пользователь на другой стороне еще находится в звонке
  final List<String> _uniqueLocalIgnoreCallIds;

  /// приватные чаты, звонки которых будут игнорированы
  /// это те звонки в которых пользователь положил трубку
  /// но пользователь на другой стороне еще находится в звонке
  @override
  List<String> get uniqueLocalIgnoreCallIds {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_uniqueLocalIgnoreCallIds);
  }

  /// развернут ли звонок на весь экран (для десктопа)
  @override
  final bool? isMaximized;
  @override
  final String? transaction;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SipState.calling(activeCalls: $activeCalls, incomingCatched: $incomingCatched, info: $info, uniqueLocalIgnoreCallIds: $uniqueLocalIgnoreCallIds, isMaximized: $isMaximized, transaction: $transaction)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SipState.calling'))
      ..add(DiagnosticsProperty('activeCalls', activeCalls))
      ..add(DiagnosticsProperty('incomingCatched', incomingCatched))
      ..add(DiagnosticsProperty('info', info))
      ..add(DiagnosticsProperty(
          'uniqueLocalIgnoreCallIds', uniqueLocalIgnoreCallIds))
      ..add(DiagnosticsProperty('isMaximized', isMaximized))
      ..add(DiagnosticsProperty('transaction', transaction));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CallingSipState &&
            const DeepCollectionEquality()
                .equals(other._activeCalls, _activeCalls) &&
            (identical(other.incomingCatched, incomingCatched) ||
                other.incomingCatched == incomingCatched) &&
            (identical(other.info, info) || other.info == info) &&
            const DeepCollectionEquality().equals(
                other._uniqueLocalIgnoreCallIds, _uniqueLocalIgnoreCallIds) &&
            (identical(other.isMaximized, isMaximized) ||
                other.isMaximized == isMaximized) &&
            (identical(other.transaction, transaction) ||
                other.transaction == transaction));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_activeCalls),
      incomingCatched,
      info,
      const DeepCollectionEquality().hash(_uniqueLocalIgnoreCallIds),
      isMaximized,
      transaction);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CallingSipStateCopyWith<_$_CallingSipState> get copyWith =>
      __$$_CallingSipStateCopyWithImpl<_$_CallingSipState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<ActiveCall> activeCalls,
            ActiveCall? incomingCatched,
            List<String> uniqueLocalIgnoreCallIds,
            String? message,
            String? transaction)
        idle,
    required TResult Function(
            List<ActiveCall> activeCalls,
            ActiveCall? incomingCatched,
            CallInitStep info,
            List<String> uniqueLocalIgnoreCallIds,
            bool? isMaximized,
            String? transaction)
        calling,
    required TResult Function(
            List<ActiveCall> activeCalls,
            ActiveCall? incomingCatched,
            List<String> uniqueLocalIgnoreCallIds,
            ActiveCall currentActiveCall,
            bool isAudioMuted,
            bool isVideoMuted,
            Streamer? localStreamer,
            List<Streamer> remoteStreamers,
            bool? isMaximized,
            String? transaction)
        activeCall,
    required TResult Function(
            List<ActiveCall> activeCalls,
            ActiveCall? incomingCatched,
            List<String> uniqueLocalIgnoreCallIds,
            OutcomingPersonalCallStatus? status,
            String? transaction)
        hangUp,
  }) {
    return calling(activeCalls, incomingCatched, info, uniqueLocalIgnoreCallIds,
        isMaximized, transaction);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            List<ActiveCall> activeCalls,
            ActiveCall? incomingCatched,
            List<String> uniqueLocalIgnoreCallIds,
            String? message,
            String? transaction)?
        idle,
    TResult? Function(
            List<ActiveCall> activeCalls,
            ActiveCall? incomingCatched,
            CallInitStep info,
            List<String> uniqueLocalIgnoreCallIds,
            bool? isMaximized,
            String? transaction)?
        calling,
    TResult? Function(
            List<ActiveCall> activeCalls,
            ActiveCall? incomingCatched,
            List<String> uniqueLocalIgnoreCallIds,
            ActiveCall currentActiveCall,
            bool isAudioMuted,
            bool isVideoMuted,
            Streamer? localStreamer,
            List<Streamer> remoteStreamers,
            bool? isMaximized,
            String? transaction)?
        activeCall,
    TResult? Function(
            List<ActiveCall> activeCalls,
            ActiveCall? incomingCatched,
            List<String> uniqueLocalIgnoreCallIds,
            OutcomingPersonalCallStatus? status,
            String? transaction)?
        hangUp,
  }) {
    return calling?.call(activeCalls, incomingCatched, info,
        uniqueLocalIgnoreCallIds, isMaximized, transaction);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<ActiveCall> activeCalls,
            ActiveCall? incomingCatched,
            List<String> uniqueLocalIgnoreCallIds,
            String? message,
            String? transaction)?
        idle,
    TResult Function(
            List<ActiveCall> activeCalls,
            ActiveCall? incomingCatched,
            CallInitStep info,
            List<String> uniqueLocalIgnoreCallIds,
            bool? isMaximized,
            String? transaction)?
        calling,
    TResult Function(
            List<ActiveCall> activeCalls,
            ActiveCall? incomingCatched,
            List<String> uniqueLocalIgnoreCallIds,
            ActiveCall currentActiveCall,
            bool isAudioMuted,
            bool isVideoMuted,
            Streamer? localStreamer,
            List<Streamer> remoteStreamers,
            bool? isMaximized,
            String? transaction)?
        activeCall,
    TResult Function(
            List<ActiveCall> activeCalls,
            ActiveCall? incomingCatched,
            List<String> uniqueLocalIgnoreCallIds,
            OutcomingPersonalCallStatus? status,
            String? transaction)?
        hangUp,
    required TResult orElse(),
  }) {
    if (calling != null) {
      return calling(activeCalls, incomingCatched, info,
          uniqueLocalIgnoreCallIds, isMaximized, transaction);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IdleSipState value) idle,
    required TResult Function(_CallingSipState value) calling,
    required TResult Function(_ActiveCallSipState value) activeCall,
    required TResult Function(_HangupSipState value) hangUp,
  }) {
    return calling(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_IdleSipState value)? idle,
    TResult? Function(_CallingSipState value)? calling,
    TResult? Function(_ActiveCallSipState value)? activeCall,
    TResult? Function(_HangupSipState value)? hangUp,
  }) {
    return calling?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IdleSipState value)? idle,
    TResult Function(_CallingSipState value)? calling,
    TResult Function(_ActiveCallSipState value)? activeCall,
    TResult Function(_HangupSipState value)? hangUp,
    required TResult orElse(),
  }) {
    if (calling != null) {
      return calling(this);
    }
    return orElse();
  }
}

abstract class _CallingSipState implements SipState {
  const factory _CallingSipState(
      {required final List<ActiveCall> activeCalls,
      required final ActiveCall? incomingCatched,
      required final CallInitStep info,
      required final List<String> uniqueLocalIgnoreCallIds,
      final bool? isMaximized,
      final String? transaction}) = _$_CallingSipState;

  @override

  /// все звонки в приложении и их метаданные
  List<ActiveCall> get activeCalls;
  @override

  /// пойман входящий
  ActiveCall? get incomingCatched;

  /// шаг на котором сейчас находится вызов
  CallInitStep get info;
  @override

  /// приватные чаты, звонки которых будут игнорированы
  /// это те звонки в которых пользователь положил трубку
  /// но пользователь на другой стороне еще находится в звонке
  List<String> get uniqueLocalIgnoreCallIds;

  /// развернут ли звонок на весь экран (для десктопа)
  bool? get isMaximized;
  @override
  String? get transaction;
  @override
  @JsonKey(ignore: true)
  _$$_CallingSipStateCopyWith<_$_CallingSipState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ActiveCallSipStateCopyWith<$Res>
    implements $SipStateCopyWith<$Res> {
  factory _$$_ActiveCallSipStateCopyWith(_$_ActiveCallSipState value,
          $Res Function(_$_ActiveCallSipState) then) =
      __$$_ActiveCallSipStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<ActiveCall> activeCalls,
      ActiveCall? incomingCatched,
      List<String> uniqueLocalIgnoreCallIds,
      ActiveCall currentActiveCall,
      bool isAudioMuted,
      bool isVideoMuted,
      Streamer? localStreamer,
      List<Streamer> remoteStreamers,
      bool? isMaximized,
      String? transaction});

  @override
  $ActiveCallCopyWith<$Res>? get incomingCatched;
  $ActiveCallCopyWith<$Res> get currentActiveCall;
}

/// @nodoc
class __$$_ActiveCallSipStateCopyWithImpl<$Res>
    extends _$SipStateCopyWithImpl<$Res, _$_ActiveCallSipState>
    implements _$$_ActiveCallSipStateCopyWith<$Res> {
  __$$_ActiveCallSipStateCopyWithImpl(
      _$_ActiveCallSipState _value, $Res Function(_$_ActiveCallSipState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activeCalls = null,
    Object? incomingCatched = freezed,
    Object? uniqueLocalIgnoreCallIds = null,
    Object? currentActiveCall = null,
    Object? isAudioMuted = null,
    Object? isVideoMuted = null,
    Object? localStreamer = freezed,
    Object? remoteStreamers = null,
    Object? isMaximized = freezed,
    Object? transaction = freezed,
  }) {
    return _then(_$_ActiveCallSipState(
      activeCalls: null == activeCalls
          ? _value._activeCalls
          : activeCalls // ignore: cast_nullable_to_non_nullable
              as List<ActiveCall>,
      incomingCatched: freezed == incomingCatched
          ? _value.incomingCatched
          : incomingCatched // ignore: cast_nullable_to_non_nullable
              as ActiveCall?,
      uniqueLocalIgnoreCallIds: null == uniqueLocalIgnoreCallIds
          ? _value._uniqueLocalIgnoreCallIds
          : uniqueLocalIgnoreCallIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      currentActiveCall: null == currentActiveCall
          ? _value.currentActiveCall
          : currentActiveCall // ignore: cast_nullable_to_non_nullable
              as ActiveCall,
      isAudioMuted: null == isAudioMuted
          ? _value.isAudioMuted
          : isAudioMuted // ignore: cast_nullable_to_non_nullable
              as bool,
      isVideoMuted: null == isVideoMuted
          ? _value.isVideoMuted
          : isVideoMuted // ignore: cast_nullable_to_non_nullable
              as bool,
      localStreamer: freezed == localStreamer
          ? _value.localStreamer
          : localStreamer // ignore: cast_nullable_to_non_nullable
              as Streamer?,
      remoteStreamers: null == remoteStreamers
          ? _value._remoteStreamers
          : remoteStreamers // ignore: cast_nullable_to_non_nullable
              as List<Streamer>,
      isMaximized: freezed == isMaximized
          ? _value.isMaximized
          : isMaximized // ignore: cast_nullable_to_non_nullable
              as bool?,
      transaction: freezed == transaction
          ? _value.transaction
          : transaction // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ActiveCallCopyWith<$Res> get currentActiveCall {
    return $ActiveCallCopyWith<$Res>(_value.currentActiveCall, (value) {
      return _then(_value.copyWith(currentActiveCall: value));
    });
  }
}

/// @nodoc

class _$_ActiveCallSipState
    with DiagnosticableTreeMixin
    implements _ActiveCallSipState {
  const _$_ActiveCallSipState(
      {required final List<ActiveCall> activeCalls,
      required this.incomingCatched,
      required final List<String> uniqueLocalIgnoreCallIds,
      required this.currentActiveCall,
      required this.isAudioMuted,
      required this.isVideoMuted,
      required this.localStreamer,
      required final List<Streamer> remoteStreamers,
      this.isMaximized,
      this.transaction})
      : _activeCalls = activeCalls,
        _uniqueLocalIgnoreCallIds = uniqueLocalIgnoreCallIds,
        _remoteStreamers = remoteStreamers;

  /// все звонки в приложении и их метаданные
  final List<ActiveCall> _activeCalls;

  /// все звонки в приложении и их метаданные
  @override
  List<ActiveCall> get activeCalls {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_activeCalls);
  }

  /// пойман входящий
  @override
  final ActiveCall? incomingCatched;

  /// приватные чаты, звонки которых будут игнорированы
  /// это те звонки в которых пользователь положил трубку
  /// но пользователь на другой стороне еще находится в звонке
  final List<String> _uniqueLocalIgnoreCallIds;

  /// приватные чаты, звонки которых будут игнорированы
  /// это те звонки в которых пользователь положил трубку
  /// но пользователь на другой стороне еще находится в звонке
  @override
  List<String> get uniqueLocalIgnoreCallIds {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_uniqueLocalIgnoreCallIds);
  }

  @override
  final ActiveCall currentActiveCall;
  @override
  final bool isAudioMuted;
  @override
  final bool isVideoMuted;

  /// стримеры
  @override
  final Streamer? localStreamer;
  final List<Streamer> _remoteStreamers;
  @override
  List<Streamer> get remoteStreamers {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_remoteStreamers);
  }

  /// развернут ли звонок на весь экран (для десктопа)
  @override
  final bool? isMaximized;
  @override
  final String? transaction;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SipState.activeCall(activeCalls: $activeCalls, incomingCatched: $incomingCatched, uniqueLocalIgnoreCallIds: $uniqueLocalIgnoreCallIds, currentActiveCall: $currentActiveCall, isAudioMuted: $isAudioMuted, isVideoMuted: $isVideoMuted, localStreamer: $localStreamer, remoteStreamers: $remoteStreamers, isMaximized: $isMaximized, transaction: $transaction)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SipState.activeCall'))
      ..add(DiagnosticsProperty('activeCalls', activeCalls))
      ..add(DiagnosticsProperty('incomingCatched', incomingCatched))
      ..add(DiagnosticsProperty(
          'uniqueLocalIgnoreCallIds', uniqueLocalIgnoreCallIds))
      ..add(DiagnosticsProperty('currentActiveCall', currentActiveCall))
      ..add(DiagnosticsProperty('isAudioMuted', isAudioMuted))
      ..add(DiagnosticsProperty('isVideoMuted', isVideoMuted))
      ..add(DiagnosticsProperty('localStreamer', localStreamer))
      ..add(DiagnosticsProperty('remoteStreamers', remoteStreamers))
      ..add(DiagnosticsProperty('isMaximized', isMaximized))
      ..add(DiagnosticsProperty('transaction', transaction));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ActiveCallSipState &&
            const DeepCollectionEquality()
                .equals(other._activeCalls, _activeCalls) &&
            (identical(other.incomingCatched, incomingCatched) ||
                other.incomingCatched == incomingCatched) &&
            const DeepCollectionEquality().equals(
                other._uniqueLocalIgnoreCallIds, _uniqueLocalIgnoreCallIds) &&
            (identical(other.currentActiveCall, currentActiveCall) ||
                other.currentActiveCall == currentActiveCall) &&
            (identical(other.isAudioMuted, isAudioMuted) ||
                other.isAudioMuted == isAudioMuted) &&
            (identical(other.isVideoMuted, isVideoMuted) ||
                other.isVideoMuted == isVideoMuted) &&
            (identical(other.localStreamer, localStreamer) ||
                other.localStreamer == localStreamer) &&
            const DeepCollectionEquality()
                .equals(other._remoteStreamers, _remoteStreamers) &&
            (identical(other.isMaximized, isMaximized) ||
                other.isMaximized == isMaximized) &&
            (identical(other.transaction, transaction) ||
                other.transaction == transaction));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_activeCalls),
      incomingCatched,
      const DeepCollectionEquality().hash(_uniqueLocalIgnoreCallIds),
      currentActiveCall,
      isAudioMuted,
      isVideoMuted,
      localStreamer,
      const DeepCollectionEquality().hash(_remoteStreamers),
      isMaximized,
      transaction);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ActiveCallSipStateCopyWith<_$_ActiveCallSipState> get copyWith =>
      __$$_ActiveCallSipStateCopyWithImpl<_$_ActiveCallSipState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<ActiveCall> activeCalls,
            ActiveCall? incomingCatched,
            List<String> uniqueLocalIgnoreCallIds,
            String? message,
            String? transaction)
        idle,
    required TResult Function(
            List<ActiveCall> activeCalls,
            ActiveCall? incomingCatched,
            CallInitStep info,
            List<String> uniqueLocalIgnoreCallIds,
            bool? isMaximized,
            String? transaction)
        calling,
    required TResult Function(
            List<ActiveCall> activeCalls,
            ActiveCall? incomingCatched,
            List<String> uniqueLocalIgnoreCallIds,
            ActiveCall currentActiveCall,
            bool isAudioMuted,
            bool isVideoMuted,
            Streamer? localStreamer,
            List<Streamer> remoteStreamers,
            bool? isMaximized,
            String? transaction)
        activeCall,
    required TResult Function(
            List<ActiveCall> activeCalls,
            ActiveCall? incomingCatched,
            List<String> uniqueLocalIgnoreCallIds,
            OutcomingPersonalCallStatus? status,
            String? transaction)
        hangUp,
  }) {
    return activeCall(
        activeCalls,
        incomingCatched,
        uniqueLocalIgnoreCallIds,
        currentActiveCall,
        isAudioMuted,
        isVideoMuted,
        localStreamer,
        remoteStreamers,
        isMaximized,
        transaction);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            List<ActiveCall> activeCalls,
            ActiveCall? incomingCatched,
            List<String> uniqueLocalIgnoreCallIds,
            String? message,
            String? transaction)?
        idle,
    TResult? Function(
            List<ActiveCall> activeCalls,
            ActiveCall? incomingCatched,
            CallInitStep info,
            List<String> uniqueLocalIgnoreCallIds,
            bool? isMaximized,
            String? transaction)?
        calling,
    TResult? Function(
            List<ActiveCall> activeCalls,
            ActiveCall? incomingCatched,
            List<String> uniqueLocalIgnoreCallIds,
            ActiveCall currentActiveCall,
            bool isAudioMuted,
            bool isVideoMuted,
            Streamer? localStreamer,
            List<Streamer> remoteStreamers,
            bool? isMaximized,
            String? transaction)?
        activeCall,
    TResult? Function(
            List<ActiveCall> activeCalls,
            ActiveCall? incomingCatched,
            List<String> uniqueLocalIgnoreCallIds,
            OutcomingPersonalCallStatus? status,
            String? transaction)?
        hangUp,
  }) {
    return activeCall?.call(
        activeCalls,
        incomingCatched,
        uniqueLocalIgnoreCallIds,
        currentActiveCall,
        isAudioMuted,
        isVideoMuted,
        localStreamer,
        remoteStreamers,
        isMaximized,
        transaction);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<ActiveCall> activeCalls,
            ActiveCall? incomingCatched,
            List<String> uniqueLocalIgnoreCallIds,
            String? message,
            String? transaction)?
        idle,
    TResult Function(
            List<ActiveCall> activeCalls,
            ActiveCall? incomingCatched,
            CallInitStep info,
            List<String> uniqueLocalIgnoreCallIds,
            bool? isMaximized,
            String? transaction)?
        calling,
    TResult Function(
            List<ActiveCall> activeCalls,
            ActiveCall? incomingCatched,
            List<String> uniqueLocalIgnoreCallIds,
            ActiveCall currentActiveCall,
            bool isAudioMuted,
            bool isVideoMuted,
            Streamer? localStreamer,
            List<Streamer> remoteStreamers,
            bool? isMaximized,
            String? transaction)?
        activeCall,
    TResult Function(
            List<ActiveCall> activeCalls,
            ActiveCall? incomingCatched,
            List<String> uniqueLocalIgnoreCallIds,
            OutcomingPersonalCallStatus? status,
            String? transaction)?
        hangUp,
    required TResult orElse(),
  }) {
    if (activeCall != null) {
      return activeCall(
          activeCalls,
          incomingCatched,
          uniqueLocalIgnoreCallIds,
          currentActiveCall,
          isAudioMuted,
          isVideoMuted,
          localStreamer,
          remoteStreamers,
          isMaximized,
          transaction);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IdleSipState value) idle,
    required TResult Function(_CallingSipState value) calling,
    required TResult Function(_ActiveCallSipState value) activeCall,
    required TResult Function(_HangupSipState value) hangUp,
  }) {
    return activeCall(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_IdleSipState value)? idle,
    TResult? Function(_CallingSipState value)? calling,
    TResult? Function(_ActiveCallSipState value)? activeCall,
    TResult? Function(_HangupSipState value)? hangUp,
  }) {
    return activeCall?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IdleSipState value)? idle,
    TResult Function(_CallingSipState value)? calling,
    TResult Function(_ActiveCallSipState value)? activeCall,
    TResult Function(_HangupSipState value)? hangUp,
    required TResult orElse(),
  }) {
    if (activeCall != null) {
      return activeCall(this);
    }
    return orElse();
  }
}

abstract class _ActiveCallSipState implements SipState {
  const factory _ActiveCallSipState(
      {required final List<ActiveCall> activeCalls,
      required final ActiveCall? incomingCatched,
      required final List<String> uniqueLocalIgnoreCallIds,
      required final ActiveCall currentActiveCall,
      required final bool isAudioMuted,
      required final bool isVideoMuted,
      required final Streamer? localStreamer,
      required final List<Streamer> remoteStreamers,
      final bool? isMaximized,
      final String? transaction}) = _$_ActiveCallSipState;

  @override

  /// все звонки в приложении и их метаданные
  List<ActiveCall> get activeCalls;
  @override

  /// пойман входящий
  ActiveCall? get incomingCatched;
  @override

  /// приватные чаты, звонки которых будут игнорированы
  /// это те звонки в которых пользователь положил трубку
  /// но пользователь на другой стороне еще находится в звонке
  List<String> get uniqueLocalIgnoreCallIds;
  ActiveCall get currentActiveCall;
  bool get isAudioMuted;
  bool get isVideoMuted;

  /// стримеры
  Streamer? get localStreamer;
  List<Streamer> get remoteStreamers;

  /// развернут ли звонок на весь экран (для десктопа)
  bool? get isMaximized;
  @override
  String? get transaction;
  @override
  @JsonKey(ignore: true)
  _$$_ActiveCallSipStateCopyWith<_$_ActiveCallSipState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_HangupSipStateCopyWith<$Res>
    implements $SipStateCopyWith<$Res> {
  factory _$$_HangupSipStateCopyWith(
          _$_HangupSipState value, $Res Function(_$_HangupSipState) then) =
      __$$_HangupSipStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<ActiveCall> activeCalls,
      ActiveCall? incomingCatched,
      List<String> uniqueLocalIgnoreCallIds,
      OutcomingPersonalCallStatus? status,
      String? transaction});

  @override
  $ActiveCallCopyWith<$Res>? get incomingCatched;
  $OutcomingPersonalCallStatusCopyWith<$Res>? get status;
}

/// @nodoc
class __$$_HangupSipStateCopyWithImpl<$Res>
    extends _$SipStateCopyWithImpl<$Res, _$_HangupSipState>
    implements _$$_HangupSipStateCopyWith<$Res> {
  __$$_HangupSipStateCopyWithImpl(
      _$_HangupSipState _value, $Res Function(_$_HangupSipState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activeCalls = null,
    Object? incomingCatched = freezed,
    Object? uniqueLocalIgnoreCallIds = null,
    Object? status = freezed,
    Object? transaction = freezed,
  }) {
    return _then(_$_HangupSipState(
      activeCalls: null == activeCalls
          ? _value._activeCalls
          : activeCalls // ignore: cast_nullable_to_non_nullable
              as List<ActiveCall>,
      incomingCatched: freezed == incomingCatched
          ? _value.incomingCatched
          : incomingCatched // ignore: cast_nullable_to_non_nullable
              as ActiveCall?,
      uniqueLocalIgnoreCallIds: null == uniqueLocalIgnoreCallIds
          ? _value._uniqueLocalIgnoreCallIds
          : uniqueLocalIgnoreCallIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as OutcomingPersonalCallStatus?,
      transaction: freezed == transaction
          ? _value.transaction
          : transaction // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $OutcomingPersonalCallStatusCopyWith<$Res>? get status {
    if (_value.status == null) {
      return null;
    }

    return $OutcomingPersonalCallStatusCopyWith<$Res>(_value.status!, (value) {
      return _then(_value.copyWith(status: value));
    });
  }
}

/// @nodoc

class _$_HangupSipState
    with DiagnosticableTreeMixin
    implements _HangupSipState {
  const _$_HangupSipState(
      {required final List<ActiveCall> activeCalls,
      required this.incomingCatched,
      required final List<String> uniqueLocalIgnoreCallIds,
      required this.status,
      this.transaction})
      : _activeCalls = activeCalls,
        _uniqueLocalIgnoreCallIds = uniqueLocalIgnoreCallIds;

  /// все звонки в приложении и их метаданные
  final List<ActiveCall> _activeCalls;

  /// все звонки в приложении и их метаданные
  @override
  List<ActiveCall> get activeCalls {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_activeCalls);
  }

  /// пойман входящий
  @override
  final ActiveCall? incomingCatched;

  /// приватные чаты, звонки которых будут игнорированы
  /// это те звонки в которых пользователь положил трубку
  /// но пользователь на другой стороне еще находится в звонке
  final List<String> _uniqueLocalIgnoreCallIds;

  /// приватные чаты, звонки которых будут игнорированы
  /// это те звонки в которых пользователь положил трубку
  /// но пользователь на другой стороне еще находится в звонке
  @override
  List<String> get uniqueLocalIgnoreCallIds {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_uniqueLocalIgnoreCallIds);
  }

  /// выкинуть сообщение об отмене/занятости абонента
  @override
  final OutcomingPersonalCallStatus? status;
  @override
  final String? transaction;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SipState.hangUp(activeCalls: $activeCalls, incomingCatched: $incomingCatched, uniqueLocalIgnoreCallIds: $uniqueLocalIgnoreCallIds, status: $status, transaction: $transaction)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SipState.hangUp'))
      ..add(DiagnosticsProperty('activeCalls', activeCalls))
      ..add(DiagnosticsProperty('incomingCatched', incomingCatched))
      ..add(DiagnosticsProperty(
          'uniqueLocalIgnoreCallIds', uniqueLocalIgnoreCallIds))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('transaction', transaction));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HangupSipState &&
            const DeepCollectionEquality()
                .equals(other._activeCalls, _activeCalls) &&
            (identical(other.incomingCatched, incomingCatched) ||
                other.incomingCatched == incomingCatched) &&
            const DeepCollectionEquality().equals(
                other._uniqueLocalIgnoreCallIds, _uniqueLocalIgnoreCallIds) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.transaction, transaction) ||
                other.transaction == transaction));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_activeCalls),
      incomingCatched,
      const DeepCollectionEquality().hash(_uniqueLocalIgnoreCallIds),
      status,
      transaction);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HangupSipStateCopyWith<_$_HangupSipState> get copyWith =>
      __$$_HangupSipStateCopyWithImpl<_$_HangupSipState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<ActiveCall> activeCalls,
            ActiveCall? incomingCatched,
            List<String> uniqueLocalIgnoreCallIds,
            String? message,
            String? transaction)
        idle,
    required TResult Function(
            List<ActiveCall> activeCalls,
            ActiveCall? incomingCatched,
            CallInitStep info,
            List<String> uniqueLocalIgnoreCallIds,
            bool? isMaximized,
            String? transaction)
        calling,
    required TResult Function(
            List<ActiveCall> activeCalls,
            ActiveCall? incomingCatched,
            List<String> uniqueLocalIgnoreCallIds,
            ActiveCall currentActiveCall,
            bool isAudioMuted,
            bool isVideoMuted,
            Streamer? localStreamer,
            List<Streamer> remoteStreamers,
            bool? isMaximized,
            String? transaction)
        activeCall,
    required TResult Function(
            List<ActiveCall> activeCalls,
            ActiveCall? incomingCatched,
            List<String> uniqueLocalIgnoreCallIds,
            OutcomingPersonalCallStatus? status,
            String? transaction)
        hangUp,
  }) {
    return hangUp(activeCalls, incomingCatched, uniqueLocalIgnoreCallIds,
        status, transaction);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            List<ActiveCall> activeCalls,
            ActiveCall? incomingCatched,
            List<String> uniqueLocalIgnoreCallIds,
            String? message,
            String? transaction)?
        idle,
    TResult? Function(
            List<ActiveCall> activeCalls,
            ActiveCall? incomingCatched,
            CallInitStep info,
            List<String> uniqueLocalIgnoreCallIds,
            bool? isMaximized,
            String? transaction)?
        calling,
    TResult? Function(
            List<ActiveCall> activeCalls,
            ActiveCall? incomingCatched,
            List<String> uniqueLocalIgnoreCallIds,
            ActiveCall currentActiveCall,
            bool isAudioMuted,
            bool isVideoMuted,
            Streamer? localStreamer,
            List<Streamer> remoteStreamers,
            bool? isMaximized,
            String? transaction)?
        activeCall,
    TResult? Function(
            List<ActiveCall> activeCalls,
            ActiveCall? incomingCatched,
            List<String> uniqueLocalIgnoreCallIds,
            OutcomingPersonalCallStatus? status,
            String? transaction)?
        hangUp,
  }) {
    return hangUp?.call(activeCalls, incomingCatched, uniqueLocalIgnoreCallIds,
        status, transaction);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<ActiveCall> activeCalls,
            ActiveCall? incomingCatched,
            List<String> uniqueLocalIgnoreCallIds,
            String? message,
            String? transaction)?
        idle,
    TResult Function(
            List<ActiveCall> activeCalls,
            ActiveCall? incomingCatched,
            CallInitStep info,
            List<String> uniqueLocalIgnoreCallIds,
            bool? isMaximized,
            String? transaction)?
        calling,
    TResult Function(
            List<ActiveCall> activeCalls,
            ActiveCall? incomingCatched,
            List<String> uniqueLocalIgnoreCallIds,
            ActiveCall currentActiveCall,
            bool isAudioMuted,
            bool isVideoMuted,
            Streamer? localStreamer,
            List<Streamer> remoteStreamers,
            bool? isMaximized,
            String? transaction)?
        activeCall,
    TResult Function(
            List<ActiveCall> activeCalls,
            ActiveCall? incomingCatched,
            List<String> uniqueLocalIgnoreCallIds,
            OutcomingPersonalCallStatus? status,
            String? transaction)?
        hangUp,
    required TResult orElse(),
  }) {
    if (hangUp != null) {
      return hangUp(activeCalls, incomingCatched, uniqueLocalIgnoreCallIds,
          status, transaction);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IdleSipState value) idle,
    required TResult Function(_CallingSipState value) calling,
    required TResult Function(_ActiveCallSipState value) activeCall,
    required TResult Function(_HangupSipState value) hangUp,
  }) {
    return hangUp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_IdleSipState value)? idle,
    TResult? Function(_CallingSipState value)? calling,
    TResult? Function(_ActiveCallSipState value)? activeCall,
    TResult? Function(_HangupSipState value)? hangUp,
  }) {
    return hangUp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IdleSipState value)? idle,
    TResult Function(_CallingSipState value)? calling,
    TResult Function(_ActiveCallSipState value)? activeCall,
    TResult Function(_HangupSipState value)? hangUp,
    required TResult orElse(),
  }) {
    if (hangUp != null) {
      return hangUp(this);
    }
    return orElse();
  }
}

abstract class _HangupSipState implements SipState {
  const factory _HangupSipState(
      {required final List<ActiveCall> activeCalls,
      required final ActiveCall? incomingCatched,
      required final List<String> uniqueLocalIgnoreCallIds,
      required final OutcomingPersonalCallStatus? status,
      final String? transaction}) = _$_HangupSipState;

  @override

  /// все звонки в приложении и их метаданные
  List<ActiveCall> get activeCalls;
  @override

  /// пойман входящий
  ActiveCall? get incomingCatched;
  @override

  /// приватные чаты, звонки которых будут игнорированы
  /// это те звонки в которых пользователь положил трубку
  /// но пользователь на другой стороне еще находится в звонке
  List<String> get uniqueLocalIgnoreCallIds;

  /// выкинуть сообщение об отмене/занятости абонента
  OutcomingPersonalCallStatus? get status;
  @override
  String? get transaction;
  @override
  @JsonKey(ignore: true)
  _$$_HangupSipStateCopyWith<_$_HangupSipState> get copyWith =>
      throw _privateConstructorUsedError;
}
