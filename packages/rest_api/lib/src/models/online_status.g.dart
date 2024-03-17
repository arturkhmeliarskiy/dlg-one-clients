// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'online_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OnlineStatus _$$_OnlineStatusFromJson(Map<String, dynamic> json) =>
    _$_OnlineStatus(
      id: json['id'] as String,
      lastActive: json['last_active'] == null
          ? null
          : DateTime.parse(json['last_active'] as String),
      isOnline: json['is_online'] as bool,
    );

Map<String, dynamic> _$$_OnlineStatusToJson(_$_OnlineStatus instance) =>
    <String, dynamic>{
      'id': instance.id,
      'last_active': instance.lastActive?.toIso8601String(),
      'is_online': instance.isOnline,
    };
