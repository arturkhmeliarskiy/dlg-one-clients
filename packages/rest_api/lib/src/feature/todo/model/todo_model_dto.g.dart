// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_model_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TodoModelDTO _$$_TodoModelDTOFromJson(Map<String, dynamic> json) =>
    _$_TodoModelDTO(
      id: json['id'] as int,
      userId: json['user_id'] as String?,
      createTime: _$JsonConverterFromJson<String, DateTime>(
          json['created_at'], const DateTimeConverter().fromJson),
      updateTime: _$JsonConverterFromJson<String, DateTime>(
          json['updated_at'], const DateTimeConverter().fromJson),
      deleteTime: _$JsonConverterFromJson<String, DateTime>(
          json['deleted_at'], const DateTimeConverter().fromJson),
      status: $enumDecode(_$TodoStatusEnumMap, json['status']),
      title: json['title'] as String,
      description: json['description'] as String?,
      startTime: _$JsonConverterFromJson<String, DateTime>(
          json['start_at'], const DateTimeConverter().fromJson),
      expireTime: _$JsonConverterFromJson<String, DateTime>(
          json['expired_at'], const DateTimeConverter().fromJson),
      isFullDay: json['is_all_day'] as bool,
      owner: json['owner'] == null
          ? null
          : DLSUser.fromJson(json['owner'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_TodoModelDTOToJson(_$_TodoModelDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'created_at': _$JsonConverterToJson<String, DateTime>(
          instance.createTime, const DateTimeConverter().toJson),
      'updated_at': _$JsonConverterToJson<String, DateTime>(
          instance.updateTime, const DateTimeConverter().toJson),
      'deleted_at': _$JsonConverterToJson<String, DateTime>(
          instance.deleteTime, const DateTimeConverter().toJson),
      'status': _$TodoStatusEnumMap[instance.status]!,
      'title': instance.title,
      'description': instance.description,
      'start_at': _$JsonConverterToJson<String, DateTime>(
          instance.startTime, const DateTimeConverter().toJson),
      'expired_at': _$JsonConverterToJson<String, DateTime>(
          instance.expireTime, const DateTimeConverter().toJson),
      'is_all_day': instance.isFullDay,
      'owner': instance.owner,
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

const _$TodoStatusEnumMap = {
  TodoStatus.processing: 1,
  TodoStatus.completed: 0,
};

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
