// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dls_task.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DlsTask _$$_DlsTaskFromJson(Map<String, dynamic> json) => _$_DlsTask(
      title: json['title'] as String?,
      description: json['description'] as String?,
      type: json['type'] as int?,
      startAt: json['start_at'] == null
          ? null
          : DateTime.parse(json['start_at'] as String),
      expiredAt: json['expired_at'] == null
          ? null
          : DateTime.parse(json['expired_at'] as String),
      status: $enumDecodeNullable(_$TaskStatusTypeEnumMap, json['status_id'],
          unknownValue: TaskStatusType.unknown),
      priority:
          $enumDecodeNullable(_$TaskPriorityTypeEnumMap, json['priority']),
      chatCommentId: json['chat_comment_id'] as int?,
      templateId: json['template_id'] as int?,
      sprintId: json['sprint_id'] as int?,
      parentId: json['parent_id'] as int?,
      isAttachSprint: json['is_attach_sprint'] as bool?,
      storyPoints: json['story_points'] as int?,
      duration: json['duration'] as int?,
      tags: (json['tags'] as List<dynamic>?)?.map((e) => e as int).toList(),
      subTasks:
          (json['sub_tasks'] as List<dynamic>?)?.map((e) => e as int).toList(),
      depends:
          (json['depends'] as List<dynamic>?)?.map((e) => e as int).toList(),
      blocks: (json['blocks'] as List<dynamic>?)?.map((e) => e as int).toList(),
      events: (json['events'] as List<dynamic>?)?.map((e) => e as int).toList(),
      sprints:
          (json['sprints'] as List<dynamic>?)?.map((e) => e as int).toList(),
      filesIds:
          (json['files_ids'] as List<dynamic>?)?.map((e) => e as int).toList(),
      members: json['members'] == null
          ? null
          : DlsMembers.fromJson(json['members'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_DlsTaskToJson(_$_DlsTask instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('title', instance.title);
  writeNotNull('description', instance.description);
  writeNotNull('type', instance.type);
  writeNotNull('start_at', instance.startAt?.toIso8601String());
  writeNotNull('expired_at', instance.expiredAt?.toIso8601String());
  writeNotNull('status_id', _$TaskStatusTypeEnumMap[instance.status]);
  writeNotNull('priority', _$TaskPriorityTypeEnumMap[instance.priority]);
  writeNotNull('chat_comment_id', instance.chatCommentId);
  writeNotNull('template_id', instance.templateId);
  writeNotNull('sprint_id', instance.sprintId);
  writeNotNull('parent_id', instance.parentId);
  writeNotNull('is_attach_sprint', instance.isAttachSprint);
  writeNotNull('story_points', instance.storyPoints);
  writeNotNull('duration', instance.duration);
  writeNotNull('tags', instance.tags);
  writeNotNull('sub_tasks', instance.subTasks);
  writeNotNull('depends', instance.depends);
  writeNotNull('blocks', instance.blocks);
  writeNotNull('events', instance.events);
  writeNotNull('sprints', instance.sprints);
  writeNotNull('files_ids', instance.filesIds);
  writeNotNull('members', instance.members);
  return val;
}

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
