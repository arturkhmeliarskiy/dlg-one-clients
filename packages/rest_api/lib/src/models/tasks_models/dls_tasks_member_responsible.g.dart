// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dls_tasks_member_responsible.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DlsTasksResponsible _$$_DlsTasksResponsibleFromJson(
        Map<String, dynamic> json) =>
    _$_DlsTasksResponsible(
      roleCode: json['role_code'] as int?,
      roleName: json['role_name'] as String?,
      id: json['id'] as int?,
      name: json['name'] as String?,
      nameSurname: json['name_surname'] as String?,
      avatar: json['avatar'] as String?,
    );

Map<String, dynamic> _$$_DlsTasksResponsibleToJson(
        _$_DlsTasksResponsible instance) =>
    <String, dynamic>{
      'role_code': instance.roleCode,
      'role_name': instance.roleName,
      'id': instance.id,
      'name': instance.name,
      'name_surname': instance.nameSurname,
      'avatar': instance.avatar,
    };
