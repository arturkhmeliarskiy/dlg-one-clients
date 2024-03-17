// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dls_file_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DlsFileData _$$_DlsFileDataFromJson(Map<String, dynamic> json) =>
    _$_DlsFileData(
      id: json['id'] as int?,
      name: json['name'] as String?,
      originalName: json['original_name'] as String?,
      extension: json['extension'] as String?,
      size: json['size'] as String?,
      path: json['path'] as String?,
      mime: json['mime'] as String?,
    );

Map<String, dynamic> _$$_DlsFileDataToJson(_$_DlsFileData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'original_name': instance.originalName,
      'extension': instance.extension,
      'size': instance.size,
      'path': instance.path,
      'mime': instance.mime,
    };
