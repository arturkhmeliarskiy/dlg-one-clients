// ignore_for_file: invalid_annotation_target

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rest_api/src/models/sub_task_data.dart';

part 'dls_task_data.freezed.dart';
part 'dls_task_data.g.dart';

@freezed
class DlsTaskData with _$DlsTaskData {
  const factory DlsTaskData({
    @JsonKey(name: 'over_tasks') List<SubTaskData>? over_tasks,
    @JsonKey(name: 'subtasks') List<SubTaskData>? subtasks,
  }) = _DlsTaskData;

  const DlsTaskData._();

  factory DlsTaskData.fromJson(Map<String, dynamic> json) =>
      _$DlsTaskDataFromJson(json);

  String stringify() =>
      jsonEncode(toJson()..removeWhere((key, dynamic value) => value == null));

  factory DlsTaskData.fromStringJson(String string) =>
      DlsTaskData.fromJson(jsonDecode(string) as Map<String, dynamic>);
}
