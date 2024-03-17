// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dls_tasks_comment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DlsTasksComment _$$_DlsTasksCommentFromJson(Map<String, dynamic> json) =>
    _$_DlsTasksComment(
      id: json['id'] as int?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      deletedAt: json['deleted_at'] == null
          ? null
          : DateTime.parse(json['deleted_at'] as String),
      userId: json['user_id'] as int?,
      taskId: json['task_id'] as int?,
      parentId: json['parent_id'] as int?,
      textComment: json['text_comment'] as String?,
    );

Map<String, dynamic> _$$_DlsTasksCommentToJson(_$_DlsTasksComment instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'deleted_at': instance.deletedAt?.toIso8601String(),
      'user_id': instance.userId,
      'task_id': instance.taskId,
      'parent_id': instance.parentId,
      'text_comment': instance.textComment,
    };
