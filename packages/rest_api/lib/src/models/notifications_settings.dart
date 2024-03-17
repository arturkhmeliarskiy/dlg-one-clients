// ignore_for_file: invalid_annotation_target

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rest_api/src/models/notif_interval.dart';
import 'package:rest_api/src/models/notif_schedule.dart';

///
/// Created by Nightwelf 10.01.2023 12:52
/// Telegram: @nightwelf
///
part 'notifications_settings.freezed.dart';
part 'notifications_settings.g.dart';

@freezed
class NotificationsSettings with _$NotificationsSettings {
  factory NotificationsSettings({
    /// по умолчанию включено
    @JsonKey(name: 'enabled') bool? enabled,

    /// по умолчанию вЫключено
    @JsonKey(name: 'schedule_enabled') bool? scheduleEnabled,
    @JsonKey(name: 'schedule') NotifSchedule? schedule,
    @JsonKey(name: 'intervals') List<NotifInterval>? intervals,
  }) = _NotificationsSettings;

  factory NotificationsSettings.fromStringJson(String string) =>
      NotificationsSettings.fromJson(
          jsonDecode(string) as Map<String, dynamic>);
  NotificationsSettings._();

  factory NotificationsSettings.fromJson(Map<String, dynamic> json) =>
      _$NotificationsSettingsFromJson(json);

  String stringify() =>
      jsonEncode(toJson()..removeWhere((key, dynamic value) => value == null));
}
