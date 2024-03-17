// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repeat_event_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RepeatEventModel _$$_RepeatEventModelFromJson(Map<String, dynamic> json) =>
    _$_RepeatEventModel(
      repeatType: $enumDecode(_$EventRepeatTypeEnumMap, json['repeat_type'],
          unknownValue: EventRepeatType.unknown),
      calendarId: json['calendar_id'] as int?,
      repeatTill: _$JsonConverterFromJson<String, DateTime>(
          json['repeat_till'], const DateTimeConverter().fromJson),
      days: (json['days'] as List<dynamic>?)?.map((e) => e as int).toList(),
      weekOfMonth: json['week_of_month'] as int?,
    );

Map<String, dynamic> _$$_RepeatEventModelToJson(_$_RepeatEventModel instance) {
  final val = <String, dynamic>{
    'repeat_type': _$EventRepeatTypeEnumMap[instance.repeatType]!,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('calendar_id', instance.calendarId);
  writeNotNull(
      'repeat_till',
      _$JsonConverterToJson<String, DateTime>(
          instance.repeatTill, const DateTimeConverter().toJson));
  writeNotNull('days', instance.days);
  writeNotNull('week_of_month', instance.weekOfMonth);
  return val;
}

const _$EventRepeatTypeEnumMap = {
  EventRepeatType.day: 1,
  EventRepeatType.week: 2,
  EventRepeatType.month: 3,
  EventRepeatType.unknown: 'unknown',
};

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
