// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_tag_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TaskTagModel _$$_TaskTagModelFromJson(Map<String, dynamic> json) =>
    _$_TaskTagModel(
      id: json['id'] as int,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      deletedAt: json['deleted_at'] == null
          ? null
          : DateTime.parse(json['deleted_at'] as String),
      userId: json['user_id'] as int?,
      status: $enumDecodeNullable(_$TaskTagTypeEnumMap, json['status'],
          unknownValue: TaskTagType.inactive),
      title: json['title'] as String? ?? '',
      description: json['description'] as String? ?? '',
    );

Map<String, dynamic> _$$_TaskTagModelToJson(_$_TaskTagModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'deleted_at': instance.deletedAt?.toIso8601String(),
      'user_id': instance.userId,
      'status': _$TaskTagTypeEnumMap[instance.status],
      'title': instance.title,
      'description': instance.description,
    };

const _$TaskTagTypeEnumMap = {
  TaskTagType.active: 1,
  TaskTagType.inactive: 2,
};
