// ignore_for_file: always_put_required_named_parameters_first, invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rest_api/rest_api.dart';

part 'task_tag_model.freezed.dart';
part 'task_tag_model.g.dart';

@freezed
class TaskTagModel with _$TaskTagModel {
  const factory TaskTagModel({
    required int id,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    @JsonKey(name: 'deleted_at') DateTime? deletedAt,
    @JsonKey(name: 'user_id') int? userId,
    @JsonKey(unknownEnumValue: TaskTagType.inactive)
    TaskTagType? status,
    @Default('') String title,
    @Default('') String description,
  }) = _TaskTagModel;

  factory TaskTagModel.fromJson(Map<String, dynamic> json) =>
      _$TaskTagModelFromJson(json);
}
