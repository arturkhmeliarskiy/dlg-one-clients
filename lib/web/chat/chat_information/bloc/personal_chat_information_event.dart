part of 'personal_chat_information_bloc.dart';

@freezed
class PersonalChatInformationEvent with _$PersonalChatInformationEvent {
  const PersonalChatInformationEvent._();
  /// прочитать данные
  const factory PersonalChatInformationEvent.read() = _ReadPersonalChatInformationEvent;
  /// обновить данные
  const factory PersonalChatInformationEvent.update() = _UpdatePersonalChatInformationEvent;
  /// удалить данные
  const factory PersonalChatInformationEvent.delete() = _DeletePersonalChatInformationEvent;
}