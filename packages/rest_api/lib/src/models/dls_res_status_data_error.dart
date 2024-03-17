// ignore_for_file: invalid_annotation_target

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

///
/// Created by Nightwelf 19.12.2022 12:03
/// Telegram: @nightwelf
///
part 'dls_res_status_data_error.freezed.dart';
part 'dls_res_status_data_error.g.dart';

@freezed
class DLSRestStatusDataError with _$DLSRestStatusDataError {
  DLSRestStatusDataError._();

  factory DLSRestStatusDataError({
    @JsonKey(name: 'email') List<String>? emails,
    @JsonKey(name: 'number') List<String>? numbers,
    @JsonKey(name: 'password_old') List<String>? passwordOld,
  }) = _DLSRestStatusDataError;

  factory DLSRestStatusDataError.fromStringJson(String string) =>
      DLSRestStatusDataError.fromJson(
        jsonDecode(string) as Map<String, dynamic>,
      );

  factory DLSRestStatusDataError.fromJson(Map<String, dynamic> json) =>
      _$DLSRestStatusDataErrorFromJson(json);

  String stringify() =>
      jsonEncode(toJson()..removeWhere((key, dynamic value) => value == null));
}
