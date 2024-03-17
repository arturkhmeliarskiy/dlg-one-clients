part of 'chat_manager_bloc.dart';

@freezed
class ChatManagerState with _$ChatManagerState {
  const factory ChatManagerState.initial() = _Initial;

  const factory ChatManagerState.created(
    String chatId,
    bool isDirect,
  ) = _Created;

  const factory ChatManagerState.notEnoughRights(String transaction) =
      _NotEnoughRights;

  const factory ChatManagerState.failure(String message) = _Failure;

  const factory ChatManagerState.leftChat(String transaction) = _LeftChat;

  const factory ChatManagerState.rightsChanged(String transaction) =
      _RightsChanged;

  const factory ChatManagerState.nameUpdated(String transaction) = _NameUpdated;

  const factory ChatManagerState.usersUpdated(String transaction) =
      _UsersUpdated;

  const factory ChatManagerState.message(String message) = _Message;
}
