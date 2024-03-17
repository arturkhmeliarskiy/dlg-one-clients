import 'dart:async';

import 'package:common/common.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/features/media/media_player/media_player_controller.dart';
import 'package:dls_one/features/media/media_player/media_player_scope.dart';
import 'package:dls_one/web/sip/sip.dart';
import 'package:dls_one/web/sip/view/widgets/incoming_call_controls_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:rest_api/rest_api.dart';

class MobileIncomingCallPage extends StatefulWidget {
  const MobileIncomingCallPage({
    required this.onAccept,
    required this.onReject,
    super.key,
  });

  final VoidCallback onAccept;
  final VoidCallback onReject;

  @override
  State<MobileIncomingCallPage> createState() => _MobileIncomingCallPageState();
}

class _MobileIncomingCallPageState extends State<MobileIncomingCallPage>
    with WidgetsBindingObserver {
  late MediaPlayerController controller;

  @override
  void initState() {
    super.initState();
    controller = MediaPlayerScope.of(context).configureController(
      'incomingPersonalCall',
      const MediaSource.asset(Assets.simpleMusic),
      forceRequestFocus: true,
    );
    controller.play();
    unawaited(_checkForPermissions());
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    unawaited(controller.stop());
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      unawaited(
        _checkForPermissions(),
      );
    }
  }

  Future<bool> _checkForPermissions() async {
    final isCameraAccessGranted =
        (await Permission.camera.status) == PermissionStatus.granted;
    final isMicAccessGranted =
        (await Permission.microphone.status) == PermissionStatus.granted;
    if (!isCameraAccessGranted || !isMicAccessGranted) {
      // ignore: use_build_context_synchronously
      final ans = await showDLSDialog(
        context,
        S.current.grantingAccess,
        !isCameraAccessGranted && !isMicAccessGranted
            ? S.current.grantingAccessMicOrCameraQuestion
            : !isCameraAccessGranted
                ? S.current.grantingAccessCameraQuestion
                : S.current.grantingAccessMicQuestion,
      );
      if (ans?.value ?? false) {
        await openAppSettings();
      }
      return false;
    } else {
      return true;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.c_calls_background,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BlocBuilder<IncomingCallBloc, IncomingCallState>(
            builder: (context, state) {
              final caller = state.whenOrNull(
                initial: (activeCall, transaction, caller) => caller,
              );
              if (caller?.id == null) {
                return SizedBox(
                  height: 70.h,
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 20.r,
                      ),
                      SizedBox(height: 10.h),
                      DLSHeaders.h3('', color: context.c_white_text),
                    ],
                  ),
                );
              }
              return SizedBox(
                height: 70.h,
                child: Column(
                  children: [
                    DlsAvatar(matrixUserId: caller!.id),
                    SizedBox(height: 10.h),
                    DLSHeaders.h3(
                      caller.DLSUserName,
                      color: context.c_white_text,
                    ),
                  ],
                ),
              );
            },
          ),
          SizedBox(height: 50.h),
          IncomingCallControlsWidget(
            onAccept: () async {
              final isOk = await _checkForPermissions();
              if (isOk) {
                widget.onAccept();
              }
            },
            onReject: widget.onReject,
          ),
        ],
      ),
    );
  }
}
