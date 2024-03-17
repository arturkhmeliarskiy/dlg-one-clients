part of 'camera_bloc.dart';

@freezed
class CameraState with _$CameraState {
  const CameraState._();

  /// камера не готова к работе
  const factory CameraState.initial() = _CameraInitial;

  const factory CameraState.initializeController() =
      _CameraInitializeController;

  /// камера готова к работе
  const factory CameraState.ready() = _CameraReady;

  /// камера в процессе получения видео/снимка
  const factory CameraState.captureInProgress() = _CameraCaptureInProgress;

  /// данные получены
  const factory CameraState.captureSuccess(
    DLSFile file,
  ) = _CameraCaptureSuccess;

  /// ошибка
  const factory CameraState.failure({
    required String message,
  }) = _CameraFailure;

  bool get isInitial => maybeWhen(
        orElse: () => false,
        initial: () => true,
      );

  bool get isInitializeController => maybeWhen(
        orElse: () => false,
        initializeController: () => true,
      );

  bool get isReady => maybeWhen(
        orElse: () => false,
        ready: () => true,
      );

  bool get isCapturing => maybeWhen(
        orElse: () => false,
        captureInProgress: () => true,
      );

  bool get isCaptureSuccess => maybeWhen(
        orElse: () => false,
        captureSuccess: (_) => true,
      );

  bool get isFailure => maybeWhen(
        orElse: () => false,
        failure: (_) => true,
      );

  String get failureMessage => maybeWhen(
        orElse: () => '',
        failure: (message) => message,
      );
}
