import 'dart:async';

import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:collection/collection.dart';
import 'package:common/common.dart';
import 'package:dls_matrix_client/dls_matrix_client.dart';
import 'package:dls_one/core/core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:matrix/matrix.dart';

///
/// Created by Nightwelf 06.09.2022 17:46
/// Telegram: @nightwelf
///
part 'user_typing_bloc.freezed.dart';

@freezed
class UserTypingEvent with _$UserTypingEvent {
  const factory UserTypingEvent.update(String message) = _UpdateUserTypingEvent;
}

@freezed
class UserTypingState with _$UserTypingState {
  factory UserTypingState({required String message}) = _UserTypingState;
}

class UserTypingBloc extends Bloc<UserTypingEvent, UserTypingState>
    with SubscriptionMixin {
  /// Constructor
  UserTypingBloc({
    required DlsMatrixClient matrixClient,
    required UsersBloc users,
    required this.id,
  })  : _matrixClient = matrixClient,
        _users = users,
        super(UserTypingState(message: '')) {
    on<UserTypingEvent>(
      (event, emitter) => event.map<Future<void>>(
        update: (event) => _update(event, emitter),
      ),
      transformer: sequential(),
    );

    final user = _users.state.currentUser;
    final room = _matrixClient.rooms.firstWhereOrNull((e) => id == e.id);

    if (room != null && user != null) {
      addSubscription(
        room.onUpdate.stream.listen((ev) async {
          if (room.typingUsers.isEmpty) {
            add(const UserTypingEvent.update(''));
          } else {
            for (var i = 0; i < room.typingUsers.length; i++) {
              if (room.typingUsers[i].id == user.id) {
                continue;
              }
              final typingUser = await _users.getUser(room.typingUsers[i].id);
              add(
                UserTypingEvent.update(
                  '${typingUser.DLSUserName} ${S.current.typing}',
                ),
              );
              break;
            }
          }
        }),
      );
    }
  }

  final DlsMatrixClient _matrixClient;
  final UsersBloc _users;
  final String id;
  late final Room room;

  @override
  Future<void> close() async {
    await cancelAllSubscriptions();
    return super.close();
  }

  Future<void> _update(
    _UpdateUserTypingEvent event,
    Emitter<UserTypingState> emitter,
  ) async {
    emitter(state.copyWith(message: event.message));
  }
}
