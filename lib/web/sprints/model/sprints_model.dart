import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rest_api/rest_api.dart';

part 'sprints_model.freezed.dart';

@freezed
class SprintsModel with _$SprintsModel{
  const factory SprintsModel({
    @Default([]) List<DlsSprintModel> data,
    @Default([]) List<TaskStatusType> openStatuses,
    DlsSprintModel? currentSprint,
    DlsPaginationMeta? meta,
  }) = _SprintsModel;
}
