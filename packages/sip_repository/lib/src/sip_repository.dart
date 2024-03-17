// ignore_for_file: cascade_invocations, public_member_api_docs, avoid_redundant_argument_values

import 'package:flutter_webrtc/flutter_webrtc.dart';
import 'package:sip_repository/sip_repository.dart';
import 'package:sip_repository/src/models/sip_active_call_internal.dart';
import 'package:sip_ua/sip_ua.dart';

/// {@template sip_repository}
/// SIP package
/// {@endtemplate}
class SipRepository implements SipUaHelperListener {
  /// {@macro sip_repository}
  SipRepository({
    required String sipHost,
  }) : _sipHost = sipHost {
    _helper.addSipUaHelperListener(this);
  }

  final SIPUAHelper _helper = SIPUAHelper();
  final _listeners = List<SipListener>.empty(growable: true);
  final String _sipHost;

  final _activeSipCalls = <String, SipActiveCallInternal>{};

  List<SipActiveCall> get activeCalls =>
      _activeSipCalls.values.map((e) => e.activeCall).toList();

  SipActiveCallState? activeCallState(String callId) =>
      _activeSipCalls[callId]?.callState;

  Streamer? callLocalStreamer(String callId) =>
      _activeSipCalls[callId]?.localStreamer;

  List<Streamer>? callRemoteStreamers(String callId) => _activeSipCalls[callId]
      ?.remoteStreamers
      .values
      .where((s) => s.label != null)
      .toList();

  Future<void> removeRemoteStreamerByLabel(
    String label,
  ) async {
    for (final call in _activeSipCalls.values) {
      await call.removeRemoteStreamerByLabel(label);
    }
  }

  bool get isConnected => _helper.connected;

  void connect({
    required String login,
    required String password,
    required String displayName,
  }) {
    final settings = UaSettings();

    settings.webSocketUrl = 'wss://$_sipHost:8089/ws';
    settings.webSocketSettings.allowBadCertificate = true;
    settings.uri = '$login@$_sipHost';
    settings.authorizationUser = login;
    settings.password = password;
    settings.displayName = displayName;
    settings.userAgent = 'Dart/2.8 (dart:io) for OpenSIPS.';
    settings.dtmfMode = DtmfMode.INFO;
    _helper.start(settings);
  }

  Future<void> disconnect() async {
    if (_helper.connected || _helper.connecting) {
      _helper.stop();
    }
  }

  Future<bool> call({
    required String target,
    required bool isVideoMuted,
  }) async {
    try {
      final mediaConstraints = <String, dynamic>{'audio': true, 'video': true};
      MediaStream mediaStream;
      if (WebRTC.platformIsWeb && !isVideoMuted) {
        mediaStream =
            await navigator.mediaDevices.getUserMedia(mediaConstraints);
        mediaConstraints['video'] = false;
        final userStream =
            await navigator.mediaDevices.getUserMedia(mediaConstraints);
        await mediaStream.addTrack(userStream.getAudioTracks()[0]);
      } else {
        mediaConstraints['video'] = !isVideoMuted;
        mediaStream =
            await navigator.mediaDevices.getUserMedia(mediaConstraints);
      }
      // check permission first: microphone/camera
      return _helper.call(
        target,
        voiceonly: isVideoMuted,
        mediaStream: mediaStream,
      );
    } catch (e, stack) {
      rethrow;
    }
  }

  @override
  void callStateChanged(Call call, CallState callState) {
    print(
      // ignore: prefer_interpolation_to_compose_strings, prefer_adjacent_string_concatenation
      '[$runtimeType] callStateChanged\n' +
          'call=${call.id}\n' +
          'callState=${callState.state}\n' +
          'originator=${callState.originator}\n' +
          'direction=${call.session.direction}',
    );

    switch (callState.state) {
      case CallStateEnum.STREAM:
        _handleCallStreams(call, callState);
        break;
      case CallStateEnum.ENDED:
        _handleCallEnded(call);
        break;
      case CallStateEnum.FAILED:
        _handleCallFailed(call);
        break;
      case CallStateEnum.MUTED:
        _handleCallMuted(call, callState);
        break;
      case CallStateEnum.UNMUTED:
        _handleCallUnmuted(call, callState);
        break;
      case CallStateEnum.HOLD:
        _handleCallHold(call, callState);
        break;
      case CallStateEnum.UNHOLD:
        _handleCallUnHold(call, callState);
        break;
      case CallStateEnum.CALL_INITIATION:
        _handleNewCall(call);
        break;
      case CallStateEnum.NONE:
        break;
      case CallStateEnum.CONNECTING:
        break;
      case CallStateEnum.PROGRESS:
        break;
      case CallStateEnum.ACCEPTED:
        break;
      case CallStateEnum.CONFIRMED:
        break;
      case CallStateEnum.REFER:
        break;
    }
  }

  void addListener(SipListener listener) {
    _listeners.add(listener);
  }

  void removeListener(SipListener listener) {
    _listeners.remove(listener);
  }

  @override
  void onNewMessage(SIPMessageRequest msg) {
    print('[$runtimeType] onNewMessage\n$msg\n');
  }

  @override
  void onNewNotify(Notify ntf) {
    print('[$runtimeType] onNewNotify\n$ntf\n');
  }

  @override
  void registrationStateChanged(RegistrationState state) {
    print('[$runtimeType] registrationStateChanged(${state.state})\n');
  }

  @override
  void transportStateChanged(TransportState state) {
    print('[$runtimeType] transportStateChanged(${state.state})\n');
    if (state.state == TransportStateEnum.CONNECTED) {
      for (final e in _listeners) {
        e.onSipConnected();
      }
    }
    if (state.state == TransportStateEnum.DISCONNECTED) {
      for (final e in _listeners) {
        e.onSipDisconnected();
      }
    }
    for (final e in _listeners) {
      e.onSipTransportState(state);
    }
  }

  void hangUp(String callId) {
    try {
      final currentCall = _activeSipCalls[callId];
      if (currentCall == null) {
        return;
      }
      currentCall.call.hangup({'status_code': 603});
    } catch (e, stack) {
      rethrow;
    }
  }

  void hangUpAll() {
    try {
      final keys = _activeSipCalls.keys.toList();
      for (final key in keys) {
        _activeSipCalls[key]?.call.hangup({'status_code': 603});
      }
    } catch (e, stack) {
      rethrow;
    }
  }

  Future<void> accept(String callId) async {
    try {
      final currentCall = _activeSipCalls[callId];
      if (currentCall == null) {
        return;
      }
      final remoteHasVideo = currentCall.call.remote_has_video;
      final mediaConstraints = <String, dynamic>{
        'audio': true,
        'video': remoteHasVideo
      };
      MediaStream mediaStream;

      if (WebRTC.platformIsWeb && remoteHasVideo) {
        mediaStream =
            await navigator.mediaDevices.getDisplayMedia(mediaConstraints);
        mediaConstraints['video'] = false;
        final userStream =
            await navigator.mediaDevices.getUserMedia(mediaConstraints);
        await mediaStream.addTrack(
          userStream.getAudioTracks()[0],
        );
      } else {
        mediaConstraints['video'] = remoteHasVideo;
        mediaStream =
            await navigator.mediaDevices.getUserMedia(mediaConstraints);
      }

      currentCall.call.answer(
        _helper.buildCallOptions(!remoteHasVideo),
        mediaStream: mediaStream,
      );
    } catch (e, stack) {
      rethrow;
    }
  }

  void switchCamera(String callId) {
    try {
      final localStreamer = _activeSipCalls[callId]?.localStreamer;
      if (localStreamer == null) return;
      Helper.switchCamera(localStreamer.stream.getVideoTracks()[0]);
    } catch (e, stack) {
      rethrow;
    }
  }

  void muteAudio(String callId) {
    try {
      final currentCall = _activeSipCalls[callId];
      if (currentCall == null) {
        return;
      }
      final isAudioMuted = currentCall.callState.isAudioMuted;
      final isVideoMuted = currentCall.callState.isVideoMuted;
      if (isAudioMuted) {
        if (isVideoMuted) {
          currentCall.call.unmute(true, false);
        } else {
          currentCall.call.unmute(true, true);
        }
      } else {
        if (isVideoMuted) {
          currentCall.call.mute(true, true);
        } else {
          currentCall.call.mute(true, false);
        }
      }
    } catch (e, stack) {
      rethrow;
    }
  }

  void muteVideo(String callId) {
    try {
      final currentCall = _activeSipCalls[callId];
      if (currentCall == null) {
        return;
      }
      final isAudioMuted = currentCall.callState.isAudioMuted;
      final isVideoMuted = currentCall.callState.isVideoMuted;
      if (isVideoMuted) {
        if (isAudioMuted) {
          currentCall.call.unmute(false, true);
        } else {
          currentCall.call.unmute(true, true);
        }
      } else {
        if (isAudioMuted) {
          currentCall.call.mute(true, true);
        } else {
          currentCall.call.mute(false, true);
        }
      }
    } catch (e, stack) {
      rethrow;
    }
  }

  void hold(String callId) {
    try {
      final currentCall = _activeSipCalls[callId];
      if (currentCall == null) {
        return;
      }
      if (currentCall.callState.isCallHeld) {
        currentCall.call.unhold();
      } else {
        currentCall.call.hold();
      }
    } catch (e, stack) {
      rethrow;
    }
  }

  void dtmf(String callId, String tone) {
    try {
      final currentCall = _activeSipCalls[callId];
      print('[$runtimeType] Dtmf tone => $tone');
      if (currentCall == null) {
        return;
      }
      currentCall.call.sendDTMF(tone);
    } catch (e, stack) {
      rethrow;
    }
  }

  void toggleSpeaker(String callId) {
    try {
      final currentCall = _activeSipCalls[callId];
      if (currentCall == null) {
        return;
      }
      if (currentCall.localStreamer?.stream != null) {
        final speakerOn = !currentCall.callState.isSpeakerOn;
        currentCall.onStateChange(
          currentCall.callState.copyWith(
            isSpeakerOn: speakerOn,
          ),
        );
        if (!WebRTC.platformIsWeb) {
          currentCall.localStreamer?.stream
              .getAudioTracks()[0]
              .enableSpeakerphone(speakerOn);
        }
      }
    } catch (e, stack) {
      rethrow;
    }
  }

  void _handleCallEnded(Call call) {
    try {
      final currentCall = _activeSipCalls[call.id];
      if (currentCall == null) {
        return;
      }
      currentCall.dispose().then((value) {
        for (final e in _listeners) {
          e.onSipCallEnded(currentCall.activeCall);
        }
        currentCall.activeCall.removeAllStateListeners();
        _activeSipCalls.remove(call.id);
      });
    } catch (e, stack) {
      rethrow;
    }
  }

  void _handleCallFailed(Call call) {
    try {
      final currentCall = _activeSipCalls[call.id];
      if (currentCall == null) {
        return;
      }
      for (final e in _listeners) {
        e.onSipCallFailed(currentCall.activeCall);
      }
      currentCall.activeCall.removeAllStateListeners();
      _activeSipCalls.remove(call.id);
    } catch (e, stack) {
      rethrow;
    }
  }

  void _handleCallMuted(Call call, CallState state) {
    try {
      final currentCall = _activeSipCalls[call.id];
      if (currentCall == null) {
        return;
      }
      final isMuted = currentCall.call.session.isMuted();
      currentCall.onStateChange(
        currentCall.callState.copyWith(
          isAudioMuted: (isMuted['audio'] ?? false) as bool,
          isVideoMuted: (isMuted['video'] ?? false) as bool,
        ),
      );

      for (final e in _listeners) {
        e.onSipMuted(
          currentCall.activeCall,
          (isMuted['audio'] ?? false) as bool,
          (isMuted['video'] ?? false) as bool,
        );
      }
    } catch (e, stack) {
      rethrow;
    }
  }

  void _handleCallUnmuted(Call call, CallState state) {
    try {
      final currentCall = _activeSipCalls[call.id];
      if (currentCall == null) {
        return;
      }
      final isMuted = currentCall.call.session.isMuted();
      currentCall.onStateChange(
        currentCall.callState.copyWith(
          isAudioMuted: (isMuted['audio'] ?? false) as bool,
          isVideoMuted: (isMuted['video'] ?? false) as bool,
        ),
      );
      for (final e in _listeners) {
        e.onSipUnmuted(
          currentCall.activeCall,
          (isMuted['audio'] ?? false) as bool,
          (isMuted['video'] ?? false) as bool,
        );
      }
    } catch (e, stack) {
      rethrow;
    }
  }

  void _handleCallHold(Call call, CallState state) {
    try {
      final currentCall = _activeSipCalls[call.id];
      if (currentCall == null) {
        return;
      }
      currentCall.onStateChange(
        currentCall.callState.copyWith(
          isCallHeld: true,
        ),
      );
    } catch (e, stack) {
      rethrow;
    }
  }

  void _handleCallUnHold(Call call, CallState state) {
    try {
      final currentCall = _activeSipCalls[call.id];
      if (currentCall == null) {
        return;
      }
      currentCall.onStateChange(
        currentCall.callState.copyWith(
          isCallHeld: false,
        ),
      );
    } catch (e, stack) {
      rethrow;
    }
  }

  void _handleNewCall(Call call) {
    try {
      if ((call.id ?? '').isEmpty) {
        return;
      }
      final activeCall = SipActiveCall(
        id: call.id ?? '',
        number: (call.session.remote_identity?.uri?.user).toString(),
        direction: call.session.direction ?? '',
        peerConnection: call.peerConnection,
      );
      final activeCallInternal = SipActiveCallInternal(
        call: call,
        activeCall: activeCall,
      );
      _activeSipCalls[call.id!] = activeCallInternal;
      for (final e in _listeners) {
        e.onSipNewCall(activeCall, activeCallInternal.callState);
      }
    } catch (e, stack) {
      rethrow;
    }
  }

  void _handleCallStreams(Call call, CallState state) {
    try {
      final currentCall = _activeSipCalls[call.id];
      if (currentCall == null) {
        return;
      }
      final stream = state.stream;
      if (state.originator == 'local' && stream != null) {
        if (!WebRTC.platformIsWeb && !WebRTC.platformIsDesktop) {
          stream.getAudioTracks().first.enableSpeakerphone(false);
        }
        currentCall
            .setLocalStreamer(stream)
            .then((value) => print('[$runtimeType] local video created'));
      }
      if (state.originator == 'remote' && stream != null) {
        currentCall
            .addRemoteStreamer(
          stream,
          _listeners,
        )
            .then((key) async {
          print('[$runtimeType] remote video created');
        });
      }
    } catch (e, stack) {
      rethrow;
    }
  }
}
