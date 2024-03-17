import 'dart:convert';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:notifications_models/notifications_models.dart';
import 'package:socket_api_models/socket_api_models.dart';

///
/// Created by Nightwelf 18.04.2023 17:48
/// Telegram: @nightwelf
///

part 'socket_response_message.freezed.dart';

part 'socket_response_message.g.dart';

/// SocketResponseMessage model
@Freezed(unionKey: 'state')
class SocketResponseMessage with _$SocketResponseMessage {
  factory SocketResponseMessage.call({
    // ignore: invalid_annotation_target
    @JsonKey(name: 'payload') required Payload payload,
  }) = _CallSocketResponseMessage;

  factory SocketResponseMessage.notification({
    // ignore: invalid_annotation_target
    @JsonKey(name: 'dls_notification_payload') required DLSNotification notification,
  }) = _NotificationSocketResponseMessage;

  factory SocketResponseMessage.open() = _OpenSocketResponseMessage;

  factory SocketResponseMessage.invalid() = _InvalidSocketResponseMessage;

  // ignore: non_constant_identifier_names
  factory SocketResponseMessage.auth_required() =
      _AuthRequestSocketResponseMessage;

  factory SocketResponseMessage.authorized() = _AuthorizedSocketResponseMessage;

  factory SocketResponseMessage.fromStringJson(String string) =>
      SocketResponseMessage.fromJson(
        jsonDecode(string) as Map<String, dynamic>,
      );

  SocketResponseMessage._();

  factory SocketResponseMessage.fromJson(Map<String, dynamic> json) =>
      _$SocketResponseMessageFromJson(json);

  String stringify() =>
      jsonEncode(toJson()..removeWhere((key, dynamic value) => value == null));
}
