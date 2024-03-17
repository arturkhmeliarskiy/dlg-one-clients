// ignore_for_file: invalid_annotation_target

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'dls_tasks_member_authors.freezed.dart';
part 'dls_tasks_member_authors.g.dart';

@freezed
class DlsTasksAuthors with _$DlsTasksAuthors {
  DlsTasksAuthors._();

  factory DlsTasksAuthors({
    @JsonKey(name: 'role_code') int? roleCode,
    @JsonKey(name: 'role_name') String? roleName,
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'name_surname') String? nameSurname,
    @JsonKey(name: 'avatar') String? avatar,
  }) = _DlsTasksAuthors;

  factory DlsTasksAuthors.fromJson(Map<String, dynamic> json) =>
      _$DlsTasksAuthorsFromJson(json);

  String stringify() =>
      jsonEncode(toJson()..removeWhere((key, dynamic value) => value == null));

  factory DlsTasksAuthors.fromStringJson(String string) =>
      DlsTasksAuthors.fromJson(jsonDecode(string) as Map<String, dynamic>);
}
