// ignore_for_file: public_member_api_docs, invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rest_api/rest_api.dart';
import 'package:rest_api/src/models/sprints/src/sprint_status.dart';
import 'package:rest_api/src/models/tasks_models/dls_tasks_count.dart';
import 'package:rest_api/src/models/tasks_models/dls_tasks_sprint_story_points.dart';
import 'package:rest_api/src/models/tasks_models/dls_tasks_user.dart';

part 'dls_sprint_model.freezed.dart';

part 'dls_sprint_model.g.dart';

@freezed
class DlsSprintModel with _$DlsSprintModel {
  factory DlsSprintModel({
    required int id,
    @Default('') String title,
    String? description,
    @JsonKey(name: 'start_at') DateTime? startAt,
    @JsonKey(name: 'expired_at') DateTime? expiredAt,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    @JsonKey(unknownEnumValue: SprintStatus.newSprint)
        required SprintStatus status,
    @JsonKey(name: 'status_name') String? statusName,
    @Default(SprintDurationType.custom)
    @JsonKey(unknownEnumValue: SprintDurationType.custom)
        SprintDurationType duration,
    @JsonKey(name: 'duration_name') String? durationName,
    @JsonKey(name: 'story_points') DlsTasksSprintStoryPoints? storyPoints,
    @JsonKey(name: 'story_point_plan') int? storyPointPlan,
    @JsonKey(name: 'story_point_fact') int? storyPointFact,
    @JsonKey(name: 'tasks_count') int? tasksCount,
    @JsonKey(name: 'tasks_done') int? tasksDone,
    DlsTasksMembers? performers,
    DlsTasksUser? user,
    @Default([]) List<DlsTasks> tasks,
    @JsonKey(name: 'super_task') DlsTasks? superTask,
    @Default([]) List<TaskEventModel> events,
    @JsonKey(name: 'matrix_room') String? matrixRoom,
  }) = _DlsSprintModel;

  factory DlsSprintModel.fromJson(Map<String, dynamic> json) =>
      _$DlsSprintModelFromJson(json);
}
