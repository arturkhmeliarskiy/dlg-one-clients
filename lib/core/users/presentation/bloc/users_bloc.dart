// ignore_for_file: cascade_invocations

import 'dart:async';

import 'package:collection/collection.dart';
import 'package:common/common.dart';
import 'package:dls_matrix_client/dls_matrix_client.dart';
import 'package:dls_one/app/di/app_di.dart';
import 'package:dls_one/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:matrix/matrix.dart';
import 'package:rest_api/rest_api.dart';
import 'package:stream_transform/stream_transform.dart';

part 'users_bloc.freezed.dart';

@freezed
class UsersEvent with _$UsersEvent {
  /// перечитать инфо о пользователях/пользователе
  /// если ничего не указано, то обновится весь список
  const factory UsersEvent.read({
    /// пользователи, данные которых надо получить
    required List<String> usersIds,
    VoidCallback? onFinishLoad,
  }) = _ReadUsersEvent;

  ///просто добавить пользователя в стор
  const factory UsersEvent.justAdd({
    /// пользователь
    required DLSUser user,
  }) = _JustAddUsersEvent;

  /// исключить пользователя из хранилища
  const factory UsersEvent.delete(String userId) = _DeleteUsersEvent;

  const factory UsersEvent.readRoom({
    required String roomId,
    VoidCallback? onFinishLoad,
  }) = _ReadRoomUsersEvent;
}

@freezed
class UsersState with _$UsersState {
  UsersState._();

  /// хранилище пользователей
  factory UsersState({
    /// uuid транзакции
    required String? transaction,

    /// пользователи
    required Map<String, DLSUser> store,

    /// пользователь
    required DLSUser? currentUser,

    /// загрузка
    bool? loading,

    /// текст ошибки
    String? failure,
  }) = _UsersState;

  List<DLSUser> chatUsers(List<User>? matrixUsers) {
    if (matrixUsers == null) {
      return [];
    }
    final result = <DLSUser>[];
    for (var i = 0; i < matrixUsers.length; i++) {
      if (store[matrixUsers[i].id] != null) {
        result.add(store[matrixUsers[i].id]!);
      }
    }
    return result;
  }
}

class UsersBloc extends Bloc<UsersEvent, UsersState> with MatrixEventListener {
  /// матрикс
  /// апи
  UsersBloc({
    required DlsMatrixClient matrixClient,
    required DlsRestApi restApi,
  })  : _matrixClient = matrixClient,
        _restApi = restApi,
        super(
          UsersState(
            transaction: 'init',
            store: <String, DLSUser>{},
            currentUser: null,
          ),
        ) {
    on<UsersEvent>(
      (event, emitter) => event.map<Future<void>>(
        read: (event) => _read(event, emitter),
        readRoom: (event) => _readRoom(event, emitter),
        delete: (event) => _delete(event, emitter),
        justAdd: (event) => _justAdd(event, emitter),
      ),
      transformer: (events, mapper) {
        final equal = const DeepCollectionEquality.unordered().equals;
        final readEvents = events
            .whereType<_ReadUsersEvent>()
            // Скипаем запросы с одинаковыми списками [usersIds].
            .distinct((left, right) => equal(left.usersIds, right.usersIds))
            // Собираем запросы на прочтение за интервал времени в массив.
            .debounceBuffer(const Duration(milliseconds: 300))
            // Результат обрабатываем последовательно.
            .asyncExpand(
              (readEvents) => mapper(
                // На входе имеем список запросов на чтение данных
                // пользователей.
                // Собираем запросы в один большой с полным списком
                // неповторяющихся ID.
                readEvents.reduce(
                  (value, element) => _ReadUsersEvent(
                    usersIds: [
                      value.usersIds,
                      element.usersIds,
                    ]
                        .whereNotNull()
                        .expand((element) => element)
                        .toSet()
                        .toList(),
                  ),
                ),
              ),
            );

        final otherEvents = events
            .where((event) => event is! _ReadUsersEvent)
            .asyncExpand(mapper);

        return readEvents
            .combineLatest(otherEvents, (l, r) => [l, r])
            .expand((element) => element);
      },
    );
    _matrixClient.addEventListener(this);
  }

  final DlsMatrixClient _matrixClient;
  final DlsRestApi _restApi;
  final _loadingQueue = <String, Completer<DLSUser>>{};

  @override
  void onMatrixPresenceChanged(CachedPresence event) {
    /// обновлять только если изменилось состояние в сети/не в сети
    final currentUser = state.store[event.userid];
    if (currentUser != null &&
        currentUser.currentlyActive != event.currentlyActive) {
      add(
        UsersEvent.justAdd(
          user: currentUser.copyWith(
            currentlyActive: event.currentlyActive,

            /// TODO здесь точно ошибка в вычислении когда был онлайн
            lastActiveAgo: event.lastActiveTimestamp?.millisecondsSinceEpoch,
            presence: event.presence.name,
            statusMsg: event.statusMsg,
          ),
        ),
      );
    }

    /// запросить нового если состояния в сторе еще нет
    else if (currentUser == null) {
      add(UsersEvent.read(usersIds: [event.userid]));
    }
  }

  /// количество пользователей онлайн
  int roomOnline(String roomId) {
    var result = 0;
    final room = _matrixClient.client.getRoomById(roomId);
    if (room != null) {
      final users = room.getParticipants();
      for (var i = 0; i < users.length; i++) {
        if (state.store[users[i].id]?.currentlyActive ?? false) {
          result++;
        }
      }
    }
    return result;
  }

  /// количество пользователей онлайн
  int roomOnline2(Room room) {
    var result = 0;
    final users = room.getParticipants();
    for (var i = 0; i < users.length; i++) {
      if (state.store[users[i].id]?.currentlyActive ?? false) {
        result++;
      }
    }
    return result;
  }

  /// получить пользователя из апи по ид
  /// а также его состояние из матрикса
  Future<DLSUser> getUser(String id) async {
    final hasQueue = _loadingQueue.containsKey(id);
    if (hasQueue) {
      return _loadingQueue[id]!.future;
    }

    final queue = Completer<DLSUser>();
    if (!state.store.containsKey(id)) {
      _loadingQueue[id] = queue;
    }
    if (!state.store.containsKey(id)) {
      final serverUser = await _restApi.getUsersByMatrix([id]);
      if (serverUser.isEmpty) {
        queue.completeError(Exception('Пользователь id=$id не существует'));
      }
      final user = serverUser.first;

      final userMtx = await _matrixClient.client.getPresence(id);
      final completeUser = user.copyWith(
        currentlyActive: userMtx.currentlyActive,
        lastActiveAgo: userMtx.lastActiveAgo,
        presence: userMtx.presence.name,
        statusMsg: userMtx.statusMsg,
      );
      add(
        UsersEvent.justAdd(
          user: completeUser,
        ),
      );
      queue.complete(completeUser);
    } else {
      queue.complete(state.store[id]);
    }
    return queue.future.onError((error, stack) {
      _loadingQueue.remove(id);
      Error.throwWithStackTrace(error!, stack);
    });
  }

  Future<DLSUser?> getUserByDlsId(int dlsId) async {
    return state.store.values.firstWhereOrNull((user) => user.dlsId == dlsId) ??
        await _restApi.fetchUser(dlsId.toString());
  }

  Future<void> _justAdd(
    _JustAddUsersEvent event,
    Emitter<UsersState> emitter,
  ) async {
    if (event.user.id == null) {
      return;
    }
    final store = Map<String, DLSUser>.from(state.store);
    store[event.user.id!] = event.user;
    emitter(state.copyWith(store: store, transaction: getUuid));
    _loadingQueue.remove(event.user.id);
  }

  Future<void> _readRoom(
    _ReadRoomUsersEvent event,
    Emitter<UsersState> emitter,
  ) async {
    if (state.loading != true) {
      emitter(state.copyWith(loading: true, transaction: getUuid));
    }
    final room = _matrixClient.client.getRoomById(event.roomId);
    if (room != null) {
      final users = await room.requestParticipants();
      final usersIds = users.map((e) => e.id).toList();
      add(
        UsersEvent.read(
          usersIds: usersIds,
          onFinishLoad: event.onFinishLoad,
        ),
      );
    } else {
      emitter(state.copyWith(loading: false, transaction: getUuid));
      event.onFinishLoad?.call();
    }
  }

  Future<void> _read(
    _ReadUsersEvent event,
    Emitter<UsersState> emitter,
  ) async {
    if (state.loading != true) {
      emitter(state.copyWith(loading: true, transaction: getUuid));
    }
    var usersIds = event.usersIds;
    final store = Map<String, DLSUser>.from(state.store);

    if (usersIds.isEmpty) {
      final allUsersIds = _matrixClient.myId == null
          ? <String>{}
          : <String>{_matrixClient.myId!};
      allUsersIds.addAll(
        state.store.entries.map((e) => e.value.id).whereNotNull().toList(),
      );
      for (var i = 0; i < _matrixClient.privateRooms.length; i++) {
        if (_matrixClient.privateRooms[i].summary.mHeroes != null) {
          allUsersIds.addAll(_matrixClient.privateRooms[i].summary.mHeroes!);
        }
      }
      usersIds = allUsersIds.toList();
    }

    try {
      final insertDLSUsers = await _restApi.getUsersByMatrix(usersIds);
      for (var i = 0; i < insertDLSUsers.length; i++) {
        if (insertDLSUsers[i].id != null) {
          store[insertDLSUsers[i].id!] = insertDLSUsers[i];
        }
      }
    } catch (error, stack) {
      AppDI.findRepository<DlsLogger>().errorPrinter(error, stack);
    }

    /// перезапрашиваем у матрикса состояния всех пользователей
    /// потому что сейчас не приходят обновления состояний в _subscription
    try {
      final keys = <String>{...store.keys, ...usersIds}.toList();
      for (var i = 0; i < keys.length; i++) {
        GetPresenceResponse? user;
        try {
          if (store[keys[i]]?.id != null) {
            user = await _matrixClient.client.getPresence(store[keys[i]]!.id!);
          }
        } catch (error, stack) {
          AppDI.findRepository<DlsLogger>().errorPrinter(error, stack);
        }

        /// надо удостовериться что нет null
        if (store[keys[i]] != null) {
          store[keys[i]] = store[keys[i]]!.copyWith(
            /// Whether the user is currently active
            currentlyActive: user?.currentlyActive,

            /// The length of time in milliseconds since an action was performed
            /// by this user.
            lastActiveAgo: user?.lastActiveAgo,

            /// This user's presence.
            presence: user?.presence.name,

            /// The state message for this user if one was set.
            statusMsg: user?.statusMsg,
          );
        }
      }
    } catch (error, stack) {
      AppDI.findRepository<DlsLogger>().errorPrinter(error, stack);
    }

    emitter(
      state.copyWith(
        transaction: getUuid,
        store: store,
        currentUser: store[_matrixClient.myId],
        loading: false,
      ),
    );
    event.onFinishLoad?.call();
  }

  Future<void> _delete(
    _DeleteUsersEvent event,
    Emitter<UsersState> emitter,
  ) async {
    final store = Map<String, DLSUser>.from(state.store);
    store.remove(event.userId);
    emitter(state.copyWith(transaction: getUuid, store: store));
  }

  @override
  Future<void> close() {
    _matrixClient.removeEventListener(this);
    return super.close();
  }
}
