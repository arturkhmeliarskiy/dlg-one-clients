part of 'create_events_bloc.dart';

@freezed
class CreateEventsState with _$CreateEventsState {
  const factory CreateEventsState({
    @Default(CreateEventsModel()) CreateEventsModel model,
  }) = _CreateEventsState;

  const factory CreateEventsState.loading({
    @Default(CreateEventsModel()) CreateEventsModel model,
  }) = _Loading;

  const factory CreateEventsState.error(
    String message, {
    @Default(CreateEventsModel()) CreateEventsModel model,
  }) = _Error;

  const factory CreateEventsState.saveSuccess({
    @Default(CreateEventsModel()) CreateEventsModel model,
  }) = _SaveSuccess;

  const factory CreateEventsState.deleteSuccess({
    @Default(CreateEventsModel()) CreateEventsModel model,
  }) = _DeleteSuccess;
}

extension CreateEventsStateExt on CreateEventsState {
  CreateEventsState toLoading() => CreateEventsState.loading(model: model);

  CreateEventsState toError(String message) =>
      CreateEventsState.error(message, model: model);

  CreateEventsState toDeleteSuccess() =>
      CreateEventsState.deleteSuccess(model: model);
}
