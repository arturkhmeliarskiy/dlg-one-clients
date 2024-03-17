// ignore_for_file: invalid_annotation_target

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

///
/// Created by Nightwelf 10.01.2023 13:02
/// Telegram: @nightwelf
///
part 'notif_schedule.freezed.dart';
part 'notif_schedule.g.dart';

@freezed
class NotifSchedule with _$NotifSchedule {
  factory NotifSchedule({
    @JsonKey(name: 'monday') bool? monday,
    @JsonKey(name: 'tuesday') bool? tuesday,
    @JsonKey(name: 'wednesday') bool? wednesday,
    @JsonKey(name: 'thursday') bool? thursday,
    @JsonKey(name: 'friday') bool? friday,
    @JsonKey(name: 'saturday') bool? saturday,
    @JsonKey(name: 'sunday') bool? sunday,
  }) = _NotifSchedule;

  factory NotifSchedule.fromStringJson(String string) =>
      NotifSchedule.fromJson(jsonDecode(string) as Map<String, dynamic>);

  factory NotifSchedule.defaultData() => NotifSchedule(
        monday: false,
        tuesday: false,
        wednesday: false,
        thursday: false,
        friday: false,
        saturday: false,
        sunday: false,
      );
  NotifSchedule._();

  factory NotifSchedule.fromJson(Map<String, dynamic> json) =>
      _$NotifScheduleFromJson(json);

  String stringify() =>
      jsonEncode(toJson()..removeWhere((key, dynamic value) => value == null));
}
