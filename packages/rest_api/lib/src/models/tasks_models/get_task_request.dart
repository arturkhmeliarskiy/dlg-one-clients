// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rest_api/rest_api.dart';

part 'get_task_request.freezed.dart';
part 'get_task_request.g.dart';

@freezed
class GetTaskRequest with _$GetTaskRequest {
  @JsonSerializable(includeIfNull: false)
  const factory GetTaskRequest({
    @JsonKey(name: 'filter[title]')
        String? title,
    @JsonKey(name: 'parent_id')
        int? parentId,
    @JsonKey(name: 'filter[type]')
        int? type,
    @JsonKey(name: 'filter[has_files]')
        int? files,
    @JsonKey(name: 'filter[expired_between]')
        String? deadline,
    @JsonKey(name: 'filter[story_points_between]')
        DlsStorypointsEnum? storypoints,
    @JsonKey(
      name: 'filter[role]',
      toJson: GetTaskRequest.filterToJson,
    )
        List<int>? roles,
    @JsonKey(
      name: 'filter[status_id]',
      toJson: GetTaskRequest.filterToJson,
    )
        // TODO change to enum
        List<int>? status,
    @JsonKey(
      name: 'filter[priority]',
      toJson: GetTaskRequest.filterToJson,
    )
        List<int>? priority,
    @JsonKey(
      name: 'filter[members][executors]',
      toJson: GetTaskRequest.filterToJson,
    )
        List<int>? performers,
    @JsonKey(
      toJson: GetTaskRequest.includeToJson,
    )
        List<DlsTaskIncludeType>? include,
  }) = _GetTaskRequest;

  factory GetTaskRequest.fromJson(Map<String, dynamic> json) =>
      _$GetTaskRequestFromJson(json);

  static String? includeToJson(List<DlsTaskIncludeType>? include) {
    return include?.map((e) => e.name).join(',');
  }

  static String? filterToJson(List<int>? include) {
    return include?.join(',');
  }
}
