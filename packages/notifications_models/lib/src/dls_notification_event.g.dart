// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dls_notification_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DLSNotificationEvent _$$_DLSNotificationEventFromJson(
        Map<String, dynamic> json) =>
    _$_DLSNotificationEvent(
      uuid: json['uuid'] as String,
      name: json['name'] as String,
      timestamp: DateTime.parse(json['timestamp'] as String),
      place: json['place'] as String?,
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
      interval: (json['interval'] as List<dynamic>?)
          ?.map((e) => DateTime.parse(e as String))
          .toList(),
      format: $enumDecodeNullable(
          _$DLSNotificationEventFormatEnumMap, json['format']),
    );

Map<String, dynamic> _$$_DLSNotificationEventToJson(
        _$_DLSNotificationEvent instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'name': instance.name,
      'timestamp': instance.timestamp.toIso8601String(),
      'place': instance.place,
      'date': instance.date?.toIso8601String(),
      'interval': instance.interval?.map((e) => e.toIso8601String()).toList(),
      'format': _$DLSNotificationEventFormatEnumMap[instance.format],
    };

const _$DLSNotificationEventFormatEnumMap = {
  DLSNotificationEventFormat.unknown: 'unknown',
  DLSNotificationEventFormat.online: 'online',
  DLSNotificationEventFormat.offline: 'offline',
};
