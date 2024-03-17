// ignore_for_file: invalid_annotation_target

import 'dart:convert';
import 'package:freezed_annotation/freezed_annotation.dart';

///
/// Created by Nightwelf 24.03.2023 17:21
/// Telegram: @nightwelf
///

part 'caller.freezed.dart';

part 'caller.g.dart';

/// Caller model
@freezed
class Caller with _$Caller {

  // ignore: public_member_api_docs
  factory Caller.fromJson(Map<String, dynamic> json) => _$CallerFromJson(json);

  // ignore: public_member_api_docs
  factory Caller.fromStringJson(String string) =>
      Caller.fromJson(jsonDecode(string) as Map<String, dynamic>);
  Caller._();

  /// freezed factory
  factory Caller({
    @JsonKey(name: 'num') required String num,
    @JsonKey(name: 'user_id') required int dlsId,

    /// имя пользователя которое отобразится в ui
    String? userFriendlyName,

    /// уникальный идентификатор, по нему можно будет понять кому принадлежит входящий видеопоток
    @JsonKey(name: 'label') required String label,
    /// TODO: надо сделать required bool speak после доработок на сервере
    @JsonKey(name: 'speak') bool? speak,
  }) = _Caller;

  String get name => userFriendlyName ?? label;

  // ignore: public_member_api_docs
  String stringify() =>
      jsonEncode(toJson()..removeWhere((key, dynamic value) => value == null));
}
