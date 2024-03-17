// ignore_for_file: invalid_annotation_target

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

///
/// Created by Nightwelf 08.03.2023 1:13
/// Telegram: @nightwelf
///

part 'dls_notification_user.freezed.dart';
part 'dls_notification_user.g.dart';

/// DLSNotificationUser model
@freezed
class DLSNotificationUser with _$DLSNotificationUser {
  /// freezed factory
  factory DLSNotificationUser({
    /// ид пользователя в нашей системе, может пригодится тут
    required int uuid,

    /// ссылка на аватарку
    String? avatar,

    /// имя пользователя Петя Петров
    required String username,
  }) = _DLSNotificationUser;

  DLSNotificationUser._();

  // ignore: public_member_api_docs
  factory DLSNotificationUser.fromJson(Map<String, dynamic> json) =>
      _$DLSNotificationUserFromJson(json);

  String stringify() =>
      jsonEncode(toJson()..removeWhere((key, dynamic value) => value == null));

  factory DLSNotificationUser.fromStringJson(String string) =>
      DLSNotificationUser.fromJson(jsonDecode(string) as Map<String, dynamic>);
}
