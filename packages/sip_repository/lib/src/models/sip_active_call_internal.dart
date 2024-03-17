// ignore_for_file: public_member_api_docs

import 'package:flutter_webrtc/flutter_webrtc.dart';
import 'package:sip_repository/src/models/models.dart';
import 'package:sip_ua/sip_ua.dart';

// ignore: implementation_imports
import 'package:sip_ua/src/event_manager/internal_events.dart';

// Used for internal use inside this package
class SipActiveCallInternal {
  SipActiveCallInternal({
    required this.call,
    required this.activeCall,
  }) {
    call.session.on(EventSdp(), (event) {
      print(
          '[$runtimeType] SDP type:${event.type}\n[$runtimeType] SDP originator: ${event.originator}\n[$runtimeType] SDP sdp:\n${event.sdp}');
      if (event.originator == 'remote' &&
          (event.sdp ?? '').contains('a=label:')) {
        final tmp = event.sdp!.split('a=msid:');
        final tmp2 = tmp.where((e) => e.contains('a=label:'));
        for (final e in tmp2) {
          final key = e.split(' ').first;
          final labelStart = e.indexOf('a=label:');
          final labelEnd = e.indexOf('\r\n', labelStart);
          // 8 - is len of this: a=label:
          final label = e.substring(labelStart + 8, labelEnd);
          _labelsStore[key] = label;
        }
      }
    });
  }

  final Map<String, String> _labelsStore = {};
  final Call call;
  final SipActiveCall activeCall;
  var _callState = const SipActiveCallState();

  /// я
  Streamer? localStreamer;

  /// собеседники
  /// id, пользователь
  Map<String, Streamer> remoteStreamers = {};

  SipActiveCallState get callState => _callState;

  void onStateChange(SipActiveCallState state) {
    _callState = state;
    activeCall.onStateChanged(state);
  }

  Future<void> setLocalStreamer(MediaStream stream) async {
    await dispose();
    final ls = Streamer(stream: stream);
    await ls.initialize();
    ls.renderer.srcObject = stream;
    localStreamer = ls;
  }

  Future<void> addRemoteStreamer(
    MediaStream stream,
    List<SipListener> listeners,
  ) async {
    final key = stream.id;
    final rs = Streamer(
      stream: stream,
      label: remoteStreamers[key]?.label ?? _labelsStore[key],
    );
    await rs.initialize();
    rs.renderer.srcObject = stream;
    remoteStreamers[key] = rs;
    for (final e in listeners) {
      e.onSipCallStream(activeCall);
    }
  }

  /// удалить стримера по ключу
  Future<void> removeRemoteStreamerByKey(String key) async {
    await remoteStreamers[key]?.dispose();
    remoteStreamers.remove(key);
  }

  /// удалить стримера по label
  Future<void> removeRemoteStreamerByLabel(String label) async {
    final keys = remoteStreamers.keys.toList();
    for (var i = 0; i < keys.length; i++) {
      final curLabel = remoteStreamers[keys[i]]?.label;
      if (curLabel == label && curLabel != null) {
        await removeRemoteStreamerByKey(keys[i]);
        break;
      }
    }
  }

  Future<void> dispose() async {
    final keys = remoteStreamers.keys.toList();
    for (var i = 0; i < keys.length; i++) {
      await remoteStreamers[keys[i]]?.dispose();
    }
    remoteStreamers = {};
    await localStreamer?.dispose();
    localStreamer = null;
  }
}
