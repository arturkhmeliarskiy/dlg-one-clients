// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dls_tasks_file_element.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DlsTasksFileElement _$$_DlsTasksFileElementFromJson(
        Map<String, dynamic> json) =>
    _$_DlsTasksFileElement(
      id: json['id'] as int?,
      name: json['name'] as String?,
      originalName: json['original_name'] as String?,
      extension: json['extension'] as String?,
      size: json['size'] as String?,
      sort: json['sort'] as int?,
      description: json['description'] as String?,
      path: json['path'] as String?,
      mime: json['mime'] as String?,
      alt: json['alt'] as String?,
      hash: json['hash'] as String?,
      disk: json['disk'] as String?,
      userId: json['user_id'] as int?,
      group: json['group'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      deletedAt: json['deleted_at'] == null
          ? null
          : DateTime.parse(json['deleted_at'] as String),
      url: json['url'] as String?,
      relativeUrl: json['relativeUrl'] as String?,
    );

Map<String, dynamic> _$$_DlsTasksFileElementToJson(
        _$_DlsTasksFileElement instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'original_name': instance.originalName,
      'extension': instance.extension,
      'size': instance.size,
      'sort': instance.sort,
      'description': instance.description,
      'path': instance.path,
      'mime': instance.mime,
      'alt': instance.alt,
      'hash': instance.hash,
      'disk': instance.disk,
      'user_id': instance.userId,
      'group': instance.group,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'deleted_at': instance.deletedAt?.toIso8601String(),
      'url': instance.url,
      'relativeUrl': instance.relativeUrl,
    };
