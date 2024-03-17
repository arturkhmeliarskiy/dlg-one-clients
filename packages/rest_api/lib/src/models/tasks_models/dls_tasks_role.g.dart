// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dls_tasks_role.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DlsTasksRole _$$_DlsTasksRoleFromJson(Map<String, dynamic> json) =>
    _$_DlsTasksRole(
      role: $enumDecodeNullable(_$TaskRolesTypeEnumMap, json['id'],
          unknownValue: TaskRolesType.unknown),
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$_DlsTasksRoleToJson(_$_DlsTasksRole instance) =>
    <String, dynamic>{
      'id': _$TaskRolesTypeEnumMap[instance.role],
      'name': instance.name,
    };

const _$TaskRolesTypeEnumMap = {
  TaskRolesType.unknown: 'unknown',
  TaskRolesType.viewing: 0,
  TaskRolesType.executor: 1,
  TaskRolesType.author: 2,
  TaskRolesType.responsible: 3,
  TaskRolesType.observer: 4,
};
