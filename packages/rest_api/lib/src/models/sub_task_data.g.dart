// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sub_task_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SubTaskData _$$_SubTaskDataFromJson(Map<String, dynamic> json) =>
    _$_SubTaskData(
      id: json['id'] as int?,
      title: json['title'] as String?,
      paperclip: json['paperclip'] as int?,
      status: json['status'] as String?,
      avatar: json['avatar'] as String?,
      hierarchy: json['hierarchy'] as int?,
      state: json['state'] as String?,
      deadline: json['deadline'] as String?,
    );

Map<String, dynamic> _$$_SubTaskDataToJson(_$_SubTaskData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'paperclip': instance.paperclip,
      'status': instance.status,
      'avatar': instance.avatar,
      'hierarchy': instance.hierarchy,
      'state': instance.state,
      'deadline': instance.deadline,
    };
