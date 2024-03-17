// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dls_tasks_all.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DlsTasksAll _$$_DlsTasksAllFromJson(Map<String, dynamic> json) =>
    _$_DlsTasksAll(
      currentPage: json['current_page'] as int?,
      tasks: (json['data'] as List<dynamic>)
          .map((e) => DlsTasks.fromJson(e as Map<String, dynamic>))
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

Map<String, dynamic> _$$_DlsTasksAllToJson(_$_DlsTasksAll instance) =>
    <String, dynamic>{
      'current_page': instance.currentPage,
      'data': instance.tasks,
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
