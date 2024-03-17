import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:collection/collection.dart';
import 'package:dls_matrix_client/dls_matrix_client.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/utils/utils.dart';
import 'package:dls_one/web/chat/chat.dart';
import 'package:dls_one/web/chat/chat_manager/chat_manager.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:matrix/matrix.dart';
import 'package:rest_api/rest_api.dart';

part 'chat_manager_bloc.freezed.dart';

part 'chat_manager_event.dart';

part 'chat_manager_state.dart';

/// логика управления группами чата
class ChatManagerBloc extends Bloc<ChatManagerEvent, ChatManagerState> {
  // ignore: public_member_api_docs
  ChatManagerBloc({required DlsMatrixClient matrixClient})
      : _matrixClient = matrixClient,
        super(const ChatManagerState.initial()) {
    on<ChatManagerEvent>(
      (event, emitter) => event.map<Future<void>>(
        createGroup: (event) => _createGroup(event, emitter),
        createPrivate: (event) => _createPrivate(event, emitter),
        updateUsers: (event) => _updateUsers(event, emitter),
        updateName: (event) => _updateName(event, emitter),
        kickUsers: (event) => _kickUsers(event, emitter),
        leave: (event) => _leave(event, emitter),
        setAdmin: (event) => _setAdmin(event, emitter),
        removeAdmin: (event) => _removeAdmin(event, emitter),
        delete: (event) => _delete(event, emitter),
        addUsers: (event) => _addUsers(event, emitter),
        ownerLeave: (event) => _ownerLeave(event, emitter),
      ),
      transformer: sequential(),
    );
  }

  final DlsMatrixClient _matrixClient;
  // TODO(alexsh): fast fix to prevent user tap create button several times
  var _isProcessing = false;

  Future<void> _createGroup(
    _CreateGroup event,
    Emitter<ChatManagerState> emitter,
  ) async {
    if (_isProcessing) {
      return;
    }
    _isProcessing = true;
    final usersMatrixId = <String>[];
    for (final user in event.simpleGroup.users) {
      if (user.id != null && user.id != _matrixClient.myId) {
        usersMatrixId.add(user.id!);
      }
    }
    try {
      final chatId = await _matrixClient.client.createGroupChat(
        groupName: event.simpleGroup.name,
        enableEncryption: false,
        invite: usersMatrixId,
        powerLevelContentOverride: {
          'ban': ChatGroupAccess.admin.value,
          'events': {
            'm.room.name': ChatGroupAccess.admin.value,
            'm.room.power_levels': ChatGroupAccess.admin.value,
          },
          'events_default': ChatGroupAccess.user.value,
          'invite': ChatGroupAccess.admin.value,
          'kick': ChatGroupAccess.admin.value,
          'users_default': ChatGroupAccess.user.value
        },
      );
      emitter(ChatManagerState.created(chatId, false));
    } catch (e) {
      rethrow;
    } finally {
      _isProcessing = false;
    }
  }

  Future<void> _createPrivate(
    _CreatePrivate event,
    Emitter<ChatManagerState> emitter,
  ) async {
    if (event.user.id != null) {
      try {
        /// создаем чат
        final chatId = await _matrixClient.client.createRoom(
          /// для пользователя roomOrUserId он персональный
          isDirect: true,

          /// видимость приватный
          visibility: Visibility.private,

          /// с каким пользователем
          invite: [event.user.id!],
          preset: CreateRoomPreset.trustedPrivateChat,
        );

        /// В вебе [_matrixClient.client.createRoom] не сразу кладет новую комнату в [_matrixClient.client.rooms]
        /// Поэтому здесь нам нужно дождаться момента и только после него вызывать [chat?.addToDirectChat]
        /// В противном случае chat == null и сам чат отображается в списке групп, а не в личных сообщениях
        var isRoomCreated =
            _matrixClient.client.rooms.any((element) => element.id == chatId);

        /// На всякий случай выставлено максимальное кол-во ошибок. Чтобы если вдруг по какой-то причине
        /// комнату не удастся добавить, то мы не уходили в бесконечный цикл
        const maxAttempsToFind = 5;
        var attempsToFind = 0;

        if (!isRoomCreated) {
          while (!isRoomCreated && attempsToFind < maxAttempsToFind) {
            await Future<void>.delayed(const Duration(milliseconds: 100));
            isRoomCreated = _matrixClient.client.rooms
                .any((element) => element.id == chatId);
            attempsToFind++;
          }
        }

        /// Если комнату так и не удалось создать, то пробрасываем ошибку
        /// Которая в дальнейшем отображается на UI
        if (!isRoomCreated) {
          throw Exception();
        }

        /// получаем созданный чат
        final chat = _matrixClient.client.getRoomById(chatId);

        /// делаем чат приватным для меня
        await chat?.addToDirectChat(_matrixClient.myId!);

        emitter(ChatManagerState.created(chatId, true));
      } on MatrixException {
        emitter(ChatManagerState.notEnoughRights(getUuid));
      } catch (_) {
        emitter(ChatManagerState.failure(S.current.createPrivateChatError));
        rethrow;
      }
    }
  }

  Future<void> _kickUsers(
    _KickUsers event,
    Emitter<ChatManagerState> emitter,
  ) async {
    final chat =
        _matrixClient.rooms.firstWhere((element) => event.chatId == element.id);

    for (final userId in event.usersIds) {
      /// не позволять выкинуть себя
      /// TODO: возможно, есть смысл вообще не давать пользователю нажать на удаление себя на ui
      if (_matrixClient.myId == userId) {
        emitter(ChatManagerState.notEnoughRights(getUuid));
        break;
      }

      try {
        if (chat.canKick) {
          await chat.kick(userId);
        } else {
          emitter(ChatManagerState.notEnoughRights(getUuid));
          break;
        }
      } on MatrixException {
        emitter(ChatManagerState.notEnoughRights(getUuid));
        break;
      } catch (e) {
        rethrow;
      }
    }
  }

  Future<void> _updateUsers(
    _UpdateUsers event,
    Emitter<ChatManagerState> emitter,
  ) async {
    if (event.newSimpleGroup.chatId != null) {
      final chat = _matrixClient.rooms
          .firstWhere((element) => event.newSimpleGroup.chatId == element.id);
      var curUsers = await chat.requestParticipants();
      if (chat.canKick) {
        for (var i = 0; i < curUsers.length; ++i) {
          final user = curUsers[i];
          final ind = event.newSimpleGroup.users.indexWhere(
            (element) => element.id == user.id,
          );
          if (ind < 0) {
            try {
              /// не позволять выкинуть себя
              if (_matrixClient.myId != user.id) {
                await chat.kick(user.id);
              }
            } on MatrixException {
              emitter(ChatManagerState.notEnoughRights(getUuid));
            } catch (e) {
              rethrow;
            }
          }
        }
      } else {
        emitter(ChatManagerState.notEnoughRights(getUuid));
        return;
      }
      curUsers = await chat.requestParticipants();
      if (chat.canInvite) {
        for (var i = 0; i < event.newSimpleGroup.users.length; ++i) {
          final user = event.newSimpleGroup.users[i];
          final ind = curUsers.indexWhere(
            (element) => element.id == user.id,
          );
          if (ind < 0 && user.id != null) {
            try {
              await chat.invite(user.id!);
            } on MatrixException {
              emitter(ChatManagerState.notEnoughRights(getUuid));
            } catch (e) {
              rethrow;
            }
          }
        }
      } else {
        emitter(ChatManagerState.notEnoughRights(getUuid));
        return;
      }
      emitter(ChatManagerState.usersUpdated(getUuid));
    }
  }

  Future<void> _addUsers(
    _AddUsers event,
    Emitter<ChatManagerState> emitter,
  ) async {
    if (event.chatId != null) {
      final chat = _matrixClient.rooms
          .firstWhere((element) => event.chatId == element.id);
      if (chat.canInvite) {
        for (final userId in event.newUsersIds) {
          try {
            await chat.invite(userId);
          } on MatrixException {
            emitter(ChatManagerState.notEnoughRights(getUuid));
          } catch (e) {
            rethrow;
          }
        }
      } else {
        emitter(ChatManagerState.notEnoughRights(getUuid));
      }
    }
  }

  Future<void> _updateName(
    _UpdateName event,
    Emitter<ChatManagerState> emitter,
  ) async {
    final chat = _matrixClient.rooms
        .firstWhere((element) => event.newSimpleGroup.chatId == element.id);
    try {
      if (event.newSimpleGroup.chatId != null) {
        if (chat.canRedact) {
          if (chat.name != event.newSimpleGroup.name) {
            await chat.setName(event.newSimpleGroup.name);
          }
        } else {
          emitter(ChatManagerState.notEnoughRights(getUuid));
          return;
        }
        emitter(ChatManagerState.nameUpdated(getUuid));
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<void> _leave(
    _Leave event,
    Emitter<ChatManagerState> emitter,
  ) async {
    try {
      final chat = _matrixClient.rooms
          .firstWhere((element) => event.chatId == element.id);

      /// надо попробовать скинуть права доступа
      /// если получится,то ок, не получится, просто выйти
      try {
        await chat.setPower(
          _matrixClient.myId!,
          ChatGroupAccess.admin.value,
        );
      } catch (e) {}
      await chat.leave();
      emitter(ChatManagerState.leftChat(getUuid));
    } on MatrixException {
      emitter(ChatManagerState.notEnoughRights(getUuid));
    } catch (e) {
      rethrow;
    }
  }

  Future<void> _ownerLeave(
    _OwnerLeave event,
    Emitter<ChatManagerState> emitter,
  ) async {
    try {
      if (event.adminAndIdOnly.users.length == 1 &&
          event.adminAndIdOnly.chatId != null &&
          _matrixClient.myId != null &&
          _matrixClient.myId != event.adminAndIdOnly.users[0].id) {
        if (_matrixClient.isMeAdminOfChat(event.adminAndIdOnly.chatId!)) {
          final chat = _matrixClient.rooms
              .firstWhere((u) => event.adminAndIdOnly.chatId == u.id);
          final newOwner = chat.getParticipants().firstWhereOrNull(
                (u) => u.id == event.adminAndIdOnly.users[0].id,
              );
          if (newOwner == null) {
            emitter(ChatManagerState.message(S.current.mustInvite));
            return;
          }
          if (newOwner.membership != Membership.join) {
            emitter(ChatManagerState.message(S.current.mustVisit));
            return;
          }
          await chat.setPower(newOwner.id, ChatGroupAccess.owner.value);
          await chat.setPower(_matrixClient.myId!, ChatGroupAccess.user.value);
          await chat.leave();
          emitter(ChatManagerState.leftChat(getUuid));
        }
      }
    } on MatrixException {
      emitter(ChatManagerState.notEnoughRights(getUuid));
    } catch (e) {
      rethrow;
    }
  }

  Future<void> _setAdmin(
    _SetAdmin event,
    Emitter<ChatManagerState> emitter,
  ) async {
    try {
      if (event.adminAndIdOnly.users.length == 1 &&
          event.adminAndIdOnly.chatId != null &&
          _matrixClient.isMeAdminOfChat(event.adminAndIdOnly.chatId!)) {
        final chat = _matrixClient.rooms
            .firstWhereOrNull((u) => event.adminAndIdOnly.chatId == u.id);
        if (chat == null) return;
        final user = chat.getParticipants().firstWhereOrNull(
              (u) => u.id == event.adminAndIdOnly.users[0].id,
            );
        if (user == null) {
          await chat.invite(event.adminAndIdOnly.users[0].id!);
        }
        await chat.setPower(
            event.adminAndIdOnly.users[0].id!, ChatGroupAccess.admin.value);
        emitter(ChatManagerState.rightsChanged(getUuid));
        return;
      }
      emitter(ChatManagerState.notEnoughRights(getUuid));
    } on MatrixException catch (e) {
      emitter(ChatManagerState.notEnoughRights(getUuid));
    } catch (e) {
      rethrow;
    }
  }

  Future<void> _removeAdmin(
    _RemoveAdmin event,
    Emitter<ChatManagerState> emitter,
  ) async {
    try {
      if (event.adminAndIdOnly.users.length == 1 &&
          event.adminAndIdOnly.chatId != null &&
          _matrixClient.isMeAdminOfChat(event.adminAndIdOnly.chatId!)) {
        final chat = _matrixClient.rooms
            .firstWhereOrNull((u) => event.adminAndIdOnly.chatId == u.id);
        if (chat == null) return;
        final user = chat.getParticipants().firstWhereOrNull(
              (u) => u.id == event.adminAndIdOnly.users[0].id,
            );
        if (user == null) return;
        await chat.setPower(
          event.adminAndIdOnly.users[0].id!,
          ChatGroupAccess.user.value,
        );
        emitter(ChatManagerState.rightsChanged(getUuid));
        return;
      }
      emitter(ChatManagerState.notEnoughRights(getUuid));
    } on MatrixException catch (e) {
      emitter(ChatManagerState.notEnoughRights(getUuid));
    } catch (e) {
      rethrow;
    }
  }

  Future<void> _delete(
    _Delete event,
    Emitter<ChatManagerState> emitter,
  ) async {
    final chat =
        _matrixClient.rooms.firstWhere((element) => event.chatId == element.id);
    if (_matrixClient.isMeOwnerOfChat(chat.id)) {
      try {
        final curUsers = await chat.requestParticipants();
        if (chat.canKick) {
          for (var i = 0; i < curUsers.length; ++i) {
            final user = curUsers[i];
            if (_matrixClient.myId != user.id) {
              await chat.setPower(
                user.id,
                ChatGroupAccess.user.value,
              );
              await chat.kick(user.id);
            }
          }
          await chat.leave();
          emitter(ChatManagerState.leftChat(getUuid));
        } else {
          emitter(ChatManagerState.notEnoughRights(getUuid));
          return;
        }
      } on MatrixException {
        emitter(ChatManagerState.notEnoughRights(getUuid));
      } catch (e) {
        rethrow;
      }
    }
  }
}
