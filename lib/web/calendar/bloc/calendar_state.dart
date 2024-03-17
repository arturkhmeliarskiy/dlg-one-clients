part of 'calendar_bloc.dart';

@freezed
class CalendarState with _$CalendarState {
  const CalendarState._();

  /// Инициализация
  const factory CalendarState.initial({
    required CalendarModel model,
  }) = _InitialCalendarState;

  /// Загрузка
  const factory CalendarState.loading({
    required CalendarModel model,
  }) = _LoadingCalendarState;

  /// Календарь загружен
  const factory CalendarState.loaded({
    required CalendarModel model,
  }) = _LoadedCalendarState;

  /// Ошибка
  const factory CalendarState.error(
    String message, {
    required CalendarModel model,
  }) = _ErrorCalendarState;

  bool get hasError => maybeMap<bool>(
        error: (_) => true,
        orElse: () => false,
      );

  bool get loading => maybeMap<bool>(
        loading: (_) => true,
        orElse: () => false,
      );
}
