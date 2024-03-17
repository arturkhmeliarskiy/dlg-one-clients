import 'dart:convert';

import 'package:common/common.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

///
/// Created by Nightwelf 19.04.2023 16:19
/// Telegram: @nightwelf
///

part 'push_token.freezed.dart';
part 'push_token.g.dart';

/// PushToken model
@freezed
class PushToken with _$PushToken {

  /// freezed factory
  factory PushToken({
    @JsonKey(name: 'token') required String token,
    @JsonKey(name: 'active') required bool active,
    @JsonKey(name: 'platform_type') DlsPlatformNotificationType? platformType,
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'user_id') int? dlsId,
  }) = _PushToken;

  factory PushToken.fromStringJson(String string) =>
      PushToken.fromJson(jsonDecode(string) as Map<String, dynamic>);

  PushToken._();

  factory PushToken.fromJson(Map<String, dynamic> json) =>
      _$PushTokenFromJson(json);

  String stringify() =>
      jsonEncode(toJson()..removeWhere((key, dynamic value) => value == null));

}
/*
{
  "token": "cYW-1ZvFRS2Pn75u4ZacJz:cYW-1ZvFRS2Pn75u4ZacJz...",
  "active": true,
  "id": 1,
  "user_id": 1
}
*/