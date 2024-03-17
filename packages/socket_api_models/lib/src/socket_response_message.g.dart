// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'socket_response_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CallSocketResponseMessage _$$_CallSocketResponseMessageFromJson(
        Map<String, dynamic> json) =>
    _$_CallSocketResponseMessage(
      payload: Payload.fromJson(json['payload'] as Map<String, dynamic>),
      $type: json['state'] as String?,
    );

Map<String, dynamic> _$$_CallSocketResponseMessageToJson(
        _$_CallSocketResponseMessage instance) =>
    <String, dynamic>{
      'payload': instance.payload,
      'state': instance.$type,
    };

_$_NotificationSocketResponseMessage
    _$$_NotificationSocketResponseMessageFromJson(Map<String, dynamic> json) =>
        _$_NotificationSocketResponseMessage(
          notification: DLSNotification.fromJson(
              json['dls_notification_payload'] as Map<String, dynamic>),
          $type: json['state'] as String?,
        );

Map<String, dynamic> _$$_NotificationSocketResponseMessageToJson(
        _$_NotificationSocketResponseMessage instance) =>
    <String, dynamic>{
      'dls_notification_payload': instance.notification,
      'state': instance.$type,
    };

_$_OpenSocketResponseMessage _$$_OpenSocketResponseMessageFromJson(
        Map<String, dynamic> json) =>
    _$_OpenSocketResponseMessage(
      $type: json['state'] as String?,
    );

Map<String, dynamic> _$$_OpenSocketResponseMessageToJson(
        _$_OpenSocketResponseMessage instance) =>
    <String, dynamic>{
      'state': instance.$type,
    };

_$_InvalidSocketResponseMessage _$$_InvalidSocketResponseMessageFromJson(
        Map<String, dynamic> json) =>
    _$_InvalidSocketResponseMessage(
      $type: json['state'] as String?,
    );

Map<String, dynamic> _$$_InvalidSocketResponseMessageToJson(
        _$_InvalidSocketResponseMessage instance) =>
    <String, dynamic>{
      'state': instance.$type,
    };

_$_AuthRequestSocketResponseMessage
    _$$_AuthRequestSocketResponseMessageFromJson(Map<String, dynamic> json) =>
        _$_AuthRequestSocketResponseMessage(
          $type: json['state'] as String?,
        );

Map<String, dynamic> _$$_AuthRequestSocketResponseMessageToJson(
        _$_AuthRequestSocketResponseMessage instance) =>
    <String, dynamic>{
      'state': instance.$type,
    };

_$_AuthorizedSocketResponseMessage _$$_AuthorizedSocketResponseMessageFromJson(
        Map<String, dynamic> json) =>
    _$_AuthorizedSocketResponseMessage(
      $type: json['state'] as String?,
    );

Map<String, dynamic> _$$_AuthorizedSocketResponseMessageToJson(
        _$_AuthorizedSocketResponseMessage instance) =>
    <String, dynamic>{
      'state': instance.$type,
    };
