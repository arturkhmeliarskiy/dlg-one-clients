part of 'sprint_author_bloc.dart';

@freezed
class SprintAuthorState with _$SprintAuthorState {
  const factory SprintAuthorState.idle({
    @Default(SprintAuthorModel()) SprintAuthorModel model,
  }) = _Idle;

  const factory SprintAuthorState.loading({
    @Default(SprintAuthorModel()) SprintAuthorModel model,
  }) = _Loading;

  const factory SprintAuthorState.success({
    @Default(SprintAuthorModel()) SprintAuthorModel model,
  }) = _Success;

  const factory SprintAuthorState.updateSuccess({
    @Default(SprintAuthorModel()) SprintAuthorModel model,
  }) = _UpdateSuccess;

  const factory SprintAuthorState.error(
    String message, {
    @Default(SprintAuthorModel()) SprintAuthorModel model,
  }) = _Error;
}

extension SprintAuthorStateExt on SprintAuthorState {
  bool get loading => maybeMap(orElse: () => false, loading: (_) => true);
}
