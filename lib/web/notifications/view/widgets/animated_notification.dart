import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/notifications/notifications.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notifications_models/notifications_models.dart';

class AnimatedNotification extends StatefulWidget {
  const AnimatedNotification({
    required this.notification,
    required this.onTapCloseNotification,
    super.key,
  });

  final ValueChanged<DLSNotification>? onTapCloseNotification;
  final DLSNotification notification;

  @override
  State<AnimatedNotification> createState() => _AnimatedNotificationState();
}

class _AnimatedNotificationState extends State<AnimatedNotification> {
  bool _visible = true;

  // TODO(nightwelf): не удалять, это надо будет восстановить чуть позже
  // late final Timer _showingTimer;
  //
  //
  // @override
  // void initState() {
  //   _showingTimer = Timer.periodic(
  //     const Duration(milliseconds: 5000),
  //         (timer) {
  //       setState(() {
  //         _visible = false;
  //       });
  //     },
  //   );
  //   super.initState();
  // }
  //
  // @override
  // void dispose() {
  //   _showingTimer.cancel();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      onEnd: () {
        context.read<NotificationsPushBloc>().add(
          NotificationsPushEvent.hidePush(
            widget.notification,
          ),
        );
      },
      opacity: _visible ? 1.0 : 0.0,
      duration: const Duration(milliseconds: 300),
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 6.h,
          horizontal: 12.w,
        ),
        child: DLSNotificationWidgetBuilder.build(
          notification: widget.notification,
          contentCallbacks: ContentCallbacks.fromNotification(
            widget.notification,
            context,
          ),
          actions: DLSiconButton(
            onTap: () => widget.onTapCloseNotification?.call(
              widget.notification,
            ),
            svg: Assets.icons.times1.svg(
              width: 18.r,
              height: 18.r,
              colorFilter: ColorFilter.mode(
                context.c_text_grey,
                BlendMode.srcIn,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
