// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dls_notification_platform_helper.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DLSNotificationPlatformHelper _$$_DLSNotificationPlatformHelperFromJson(
        Map<String, dynamic> json) =>
    _$_DLSNotificationPlatformHelper(
      platform: $enumDecodeNullable(
          _$DlsPlatformNotificationTypeEnumMap, json['platform_type']),
    );

Map<String, dynamic> _$$_DLSNotificationPlatformHelperToJson(
        _$_DLSNotificationPlatformHelper instance) =>
    <String, dynamic>{
      'platform_type': _$DlsPlatformNotificationTypeEnumMap[instance.platform],
    };

const _$DlsPlatformNotificationTypeEnumMap = {
  DlsPlatformNotificationType.web: 'web',
  DlsPlatformNotificationType.macOS: 'macOS',
  DlsPlatformNotificationType.android: 'android',
  DlsPlatformNotificationType.ios: 'ios',
  DlsPlatformNotificationType.socket: 'socket',
};
