// ignore_for_file: invalid_annotation_target

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rest_api/rest_api.dart';

part 'dls_task.freezed.dart';

part 'dls_task.g.dart';

@freezed
// TODO rename Model
class DlsTask with _$DlsTask {
  @JsonSerializable(includeIfNull: false)
  const factory DlsTask({
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'type') int? type,
    @JsonKey(name: 'start_at') DateTime? startAt,
    @JsonKey(name: 'expired_at') DateTime? expiredAt,
    @JsonKey(name: 'status_id', unknownEnumValue: TaskStatusType.unknown)
        TaskStatusType? status,
    @JsonKey(name: 'priority') TaskPriorityType? priority,
    @JsonKey(name: 'chat_comment_id') int? chatCommentId,
    @JsonKey(name: 'template_id') int? templateId,
    @JsonKey(name: 'sprint_id') int? sprintId,
    @JsonKey(name: 'parent_id') int? parentId,
    @JsonKey(name: 'is_attach_sprint') bool? isAttachSprint,
    @JsonKey(name: 'story_points') int? storyPoints,
    @JsonKey(name: 'duration') int? duration,
    @JsonKey(name: 'tags') List<int>? tags,
    @JsonKey(name: 'sub_tasks') List<int>? subTasks,
    List<int>? depends,
    List<int>? blocks,
    List<int>? events,
    List<int>? sprints,
    @JsonKey(name: 'files_ids') List<int>? filesIds,
    @JsonKey(name: 'members') DlsMembers? members,
  }) = _DlsTask;

  const DlsTask._();

  factory DlsTask.fromJson(Map<String, dynamic> json) =>
      _$DlsTaskFromJson(json);

  String stringify() =>
      jsonEncode(toJson()..removeWhere((key, dynamic value) => value == null));

  factory DlsTask.fromStringJson(String string) =>
      DlsTask.fromJson(jsonDecode(string) as Map<String, dynamic>);
}
