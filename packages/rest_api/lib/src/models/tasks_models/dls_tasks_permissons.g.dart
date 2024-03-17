// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dls_tasks_permissons.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DlsTasksPermissions _$$_DlsTasksPermissionsFromJson(
        Map<String, dynamic> json) =>
    _$_DlsTasksPermissions(
      isEditTask: json['is_edit_task'] as bool?,
      isChangeStatus: json['is_change_status'] as bool?,
      isChangePriority: json['is_change_priority'] as bool?,
      isChangeExpiredAt: json['is_change_expired_at'] as bool?,
    );

Map<String, dynamic> _$$_DlsTasksPermissionsToJson(
        _$_DlsTasksPermissions instance) =>
    <String, dynamic>{
      'is_edit_task': instance.isEditTask,
      'is_change_status': instance.isChangeStatus,
      'is_change_priority': instance.isChangePriority,
      'is_change_expired_at': instance.isChangeExpiredAt,
    };
