// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_task_event_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CreateTaskEventRequest _$$_CreateTaskEventRequestFromJson(
        Map<String, dynamic> json) =>
    _$_CreateTaskEventRequest(
      title: json['title'] as String?,
      description: json['description'] as String?,
      type: $enumDecodeNullable(_$TaskEventTypeEnumMap, json['type']),
      location: json['location'] as String?,
      startAt: _$JsonConverterFromJson<String, DateTime>(
          json['start_at'], const DateTimeConverter().fromJson),
      endAt: _$JsonConverterFromJson<String, DateTime>(
          json['end_at'], const DateTimeConverter().fromJson),
      isAllDay: json['is_all_day'] as bool?,
      isInviteOthers: json['is_invite_others'] as bool?,
      notificationType: $enumDecodeNullable(
          _$EventNotificationTypeEnumMap, json['notification_type']),
      repeat: json['repeat'] == null
          ? null
          : RepeatEventModel.fromJson(json['repeat'] as Map<String, dynamic>),
      memberIds:
          (json['member_ids'] as List<dynamic>?)?.map((e) => e as int).toList(),
      sprintId: json['sprint_id'] as int?,
      taskId: json['task_id'] as int?,
      fileIds:
          (json['file_ids'] as List<dynamic>?)?.map((e) => e as int).toList(),
    );

Map<String, dynamic> _$$_CreateTaskEventRequestToJson(
    _$_CreateTaskEventRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('title', instance.title);
  writeNotNull('description', instance.description);
  writeNotNull('type', _$TaskEventTypeEnumMap[instance.type]);
  writeNotNull('location', instance.location);
  writeNotNull(
      'start_at',
      _$JsonConverterToJson<String, DateTime>(
          instance.startAt, const DateTimeConverter().toJson));
  writeNotNull(
      'end_at',
      _$JsonConverterToJson<String, DateTime>(
          instance.endAt, const DateTimeConverter().toJson));
  writeNotNull('is_all_day', instance.isAllDay);
  writeNotNull('is_invite_others', instance.isInviteOthers);
  writeNotNull('notification_type',
      _$EventNotificationTypeEnumMap[instance.notificationType]);
  writeNotNull('repeat', instance.repeat);
  writeNotNull('member_ids', instance.memberIds);
  writeNotNull('sprint_id', instance.sprintId);
  writeNotNull('task_id', instance.taskId);
  writeNotNull('file_ids', instance.fileIds);
  return val;
}

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
