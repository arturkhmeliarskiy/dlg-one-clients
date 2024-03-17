// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dls_members_all.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DlsMembersAll _$$_DlsMembersAllFromJson(Map<String, dynamic> json) =>
    _$_DlsMembersAll(
      currentPage: json['current_page'] as int?,
      members: (json['data'] as List<dynamic>)
          .map((e) => DlsTasksExecutors.fromJson(e as Map<String, dynamic>))
          .toList(),
      firstPageUrl: json['first_page_url'] as String?,
      from: json['from'] as int?,
      lastPage: json['last_page'] as int?,
      lastPageUrl: json['last_page_url'] as String?,
      links: json['links'] == null
          ? null
          : DlsTasksLink.fromJson(json['links'] as Map<String, dynamic>),
      nextPageUrl: json['next_page_url'] as String?,
      path: json['path'] as String?,
      perPage: json['per_page'] as int?,
      prevPageUrl: json['prev_page_url'] as String?,
      to: json['to'] as int?,
      total: json['total'] as int?,
    );

Map<String, dynamic> _$$_DlsMembersAllToJson(_$_DlsMembersAll instance) =>
    <String, dynamic>{
      'current_page': instance.currentPage,
      'data': instance.members,
      'first_page_url': instance.firstPageUrl,
      'from': instance.from,
      'last_page': instance.lastPage,
      'last_page_url': instance.lastPageUrl,
      'links': instance.links,
      'next_page_url': instance.nextPageUrl,
      'path': instance.path,
      'per_page': instance.perPage,
      'prev_page_url': instance.prevPageUrl,
      'to': instance.to,
      'total': instance.total,
    };
