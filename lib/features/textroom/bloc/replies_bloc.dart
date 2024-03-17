import 'dart:async';

import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:dls_matrix_client/dls_matrix_client.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:matrix/matrix.dart';
import 'package:rest_api/rest_api.dart';

///
/// Created by Nightwelf 11.10.2022 10:52
/// Telegram: @nightwelf
///
part 'replies_bloc.freezed.dart';
part 'replies_bloc.g.dart';

@freezed
class RepliesEvent with _$RepliesEvent {
  const RepliesEvent._();

  const factory RepliesEvent.create() = _CreateRepliesEvent;

  const factory RepliesEvent.read() = _ReadRepliesEvent;

  const factory RepliesEvent.update() = _UpdateRepliesEvent;

  const factory RepliesEvent.delete() = _DeleteRepliesEvent;

  factory RepliesEvent.fromJson(Map<String, dynamic> json) =>
      _$RepliesEventFromJson(json);
}

@freezed
class RepliesState with _$RepliesState {
  const RepliesState._();

  const factory RepliesState.initial() = _InitialRepliesState;

  const factory RepliesState.loading() = _LoadingRepliesState;

  const factory RepliesState.loaded({required List<MatrixEvent> events}) =
      _LoadedRepliesState;

  const factory RepliesState.failure({required String message}) =
      _FailureRepliesState;

  factory RepliesState.fromJson(Map<String, dynamic> json) =>
      _$RepliesStateFromJson(json);
}

class RepliesBloc extends Bloc<RepliesEvent, RepliesState> {
  ///
  RepliesBloc({
    required this.roomId,
    required this.eventId,
    required DlsMatrixClient matrixClient,
  })  : _matrixClient = matrixClient,
        super(const _InitialRepliesState()) {
    on<RepliesEvent>(
      (event, emitter) => event.map<Future<void>>(
        create: (event) => _create(event, emitter),
        read: (event) => _read(event, emitter),
        update: (event) => _update(event, emitter),
        delete: (event) => _delete(event, emitter),
      ),
      transformer: sequential(),
    );
  }

  /// репозиторий
  final DlsMatrixClient _matrixClient;

  /// событие в ленте (сообщение)
  final String eventId;

  /// комната
  final String roomId;

  Future<void> _create(
      _CreateRepliesEvent event, Emitter<RepliesState> emitter) async {
    try {
      emitter(const RepliesState.loading());
      // TODO logic
      //
      emitter(const RepliesState.loaded(events: <MatrixEvent>[]));
    } on TimeoutException {
      emitter(const RepliesState.failure(
          message: 'Время ожидания ответа сервера истекло'));
    } on ApiError catch (e) {
      emitter(
        RepliesState.failure(
            message: 'Сетевая ошибка ${e.statusCode ?? ''}: ${e.message}'),
      );
    } catch (e) {
      emitter(RepliesState.failure(message: 'Необработанная ошибка: $e'));
    }
  }

  Future<void> _read(
      _ReadRepliesEvent event, Emitter<RepliesState> emitter) async {
    try {
      emitter(const RepliesState.loading());
      MatrixEvent mtxEv =
          await _matrixClient.client.getOneRoomEvent(roomId, eventId);
      emitter(RepliesState.loaded(events: <MatrixEvent>[mtxEv]));
    } on TimeoutException {
      emitter(const RepliesState.failure(
          message: 'Время ожидания ответа сервера истекло'));
    } on ApiError catch (e) {
      emitter(
        RepliesState.failure(
            message: 'Сетевая ошибка ${e.statusCode ?? ''}: ${e.message}'),
      );
    } catch (e) {
      emitter(RepliesState.failure(message: 'Необработанная ошибка: $e'));
    }
  }

  Future<void> _update(
      _UpdateRepliesEvent event, Emitter<RepliesState> emitter) async {
    try {
      emitter(const RepliesState.loading());
      // TODO logic
      //
      emitter(const RepliesState.loaded(events: <MatrixEvent>[]));
    } on TimeoutException {
      emitter(const RepliesState.failure(
          message: 'Время ожидания ответа сервера истекло'));
    } on ApiError catch (e) {
      emitter(
        RepliesState.failure(
            message: 'Сетевая ошибка ${e.statusCode ?? ''}: ${e.message}'),
      );
    } catch (e) {
      emitter(RepliesState.failure(message: 'Необработанная ошибка: $e'));
    }
  }

  Future<void> _delete(
      _DeleteRepliesEvent event, Emitter<RepliesState> emitter) async {
    try {
      emitter(const RepliesState.loading());
      // TODO logic
      //
      emitter(const RepliesState.loaded(events: <MatrixEvent>[]));
    } on TimeoutException {
      emitter(const RepliesState.failure(
          message: 'Время ожидания ответа сервера истекло'));
    } on ApiError catch (e) {
      emitter(
        RepliesState.failure(
            message: 'Сетевая ошибка ${e.statusCode ?? ''}: ${e.message}'),
      );
    } catch (e) {
      emitter(RepliesState.failure(message: 'Необработанная ошибка: $e'));
    }
  }
}
