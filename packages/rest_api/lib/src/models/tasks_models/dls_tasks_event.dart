// ignore_for_file: invalid_annotation_target

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'dls_tasks_event.freezed.dart';
part 'dls_tasks_event.g.dart';

@freezed
class DlsTasksEvent with _$DlsTasksEvent {
  DlsTasksEvent._();

  factory DlsTasksEvent({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    @JsonKey(name: 'deleted_at') DateTime? deletedAt,
    @JsonKey(name: 'user_id') int? userId,
    @JsonKey(name: 'type') int? type,
    @JsonKey(name: 'is_all_day') bool? isAllDay,
    @JsonKey(name: 'is_invite_others') bool? isInviteOthers,
    @JsonKey(name: 'notification_type') int? notificationType,
    @JsonKey(name: 'reply_type') int? replyType,
    @JsonKey(name: 'is_mon') int? isMon,
    @JsonKey(name: 'is_tue') int? isTue,
    @JsonKey(name: 'is_wed') int? isWed,
    @JsonKey(name: 'is_thur') int? isThur,
    @JsonKey(name: 'is_fri') int? isFri,
    @JsonKey(name: 'is_sat') int? isSat,
    @JsonKey(name: 'is_sun') int? isSun,
  }) = _DlsTasksEvent;

  factory DlsTasksEvent.fromJson(Map<String, dynamic> json) =>
      _$DlsTasksEventFromJson(json);

  String stringify() =>
      jsonEncode(toJson()..removeWhere((key, dynamic value) => value == null));

  factory DlsTasksEvent.fromStringJson(String string) =>
      DlsTasksEvent.fromJson(jsonDecode(string) as Map<String, dynamic>);
}
