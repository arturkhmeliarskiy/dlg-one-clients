// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dls_paginated_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DlsPaginatedResponse<T> _$$_DlsPaginatedResponseFromJson<T extends Object?>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _$_DlsPaginatedResponse<T>(
      data: (json['data'] as List<dynamic>).map(fromJsonT).toList(),
      links: json['links'] == null
          ? null
          : DlsPaginationLinks.fromJson(json['links'] as Map<String, dynamic>),
      meta: json['meta'] == null
          ? null
          : DlsPaginationMeta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_DlsPaginatedResponseToJson<T extends Object?>(
  _$_DlsPaginatedResponse<T> instance,
  Object? Function(T value) toJsonT,
) {
  final val = <String, dynamic>{
    'data': instance.data.map(toJsonT).toList(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('links', instance.links);
  writeNotNull('meta', instance.meta);
  return val;
}
