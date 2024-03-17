import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:dls_matrix_client/dls_matrix_client.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_personal_state.dart';
part 'chat_personal_bloc.freezed.dart';
part 'chat_personal_event.dart';

class ChatPersonalBloc extends Bloc<ChatPersonalEvent, ChatPersonalState> {
  /// Constructor
  ChatPersonalBloc()
      : super(
          const ChatPersonalState(),
        ) {
    on<ChatPersonalEvent>(
      (event, emitter) => event.map<Future<void>>(
        changeSelectedMessage: (event) =>
            _changeSelectedMessage(event, emitter),
      ),
      transformer: sequential(),
    );
  }

  Future<void> _changeSelectedMessage(
    _ChatPersonalChangeSelectedMessage event,
    Emitter<ChatPersonalState> emitter,
  ) async {
    emitter(
      state.copyWith(
        selectedMessage: event.message,
      ),
    );
  }
}
