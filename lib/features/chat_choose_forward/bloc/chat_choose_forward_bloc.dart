import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:dls_matrix_client/dls_matrix_client.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:matrix/matrix.dart';

part 'chat_choose_forward_bloc.freezed.dart';
part 'chat_choose_forward_event.dart';
part 'chat_choose_forward_state.dart';

class ChatChooseForwardBloc
    extends Bloc<ChatChooseForwardEvent, ChatChooseForwardState> {
  ChatChooseForwardBloc({
    required DlsMatrixClient matrixClient,
  })  : _matrixClient = matrixClient,
        super(
          ChatChooseForwardState(
            currentUser: matrixClient.myId ?? '',
            chatRooms: matrixClient.rooms.toList(),
          ),
        ) {
    on<ChatChooseForwardEvent>(
      (event, emit) => event.map<Future<void>>(
        search: (event) => _onSearchRoom(event, emit),
      ),
      transformer: sequential(),
    );
  }

  final DlsMatrixClient _matrixClient;

  Future<void> _onSearchRoom(
    _ChatChooseForwardEventSearch event,
    Emitter<ChatChooseForwardState> emit,
  ) async {
    final filter = event.filter.toLowerCase();
    final filteredRooms = filter.isEmpty
        ? _matrixClient.rooms.toList()
        : _matrixClient.rooms
            .where(
              (e) => e.getLocalizedDisplayname().toLowerCase().contains(filter),
            )
            .toList();
    emit(
      state.copyWith(
        searchFilter: event.filter,
        chatRooms: filteredRooms,
      ),
    );
  }
}
