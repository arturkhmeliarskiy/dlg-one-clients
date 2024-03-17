// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notif_interval.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NotifInterval _$$_NotifIntervalFromJson(Map<String, dynamic> json) =>
    _$_NotifInterval(
      id: json['id'] as String,
      start: const TimeOfDayConverter().fromJson(json['start'] as String),
      end: const TimeOfDayConverter().fromJson(json['end'] as String),
    );

Map<String, dynamic> _$$_NotifIntervalToJson(_$_NotifInterval instance) =>
    <String, dynamic>{
      'id': instance.id,
      'start': const TimeOfDayConverter().toJson(instance.start),
      'end': const TimeOfDayConverter().toJson(instance.end),
    };
