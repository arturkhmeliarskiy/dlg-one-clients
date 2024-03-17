// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_event_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TaskEventModel _$$_TaskEventModelFromJson(Map<String, dynamic> json) =>
    _$_TaskEventModel(
      id: json['id'] as int,
      title: json['title'] as String,
      type: $enumDecode(_$TaskEventTypeEnumMap, json['type']),
      description: json['description'] as String?,
      location: json['location'] as String?,
      startAt: _$JsonConverterFromJson<String, DateTime>(
          json['start_at'], const DateTimeConverter().fromJson),
      endAt: _$JsonConverterFromJson<String, DateTime>(
          json['end_at'], const DateTimeConverter().fromJson),
      isAllDay: json['is_all_day'] as bool?,
      isInviteOthers: json['is_invite_others'] as bool?,
      notificationType: $enumDecodeNullable(
          _$EventNotificationTypeEnumMap, json['notification_type']),
      members: (json['members'] as List<dynamic>?)
          ?.map((e) => DlsUserShort.fromJson(e as Map<String, dynamic>))
          .toList(),
      fileIds:
          (json['file_ids'] as List<dynamic>?)?.map((e) => e as int).toList(),
      task: json['task'] == null
          ? null
          : DlsTasks.fromJson(json['task'] as Map<String, dynamic>),
      series: json['series'] == null
          ? null
          : SeriesRepeatEventModel.fromJson(
              json['series'] as Map<String, dynamic>),
      repeat: json['repeat'] == null
          ? null
          : RepeatEventModel.fromJson(json['repeat'] as Map<String, dynamic>),
      files: (json['files'] as List<dynamic>?)
          ?.map((e) => DlsFileData.fromJson(e as Map<String, dynamic>))
          .toList(),
      user: json['user'] == null
          ? null
          : DLSUser.fromJson(json['user'] as Map<String, dynamic>),
      matrixRoom: json['matrix_room'] as String?,
    );

Map<String, dynamic> _$$_TaskEventModelToJson(_$_TaskEventModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'type': _$TaskEventTypeEnumMap[instance.type]!,
      'description': instance.description,
      'location': instance.location,
      'start_at': _$JsonConverterToJson<String, DateTime>(
          instance.startAt, const DateTimeConverter().toJson),
      'end_at': _$JsonConverterToJson<String, DateTime>(
          instance.endAt, const DateTimeConverter().toJson),
      'is_all_day': instance.isAllDay,
      'is_invite_others': instance.isInviteOthers,
      'notification_type':
          _$EventNotificationTypeEnumMap[instance.notificationType],
      'members': instance.members,
      'file_ids': instance.fileIds,
      'task': instance.task,
      'series': instance.series,
      'repeat': instance.repeat,
      'files': instance.files,
      'user': instance.user,
      'matrix_room': instance.matrixRoom,
    };

const _$TaskEventTypeEnumMap = {
  TaskEventType.online: 1,
  TaskEventType.offline: 2,
};

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

const _$EventNotificationTypeEnumMap = {
  EventNotificationType.min15: 1,
  EventNotificationType.min30: 2,
  EventNotificationType.hour1: 3,
};

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
