// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dls_tasks_members.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DlsTasksMembers _$$_DlsTasksMembersFromJson(Map<String, dynamic> json) =>
    _$_DlsTasksMembers(
      executors: (json['executors'] as List<dynamic>?)
          ?.map((e) => DlsTasksExecutors.fromJson(e as Map<String, dynamic>))
          .toList(),
      responsible: (json['responsible'] as List<dynamic>?)
          ?.map((e) => DlsTasksExecutors.fromJson(e as Map<String, dynamic>))
          .toList(),
      observers: (json['observers'] as List<dynamic>?)
          ?.map((e) => DlsTasksExecutors.fromJson(e as Map<String, dynamic>))
          .toList(),
      authors: (json['authors'] as List<dynamic>?)
          ?.map((e) => DlsTasksExecutors.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_DlsTasksMembersToJson(_$_DlsTasksMembers instance) =>
    <String, dynamic>{
      'executors': instance.executors,
      'responsible': instance.responsible,
      'observers': instance.observers,
      'authors': instance.authors,
    };
