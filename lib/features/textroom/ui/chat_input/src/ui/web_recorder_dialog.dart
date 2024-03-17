// ignore_for_file: unnecessary_lambdas, use_build_context_synchronously, cascade_invocations

import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:camera/camera.dart';
import 'package:common/common.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/models/dls_file.dart';
import 'package:dls_one/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:record/record.dart' as voice_rec;

@RoutePage<DLSFile>()
class WebRecorderDialogPage extends StatefulWidget implements AutoRouteWrapper {
  const WebRecorderDialogPage({
    required this.voiceOnly,
    this.canSetupInputDevices = false,
    super.key,
  });

  final bool voiceOnly;
  final bool canSetupInputDevices;

  @override
  State<WebRecorderDialogPage> createState() => _WebRecorderDialogPageState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<CameraBloc>(
      create: (_) {
        return CameraBloc();
      },
      child: this,
    );
  }
}

class _WebRecorderDialogPageState extends State<WebRecorderDialogPage>
    with SingleTickerProviderStateMixin {
  var _isCameraEnabled = false;
  var _isMicMuted = false;
  var _isCameraMuted = false;
  var _recordDuration = Duration.zero;
  late final Ticker _ticker;
  final _voiceRec = voice_rec.Record();

  bool get _isRecording => _ticker.isTicking;

  @override
  void initState() {
    _isCameraEnabled = !widget.voiceOnly;
    _ticker = createTicker((duration) {
      setState(() {
        _recordDuration = duration;
      });
    });
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      if (!widget.voiceOnly) {
        context.read<CameraBloc>().add(
              const CameraEvent.cameraInitialize(),
            );
      }
    });
  }

  @override
  void dispose() {
    _ticker.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: context.c_shadow.withOpacity(0.4),
      child: Container(
        width: 400.w,
        height: 320.h,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.r),
          color: context.c_calls_background,
        ),
        child: Column(
          children: [
            /// Top control buttons
            Padding(
              padding: EdgeInsets.only(left: 22.w, top: 22.h, right: 22.w),
              child: Row(
                children: [
                  const Spacer(),
                  if (_isRecording && !widget.voiceOnly)
                    Padding(
                      padding: EdgeInsets.only(left: 16.w),
                      child: Text(
                        formatTimeHHMMSSmm(_recordDuration),
                        style: context.ts_s12h12w400.copyWith(
                          color: context.c_white_text,
                        ),
                      ),
                    ),
                  const Spacer(),
                  MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: GestureDetector(
                      onTap: () {
                        context.popRoute();
                      },
                      child: Assets.icons.paperclip4.svg(
                        width: 18.w,
                        height: 18.h,
                        color: context.c_placeholder,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            /// Content
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 22.h),
                child: widget.voiceOnly
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 60.w,
                            height: 60.h,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: context.c_calls_grey,
                            ),
                            child: SvgPicture.asset(
                              _isMicMuted
                                  ? Assets.icons.microphoneSlash1.path
                                  : Assets.icons.microphone1.path,
                              width: 24.w,
                              height: 24.h,
                              color: context.c_white_text,
                            ),
                          ),
                          SizedBox(height: 12.h),
                          if (!_isCameraEnabled)
                            Text(
                              formatTimeHHMMSSmm(_recordDuration),
                              style: context.ts_s12h12w400.copyWith(
                                color: context.c_white_text,
                              ),
                            ),
                        ],
                      )
                    : CameraLayout(
                        onCapturedFile: (_) {},
                      ),
              ),
            ),

            /// Bottom control buttons
            Padding(
              padding: EdgeInsets.only(left: 22.w, bottom: 22.h, right: 22.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (!widget.voiceOnly && widget.canSetupInputDevices)
                    Padding(
                      padding: EdgeInsets.only(right: 12.w),
                      child: WebButtonIconWithTooltip(
                        width: 40.w,
                        height: 40.h,
                        icon: _isCameraMuted
                            ? Assets.icons.cameraSlash.path
                            : Assets.icons.paperclip25.path,
                        iconColor: context.c_white_text,
                        background: context.c_calls_grey,
                        onTap: _onMuteCamera,
                      ),
                    ),
                  if (widget.canSetupInputDevices)
                    Padding(
                      padding: EdgeInsets.only(right: 12.w),
                      child: WebButtonIconWithTooltip(
                        width: 40.w,
                        height: 40.h,
                        icon: _isMicMuted
                            ? Assets.icons.microphoneSlash1.path
                            : Assets.icons.microphone1.path,
                        iconColor: context.c_white_text,
                        background: context.c_calls_grey,
                        onTap: _onMuteMic,
                      ),
                    ),
                  if (!_isRecording)
                    WebButtonTextIconTooltip(
                      height: 40.h,
                      text: S.of(context).recorderStart,
                      iconLeft: Assets.icons.phone71.path,
                      color: context.c_white_text,
                      background: context.c_green,
                      tooltip: '',
                      onTap: _onStartRecord,
                    ),
                  if (_isRecording)
                    WebButtonTextIconTooltip(
                      height: 40.h,
                      text: S.of(context).recorderFinish,
                      iconLeft: Assets.icons.phone7.path,
                      color: context.c_white_text,
                      background: context.c_red,
                      tooltip: '',
                      onTap: _onStopRecord,
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _onMuteMic() {
    setState(() {
      _isMicMuted = !_isMicMuted;
    });
  }

  void _onMuteCamera() {
    setState(() {
      _isCameraMuted = !_isCameraMuted;
    });
  }

  Future<void> _onStartRecord() async {
    final hasPermission = await _checkMicCameraPermission();
    if (!hasPermission) {
      return;
    }
    if (widget.voiceOnly) {
      unawaited(_voiceRec.start(encoder: voice_rec.AudioEncoder.opus));
    } else {
      context.read<CameraBloc>().add(
            const CameraEvent.cameraVideoRecStart(),
          );
    }
    unawaited(_ticker.start());
  }

  Future<void> _onStopRecord() async {
    final resultFile = Completer<DLSFile?>();
    if (widget.voiceOnly) {
      final res = await _voiceRec.stop();
      if (res != null) {
        // Fix iOS/MacOS error "Cannot open file" and remove 'file' from path
        final xFile = XFile(
          res.replaceAll('file://', ''),
          name: 'audio_$getRandomString.m4a',
        );
        final dlsFile = await DLSFile.fromXFile(xFile);
        resultFile.complete(dlsFile);
      } else {
        resultFile.complete();
      }
    } else {
      /// управление камерой
      context.read<CameraBloc>().add(
            CameraEvent.cameraVideoRecStop(
              save: false,
              onComplete: (file) {
                resultFile.complete(file);
              },
            ),
          );
    }
    await resultFile.future.then((value) async {
      setState(() {
        _ticker.stop(canceled: true);
      });
      unawaited(context.popRoute(value));
    });
  }

  Future<bool> _checkMicCameraPermission() async {
    // permission_handler doesn't supported here
    if (DlsPlatform.dlsPlatform == DlsPlatformType.desktop &&
        (DlsPlatform.dlsSubPlatform == DlsPlatformSubType.macOS ||
            DlsPlatform.dlsSubPlatform == DlsPlatformSubType.linux)) {
      return true;
    }
    final status = await [Permission.camera, Permission.microphone].request();
    return status.entries.every((e) => e.value == PermissionStatus.granted);
  }
}
