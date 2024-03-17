import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:common/common.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:dls_matrix_client/dls_matrix_client.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:matrix/matrix.dart';
import 'package:rest_api/rest_api.dart';
import 'package:sip_repository/sip_repository.dart';
import 'package:sip_ua/sip_ua.dart';
import 'package:web_socket_client/web_socket_client.dart' as ws;

part 'services_watcher_bloc.freezed.dart';

part 'services_watcher_event.dart';

part 'services_watcher_state.dart';

class ServicesWatcherBloc
    extends Bloc<ServicesWatcherEvent, ServicesWatcherState>
    with
        SubscriptionMixin,
        SipListener,
        MatrixEventListener,
        RestStatusListener {
  ServicesWatcherBloc(
    super.initialState, {
    required Connectivity connectivity,
    required SipRepository sipRepository,
    required ws.WebSocket socketApi,
    required DlsRestApi restApi,
    required DlsMatrixClient matrixClient,
  })  : _connectivity = connectivity,
        _sipRepository = sipRepository,
        _restApi = restApi,
        _matrixClient = matrixClient,
        _socketApi = socketApi {
    on<ServicesWatcherEvent>(
      (event, emitter) => event.map<Future<void>>(
        update: (event) => _update(event, emitter),
        socket: (event) => _socket(event, emitter),
        matrix: (event) => _matrix(event, emitter),
        rest: (event) => _rest(event, emitter),
        sip: (event) => _sip(event, emitter),
        network: (event) => _network(event, emitter),
      ),
      transformer: sequential(),
    );

    /// слушать состояние сети
    addSubscription(
      _connectivity.onConnectivityChanged.listen((connectResult) {
        add(
          ServicesWatcherEvent.network(
            [
              ConnectivityResult.wifi,
              ConnectivityResult.ethernet,
              ConnectivityResult.mobile
            ].contains(connectResult),
          ),
        );
      }),
    );
    addSubscription(
      _socketApi.connection.listen(
        (state) {
          if (state is ws.Connected || state is ws.Reconnected) {
            add(const ServicesWatcherEvent.socket(true));
          } else {
            add(const ServicesWatcherEvent.socket(false));
          }
        },
      ),
    );

    /// слушать сервисы dls
    _addListeners(this);
  }

  final Connectivity _connectivity;
  final SipRepository _sipRepository;
  final ws.WebSocket _socketApi;
  final DlsRestApi _restApi;
  final DlsMatrixClient _matrixClient;

  /// слушать все сервисы dls
  void _addListeners(ServicesWatcherBloc bloc) {
    _sipRepository.addListener(bloc);
    _restApi.addListener(bloc);
    _matrixClient.addEventListener(bloc);
  }

  /// отменить прослушку всех сервисов dls
  void _removeListeners(ServicesWatcherBloc bloc) {
    cancelAllSubscriptions();
    _sipRepository.removeListener(bloc);
    _restApi.removeListener(bloc);
    _matrixClient.removeEventListener(bloc);
  }

  /// астериск
  @override
  void onSipTransportState(TransportState state) {
    if (state.state == TransportStateEnum.CONNECTED) {
      add(const ServicesWatcherEvent.sip(true));
    }
    if ([
      TransportStateEnum.NONE,
      TransportStateEnum.CONNECTING,
      TransportStateEnum.DISCONNECTED
    ].contains(state.state)) {
      add(const ServicesWatcherEvent.sip(false));
    }
  }

  /// синхронизация матрикса
  @override
  void onMatrixSyncStatusUpdate(SyncStatusUpdate event) {
    switch (event.status) {
      case SyncStatus.waitingForResponse:
        add(const ServicesWatcherEvent.matrix(true));
        break;
      case SyncStatus.processing:
        add(const ServicesWatcherEvent.matrix(true));
        break;
      case SyncStatus.cleaningUp:
        add(const ServicesWatcherEvent.matrix(true));
        break;
      case SyncStatus.finished:
        add(const ServicesWatcherEvent.matrix(true));
        break;
      case SyncStatus.error:
        add(const ServicesWatcherEvent.matrix(false));
        break;
    }
  }

  /// любой успешный ответ от rest сервера
  @override
  void onRestApiResponse(Response<dynamic> response) =>
      add(const ServicesWatcherEvent.rest(true));

  /// любой ошибочный ответ от rest сервера
  @override
  void onRestApiError(DioError err) =>
      add(const ServicesWatcherEvent.rest(false));

  @mustCallSuper
  @override
  Future<void> close() async {
    /// отменить прослушку
    await cancelAllSubscriptions();

    /// отменить прослушку сервисов dls
    _removeListeners(this);
    return super.close();
  }

  /// событие общего обновления состояния сервисов
  Future<void> _update(
    _Update event,
    Emitter<ServicesWatcherState> emitter,
  ) async {
    emitter(
      state.copyWith(
        isSocketAlive: event.isSocketAlive ?? state.isSocketAlive,
        isMatrixAlive: event.isMatrixAlive ?? state.isMatrixAlive,
        isRestAlive: event.isRestAlive ?? state.isRestAlive,
        isSipAlive: event.isSipAlive ?? state.isSipAlive,
        isNetworkAlive: event.isNetworkAlive ?? state.isNetworkAlive,
      ),
    );
  }

  /// упрощенные события от слушателей сервисов
  Future<void> _socket(
    _Socket event,
    Emitter<ServicesWatcherState> emitter,
  ) async {
    emitter(state.copyWith(isSocketAlive: event.isAlive));
  }

  Future<void> _matrix(
    _Matrix event,
    Emitter<ServicesWatcherState> emitter,
  ) async {
    emitter(state.copyWith(isMatrixAlive: event.isAlive));
  }

  Future<void> _rest(
    _Rest event,
    Emitter<ServicesWatcherState> emitter,
  ) async {
    emitter(state.copyWith(isRestAlive: event.isAlive));
  }

  Future<void> _sip(
    _Sip event,
    Emitter<ServicesWatcherState> emitter,
  ) async {
    emitter(state.copyWith(isSipAlive: event.isAlive));
  }

  Future<void> _network(
    _Network event,
    Emitter<ServicesWatcherState> emitter,
  ) async {
    emitter(state.copyWith(isNetworkAlive: event.isAlive));
  }
}
