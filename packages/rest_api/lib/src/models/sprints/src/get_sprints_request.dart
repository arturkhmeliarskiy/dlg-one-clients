import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rest_api/rest_api.dart';

part 'get_sprints_request.freezed.dart';
part 'get_sprints_request.g.dart';

@freezed
class GetSprintsRequest with _$GetSprintsRequest {
  @JsonSerializable(includeIfNull: false)
  const factory GetSprintsRequest({
    int? page,
    GetSprintsViewType? view,
    @JsonKey(name: 'filter[archive]') int? filterArchive,
  }) = _GetSprintsRequest;

  factory GetSprintsRequest.fromJson(Map<String, dynamic> json) =>
      _$GetSprintsRequestFromJson(json);
}
