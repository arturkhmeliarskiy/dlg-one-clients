import 'package:camera/camera.dart' as camera_mobile_web;
import 'package:camera_macos/camera_macos_view.dart';
import 'package:common/common.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/models/dls_file.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CameraLayout extends StatefulWidget {
  const CameraLayout({
    required this.onCapturedFile,
    super.key,
  });

  final ValueChanged<DLSFile> onCapturedFile;

  @override
  State<CameraLayout> createState() => _CameraLayoutState();
}

class _CameraLayoutState extends State<CameraLayout> with NotificationsMixin {
  final _previewKey = UniqueKey();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CameraBloc, CameraState>(
      listener: (_, state) {
        state.maybeWhen(
          orElse: () {},
          failure: (message) => showDLSSnackBar(context, message),
          captureSuccess: (file) {
            widget.onCapturedFile(file);
          },
        );
      },
      builder: (_, state) {
        return LayoutBuilder(
          builder: (_, constrains) {
            if (state.isInitial) {
              return const SizedBox();
            } else if (state.isInitializeController ||
                state.isReady ||
                state.isCapturing) {
              return SizedBox(
                width: constrains.maxWidth,
                height: constrains.maxHeight,
                child: FittedBox(
                  clipBehavior: Clip.hardEdge,
                  fit: DlsPlatform.dlsSubPlatform == DlsPlatformSubType.macOS
                      ? BoxFit.fitWidth
                      : BoxFit.cover,
                  child: _PlatformCameraPreview(
                    previewKey: _previewKey,
                    width: constrains.maxWidth,
                    height: constrains.maxHeight,
                  ),
                ),
              );
            } else if (state.isCaptureSuccess) {
              return Container(
                width: constrains.maxWidth,
                height: constrains.maxHeight,
                color: context.c_white_text,
                alignment: Alignment.center,
                child: DLSPreloader.newDLS,
              );
            } else if (state.isFailure) {
              return Container(
                width: constrains.maxWidth,
                height: constrains.maxHeight,
                color: context.c_white_text,
                alignment: Alignment.center,
                child: DlsFailure(
                  message: state.failureMessage,
                  onTap: () {
                    context
                        .read<CameraBloc>()
                        .add(const CameraEvent.cameraCleanUp());
                  },
                  buttonText: S.current.repeat,
                ),
              );
            }
            return const SizedBox();
          },
        );
      },
    );
  }
}

class _PlatformCameraPreview extends StatelessWidget {
  const _PlatformCameraPreview({
    required this.width,
    required this.height,
    required this.previewKey,
    super.key,
  });

  final double width;
  final double height;
  final Key previewKey;

  @override
  Widget build(BuildContext context) {
    final cameraBloc = context.read<CameraBloc>();
    if (DlsPlatform.dlsPlatform == DlsPlatformType.mobile ||
        DlsPlatform.dlsPlatform == DlsPlatformType.web ||
        DlsPlatform.dlsSubPlatform == DlsPlatformSubType.windows) {
      return SizedBox(
        width: width,
        height: height,
        child: camera_mobile_web.CameraPreview(
          key: previewKey,
          cameraBloc.cameraController,
        ),
      );
    } else if (DlsPlatform.dlsSubPlatform == DlsPlatformSubType.macOS) {
      return SizedBox(
        width: width,
        height: height,
        child: CameraMacOSView(
          key: previewKey,
          fit: BoxFit.fitWidth,
          cameraMode: CameraMacOSMode.video,
          onCameraInizialized: (controller) {
            cameraBloc.add(
              CameraEvent.cameraControllerInitialized(
                macosController: controller,
              ),
            );
          },
        ),
      );
    }
    return const SizedBox();
  }
}
