// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Settings _$$_SettingsFromJson(Map<String, dynamic> json) => _$_Settings(
      notificationsSettings: json['notifications_settings'] == null
          ? null
          : NotificationsSettings.fromJson(
              json['notifications_settings'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_SettingsToJson(_$_Settings instance) =>
    <String, dynamic>{
      'notifications_settings': instance.notificationsSettings,
    };
