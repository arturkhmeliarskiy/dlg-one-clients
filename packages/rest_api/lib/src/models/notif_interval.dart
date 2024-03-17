// ignore_for_file: invalid_annotation_target

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rest_api/src/models/timeOfDay_converter.dart';

///
/// Created by Nightwelf 10.01.2023 13:09
/// Telegram: @nightwelf
///
part 'notif_interval.freezed.dart';
part 'notif_interval.g.dart';

@freezed
class NotifInterval with _$NotifInterval {
  factory NotifInterval({
    @JsonKey(name: 'id') required String id,
    @TimeOfDayConverter() required DateTime start,
    @TimeOfDayConverter() required DateTime end,
  }) = _NotifInterval;

  factory NotifInterval.fromStringJson(String string) =>
      NotifInterval.fromJson(jsonDecode(string) as Map<String, dynamic>);
  NotifInterval._();

  factory NotifInterval.fromJson(Map<String, dynamic> json) =>
      _$NotifIntervalFromJson(json);

  String stringify() =>
      jsonEncode(toJson()..removeWhere((key, dynamic value) => value == null));

  double startToDouble() => start.hour + start.minute / 60.0;

  double endToDouble() => end.hour + end.minute / 60.0;
}
