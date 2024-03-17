// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_events_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetEventsRequest _$$_GetEventsRequestFromJson(Map<String, dynamic> json) =>
    _$_GetEventsRequest(
      page: json['page'] as int?,
      limit: json['limit'] as int?,
      filter: json['filter'] as String?,
      calendarStartDate: _$JsonConverterFromJson<String, DateTime>(
          json['calendar_start_date'], const DateTimeConverter().fromJson),
      calendarEndDate: _$JsonConverterFromJson<String, DateTime>(
          json['calendar_end_date'], const DateTimeConverter().fromJson),
    );

Map<String, dynamic> _$$_GetEventsRequestToJson(_$_GetEventsRequest instance) =>
    <String, dynamic>{
      'page': instance.page,
      'limit': instance.limit,
      'filter': instance.filter,
      'calendar_start_date': _$JsonConverterToJson<String, DateTime>(
          instance.calendarStartDate, const DateTimeConverter().toJson),
      'calendar_end_date': _$JsonConverterToJson<String, DateTime>(
          instance.calendarEndDate, const DateTimeConverter().toJson),
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
