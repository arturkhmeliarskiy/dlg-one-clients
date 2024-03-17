// ignore_for_file: invalid_annotation_target
import 'dart:convert';

import 'dls_notification_object.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

///
/// Created by Nightwelf 08.03.2023 2:12
/// Telegram: @nightwelf
///

part 'dls_notification_chat.freezed.dart';
part 'dls_notification_chat.g.dart';

/// DLSNotificationChat model
@freezed
class DLSNotificationChat extends DLSNotificationObject
    with _$DLSNotificationChat {
  factory DLSNotificationChat({
    required String uuid,
    required String name,
    required DateTime timestamp,
  }) = _DLSNotificationChat;

  DLSNotificationChat._();

  // ignore: public_member_api_docs, sort_constructors_first
  factory DLSNotificationChat.fromJson(Map<String, dynamic> json) =>
      _$DLSNotificationChatFromJson(json);

  String stringify() =>
      jsonEncode(toJson()..removeWhere((key, dynamic value) => value == null));

  factory DLSNotificationChat.fromStringJson(String string) =>
      DLSNotificationChat.fromJson(jsonDecode(string) as Map<String, dynamic>);
}
