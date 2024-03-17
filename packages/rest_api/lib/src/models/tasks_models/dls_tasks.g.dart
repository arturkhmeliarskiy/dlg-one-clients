// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dls_tasks.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DlsTasks _$$_DlsTasksFromJson(Map<String, dynamic> json) => _$_DlsTasks(
      id: json['id'] as int,
      createdAt: _$JsonConverterFromJson<String, DateTime>(
          json['created_at'], const DateTimeConverter().fromJson),
      updatedAt: _$JsonConverterFromJson<String, DateTime>(
          json['updated_at'], const DateTimeConverter().fromJson),
      expiredAt: _$JsonConverterFromJson<String, DateTime>(
          json['expired_at'], const DateTimeConverter().fromJson),
      deletedAt: _$JsonConverterFromJson<String, DateTime>(
          json['deleted_at'], const DateTimeConverter().fromJson),
      type: json['type'] as int?,
      status: $enumDecodeNullable(_$TaskStatusTypeEnumMap, json['status_id'],
          unknownValue: TaskStatusType.unknown),
      priority:
          $enumDecodeNullable(_$TaskPriorityTypeEnumMap, json['priority']),
      countSubTasks: json['count_sub_tasks'] as int?,
      countFiles: json['count_files'] as int?,
      title: json['title'] as String,
      description: json['description'] as String?,
      chatCommentId: json['chat_comment_id'] as int?,
      kanbanOrderBy: json['kanban_order_by'] as int?,
      templateId: json['template_id'] as int?,
      storyPoints: json['story_points'] as int?,
      slug: json['slug'] as String?,
      startAt: json['start_at'] == null
          ? null
          : DateTime.parse(json['start_at'] as String),
      duration: json['duration'] as int?,
      files: (json['files'] as List<dynamic>?)
          ?.map((e) => DlsTasksFileElement.fromJson(e as Map<String, dynamic>))
          .toList(),
      sprints: (json['sprints'] as List<dynamic>?)
          ?.map((e) => DlsSprintModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      checklist: (json['checklist'] as List<dynamic>?)
          ?.map((e) => DlsTasksChecklist.fromJson(e as Map<String, dynamic>))
          .toList(),
      comments: (json['comments'] as List<dynamic>?)
          ?.map((e) => DlsTasksComment.fromJson(e as Map<String, dynamic>))
          .toList(),
      events: (json['events'] as List<dynamic>?)
          ?.map((e) => TaskEventModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      tags: (json['tags'] as List<dynamic>?)
          ?.map((e) => TaskTagModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      parentTask: json['parent_task'] == null
          ? null
          : DlsTasks.fromJson(json['parent_task'] as Map<String, dynamic>),
      subTasks: (json['sub_tasks'] as List<dynamic>?)
          ?.map((e) => DlsTasks.fromJson(e as Map<String, dynamic>))
          .toList(),
      user: json['user'] == null
          ? null
          : DlsUserShort.fromJson(json['user'] as Map<String, dynamic>),
      performers: (json['performers'] as List<dynamic>?)
          ?.map((e) => DlsTasksPerformer.fromJson(e as Map<String, dynamic>))
          .toList(),
      roles: (json['roles'] as List<dynamic>?)
          ?.map((e) => DlsTasksRole.fromJson(e as Map<String, dynamic>))
          .toList(),
      permissions: json['permissions'] == null
          ? null
          : DlsTasksPermissions.fromJson(
              json['permissions'] as Map<String, dynamic>),
      isExpired: json['is_expired'] as bool?,
      isSubtask: json['is_subtask'] as bool?,
      isCheck: json['is_check'] as bool?,
      members: json['members'] == null
          ? null
          : DlsTasksMembers.fromJson(json['members'] as Map<String, dynamic>),
      priorityName: json['priority_name'] as String?,
      statusName: json['status_name'] as String?,
      nesting: json['nesting'] as int?,
      uniqueKey: json['unique_key'] as String?,
      depends: (json['depends'] as List<dynamic>?)
          ?.map((e) => DlsTasks.fromJson(e as Map<String, dynamic>))
          .toList(),
      blocks: (json['blocks'] as List<dynamic>?)
          ?.map((e) => DlsTasks.fromJson(e as Map<String, dynamic>))
          .toList(),
      matrixRoom: json['matrix_room'] as String?,
    );

Map<String, dynamic> _$$_DlsTasksToJson(_$_DlsTasks instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created_at': _$JsonConverterToJson<String, DateTime>(
          instance.createdAt, const DateTimeConverter().toJson),
      'updated_at': _$JsonConverterToJson<String, DateTime>(
          instance.updatedAt, const DateTimeConverter().toJson),
      'expired_at': _$JsonConverterToJson<String, DateTime>(
          instance.expiredAt, const DateTimeConverter().toJson),
      'deleted_at': _$JsonConverterToJson<String, DateTime>(
          instance.deletedAt, const DateTimeConverter().toJson),
      'type': instance.type,
      'status_id': _$TaskStatusTypeEnumMap[instance.status],
      'priority': _$TaskPriorityTypeEnumMap[instance.priority],
      'count_sub_tasks': instance.countSubTasks,
      'count_files': instance.countFiles,
      'title': instance.title,
      'description': instance.description,
      'chat_comment_id': instance.chatCommentId,
      'kanban_order_by': instance.kanbanOrderBy,
      'template_id': instance.templateId,
      'story_points': instance.storyPoints,
      'slug': instance.slug,
      'start_at': instance.startAt?.toIso8601String(),
      'duration': instance.duration,
      'files': instance.files,
      'sprints': instance.sprints,
      'checklist': instance.checklist,
      'comments': instance.comments,
      'events': instance.events,
      'tags': instance.tags,
      'parent_task': instance.parentTask,
      'sub_tasks': instance.subTasks,
      'user': instance.user,
      'performers': instance.performers,
      'roles': instance.roles,
      'permissions': instance.permissions,
      'is_expired': instance.isExpired,
      'is_subtask': instance.isSubtask,
      'is_check': instance.isCheck,
      'members': instance.members,
      'priority_name': instance.priorityName,
      'status_name': instance.statusName,
      'nesting': instance.nesting,
      'unique_key': instance.uniqueKey,
      'depends': instance.depends,
      'blocks': instance.blocks,
      'matrix_room': instance.matrixRoom,
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

const _$TaskStatusTypeEnumMap = {
  TaskStatusType.unknown: 0,
  TaskStatusType.draft: 1,
  TaskStatusType.inTheQueue: 2,
  TaskStatusType.atWork: 3,
  TaskStatusType.completed: 4,
};

const _$TaskPriorityTypeEnumMap = {
  TaskPriorityType.unknown: 'unknown',
  TaskPriorityType.veryLow: 0,
  TaskPriorityType.low: 1,
  TaskPriorityType.mid: 2,
  TaskPriorityType.high: 3,
  TaskPriorityType.veryHigh: 4,
};

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
