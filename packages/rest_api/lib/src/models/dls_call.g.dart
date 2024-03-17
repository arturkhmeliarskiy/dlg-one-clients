// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dls_call.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DLSCall _$$_DLSCallFromJson(Map<String, dynamic> json) => _$_DLSCall(
      asteriskRoom: json['asterisk_room'] as int?,
      matrixRoom: json['matrix_room'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      createdBy: json['created_by'] as int?,
    );

Map<String, dynamic> _$$_DLSCallToJson(_$_DLSCall instance) =>
    <String, dynamic>{
      'asterisk_room': instance.asteriskRoom,
      'matrix_room': instance.matrixRoom,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'created_by': instance.createdBy,
    };
