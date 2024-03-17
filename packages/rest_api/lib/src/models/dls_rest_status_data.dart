// ignore_for_file: invalid_annotation_target

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rest_api/src/models/dls_res_status_data_error.dart';

///
/// Created by Nightwelf 19.12.2022 12:00
/// Telegram: @nightwelf
///
part 'dls_rest_status_data.freezed.dart';
part 'dls_rest_status_data.g.dart';

@freezed
class DLSRestStatusData with _$DLSRestStatusData {
  factory DLSRestStatusData({
    @JsonKey(name: 'errors') DLSRestStatusDataError? errors,
  }) = _DLSRestStatusData;

  factory DLSRestStatusData.fromStringJson(String string) =>
      DLSRestStatusData.fromJson(jsonDecode(string) as Map<String, dynamic>);

  DLSRestStatusData._();

  factory DLSRestStatusData.fromJson(Map<String, dynamic> json) =>
      _$DLSRestStatusDataFromJson(json);

  String stringify() =>
      jsonEncode(toJson()..removeWhere((key, dynamic value) => value == null));
}
