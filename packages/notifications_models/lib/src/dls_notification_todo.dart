// ignore_for_file: invalid_annotation_target

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

///
/// Created by Nightwelf 08.03.2023 2:07
/// Telegram: @nightwelf
///

part 'dls_notification_todo.freezed.dart';
part 'dls_notification_todo.g.dart';

/// DLSNotificationTodo model
@freezed
class DLSNotificationTodo with _$DLSNotificationTodo {
  /// freezed factory
  factory DLSNotificationTodo({
    required String uuid,
    String? data,
  }) = _DLSNotificationTodo;

  // ignore: public_member_api_docs
  factory DLSNotificationTodo.fromJson(Map<String, dynamic> json) =>
      _$DLSNotificationTodoFromJson(json);

    DLSNotificationTodo._();

  String stringify() =>
      jsonEncode(toJson()..removeWhere((key, dynamic value) => value == null));

  factory DLSNotificationTodo.fromStringJson(String string) =>
      DLSNotificationTodo.fromJson(jsonDecode(string) as Map<String, dynamic>);
}
