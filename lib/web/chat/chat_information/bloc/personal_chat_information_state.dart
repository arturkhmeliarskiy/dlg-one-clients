part of 'personal_chat_information_bloc.dart';

@freezed
class PersonalChatInformationState with _$PersonalChatInformationState {
  const PersonalChatInformationState._();

  /// инициализация
  const factory PersonalChatInformationState.initial() =
      _InitialPersonalChatInformationState;

  /// загрузка
  const factory PersonalChatInformationState.loading() =
      _LoadingPersonalChatInformationState;

  /// данные
  const factory PersonalChatInformationState.data({
    required DLSUser user,
    required Room matrixRoom,
  }) = _DataPersonalChatInformationState;

  /// ошибка
  const factory PersonalChatInformationState.failure({
    required String message,
  }) = _FailurePersonalChatInformationState;
}
