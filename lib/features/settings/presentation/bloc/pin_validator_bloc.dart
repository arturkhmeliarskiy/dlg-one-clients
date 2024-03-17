import 'dart:async';

import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:storage/storage.dart';

///
/// Created by Nightwelf 16.02.2023 15:44
/// Telegram: @nightwelf
///

part 'pin_validator_bloc.freezed.dart';

@freezed
class PinValidatorEvent with _$PinValidatorEvent {
  const factory PinValidatorEvent.validate(String pin) = _ValidatePinValidatorEvent;
  const factory PinValidatorEvent.reset() = _ResetPinValidatorEvent;
}

@freezed
class PinValidatorState with _$PinValidatorState {
  const factory PinValidatorState.valid() = _ValidState;
  const factory PinValidatorState.data() = _DataState;
  const factory PinValidatorState.invalid() = _InvalidState;
}

class PinValidatorBloc extends Bloc<PinValidatorEvent, PinValidatorState> {
  /// constructor PinValidator Bloc
  PinValidatorBloc({
    required KeyValueStore store,
  })  : _store = store,
        super(const _DataState()) {
    on<PinValidatorEvent>(
      (event, emitter) => event.map<Future<void>>(
        validate: (event) => _validate(event, emitter),
        reset: (event) => _reset(event, emitter),
      ),
      transformer: sequential(),
    );
  }

  final KeyValueStore _store;

  Future<void> _validate(
      _ValidatePinValidatorEvent event,
    Emitter<PinValidatorState> emitter,
  ) async {
    if (event.pin.length == 4) {
      final validPin = await _store.read(StoreKeys.pin);
      if(event.pin == validPin){
        emitter(const PinValidatorState.valid());
      } else {
        emitter(const PinValidatorState.invalid());
      }
    }
  }

  Future<void> _reset(
    _ResetPinValidatorEvent event,
    Emitter<PinValidatorState> emitter,
  ) async {
    emitter(const PinValidatorState.data());
  }
}
