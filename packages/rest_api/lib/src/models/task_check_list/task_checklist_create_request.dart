// ignore_for_file: invalid_annotation_target
import 'dart:convert';
import 'package:freezed_annotation/freezed_annotation.dart';


part 'task_checklist_create_request.freezed.dart';
part 'task_checklist_create_request.g.dart';

@freezed
class TasksChecklistCreateRequest with _$TasksChecklistCreateRequest {
  @JsonSerializable(includeIfNull: false)
  factory TasksChecklistCreateRequest({
    @JsonKey(name: 'task_id') required int taskId,
    @JsonKey(name: 'is_checked') @Default(false) bool isChecked,
    @Default('') String name,
  }) = _TasksChecklistCreateRequest;

  TasksChecklistCreateRequest._();

  factory TasksChecklistCreateRequest.fromJson(Map<String, dynamic> json) =>
      _$TasksChecklistCreateRequestFromJson(json);

  String stringify() =>
      jsonEncode(toJson()..removeWhere((key, dynamic value) => value == null));

  factory TasksChecklistCreateRequest.fromStringJson(String string) =>
      TasksChecklistCreateRequest.fromJson(jsonDecode(string) as Map<String, dynamic>);
}
