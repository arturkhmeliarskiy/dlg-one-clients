// ignore_for_file: invalid_annotation_target

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'dls_tasks_member_observers.freezed.dart';
part 'dls_tasks_member_observers.g.dart';

@freezed
class DlsTasksObservers with _$DlsTasksObservers {
  DlsTasksObservers._();

  factory DlsTasksObservers({
    @JsonKey(name: 'role_code') int? roleCode,
    @JsonKey(name: 'role_name') String? roleName,
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'name_surname') String? nameSurname,
    @JsonKey(name: 'avatar') String? avatar,
  }) = _DlsTasksObservers;

  factory DlsTasksObservers.fromJson(Map<String, dynamic> json) =>
      _$DlsTasksObserversFromJson(json);

  String stringify() =>
      jsonEncode(toJson()..removeWhere((key, dynamic value) => value == null));

  factory DlsTasksObservers.fromStringJson(String string) =>
      DlsTasksObservers.fromJson(jsonDecode(string) as Map<String, dynamic>);
}
