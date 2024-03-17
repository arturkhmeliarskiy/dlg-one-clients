import 'dart:async';

import 'package:common/common.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/features/media/media_player/media_player_controller.dart';
import 'package:dls_one/features/media/media_player/media_player_scope.dart';
import 'package:dls_one/utils/utils.dart';
import 'package:dls_one/web/notifications/notifications.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NotificationSoundWrapper extends StatefulWidget {
  const NotificationSoundWrapper({
    required this.child,
    super.key,
  });

  final Widget child;

  @override
  State<NotificationSoundWrapper> createState() =>
      _NotificationSoundWrapperState();
}

class _NotificationSoundWrapperState extends State<NotificationSoundWrapper> {
  MediaPlayerController? _controller;

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<NotificationsPushBloc, NotificationsPushState>(
      listener: (context, state) {
        if (state.allNotifications.isNotEmpty) {
          _controller ??= MediaPlayerScope.of(context).configureController(
            getUuid,
            const MediaSource.asset(Assets.bellNotification),
            audioLoopMode: DlsPlatform.dlsPlatform == DlsPlatformType.web
                ? AudioLoopMode.one
                : AudioLoopMode.off,
          );
          unawaited(
            _controller?.play().then(
                  (value) => _controller?.seek(Duration.zero),
                ),
          );
        }
      },
      listenWhen: (previous, current) =>
          current.allNotifications.length > previous.allNotifications.length,
      child: widget.child,
    );
  }
}
