// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'push_token.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PushToken _$$_PushTokenFromJson(Map<String, dynamic> json) => _$_PushToken(
      token: json['token'] as String,
      active: json['active'] as bool,
      platformType: $enumDecodeNullable(
          _$DlsPlatformNotificationTypeEnumMap, json['platform_type']),
      id: json['id'] as int?,
      dlsId: json['user_id'] as int?,
    );

Map<String, dynamic> _$$_PushTokenToJson(_$_PushToken instance) =>
    <String, dynamic>{
      'token': instance.token,
      'active': instance.active,
      'platform_type':
          _$DlsPlatformNotificationTypeEnumMap[instance.platformType],
      'id': instance.id,
      'user_id': instance.dlsId,
    };

const _$DlsPlatformNotificationTypeEnumMap = {
  DlsPlatformNotificationType.web: 'web',
  DlsPlatformNotificationType.macOS: 'macOS',
  DlsPlatformNotificationType.android: 'android',
  DlsPlatformNotificationType.ios: 'ios',
  DlsPlatformNotificationType.socket: 'socket',
};
