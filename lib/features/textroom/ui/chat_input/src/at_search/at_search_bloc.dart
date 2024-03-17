import 'dart:async';

import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:dls_matrix_client/dls_matrix_client.dart';
import 'package:dls_one/core/core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rest_api/rest_api.dart';

///
/// Created by Nightwelf 20.01.2023 11:47
/// Telegram: @nightwelf
///
part 'at_search_bloc.freezed.dart';

@freezed
class AtSearchEvent with _$AtSearchEvent {
  const AtSearchEvent._();

  const factory AtSearchEvent.search(String query) = _SearchAtSearchEvent;

  const factory AtSearchEvent.reset() = _ResetAtSearchEvent;
}

@freezed
class AtSearchState with _$AtSearchState {
  const factory AtSearchState.loading() = _LoadingAtSearchState;

  const factory AtSearchState.loaded({
    required List<DLSUser> result,
    required String query,
  }) = _LoadedAtSearchState;

  const factory AtSearchState.failure({required String message}) =
      _FailureAtSearchState;
}

class AtSearchBloc extends Bloc<AtSearchEvent, AtSearchState> {
  /// матрикс
  /// репозиторий пользователей
  /// ид чата
  AtSearchBloc({
    required DlsMatrixClient matrixClient,
    required UsersBloc users,
    required String chatId,
  })  : _matrixClient = matrixClient,
        _users = users,
        _chatId = chatId,
        super(const _LoadingAtSearchState()) {
    on<AtSearchEvent>(
      (event, emitter) => event.map<Future<void>>(
        search: (event) => _search(event, emitter),
        reset: (event) => _reset(event, emitter),
      ),
      transformer: sequential(),
    );
  }

  final DlsMatrixClient _matrixClient;
  final UsersBloc _users;
  final String _chatId;

  Future<void> _search(
    _SearchAtSearchEvent event,
    Emitter<AtSearchState> emitter,
  ) async {
    try {
      emitter(const AtSearchState.loading());
      final room =
          _matrixClient.rooms.where((element) => element.id == _chatId).first;
      final mtxUsers = await room.requestParticipants();
      final users = <DLSUser>[];
      for (final mtxUser in mtxUsers) {
        var user = _users.state.store[mtxUser.id];
        user ??= await _users.getUser(mtxUser.id);
        users.add(user);
      }
      final query = event.query.replaceAll('@', '').toLowerCase();
      users.removeWhere(
        (user) => !user.DLSUserName.toLowerCase().contains(query),
      );
      emitter(AtSearchState.loaded(result: users, query: event.query));
    } on TimeoutException {
      emitter(
        AtSearchState.failure(message: S.current.serverTimeout),
      );
    } on ApiError catch (e) {
      emitter(
        AtSearchState.failure(
          message:
              '${S.current.networkError} ${e.statusCode ?? ''}: ${e.message}',
        ),
      );
    } catch (e) {
      emitter(AtSearchState.failure(message: '${S.current.unknownError}: $e'));
    }
  }

  Future<void> _reset(
    _ResetAtSearchEvent event,
    Emitter<AtSearchState> emitter,
  ) async {
    emitter(const AtSearchState.loading());
  }
}
