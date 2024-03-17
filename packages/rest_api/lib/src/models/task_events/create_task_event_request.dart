import 'dart:math';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rest_api/rest_api.dart';
import 'package:rest_api/src/models/date_time_converter.dart';

part 'create_task_event_request.freezed.dart';

part 'create_task_event_request.g.dart';

@freezed
class CreateTaskEventRequest with _$CreateTaskEventRequest {
  @JsonSerializable(includeIfNull: false)
  const factory CreateTaskEventRequest({
    String? title,
    String? description,
    TaskEventType? type,
    String? location,
    @DateTimeConverter() @JsonKey(name: 'start_at') DateTime? startAt,
    @DateTimeConverter() @JsonKey(name: 'end_at') DateTime? endAt,
    @JsonKey(name: 'is_all_day') bool? isAllDay,
    @JsonKey(name: 'is_invite_others') bool? isInviteOthers,
    @JsonKey(name: 'notification_type') EventNotificationType? notificationType,
    RepeatEventModel? repeat,
    @JsonKey(name: 'member_ids') List<int>? memberIds,
    @JsonKey(name: 'sprint_id') int? sprintId,
    @JsonKey(name: 'task_id') int? taskId,
    @JsonKey(name: 'file_ids') List<int>? fileIds,
  }) = _CreateTaskEventRequest;

  factory CreateTaskEventRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateTaskEventRequestFromJson(json);
}

extension TaskEventModelExt on TaskEventModel {
  CreateTaskEventRequest toRequest() {
    return CreateTaskEventRequest(
      title: title,
      description: description,
      type: type,
      location: location,
      startAt: startAt,
      endAt: endAt,
      isAllDay: isAllDay,
      isInviteOthers: isInviteOthers,
      notificationType: notificationType,
      // TODO config after API change
      // repeat:
      memberIds: members?.map((e) => e.id).toList(),
      // taskId: paren
      // sprintId:
      fileIds: fileIds,
    );
  }
}
