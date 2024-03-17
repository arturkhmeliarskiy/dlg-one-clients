import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rest_api/rest_api.dart';

part 'task_tags_model.freezed.dart';

@freezed
class TaskTagsStateModel with _$TaskTagsStateModel {
  const factory TaskTagsStateModel({
    @Default([]) List<TaskTagModel> tags,
    String? title,
    int? currentPage,
    int? lastPage,
  }) = _TaskTagsStateModel;
}
