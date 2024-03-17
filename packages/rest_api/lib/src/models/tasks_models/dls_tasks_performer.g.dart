// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dls_tasks_performer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DlsTasksPerformer _$$_DlsTasksPerformerFromJson(Map<String, dynamic> json) =>
    _$_DlsTasksPerformer(
      id: json['id'] as int?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      taskId: json['task_id'] as int?,
      userId: json['user_id'] as int?,
      userName: json['user_name'] as String?,
      role: json['role'] as int?,
    );

Map<String, dynamic> _$$_DlsTasksPerformerToJson(
        _$_DlsTasksPerformer instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'task_id': instance.taskId,
      'user_id': instance.userId,
      'user_name': instance.userName,
      'role': instance.role,
    };
