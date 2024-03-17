// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_tag_request.freezed.dart';
part 'create_tag_request.g.dart';

@freezed
class CreateTagRequest with _$CreateTagRequest {
  @JsonSerializable(includeIfNull: false)
  const factory CreateTagRequest({
    required String title,
    String? description,
    int? status,
  }) = _CreateTagRequest;

  factory CreateTagRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateTagRequestFromJson(json);
}