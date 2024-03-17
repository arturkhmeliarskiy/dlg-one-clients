// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_checklist_create_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TasksChecklistCreateRequest _$$_TasksChecklistCreateRequestFromJson(
        Map<String, dynamic> json) =>
    _$_TasksChecklistCreateRequest(
      taskId: json['task_id'] as int,
      isChecked: json['is_checked'] as bool? ?? false,
      name: json['name'] as String? ?? '',
    );

Map<String, dynamic> _$$_TasksChecklistCreateRequestToJson(
        _$_TasksChecklistCreateRequest instance) =>
    <String, dynamic>{
      'task_id': instance.taskId,
      'is_checked': instance.isChecked,
      'name': instance.name,
    };
