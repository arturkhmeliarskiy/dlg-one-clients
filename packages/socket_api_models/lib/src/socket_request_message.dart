// ignore_for_file: invalid_annotation_target

import 'dart:convert';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:socket_api_models/socket_api_models.dart';

///
/// Created by Nightwelf 24.03.2023 14:01
/// Telegram: @nightwelf
///

part 'socket_request_message.freezed.dart';

part 'socket_request_message.g.dart';

/// SocketRequestMessage model
@Freezed(unionKey: 'action')
class SocketRequestMessage with _$SocketRequestMessage {

  // ignore: public_member_api_docs
  factory SocketRequestMessage.fromStringJson(String string) =>
      SocketRequestMessage.fromJson(jsonDecode(string) as Map<String, dynamic>);
  SocketRequestMessage._();

  factory SocketRequestMessage.call(CallAction callAction) =
      _CallSocketRequestMessage;

  // ignore: public_member_api_docs
  factory SocketRequestMessage.fromJson(Map<String, dynamic> json) =>
      _$SocketRequestMessageFromJson(json);

  // ignore: public_member_api_docs
  String stringify() =>
      jsonEncode(toJson()..removeWhere((key, dynamic value) => value == null));
}
