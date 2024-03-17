part of 'services_watcher_bloc.dart';

@freezed
class ServicesWatcherEvent with _$ServicesWatcherEvent {
  const factory ServicesWatcherEvent.update({
    bool? isSocketAlive,
    bool? isMatrixAlive,
    bool? isRestAlive,
    bool? isSipAlive,
    bool? isNetworkAlive,
  }) = _Update;
  const factory ServicesWatcherEvent.socket(bool isAlive) = _Socket;
  const factory ServicesWatcherEvent.matrix(bool isAlive) = _Matrix;
  const factory ServicesWatcherEvent.rest(bool isAlive) = _Rest;
  const factory ServicesWatcherEvent.sip(bool isAlive) = _Sip;
  const factory ServicesWatcherEvent.network(bool isAlive) = _Network;
}
