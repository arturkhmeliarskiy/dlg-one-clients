import 'dart:async';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'call_users_bloc.freezed.dart';

@freezed
class CallUsersEvent with _$CallUsersEvent {
  const factory CallUsersEvent.onTap() = _OnTapUsersEvent;
}

@freezed
class CallUsersState with _$CallUsersState {
  const factory CallUsersState({required bool isOpened}) = _CallUsersState;
}

class CallUsersBloc extends Bloc<CallUsersEvent, CallUsersState> {
  /// constructor CallUsers Bloc
  CallUsersBloc() : super(const _CallUsersState(isOpened: false)) {
    on<CallUsersEvent>(
      (event, emitter) => event.map<Future<void>>(
        onTap: (event) => _onTap(event, emitter),
      ),
      transformer: sequential(),
    );
  }

  Future<void> _onTap(
    _OnTapUsersEvent event,
    Emitter<CallUsersState> emitter,
  ) async {
    emitter(CallUsersState(isOpened: !state.isOpened));
  }
}
