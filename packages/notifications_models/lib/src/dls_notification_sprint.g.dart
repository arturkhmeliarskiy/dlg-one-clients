// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dls_notification_sprint.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DLSNotificationSprint _$$_DLSNotificationSprintFromJson(
        Map<String, dynamic> json) =>
    _$_DLSNotificationSprint(
      uuid: json['uuid'] as String,
      name: json['name'] as String,
      status: $enumDecodeNullable(
          _$DLSNotificationObjectStatusEnumMap, json['status']),
      interval: (json['interval'] as List<dynamic>?)
          ?.map((e) => DateTime.parse(e as String))
          .toList(),
    );

Map<String, dynamic> _$$_DLSNotificationSprintToJson(
        _$_DLSNotificationSprint instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'name': instance.name,
      'status': _$DLSNotificationObjectStatusEnumMap[instance.status],
      'interval': instance.interval?.map((e) => e.toIso8601String()).toList(),
    };

const _$DLSNotificationObjectStatusEnumMap = {
  DLSNotificationObjectStatus.unknown: 'unknown',
  DLSNotificationObjectStatus.pending: 'pending',
  DLSNotificationObjectStatus.progress: 'progress',
  DLSNotificationObjectStatus.done: 'done',
};
