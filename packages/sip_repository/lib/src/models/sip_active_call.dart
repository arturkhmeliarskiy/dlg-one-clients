import 'package:equatable/equatable.dart';
import 'package:flutter_webrtc/flutter_webrtc.dart';
import 'package:sip_repository/sip_repository.dart';

class SipActiveCall extends Equatable {
  SipActiveCall({
    required this.id,
    required this.number,
    required this.direction,
    required this.peerConnection,
  });

  final String id;
  final String number;
  final String direction;
  final RTCPeerConnection? peerConnection;
  final _listeners = List<SipActiveCallListener>.empty(growable: true);

  bool get isIncoming => direction == 'incoming';

  @override
  List<Object?> get props => [id, direction];

  void onStateChanged(SipActiveCallState callState) {
    for (final l in _listeners) {
      l.onCallStateChanged(id, callState);
    }
  }

  void addStateListener(SipActiveCallListener listener) {
    _listeners.add(listener);
  }

  void removeStateListener(SipActiveCallListener listener) {
    _listeners.remove(listener);
  }

  void removeAllStateListeners() {
    _listeners.clear();
  }
}
