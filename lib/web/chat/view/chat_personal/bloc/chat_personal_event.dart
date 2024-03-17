part of 'chat_personal_bloc.dart';

@freezed
class ChatPersonalEvent with _$ChatPersonalEvent {
  const factory ChatPersonalEvent.changeSelectedMessage({
    DlsChatMessageText? message,
  }) = _ChatPersonalChangeSelectedMessage;
}
