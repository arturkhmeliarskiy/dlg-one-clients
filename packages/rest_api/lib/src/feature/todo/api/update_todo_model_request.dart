import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rest_api/src/feature/todo/model/todo_model_dto.dart';
import 'package:rest_api/src/models/date_time_converter.dart';

part 'update_todo_model_request.freezed.dart';
part 'update_todo_model_request.g.dart';

// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: invalid_annotation_target
@freezed
class UpdateTodoModelRequest with _$UpdateTodoModelRequest {
  @JsonSerializable(includeIfNull: false)
  const factory UpdateTodoModelRequest({
    required String title,
    String? description,
    required TodoStatus status,
    @JsonKey(name: 'is_all_day') required bool isFullDay,
    @DateTimeConverter() @JsonKey(name: 'start_at') DateTime? startTime,
    @DateTimeConverter() @JsonKey(name: 'expired_at') DateTime? endTime,
  }) = _UpdateTodoModelRequestl;

  factory UpdateTodoModelRequest.fromJson(Map<String, Object?> json) =>
      _$UpdateTodoModelRequestFromJson(json);
}
