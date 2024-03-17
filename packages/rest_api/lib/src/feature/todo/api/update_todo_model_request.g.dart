// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_todo_model_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UpdateTodoModelRequestl _$$_UpdateTodoModelRequestlFromJson(
        Map<String, dynamic> json) =>
    _$_UpdateTodoModelRequestl(
      title: json['title'] as String,
      description: json['description'] as String?,
      status: $enumDecode(_$TodoStatusEnumMap, json['status']),
      isFullDay: json['is_all_day'] as bool,
      startTime: _$JsonConverterFromJson<String, DateTime>(
          json['start_at'], const DateTimeConverter().fromJson),
      endTime: _$JsonConverterFromJson<String, DateTime>(
          json['expired_at'], const DateTimeConverter().fromJson),
    );

Map<String, dynamic> _$$_UpdateTodoModelRequestlToJson(
    _$_UpdateTodoModelRequestl instance) {
  final val = <String, dynamic>{
    'title': instance.title,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('description', instance.description);
  val['status'] = _$TodoStatusEnumMap[instance.status]!;
  val['is_all_day'] = instance.isFullDay;
  writeNotNull(
      'start_at',
      _$JsonConverterToJson<String, DateTime>(
          instance.startTime, const DateTimeConverter().toJson));
  writeNotNull(
      'expired_at',
      _$JsonConverterToJson<String, DateTime>(
          instance.endTime, const DateTimeConverter().toJson));
  return val;
}

const _$TodoStatusEnumMap = {
  TodoStatus.processing: 1,
  TodoStatus.completed: 0,
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
