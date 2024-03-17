// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_tags_request.freezed.dart';

part 'get_tags_request.g.dart';

@freezed
class GetTagsRequest with _$GetTagsRequest {
  @JsonSerializable(includeIfNull: false)
  const factory GetTagsRequest({
    @JsonKey(name: 'filter[title]') String? title,
    int? page,
  }) = _GetTagsRequest;

  factory GetTagsRequest.fromJson(Map<String, dynamic> json) =>
      _$GetTagsRequestFromJson(json);
}
