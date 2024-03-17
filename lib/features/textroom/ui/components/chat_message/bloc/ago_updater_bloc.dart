import 'dart:async';
import 'dart:math';

import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:dls_one/utils/utils.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ago_updater_bloc.freezed.dart';

/// обновлялка сколько минут назад
@freezed
class AgoUpdaterEvent with _$AgoUpdaterEvent {
  const factory AgoUpdaterEvent.update() = _UpdateAgoUpdaterEvent;
}

@freezed
class AgoUpdaterState with _$AgoUpdaterState {
  const factory AgoUpdaterState.s({
    required String transaction,
  }) = _SAgoUpdaterState;
}

class AgoUpdaterBloc extends Bloc<AgoUpdaterEvent, AgoUpdaterState> {
  /// Constructor
  AgoUpdaterBloc() : super(AgoUpdaterState.s(transaction: getUuid)) {
    on<AgoUpdaterEvent>(
      (event, emitter) => event.map<Future<void>>(
        update: (event) => _update(event, emitter),
      ),
      transformer: sequential(),
    );
    _timer = Timer.periodic(Duration(seconds: 30 + Random().nextInt(30)),
        (Timer timer) {
      add(const AgoUpdaterEvent.update());
    });
  }

  Timer? _timer;

  Future<void> _update(
    _UpdateAgoUpdaterEvent event,
    Emitter<AgoUpdaterState> emitter,
  ) async {
    emitter(AgoUpdaterState.s(transaction: getUuid));
  }

  @override
  Future<void> close() {
    _timer?.cancel();
    return super.close();
  }
}
