import 'package:sip_repository/sip_repository.dart';

abstract class SipActiveCallListener {
  void onCallStateChanged(String callId, SipActiveCallState callState);
}
