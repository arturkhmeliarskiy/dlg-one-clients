import 'dart:async';

import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:dls_matrix_client/dls_matrix_client.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:matrix/matrix.dart';

part 'global_chat_event.dart';

part 'global_chat_state.dart';

part 'global_chat_bloc.freezed.dart';

class GlobalChatBloc extends Bloc<GlobalChatEvent, GlobalChatState>
    with MatrixEventListener {
  /// Constructor
  GlobalChatBloc({
    required DlsMatrixClient matrixClient,
  })  : _matrixClient = matrixClient,
        super(GlobalChatState()) {
    on<GlobalChatEvent>(
      (event, emitter) => event.map(
        changes: (event) => _onGlobalChatChanges(event, emitter),
      ),
      transformer: sequential(),
    );
    _matrixClient.addEventListener(this);
  }

  final DlsMatrixClient _matrixClient;
  final _deepCollectionEq = const DeepCollectionEquality();

  @override
  void onMatrixEventUpdate(EventUpdate event) {
    add(_buildChatChanges());
  }

  @override
  void onMatrixRoomState(Event event) {
    add(_buildChatChanges());
  }

  @override
  void onMatrixSyncUpdate(SyncUpdate event) {
    add(_buildChatChanges());
  }

  Future<void> _onGlobalChatChanges(
    GlobalChatChanges event,
    Emitter<GlobalChatState> emitter,
  ) async {
    final newPublicRooms =
        _deepCollectionEq.equals(state.publicRooms, event.publicRooms)
            ? state.publicRooms
            : event.publicRooms;

    late final List<Room>? newPrivateRooms;

    if (_deepCollectionEq.equals(state.privateRooms, event.privateRooms)) {
      newPrivateRooms = state.privateRooms;
    } else {
      newPrivateRooms = event.privateRooms?.toList()
        ?..sort(
          (room1, room2) => room2.timeCreated.compareTo(room1.timeCreated),
        );
    }

    /// Map<RoomId, RoomName>
    final roomNames = {
      for (var element in [
        ...newPublicRooms ?? <Room>[],
        ...newPrivateRooms ?? <Room>[],
      ])
        element.id: element.getLocalizedDisplayname()
    };

    final newState = state.copyWith(
      publicRooms: newPublicRooms,
      privateRooms: newPrivateRooms,
      publicRoomsUnreadCount: event.publicRoomsUnreadCount,
      privateRoomsUnreadCount: event.privateRoomsUnreadCount,
      roomNames: roomNames,
    );
    emitter(newState);
  }

  GlobalChatChanges _buildChatChanges() {
    return GlobalChatChanges(
      publicRooms: _matrixClient.publicRooms,
      privateRooms: _matrixClient.privateRooms.toList()
        ..sort(
          (room1, room2) => room2.timeCreated.compareTo(room1.timeCreated),
        ),
      publicRoomsUnreadCount: _matrixClient.publicRoomsTotalUnread,
      privateRoomsUnreadCount: _matrixClient.privateRoomsTotalUnread,
    );
  }

  @override
  Future<void> close() {
    _matrixClient.removeEventListener(this);
    return super.close();
  }
}
