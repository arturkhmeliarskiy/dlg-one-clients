// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dls_sprint_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DlsSprintModel _$$_DlsSprintModelFromJson(Map<String, dynamic> json) =>
    _$_DlsSprintModel(
      id: json['id'] as int,
      title: json['title'] as String? ?? '',
      description: json['description'] as String?,
      startAt: json['start_at'] == null
          ? null
          : DateTime.parse(json['start_at'] as String),
      expiredAt: json['expired_at'] == null
          ? null
          : DateTime.parse(json['expired_at'] as String),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      status: $enumDecode(_$SprintStatusEnumMap, json['status'],
          unknownValue: SprintStatus.newSprint),
      statusName: json['status_name'] as String?,
      duration: $enumDecodeNullable(
              _$SprintDurationTypeEnumMap, json['duration'],
              unknownValue: SprintDurationType.custom) ??
          SprintDurationType.custom,
      durationName: json['duration_name'] as String?,
      storyPoints: json['story_points'] == null
          ? null
          : DlsTasksSprintStoryPoints.fromJson(
              json['story_points'] as Map<String, dynamic>),
      storyPointPlan: json['story_point_plan'] as int?,
      storyPointFact: json['story_point_fact'] as int?,
      tasksCount: json['tasks_count'] as int?,
      tasksDone: json['tasks_done'] as int?,
      performers: json['performers'] == null
          ? null
          : DlsTasksMembers.fromJson(
              json['performers'] as Map<String, dynamic>),
      user: json['user'] == null
          ? null
          : DlsTasksUser.fromJson(json['user'] as Map<String, dynamic>),
      tasks: (json['tasks'] as List<dynamic>?)
              ?.map((e) => DlsTasks.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      superTask: json['super_task'] == null
          ? null
          : DlsTasks.fromJson(json['super_task'] as Map<String, dynamic>),
      events: (json['events'] as List<dynamic>?)
              ?.map((e) => TaskEventModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      matrixRoom: json['matrix_room'] as String?,
    );

Map<String, dynamic> _$$_DlsSprintModelToJson(_$_DlsSprintModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'start_at': instance.startAt?.toIso8601String(),
      'expired_at': instance.expiredAt?.toIso8601String(),
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'status': _$SprintStatusEnumMap[instance.status]!,
      'status_name': instance.statusName,
      'duration': _$SprintDurationTypeEnumMap[instance.duration]!,
      'duration_name': instance.durationName,
      'story_points': instance.storyPoints,
      'story_point_plan': instance.storyPointPlan,
      'story_point_fact': instance.storyPointFact,
      'tasks_count': instance.tasksCount,
      'tasks_done': instance.tasksDone,
      'performers': instance.performers,
      'user': instance.user,
      'tasks': instance.tasks,
      'super_task': instance.superTask,
      'events': instance.events,
      'matrix_room': instance.matrixRoom,
    };

const _$SprintStatusEnumMap = {
  SprintStatus.newSprint: 1,
  SprintStatus.inProgress: 2,
  SprintStatus.finished: 3,
};

const _$SprintDurationTypeEnumMap = {
  SprintDurationType.oneWeek: 1,
  SprintDurationType.twoWeeks: 2,
  SprintDurationType.fourWeeks: 3,
  SprintDurationType.custom: 4,
};
