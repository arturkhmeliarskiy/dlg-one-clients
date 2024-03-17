// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dls_tasks_member_observers.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DlsTasksObservers _$$_DlsTasksObserversFromJson(Map<String, dynamic> json) =>
    _$_DlsTasksObservers(
      roleCode: json['role_code'] as int?,
      roleName: json['role_name'] as String?,
      id: json['id'] as int?,
      name: json['name'] as String?,
      nameSurname: json['name_surname'] as String?,
      avatar: json['avatar'] as String?,
    );

Map<String, dynamic> _$$_DlsTasksObserversToJson(
        _$_DlsTasksObservers instance) =>
    <String, dynamic>{
      'role_code': instance.roleCode,
      'role_name': instance.roleName,
      'id': instance.id,
      'name': instance.name,
      'name_surname': instance.nameSurname,
      'avatar': instance.avatar,
    };
