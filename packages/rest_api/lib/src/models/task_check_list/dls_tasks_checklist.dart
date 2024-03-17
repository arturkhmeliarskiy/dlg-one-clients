// ignore_for_file: invalid_annotation_target
import 'dart:convert';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dls_tasks_checklist.freezed.dart';
part 'dls_tasks_checklist.g.dart';

@freezed
class DlsTasksChecklist with _$DlsTasksChecklist {
  @JsonSerializable(includeIfNull: false)
  factory DlsTasksChecklist({
    // TODO make required after Dev -> Demo server migrate
    int? id,
    @JsonKey(name: 'task_id') int? taskId,
    @JsonKey(name: 'is_checked') @Default(false) bool isChecked,
    @Default('') String name,
  }) = _DlsTasksChecklist;

  DlsTasksChecklist._();

  factory DlsTasksChecklist.fromJson(Map<String, dynamic> json) =>
      _$DlsTasksChecklistFromJson(json);

  String stringify() =>
      jsonEncode(toJson()..removeWhere((key, dynamic value) => value == null));

  factory DlsTasksChecklist.fromStringJson(String string) =>
      DlsTasksChecklist.fromJson(jsonDecode(string) as Map<String, dynamic>);
}
