part of 'camera_bloc.dart';

@freezed
class CameraEvent with _$CameraEvent {
  /// выполнить инициализацию
  const factory CameraEvent.cameraInitialize() = _CameraInitialize;

  const factory CameraEvent.cameraControllerInitialized({
    CameraMacOSController? macosController,
  }) = _CameraControllerInitialized;

  /// сделать снимок
  const factory CameraEvent.cameraCaptured() = _CameraCaptured;

  /// начать запись видео
  const factory CameraEvent.cameraVideoRecStart() = _CameraVideoRecStart;

  /// остановить запись видео
  /// save - сохранить видео, если да, то видео сохраняется если нет, то нет 😁
  const factory CameraEvent.cameraVideoRecStop({
    required bool save,
    ValueChanged<DLSFile?>? onComplete,
  }) = _CameraVideoRecStop;

  const factory CameraEvent.cameraCleanUp() = _CameraCleanup;
}
