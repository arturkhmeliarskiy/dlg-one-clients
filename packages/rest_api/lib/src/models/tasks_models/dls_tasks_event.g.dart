// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dls_tasks_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DlsTasksEvent _$$_DlsTasksEventFromJson(Map<String, dynamic> json) =>
    _$_DlsTasksEvent(
      id: json['id'] as int?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      deletedAt: json['deleted_at'] == null
          ? null
          : DateTime.parse(json['deleted_at'] as String),
      userId: json['user_id'] as int?,
      type: json['type'] as int?,
      isAllDay: json['is_all_day'] as bool?,
      isInviteOthers: json['is_invite_others'] as bool?,
      notificationType: json['notification_type'] as int?,
      replyType: json['reply_type'] as int?,
      isMon: json['is_mon'] as int?,
      isTue: json['is_tue'] as int?,
      isWed: json['is_wed'] as int?,
      isThur: json['is_thur'] as int?,
      isFri: json['is_fri'] as int?,
      isSat: json['is_sat'] as int?,
      isSun: json['is_sun'] as int?,
    );

Map<String, dynamic> _$$_DlsTasksEventToJson(_$_DlsTasksEvent instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'deleted_at': instance.deletedAt?.toIso8601String(),
      'user_id': instance.userId,
      'type': instance.type,
      'is_all_day': instance.isAllDay,
      'is_invite_others': instance.isInviteOthers,
      'notification_type': instance.notificationType,
      'reply_type': instance.replyType,
      'is_mon': instance.isMon,
      'is_tue': instance.isTue,
      'is_wed': instance.isWed,
      'is_thur': instance.isThur,
      'is_fri': instance.isFri,
      'is_sat': instance.isSat,
      'is_sun': instance.isSun,
    };
