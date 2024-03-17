// ignore_for_file: invalid_annotation_target

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rest_api/src/models/date_time_converter.dart';
import 'package:rest_api/src/models/models.dart';
import 'package:rest_api/src/models/tasks_models/dls_tasks_comment.dart';
import 'package:rest_api/src/models/tasks_models/dls_tasks_permissons.dart';
import 'package:rest_api/src/models/tasks_models/dls_tasks_role.dart';

part 'dls_tasks.freezed.dart';

part 'dls_tasks.g.dart';

@freezed
class DlsTasks with _$DlsTasks {
  DlsTasks._();

  factory DlsTasks({
    @JsonKey(name: 'id') required int id,
    @DateTimeConverter() @JsonKey(name: 'created_at') DateTime? createdAt,
    @DateTimeConverter() @JsonKey(name: 'updated_at') DateTime? updatedAt,
    @DateTimeConverter() @JsonKey(name: 'expired_at') DateTime? expiredAt,
    @DateTimeConverter() @JsonKey(name: 'deleted_at') DateTime? deletedAt,
    @JsonKey(name: 'type') int? type,
    @JsonKey(name: 'status_id', unknownEnumValue: TaskStatusType.unknown)
        TaskStatusType? status,
    @JsonKey(name: 'priority') TaskPriorityType? priority,
    @JsonKey(name: 'count_sub_tasks') int? countSubTasks,
    @JsonKey(name: 'count_files') int? countFiles,
    @JsonKey(name: 'title') required String title,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'chat_comment_id') int? chatCommentId,
    @JsonKey(name: 'kanban_order_by') int? kanbanOrderBy,
    @JsonKey(name: 'template_id') int? templateId,
    @JsonKey(name: 'story_points') int? storyPoints,
    @JsonKey(name: 'slug') String? slug,
    @JsonKey(name: 'start_at') DateTime? startAt,
    @JsonKey(name: 'duration') int? duration,
    @JsonKey(name: 'files') List<DlsTasksFileElement>? files,
    @JsonKey(name: 'sprints') List<DlsSprintModel>? sprints,
    @JsonKey(name: 'checklist') List<DlsTasksChecklist>? checklist,
    @JsonKey(name: 'comments') List<DlsTasksComment>? comments,
    @JsonKey(name: 'events') List<TaskEventModel>? events,
    @JsonKey(name: 'tags') List<TaskTagModel>? tags,
    @JsonKey(name: 'parent_task') DlsTasks? parentTask,
    @JsonKey(name: 'sub_tasks') List<DlsTasks>? subTasks,
    @JsonKey(name: 'user') DlsUserShort? user,
    @JsonKey(name: 'performers') List<DlsTasksPerformer>? performers,
    @JsonKey(name: 'roles') List<DlsTasksRole>? roles,
    @JsonKey(name: 'permissions') DlsTasksPermissions? permissions,
    @JsonKey(name: 'is_expired') bool? isExpired,
    @JsonKey(name: 'is_subtask') bool? isSubtask,
    @JsonKey(name: 'is_check') bool? isCheck,
    @JsonKey(name: 'members') DlsTasksMembers? members,
    @JsonKey(name: 'priority_name') String? priorityName,
    @JsonKey(name: 'status_name') String? statusName,
    @JsonKey(name: 'nesting') int? nesting,
    @JsonKey(name: 'unique_key') String? uniqueKey,
    List<DlsTasks>? depends,
    List<DlsTasks>? blocks,
    @JsonKey(name: 'matrix_room') String? matrixRoom,
  }) = _DlsTasks;

  factory DlsTasks.fromJson(Map<String, dynamic> json) =>
      _$DlsTasksFromJson(json);

  String stringify() =>
      jsonEncode(toJson()..removeWhere((key, dynamic value) => value == null));

  factory DlsTasks.fromStringJson(String string) =>
      DlsTasks.fromJson(jsonDecode(string) as Map<String, dynamic>);
}
