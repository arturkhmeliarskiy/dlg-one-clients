part of 'group_chat_information_bloc.dart';

@freezed
class GroupChatInformationEvent with _$GroupChatInformationEvent {
  const GroupChatInformationEvent._();

  /// прочитать данные
  const factory GroupChatInformationEvent.read() =
      _ReadGroupChatInformationEvent;
}
