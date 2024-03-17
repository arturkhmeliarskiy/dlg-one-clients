part of 'services_watcher_bloc.dart';

@freezed
class ServicesWatcherState with _$ServicesWatcherState {
  const factory ServicesWatcherState({
    required bool isSocketAlive,
    required bool isMatrixAlive,
    required bool isRestAlive,
    required bool isSipAlive,
    required bool isNetworkAlive,
  }) = _ServicesWatcherState;

  const ServicesWatcherState._();

  @override
  String toString() {
    return 'isSocketAlive: $isSocketAlive; isMatrixAlive: $isMatrixAlive; isRestAlive: $isRestAlive; isSipAlive: $isSipAlive; isNetworkAlive: $isNetworkAlive;';
  }
}
