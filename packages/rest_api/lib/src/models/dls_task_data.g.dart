// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dls_task_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DlsTaskData _$$_DlsTaskDataFromJson(Map<String, dynamic> json) =>
    _$_DlsTaskData(
      over_tasks: (json['over_tasks'] as List<dynamic>?)
          ?.map((e) => SubTaskData.fromJson(e as Map<String, dynamic>))
          .toList(),
      subtasks: (json['subtasks'] as List<dynamic>?)
          ?.map((e) => SubTaskData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_DlsTaskDataToJson(_$_DlsTaskData instance) =>
    <String, dynamic>{
      'over_tasks': instance.over_tasks,
      'subtasks': instance.subtasks,
    };
