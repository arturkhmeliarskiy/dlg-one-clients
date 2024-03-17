// ignore_for_file: public_member_api_docs, invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rest_api/rest_api.dart';

part 'create_sprint_request.freezed.dart';
part 'create_sprint_request.g.dart';

@freezed
class CreateSprintRequest with _$CreateSprintRequest {
  @JsonSerializable(includeIfNull: false)
  const factory CreateSprintRequest({
    @JsonKey(name: 'title') required String title,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'start_at') required DateTime startAt,
    @JsonKey(name: 'expired_at') DateTime? expiredAt,
    @JsonKey(name: 'status') required SprintStatus status,
    @JsonKey(name: 'duration') SprintDurationType? duration,
    @JsonKey(name: 'tasks') List<int>? tasks,
    @JsonKey(name: 'events') List<int>? events,
    @JsonKey(name: 'performers') DlsMembers? performers,
    @JsonKey(name: 'super_task_id') int? superTaskId,
  }) = _CreateSprintRequest;

  factory CreateSprintRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateSprintRequestFromJson(json);
}