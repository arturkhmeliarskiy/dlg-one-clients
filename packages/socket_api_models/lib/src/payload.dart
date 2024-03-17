// ignore_for_file: invalid_annotation_target

import 'dart:convert';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:socket_api_models/socket_api_models.dart';

///
/// Created by Nightwelf 24.03.2023 14:02
/// Telegram: @nightwelf
///

part 'payload.freezed.dart';

part 'payload.g.dart';

/// Payload model
@Freezed(unionKey: 'action')
class Payload with _$Payload {

  // ignore: public_member_api_docs
  factory Payload.fromStringJson(String string) =>
      Payload.fromJson(
          jsonDecode(string) as Map<String, dynamic>,);
  Payload._();

  // ignore: non_constant_identifier_names
  factory Payload.room_list({
    @JsonKey(name: 'rooms') required List<CallMeta>? callsMeta,
  }) = _RoomListPayload;

  factory Payload.hangup({
    @JsonKey(name: 'room') required String number,
    @JsonKey(name: 'user_id') required int dlsId,
  }) = _HangUpPayload;

  factory Payload.reject({
    @JsonKey(name: 'room') required String number,
    @JsonKey(name: 'user_id') required int dlsId,
  }) = _RejectPayload;

  factory Payload.busy({
    @JsonKey(name: 'room') required String number,
    @JsonKey(name: 'user_id') required int dlsId,
  }) = _BusyPayload;

  // ignore: non_constant_identifier_names
  factory Payload.speak({
    @JsonKey(name: 'room') required CallMeta callMeta,
  }) = _SpeakPayload;

  // ignore: public_member_api_docs
  factory Payload.fromJson(Map<String, dynamic> json) =>
      _$PayloadFromJson(json);

  // ignore: public_member_api_docs
  String stringify() =>
      jsonEncode(toJson()..removeWhere((key, dynamic value) => value == null));
}
