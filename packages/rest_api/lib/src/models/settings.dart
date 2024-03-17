// ignore_for_file: invalid_annotation_target

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rest_api/src/models/notif_schedule.dart';
import 'package:rest_api/src/models/notifications_settings.dart';

///
/// Created by Nightwelf 10.01.2023 14:28
/// Telegram: @nightwelf
///
part 'settings.freezed.dart';
part 'settings.g.dart';

@freezed
class Settings with _$Settings {
  factory Settings({
    @JsonKey(name: 'notifications_settings')
        NotificationsSettings? notificationsSettings,
  }) = _Settings;

  factory Settings.fromStringJson(String string) =>
      Settings.fromJson(jsonDecode(string) as Map<String, dynamic>);

  factory Settings.defaultData() => Settings(
      notificationsSettings: NotificationsSettings(
          enabled: true,
          scheduleEnabled: false,
          schedule: NotifSchedule.defaultData(),
          intervals: []));
  Settings._();

  factory Settings.fromJson(Map<String, dynamic> json) =>
      _$SettingsFromJson(json);

  String stringify() =>
      jsonEncode(toJson()..removeWhere((key, dynamic value) => value == null));
}
