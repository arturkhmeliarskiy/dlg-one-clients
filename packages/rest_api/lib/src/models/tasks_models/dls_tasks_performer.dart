import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'dls_tasks_performer.freezed.dart';
part 'dls_tasks_performer.g.dart';

@freezed
class DlsTasksPerformer with _$DlsTasksPerformer {
  DlsTasksPerformer._();

  factory DlsTasksPerformer({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    @JsonKey(name: 'task_id') int? taskId,
    @JsonKey(name: 'user_id') int? userId,
    @JsonKey(name: 'user_name') String? userName,
    @JsonKey(name: 'role') int? role,
  }) = _DlsTasksPerformer;

  factory DlsTasksPerformer.fromJson(Map<String, dynamic> json) =>
      _$DlsTasksPerformerFromJson(json);

  String stringify() =>
      jsonEncode(toJson()..removeWhere((key, dynamic value) => value == null));

  factory DlsTasksPerformer.fromStringJson(String string) =>
      DlsTasksPerformer.fromJson(jsonDecode(string) as Map<String, dynamic>);
}
