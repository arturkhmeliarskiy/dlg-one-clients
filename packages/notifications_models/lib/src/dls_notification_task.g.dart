// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dls_notification_task.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DLSNotificationTask _$$_DLSNotificationTaskFromJson(
        Map<String, dynamic> json) =>
    _$_DLSNotificationTask(
      uuid: json['uuid'] as String,
      name: json['name'] as String,
      timestamp: DateTime.parse(json['timestamp'] as String),
      status: $enumDecodeNullable(
          _$DLSNotificationObjectStatusEnumMap, json['status']),
      priority: $enumDecodeNullable(
          _$DLSNotificationObjectPriorityEnumMap, json['priority']),
      deadline: json['deadline'] == null
          ? null
          : DateTime.parse(json['deadline'] as String),
      isLocked: json['isLocked'] as bool?,
      watchers: (json['watchers'] as List<dynamic>?)
          ?.map((e) => DLSNotificationUser.fromJson(e as Map<String, dynamic>))
          .toList(),
      sprints: (json['sprints'] as List<dynamic>?)
          ?.map(
              (e) => DLSNotificationSprint.fromJson(e as Map<String, dynamic>))
          .toList(),
      events: (json['events'] as List<dynamic>?)
          ?.map((e) => DLSNotificationEvent.fromJson(e as Map<String, dynamic>))
          .toList(),
      childTasks: (json['childTasks'] as List<dynamic>?)
          ?.map((e) => DLSNotificationTask.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_DLSNotificationTaskToJson(
        _$_DLSNotificationTask instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'name': instance.name,
      'timestamp': instance.timestamp.toIso8601String(),
      'status': _$DLSNotificationObjectStatusEnumMap[instance.status],
      'priority': _$DLSNotificationObjectPriorityEnumMap[instance.priority],
      'deadline': instance.deadline?.toIso8601String(),
      'isLocked': instance.isLocked,
      'watchers': instance.watchers,
      'sprints': instance.sprints,
      'events': instance.events,
      'childTasks': instance.childTasks,
    };

const _$DLSNotificationObjectStatusEnumMap = {
  DLSNotificationObjectStatus.unknown: 'unknown',
  DLSNotificationObjectStatus.pending: 'pending',
  DLSNotificationObjectStatus.progress: 'progress',
  DLSNotificationObjectStatus.done: 'done',
};

const _$DLSNotificationObjectPriorityEnumMap = {
  DLSNotificationObjectPriority.unknown: 'unknown',
  DLSNotificationObjectPriority.critical: 'critical',
  DLSNotificationObjectPriority.high: 'high',
  DLSNotificationObjectPriority.middle: 'middle',
  DLSNotificationObjectPriority.low: 'low',
  DLSNotificationObjectPriority.veryLow: 'veryLow',
};
