import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rest_api/rest_api.dart';
import 'package:rest_api/src/models/date_time_converter.dart';

part 'todo_model_dto.freezed.dart';
part 'todo_model_dto.g.dart';

enum TodoStatus {
  @JsonValue(1)
  processing,
  @JsonValue(0)
  completed,
}

// ignore_for_file: invalid_annotation_target
// ignore_for_file: always_put_required_named_parameters_first

@freezed
class TodoModelDTO with _$TodoModelDTO {
  const factory TodoModelDTO({
    required int id,
    @JsonKey(name: 'user_id') String? userId,
    @DateTimeConverter() @JsonKey(name: 'created_at') DateTime? createTime,
    @DateTimeConverter() @JsonKey(name: 'updated_at') DateTime? updateTime,
    @DateTimeConverter() @JsonKey(name: 'deleted_at') DateTime? deleteTime,
    required TodoStatus status,
    required String title,
    String? description,
    @DateTimeConverter() @JsonKey(name: 'start_at') DateTime? startTime,
    @DateTimeConverter() @JsonKey(name: 'expired_at') DateTime? expireTime,
    @JsonKey(name: 'is_all_day') required bool isFullDay,
    DLSUser? owner,
  }) = _TodoModelDTO;

  const TodoModelDTO._();

  factory TodoModelDTO.fromJson(Map<String, Object?> json) =>
      _$TodoModelDTOFromJson(json);
}
