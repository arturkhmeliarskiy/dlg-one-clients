// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notifications_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NotificationsSettings _$$_NotificationsSettingsFromJson(
        Map<String, dynamic> json) =>
    _$_NotificationsSettings(
      enabled: json['enabled'] as bool?,
      scheduleEnabled: json['schedule_enabled'] as bool?,
      schedule: json['schedule'] == null
          ? null
          : NotifSchedule.fromJson(json['schedule'] as Map<String, dynamic>),
      intervals: (json['intervals'] as List<dynamic>?)
          ?.map((e) => NotifInterval.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_NotificationsSettingsToJson(
        _$_NotificationsSettings instance) =>
    <String, dynamic>{
      'enabled': instance.enabled,
      'schedule_enabled': instance.scheduleEnabled,
      'schedule': instance.schedule,
      'intervals': instance.intervals,
    };
