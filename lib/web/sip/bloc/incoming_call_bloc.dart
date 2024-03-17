import 'dart:async';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:collection/collection.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/utils/utils.dart';
import 'package:dls_one/web/sip/sip.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rest_api/rest_api.dart';

///
/// Created by Nightwelf 12.04.2023 9:46
/// Telegram: @nightwelf
///

part 'incoming_call_bloc.freezed.dart';

@freezed
class IncomingCallEvent with _$IncomingCallEvent {
  const IncomingCallEvent._();

  const factory IncomingCallEvent.getCaller(int? dlsId) = _GetCallerCallEvent;

  const factory IncomingCallEvent.accept() = _AcceptIncomingCallEvent;

  const factory IncomingCallEvent.reject() = _RejectIncomingCallEvent;
}

@freezed
class IncomingCallState with _$IncomingCallState {
  const factory IncomingCallState.initial(
    ActiveCall activeCall,
    String transaction, {
    DLSUser? caller,
  }) = _InitialIncomingCallState;

  const factory IncomingCallState.accepted(
    ActiveCall activeCall,
    String transaction,{
        DLSUser? caller,
      }
  ) = _AcceptedIncomingCallState;

  const factory IncomingCallState.rejected(
    ActiveCall activeCall,
    String transaction,{
        DLSUser? caller,
      }
  ) = _RejectedIncomingCallState;
}

class IncomingCallBloc extends Bloc<IncomingCallEvent, IncomingCallState> {
  /// constructor IncomingCall Bloc
  IncomingCallBloc(
    super.initialState, {
    required UsersBloc usersBloc,
  }) : _usersBloc = usersBloc {
    on<IncomingCallEvent>(
      (event, emitter) => event.map<Future<void>>(
        accept: (event) => _accept(event, emitter),
        reject: (event) => _reject(event, emitter),
        getCaller: (event) => _getCaller(event, emitter),
      ),
      transformer: sequential(),
    );
    add(
      IncomingCallEvent.getCaller(
        state.activeCall.callMeta.callers.firstOrNull?.dlsId,
      ),
    );
  }

  final UsersBloc _usersBloc;

  Future<void> _getCaller(
    _GetCallerCallEvent event,
    Emitter<IncomingCallState> emitter,
  ) async {
    if (event.dlsId != null) {
      emitter(
        IncomingCallState.initial(
          state.activeCall,
          getUuid,
          caller: await _usersBloc.getUserByDlsId(event.dlsId!),
        ),
      );
    }
  }

  Future<void> _accept(
    _AcceptIncomingCallEvent event,
    Emitter<IncomingCallState> emitter,
  ) async {
    emitter(IncomingCallState.accepted(state.activeCall, getUuid, caller: state.caller));
  }

  Future<void> _reject(
    _RejectIncomingCallEvent event,
    Emitter<IncomingCallState> emitter,
  ) async {
    emitter(IncomingCallState.rejected(state.activeCall, getUuid, caller: state.caller));
  }
}
