// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dls_pagination_meta.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DlsPaginationMeta _$$_DlsPaginationMetaFromJson(Map<String, dynamic> json) =>
    _$_DlsPaginationMeta(
      currentPage: json['current_page'] as int?,
      from: json['from'] as int?,
      lastPage: json['last_page'] as int?,
      path: json['path'] as String?,
      perPage: json['per_page'] as int?,
      to: json['to'] as int?,
      total: json['total'] as int?,
    );

Map<String, dynamic> _$$_DlsPaginationMetaToJson(
        _$_DlsPaginationMeta instance) =>
    <String, dynamic>{
      'current_page': instance.currentPage,
      'from': instance.from,
      'last_page': instance.lastPage,
      'path': instance.path,
      'per_page': instance.perPage,
      'to': instance.to,
      'total': instance.total,
    };
