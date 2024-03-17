import 'dart:async';
import 'dart:typed_data';

import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:camera/camera.dart' as camera;
import 'package:camera_macos/camera_macos_controller.dart';
import 'package:collection/collection.dart';
import 'package:common/common.dart';
import 'package:cross_file/cross_file.dart';
import 'package:dls_one/app/di/app_di.dart';
import 'package:dls_one/models/dls_file.dart';
import 'package:dls_one/utils/src/etc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:permission_handler/permission_handler.dart';

part 'camera_bloc.freezed.dart';
part 'camera_event.dart';
part 'camera_state.dart';

// TODO(alexsh): Tech debt to refactor that
//  Issue: https://gitlab.shvetsov.tech/dls-one/dlg-one-clients/-/issues/331
class CameraBloc extends Bloc<CameraEvent, CameraState> {
  CameraBloc() : super(const CameraState.initial()) {
    on<CameraEvent>(
      (event, emitter) => event.map<Future<void>>(
        cameraInitialize: (event) => _cameraInitialize(event, emitter),
        cameraControllerInitialized: (event) =>
            _cameraInitializedController(event, emitter),
        cameraCaptured: (event) => _cameraCaptured(event, emitter),
        cameraVideoRecStart: (event) => _cameraVideoRecStart(event, emitter),
        cameraVideoRecStop: (event) => _cameraVideoRecStop(event, emitter),
        cameraCleanUp: (event) => _cameraCleanup(event, emitter),
      ),
      transformer: sequential(),
    );
  }

  /// Controller is implemented by plugins:
  /// - camera (for mobile);
  /// - camera_windows;
  /// - camera_web;
  camera.CameraController? _cameraController;
  CameraMacOSController? _macosController;
  // camera_windows.

  camera.CameraController get cameraController => _cameraController!;
  CameraMacOSController get macosCameraController => _macosController!;

  Future<void> _cameraInitialize(
    _CameraInitialize event,
    Emitter<CameraState> emitter,
  ) async {
    try {
      final perms = await _checkMicCameraPermission();
      if (!perms) {
        emitter(
          const CameraState.failure(
            message: 'Need camera/microphone permission.',
          ),
        );
        return;
      }
      if (DlsPlatform.dlsPlatform == DlsPlatformType.mobile ||
          DlsPlatform.dlsPlatform == DlsPlatformType.web ||
          DlsPlatform.dlsSubPlatform == DlsPlatformSubType.windows) {
        _cameraController = await _getMobileCameraController(
          camera.ResolutionPreset.high,
          camera.CameraLensDirection.front,
        );
        await _cameraController?.initialize();
        emitter(const CameraState.ready());
      }
      if (DlsPlatform.dlsPlatform == DlsPlatformType.desktop &&
          DlsPlatform.dlsSubPlatform == DlsPlatformSubType.macOS) {
        emitter(const CameraState.initializeController());
      }
    } catch (error) {
      AppDI.findRepository<DlsLogger>().errorPrinter(error);
      emitter(CameraState.failure(message: error.toString()));
    }
  }

  Future<void> _cameraInitializedController(
    _CameraControllerInitialized event,
    Emitter<CameraState> emitter,
  ) async {
    _macosController = event.macosController;
    emitter(const CameraState.ready());
  }

  Future<void> _cameraCaptured(
    _CameraCaptured event,
    Emitter<CameraState> emitter,
  ) async {
    if (state.isReady) {
      emitter(const CameraState.captureInProgress());
      try {
        if (DlsPlatform.dlsPlatform == DlsPlatformType.mobile ||
            DlsPlatform.dlsPlatform == DlsPlatformType.web ||
            DlsPlatform.dlsSubPlatform == DlsPlatformSubType.windows) {
          final xFile = await _cameraController!.takePicture();
          final dlsFile = await DLSFile.fromXFile(xFile);
          emitter(
            CameraState.captureSuccess(dlsFile),
          );
        }
        if (DlsPlatform.dlsPlatform == DlsPlatformType.desktop &&
            DlsPlatform.dlsSubPlatform == DlsPlatformSubType.macOS) {
          final file = await _macosController!.takePicture();
          if (file != null && file.bytes != null) {
            final xFile = XFile.fromData(
              file.bytes ?? Uint8List(0),
              name: file.url,
              path: file.url,
            );
            final dlsFile = await DLSFile.fromXFile(xFile);
            emitter(
              CameraState.captureSuccess(dlsFile),
            );
          }
        }
      } catch (error) {
        emitter(
          CameraState.failure(message: error.toString()),
        );
      }
    }
  }

  Future<void> _cameraVideoRecStart(
    _CameraVideoRecStart event,
    Emitter<CameraState> emitter,
  ) async {
    if (state.isReady) {
      try {
        if (DlsPlatform.dlsPlatform == DlsPlatformType.mobile ||
            DlsPlatform.dlsPlatform == DlsPlatformType.web ||
            DlsPlatform.dlsSubPlatform == DlsPlatformSubType.windows) {
          unawaited(_cameraController!.startVideoRecording());
        }
        if (DlsPlatform.dlsPlatform == DlsPlatformType.desktop &&
            DlsPlatform.dlsSubPlatform == DlsPlatformSubType.macOS) {
          unawaited(_macosController!.recordVideo());
        }
        emitter(const CameraState.captureInProgress());
      } catch (error, stack) {
        AppDI.findRepository<DlsLogger>().errorPrinter(error, stack);
        emitter(CameraState.failure(message: error.toString()));
      }
    }
  }

  Future<void> _cameraVideoRecStop(
    _CameraVideoRecStop event,
    Emitter<CameraState> emitter,
  ) async {
    if (state.isCapturing) {
      try {
        DLSFile? result;
        if (DlsPlatform.dlsPlatform == DlsPlatformType.mobile ||
            DlsPlatform.dlsPlatform == DlsPlatformType.web ||
            DlsPlatform.dlsSubPlatform == DlsPlatformSubType.windows) {
          final videoFile = await _cameraController!.stopVideoRecording();
          if (DlsPlatform.dlsPlatform == DlsPlatformType.web) {
            final xFile = XFile.fromData(
              await videoFile.readAsBytes(),
              name: '${videoFile.name}.mp4',
              path: videoFile.path,
            );
            result = await DLSFile.fromXFile(xFile);
          } else {
            result = await DLSFile.fromXFile(videoFile);
          }
        }
        if (DlsPlatform.dlsPlatform == DlsPlatformType.desktop &&
            DlsPlatform.dlsSubPlatform == DlsPlatformSubType.macOS) {
          final audioFile = await _macosController!.stopRecording();
          if (audioFile != null) {
            final xFile = XFile.fromData(
              audioFile.bytes ?? Uint8List(0),
              name: '$getRandomString.mp4',
              path: '$getRandomString.mp4',
            );
            result = await DLSFile.fromXFile(xFile);
          }
        }
        if (event.save && result != null) {
          emitter(CameraState.captureSuccess(result));
        } else {
          add(const CameraEvent.cameraCleanUp());
        }
        event.onComplete?.call(result);
      } catch (error) {
        AppDI.findRepository<DlsLogger>().errorPrinter(error);
        emitter(CameraState.failure(message: error.toString()));
        event.onComplete?.call(null);
      }
    } else {
      event.onComplete?.call(null);
    }
  }

  Future<void> _cameraCleanup(
    _CameraCleanup event,
    Emitter<CameraState> emitter,
  ) async {
    await _cameraCleanupResources();
    emitter(const CameraState.initial());
  }

  @override
  Future<void> close() async {
    await _cameraCleanupResources();
    return super.close();
  }

  Future<void> _cameraCleanupResources() async {
    try {
      if (DlsPlatform.dlsPlatform == DlsPlatformType.mobile ||
          DlsPlatform.dlsPlatform == DlsPlatformType.web ||
          DlsPlatform.dlsSubPlatform == DlsPlatformSubType.windows) {
        await _cameraController?.dispose();
      }
      if (DlsPlatform.dlsPlatform == DlsPlatformType.desktop &&
          DlsPlatform.dlsSubPlatform == DlsPlatformSubType.macOS) {
        await _macosController?.destroy();
      }
    } finally {
      _cameraController = null;
      _macosController = null;
    }
  }

  Future<camera.CameraController> _getMobileCameraController(
    camera.ResolutionPreset resolutionPreset,
    camera.CameraLensDirection cameraLensDirection,
  ) async {
    final cameras = await camera.availableCameras();
    if (cameras.isEmpty) {
      throw Exception('No supported cameras.');
    }
    final aCamera = cameras.firstWhereOrNull(
          (camera) => camera.lensDirection == cameraLensDirection,
        ) ??
        cameras.first;

    return camera.CameraController(aCamera, resolutionPreset);
  }

  Future<bool> _checkMicCameraPermission() async {
    // permission_handler doesn't supported here
    if (DlsPlatform.dlsPlatform == DlsPlatformType.desktop &&
        (DlsPlatform.dlsSubPlatform == DlsPlatformSubType.macOS ||
            DlsPlatform.dlsSubPlatform == DlsPlatformSubType.linux)) {
      return true;
    }
    final status = await [Permission.camera, Permission.microphone].request();
    return status.entries.every(
      (e) =>
          e.value == PermissionStatus.granted ||
          e.value == PermissionStatus.limited,
    );
  }
}
