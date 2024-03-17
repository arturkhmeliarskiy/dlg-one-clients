// ignore_for_file: invalid_annotation_target

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

///
/// Created by Nightwelf 16.11.2022 14:11
/// Telegram: @nightwelf
///
part 'sip_user.freezed.dart';
part 'sip_user.g.dart';

@freezed
class SipUser with _$SipUser {
  factory SipUser({
    @JsonKey(name: 'number') String? number,
    @JsonKey(name: 'password') String? password,
  }) = _SipUser;

  factory SipUser.fromStringJson(String string) =>
      SipUser.fromJson(jsonDecode(string) as Map<String, dynamic>);

  SipUser._();

  factory SipUser.fromJson(Map<String, dynamic> json) =>
      _$SipUserFromJson(json);

  String stringify() =>
      jsonEncode(toJson()..removeWhere((key, dynamic value) => value == null));
}
