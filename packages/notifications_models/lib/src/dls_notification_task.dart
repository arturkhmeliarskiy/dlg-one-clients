// ignore_for_file: invalid_annotation_target

import 'dart:convert';

import 'dls_notification_event.dart';
import 'dls_notification_object.dart';
import 'dls_notification_object_priority.dart';
import 'dls_notification_object_status.dart';
import 'dls_notification_sprint.dart';
import 'dls_notification_user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

///
/// Created by Nightwelf 08.03.2023 1:13
/// Telegram: @nightwelf
///

part 'dls_notification_task.freezed.dart';
part 'dls_notification_task.g.dart';

/// DLSNotificationTask model
@freezed
class DLSNotificationTask extends DLSNotificationObject
    with _$DLSNotificationTask {
  /// freezed factory
  factory DLSNotificationTask({
    required String uuid,
    required String name,
    required DateTime timestamp,
    DLSNotificationObjectStatus? status,
    DLSNotificationObjectPriority? priority,
    DateTime? deadline,
    bool? isLocked,
    List<DLSNotificationUser>? watchers,
    List<DLSNotificationSprint>? sprints,
    List<DLSNotificationEvent>? events,
    List<DLSNotificationTask>? childTasks,
  }) = _DLSNotificationTask;

  // ignore: public_member_api_docs
  factory DLSNotificationTask.fromJson(Map<String, dynamic> json) =>
      _$DLSNotificationTaskFromJson(json);

  DLSNotificationTask._();

  String stringify() =>
      jsonEncode(toJson()..removeWhere((key, dynamic value) => value == null));

  factory DLSNotificationTask.fromStringJson(String string) =>
      DLSNotificationTask.fromJson(jsonDecode(string) as Map<String, dynamic>);
}
