// ignore_for_file: invalid_annotation_target

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rest_api/rest_api.dart';

part 'dls_tasks_member_executors.freezed.dart';

part 'dls_tasks_member_executors.g.dart';

@freezed
class DlsTasksExecutors with _$DlsTasksExecutors {
  DlsTasksExecutors._();

  factory DlsTasksExecutors({
    @JsonKey(name: 'role_code') int? roleCode,
    @JsonKey(name: 'role_name') String? roleName,
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'name_surname') String? nameSurname,
    @JsonKey(name: 'avatar') String? avatar,
  }) = _DlsTasksExecutors;

  factory DlsTasksExecutors.fromJson(Map<String, dynamic> json) =>
      _$DlsTasksExecutorsFromJson(json);

  String stringify() =>
      jsonEncode(toJson()..removeWhere((key, dynamic value) => value == null));

  factory DlsTasksExecutors.fromStringJson(String string) =>
      DlsTasksExecutors.fromJson(jsonDecode(string) as Map<String, dynamic>);
}

extension DlsTasksExecutorsExt on DlsTasksExecutors {
  DLSUser toUser() {
    return DLSUser(
      dlsId: id,
      id: '',
      avatar: avatar,
      name: name,
      nameSurname: nameSurname,
    );
  }
}
