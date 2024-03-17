// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dls_notification_chat.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DLSNotificationChat _$$_DLSNotificationChatFromJson(
        Map<String, dynamic> json) =>
    _$_DLSNotificationChat(
      uuid: json['uuid'] as String,
      name: json['name'] as String,
      timestamp: DateTime.parse(json['timestamp'] as String),
    );

Map<String, dynamic> _$$_DLSNotificationChatToJson(
        _$_DLSNotificationChat instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'name': instance.name,
      'timestamp': instance.timestamp.toIso8601String(),
    };
