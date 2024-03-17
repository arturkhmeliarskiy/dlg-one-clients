// ignore_for_file: invalid_annotation_target

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'dls_tasks_member_responsible.freezed.dart';
part 'dls_tasks_member_responsible.g.dart';

@freezed
class DlsTasksResponsible with _$DlsTasksResponsible {
  DlsTasksResponsible._();

  factory DlsTasksResponsible({
    @JsonKey(name: 'role_code') int? roleCode,
    @JsonKey(name: 'role_name') String? roleName,
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'name_surname') String? nameSurname,
    @JsonKey(name: 'avatar') String? avatar,
  }) = _DlsTasksResponsible;

  factory DlsTasksResponsible.fromJson(Map<String, dynamic> json) =>
      _$DlsTasksResponsibleFromJson(json);

  String stringify() =>
      jsonEncode(toJson()..removeWhere((key, dynamic value) => value == null));

  factory DlsTasksResponsible.fromStringJson(String string) =>
      DlsTasksResponsible.fromJson(jsonDecode(string) as Map<String, dynamic>);
}
