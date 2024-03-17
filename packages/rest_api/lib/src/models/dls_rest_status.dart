// ignore_for_file: invalid_annotation_target, constant_identifier_names

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rest_api/src/models/dls_rest_status_data.dart';

///
/// Created by Nightwelf 16.11.2022 13:10
/// Telegram: @nightwelf
///
part 'dls_rest_status.freezed.dart';
part 'dls_rest_status.g.dart';

@freezed
class DLSRestStatus with _$DLSRestStatus {
  factory DLSRestStatus({
    @JsonKey(name: 'error') DLSRestErrorMaybe? error,
    @JsonKey(name: 'status') DLSRestStatusMaybe? status,
    @JsonKey(name: 'sucess') bool? success,
    @JsonKey(name: 'sucess_text') String? successText,
    @JsonKey(name: 'data') DLSRestStatusData? data,
  }) = _DLSRestStatus;

  factory DLSRestStatus.fromStringJson(String string) =>
      DLSRestStatus.fromJson(jsonDecode(string) as Map<String, dynamic>);
  DLSRestStatus._();

  factory DLSRestStatus.fromJson(Map<String, dynamic> json) =>
      _$DLSRestStatusFromJson(json);

  String stringify() =>
      jsonEncode(toJson()..removeWhere((key, dynamic value) => value == null));
}

enum DLSRestStatusMaybe { success }

enum DLSRestErrorMaybe { login_error }
