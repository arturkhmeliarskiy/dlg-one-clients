part of 'task_tags_bloc.dart';

@freezed
class TaskTagsEvent with _$TaskTagsEvent {
  const factory TaskTagsEvent.fetch({
    String? title,
    int? page,
    @Default(true) bool withLoading,
  }) = _Fetch;

  const factory TaskTagsEvent.addTag(String title) = _AddTag;
}
