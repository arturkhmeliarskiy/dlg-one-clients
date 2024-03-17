part of 'sprints_bloc.dart';

@freezed
class SprintsState with _$SprintsState {
  const factory SprintsState({
    @Default(SprintsModel()) SprintsModel model,
  }) = _SprintsState;

  const factory SprintsState.loading({
    @Default(SprintsModel()) SprintsModel model,
  }) = _Loading;

  const factory SprintsState.error(
    String message, {
    @Default(SprintsModel()) SprintsModel model,
  }) = _Error;
}

extension SprintsStateExt on SprintsState {
  SprintsState toLoading() {
    return SprintsState.loading(model: model);
  }

  SprintsState toError(String message) {
    return SprintsState.error(message, model: model);
  }
}
