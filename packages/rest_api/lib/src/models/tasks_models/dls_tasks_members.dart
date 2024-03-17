// ignore_for_file: invalid_annotation_target

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rest_api/src/models/tasks_models/dls_tasks_member_authors.dart';
import 'package:rest_api/src/models/tasks_models/dls_tasks_member_executors.dart';
import 'package:rest_api/src/models/tasks_models/dls_tasks_member_observers.dart';
import 'package:rest_api/src/models/tasks_models/dls_tasks_member_responsible.dart';

part 'dls_tasks_members.freezed.dart';
part 'dls_tasks_members.g.dart';

@freezed
class DlsTasksMembers with _$DlsTasksMembers {
  DlsTasksMembers._();

  factory DlsTasksMembers({
    @JsonKey(name: 'executors') List<DlsTasksExecutors>? executors,
    @JsonKey(name: 'responsible') List<DlsTasksExecutors>? responsible,
    @JsonKey(name: 'observers') List<DlsTasksExecutors>? observers,
    @JsonKey(name: 'authors') List<DlsTasksExecutors>? authors,
  }) = _DlsTasksMembers;

  factory DlsTasksMembers.fromJson(Map<String, dynamic> json) =>
      _$DlsTasksMembersFromJson(json);

  String stringify() =>
      jsonEncode(toJson()..removeWhere((key, dynamic value) => value == null));

  factory DlsTasksMembers.fromStringJson(String string) =>
      DlsTasksMembers.fromJson(jsonDecode(string) as Map<String, dynamic>);
}
