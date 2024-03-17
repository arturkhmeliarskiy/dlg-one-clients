// ignore_for_file: invalid_annotation_target

import 'dart:convert';

import 'dls_notification_event_format.dart';
import 'dls_notification_object.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

///
/// Created by Nightwelf 10.03.2023 14:40
/// Telegram: @nightwelf
///

part 'dls_notification_event.freezed.dart';
part 'dls_notification_event.g.dart';

/// DLSNotificationEvent model
@freezed
class DLSNotificationEvent extends DLSNotificationObject
    with _$DLSNotificationEvent {
  /// freezed factory
  factory DLSNotificationEvent({
    required String uuid,
    required String name,
    required DateTime timestamp,
    String? place,
    DateTime? date,
    List<DateTime>? interval,
    DLSNotificationEventFormat? format,
  }) = _DLSNotificationEvent;

  DLSNotificationEvent._();

  // ignore: public_member_api_docs
  factory DLSNotificationEvent.fromJson(Map<String, dynamic> json) =>
      _$DLSNotificationEventFromJson(json);

  String stringify() =>
      jsonEncode(toJson()..removeWhere((key, dynamic value) => value == null));

  factory DLSNotificationEvent.fromStringJson(String string) =>
      DLSNotificationEvent.fromJson(jsonDecode(string) as Map<String, dynamic>);
}
