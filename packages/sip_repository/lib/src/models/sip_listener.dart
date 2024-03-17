import 'package:sip_repository/sip_repository.dart';
import 'package:sip_ua/sip_ua.dart';

abstract class SipListener {
  void onSipNewCall(SipActiveCall sipCall, SipActiveCallState callState) {}

  void onSipCallEnded(SipActiveCall sipCall) {}

  void onSipCallFailed(SipActiveCall sipCall) {}

  void onSipConnected() {}

  void onSipDisconnected() {}

  void onSipTransportState(TransportState state) {}

  void onSipCallStream(SipActiveCall sipCall) {}

  void onSipMuted(
    SipActiveCall sipCall,
    bool isAudioMuted,
    bool isVideoMuted,
  ) {}

  void onSipUnmuted(
    SipActiveCall sipCall,
    bool isAudioMuted,
    bool isVideoMuted,
  ) {}
}
