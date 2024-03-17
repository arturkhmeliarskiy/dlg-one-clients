// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dls_search_resp.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DLSSearchResp _$$_DLSSearchRespFromJson(Map<String, dynamic> json) =>
    _$_DLSSearchResp(
      links: json['links'] == null
          ? null
          : DlsPaginationLinks.fromJson(json['links'] as Map<String, dynamic>),
      meta: json['meta'] == null
          ? null
          : DlsPaginationMeta.fromJson(json['meta'] as Map<String, dynamic>),
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => DLSUser.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_DLSSearchRespToJson(_$_DLSSearchResp instance) =>
    <String, dynamic>{
      'links': instance.links,
      'meta': instance.meta,
      'data': instance.data,
    };
