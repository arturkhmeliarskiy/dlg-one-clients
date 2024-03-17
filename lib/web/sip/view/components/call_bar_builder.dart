import 'package:auto_route/auto_route.dart';
import 'package:collection/collection.dart';
import 'package:dls_one/app/router/app_router.dart';
import 'package:dls_one/web/sip/sip.dart';
import 'package:dls_one/web/sip/view/components/call_active_bar.dart';
import 'package:dls_one/web/sip/view/components/call_passive_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CallBarBuilder {
  static Widget builder({
    /// ид чата
    /// для отображения активного звонка оставить null
    String? chatId,

    /// обработчик нажатия на bar
    required ValueChanged<String> onTapBar,
  }) {
    return BlocBuilder<SipBloc, SipState>(
      builder: (context, state) {
        return state.map(
          idle: (value) {
            final meta = value.activeCalls
                .firstWhereOrNull(
                  (element) => element.callMeta.chatId == chatId,
                )
                ?.callMeta;
            if (meta == null || meta.startAt == null) {
              return const SizedBox();
            }

            return CallPassiveBar(
              onTapBar: () => onTapBar(meta.chatId),
              chatId: meta.chatId,
              startAt: meta.startAt!,
              usersCount: meta.callers.length,
            );
          },
          hangUp: (value) {
            final meta = value.activeCalls
                .firstWhereOrNull(
                  (element) => element.callMeta.chatId == chatId,
                )
                ?.callMeta;
            if (meta == null || meta.startAt == null) {
              return const SizedBox();
            }

            return CallPassiveBar(
              onTapBar: () => onTapBar(meta.chatId),
              chatId: meta.chatId,
              startAt: meta.startAt!,
              usersCount: meta.callers.length,
            );
          },
          calling: (_) => const SizedBox(),
          activeCall: (value) {
            final callOfThisChat = state.activeCalls.firstWhereOrNull(
              (element) => element.callMeta.chatId == chatId,
            );
            if (value.currentActiveCall.callMeta.startAt != null &&
                chatId == null) {
              return CallActiveBar(
                onTapBar: () =>
                    onTapBar(value.currentActiveCall.callMeta.chatId),
                chatId: value.currentActiveCall.callMeta.chatId,
                onTapClose: () {
                  context.read<SipBloc>().add(const SipEvent.hangUp());
                  final router = AutoRouter.of(context);
                  if (router.currentSegments.last.path == 'call') {
                    if (router.canPop()) {
                      router.pop();
                    } else {
                      context.navigateTo(const ChatsRootRoute());
                    }
                  }
                },
                usersCount: value.currentActiveCall.callMeta.callers.length,
                startAt: value.currentActiveCall.callMeta.startAt!,
              );
            }
            if (value.currentActiveCall.callMeta.chatId != chatId &&
                callOfThisChat?.callMeta.chatId == chatId &&
                value.currentActiveCall.callMeta.startAt != null &&
                chatId != null) {
              return CallPassiveBar(
                onTapBar: () => onTapBar(chatId),
                chatId: chatId,
                usersCount: (callOfThisChat?.callMeta.callers ?? []).length,
                startAt: callOfThisChat!.callMeta.startAt!,
              );
            }
            return const SizedBox();
          },
        );
      },
    );
  }
}
