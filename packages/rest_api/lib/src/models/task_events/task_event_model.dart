// ignore_for_file: public_member_api_docs

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rest_api/rest_api.dart';
import 'package:rest_api/src/models/date_time_converter.dart';

part 'task_event_model.freezed.dart';

part 'task_event_model.g.dart';

@freezed
class TaskEventModel with _$TaskEventModel {
  // TODO config another data
  const factory TaskEventModel({
    required int id,
    required String title,
    required TaskEventType type,
    String? description,
    String? location,
    @DateTimeConverter() @JsonKey(name: 'start_at') DateTime? startAt,
    @DateTimeConverter() @JsonKey(name: 'end_at') DateTime? endAt,
    @JsonKey(name: 'is_all_day') bool? isAllDay,
    @JsonKey(name: 'is_invite_others') bool? isInviteOthers,
    @JsonKey(name: 'notification_type') EventNotificationType? notificationType,
    List<DlsUserShort>? members,
    // TODO remove if not using
    @JsonKey(name: 'file_ids') List<int>? fileIds,
    DlsTasks? task,
    // TODO config sprint
    // Map<String, dynamic>? sprint,
    SeriesRepeatEventModel? series,
    RepeatEventModel? repeat,
    List<DlsFileData>? files,
    DLSUser? user,
    @JsonKey(name: 'matrix_room') String? matrixRoom,
  }) = _TaskEventModel;

  factory TaskEventModel.fromJson(Map<String, dynamic> json) =>
      _$TaskEventModelFromJson(json);
}
