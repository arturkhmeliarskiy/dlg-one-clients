part of 'chat_manager_bloc.dart';

@freezed
class ChatManagerEvent with _$ChatManagerEvent {
  const factory ChatManagerEvent.createGroup(
    SimpleGroup simpleGroup,
  ) = _CreateGroup;

  const factory ChatManagerEvent.createPrivate(
    DLSUser user,
  ) = _CreatePrivate;

  const factory ChatManagerEvent.updateUsers(
    SimpleGroup newSimpleGroup,
  ) = _UpdateUsers;

  const factory ChatManagerEvent.addUsers(
    String? chatId,
    List<String> newUsersIds,
  ) = _AddUsers;

  const factory ChatManagerEvent.updateName(
    SimpleGroup newSimpleGroup,
  ) = _UpdateName;

  const factory ChatManagerEvent.kickUsers(
    String chatId,
    List<String> usersIds,
  ) = _KickUsers;

  const factory ChatManagerEvent.leave(
    String chatId,
  ) = _Leave;

  const factory ChatManagerEvent.setAdmin(
    SimpleGroup adminAndIdOnly,
  ) = _SetAdmin;

  const factory ChatManagerEvent.removeAdmin(
    SimpleGroup adminAndIdOnly,
  ) = _RemoveAdmin;

  const factory ChatManagerEvent.delete(
    String chatId,
  ) = _Delete;

  const factory ChatManagerEvent.ownerLeave(
    SimpleGroup adminAndIdOnly,
  ) = _OwnerLeave;
}
