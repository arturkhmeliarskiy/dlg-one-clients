import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:dls_one/app/di/app_di.dart';
import 'package:dls_one/app/router/app_router.dart';
import 'package:dls_one/web/notifications/notifications.dart';
import 'package:dls_one/web/sip/sip.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notifications_models/notifications_models.dart';

class ContentCallbacks {
  ContentCallbacks({
    this.onTapParticipate,
    this.onTapNotParticipate,
    this.onTapJoin,
    this.onTap,
    this.onTapMinimizedJoin,
  });

  factory ContentCallbacks.fromNotification(
    DLSNotification notification,
    BuildContext context,
  ) {
    return notification.maybeMap(
      orElse: ContentCallbacks.new,
      eventInvite: (value) => ContentCallbacks(
        onTapNotParticipate: () {
          /// todo
          AppDI.findRepository<DlsLogger>().i('onTapNotParticipate');
        },
        onTapParticipate: () {
          /// todo
          AppDI.findRepository<DlsLogger>().i('onTapParticipate');
        },
      ),
      eventCallStart: (value) => ContentCallbacks(
        onTapJoin: () async {
          context.read<SipBloc>().add(
                SipEvent.doCall(
                  value.nObject.uuid,
                  false,
                ),
              );
          await context.pushRoute(const CallRoute());
        },
        onTapMinimizedJoin: () => context.read<SipBloc>().add(
              SipEvent.doCall(
                value.nObject.uuid,
                false,
              ),
            ),
      ),
      chatCallStart: (value) => ContentCallbacks(
        onTapJoin: () async {
          context.read<SipBloc>().add(
                SipEvent.doCall(
                  value.nObject.uuid,
                  false,
                ),
              );
          await context.pushRoute(const CallRoute());
        },
        onTapMinimizedJoin: () => context.read<SipBloc>().add(
              SipEvent.doCall(
                value.nObject.uuid,
                false,
              ),
            ),
      ),
      chatPrivateMessage: (message) => ContentCallbacks(
        onTap: () {
          final items = message.nObject.uuid.split(':');
          if (items.length > 1) {
            context.router
                .pushNamed('/chats/personal/${items.first}/${items.last}');
          }
          context
              .read<NotificationsPushBloc>()
              .add(NotificationsPushEvent.hidePush(message));
        },
      ),
      chatGroupMessage: (message) => ContentCallbacks(
        onTap: () {
          final items = message.nObject.uuid.split(':');
          if (items.length > 1) {
            context.router
                .pushNamed('/chats/group/${items.first}/${items.last}');
          }
          context
              .read<NotificationsPushBloc>()
              .add(NotificationsPushEvent.hidePush(message));
        },
      ),
      chatAddGroupUsers: (message) => ContentCallbacks(
        onTap: () {
          final items = message.nObject.uuid.split(':');
          if (items.length > 1) {
            context.router
                .pushNamed('/chats/group/${items.first}/${items.last}');
          }
          context
              .read<NotificationsPushBloc>()
              .add(NotificationsPushEvent.hidePush(message));
        },
      ),
      // TODO(nightwelf): на ваше сообщение ответили
      chatReplyMessage: (message) => ContentCallbacks(
        onTap: () {
          context
              .read<NotificationsPushBloc>()
              .add(NotificationsPushEvent.hidePush(message));
        },
      ),
      chatAddYouToGroup: (message) => ContentCallbacks(
        onTap: () {
          final items = message.nObject.uuid.split(':');
          if (items.length > 1) {
            context.router
                .pushNamed('/chats/group/${items.first}/${items.last}');
          }
          context
              .read<NotificationsPushBloc>()
              .add(NotificationsPushEvent.hidePush(message));
        },
      ),
      chatChangeGroupName: (message) => ContentCallbacks(
        onTap: () {
          context
              .read<NotificationsPushBloc>()
              .add(NotificationsPushEvent.hidePush(message));
        },
      ),
      chatRemoveGroupUsers: (message) => ContentCallbacks(
        onTap: () {},
      ),
    );
  }

  final VoidCallback? onTapJoin;
  final VoidCallback? onTap;
  final VoidCallback? onTapMinimizedJoin;
  final VoidCallback? onTapParticipate;
  final VoidCallback? onTapNotParticipate;
}
