// ignore_for_file: invalid_annotation_target

import 'dart:convert';

import 'dls_notification_object_status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

///
/// Created by Nightwelf 08.03.2023 1:57
/// Telegram: @nightwelf
///

part 'dls_notification_sprint.freezed.dart';
part 'dls_notification_sprint.g.dart';

/// DLSNotificationSprint model
@freezed
class DLSNotificationSprint with _$DLSNotificationSprint {
  /// freezed factory
  factory DLSNotificationSprint({
    required String uuid,
    required String name,
    DLSNotificationObjectStatus? status,
    List<DateTime>? interval,
  }) = _DLSNotificationSprint;

  // ignore: public_member_api_docs
  factory DLSNotificationSprint.fromJson(Map<String, dynamic> json) =>
      _$DLSNotificationSprintFromJson(json);

  DLSNotificationSprint._();

  String stringify() =>
      jsonEncode(toJson()..removeWhere((key, dynamic value) => value == null));

  factory DLSNotificationSprint.fromStringJson(String string) =>
      DLSNotificationSprint.fromJson(jsonDecode(string) as Map<String, dynamic>);
}
