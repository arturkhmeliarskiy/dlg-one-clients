import 'dart:async';

import 'package:dls_one/core/core.dart';
import 'package:dls_one/features/media/media_player/media_player_controller.dart';
import 'package:dls_one/features/media/media_player/media_player_scope.dart';
import 'package:dls_one/web/sip/sip.dart';
import 'package:dls_one/web/sip/view/widgets/incoming_call_controls_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DesktopIncomingCallPage extends StatefulWidget {
  const DesktopIncomingCallPage({
    required this.onAccept,
    required this.onReject,
    super.key,
  });

  final VoidCallback onAccept;
  final VoidCallback onReject;

  @override
  State<DesktopIncomingCallPage> createState() =>
      _DesktopIncomingCallPageState();
}

class _DesktopIncomingCallPageState extends State<DesktopIncomingCallPage> {
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
  }

  @override
  void dispose() {
    unawaited(controller.stop());
    super.dispose();
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
            onAccept: widget.onAccept,
            onReject: widget.onReject,
          ),
        ],
      ),
    );
  }
}
