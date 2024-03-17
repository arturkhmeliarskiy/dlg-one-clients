import 'package:auto_route/auto_route.dart';
import 'package:dls_one/app/router/app_router.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/features/home/presentation/bloc/global_chat_bloc.dart';
import 'package:dls_one/utils/utils.dart';
import 'package:dls_one/web/chat/chat.dart';
import 'package:dls_one/web/chat/view/chat_personal/chat_personal.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rest_api/rest_api.dart';

class WebChatPersonalChatList extends StatelessWidget {
  const WebChatPersonalChatList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.c_white_text,
      appBar: DLSSearchChatAppBar(
        onChange: (value) => context
            .read<SearchChatBloc>()
            .add(SearchChatEvent.onChangeSearch(value)),
        onSubmitted: (value) => context
            .read<SearchChatBloc>()
            .add(SearchChatEvent.onChangeSearch(value)),
        onClear: () =>
            context.read<SearchChatBloc>().add(const SearchChatEvent.onClear()),
      ),
      body: BlocListener<ChatManagerBloc, ChatManagerState>(
        listener: (context, state) {
          state.whenOrNull(
            created: (chatId, isDirect) {
              if (isDirect) {
                _onChatItemTap(context, chatId);
              }
            },
            failure: (message) {
              showDLSDialog2(
                context,
                S.current.error,
                message,
                width: S.current.createPrivateChatError.length * 10,
                onlyYesButton: true,
                yesButtonLabel: S.current.ok,
              );
            },
          );
        },
        listenWhen: (previous, current) {
          return current.maybeWhen(
            orElse: () => false,
            created: (chatId, isDirect) {
              return previous.maybeWhen(
                orElse: () => true,
                created: (chatIdPrev, isDirectPrev) => chatIdPrev != chatId,
              );
            },
            failure: (_) => true,
          );
        },
        child: BlocBuilder<SearchChatBloc, SearchChatState>(
          builder: (context, state) {
            return state.maybeWhen(
              orElse: () => _WebChatPersonalChatListBuilder(
                onChatItemTap: (value) => _onChatItemTap(context, value),
              ),
              data: (data) => WebSearchResultsList(
                data: data,
                typeUi: SearchResultUiType.personalChatsAndUsers,
                onNewUserTap: (value) {
                  _onNewUserTap(context, value);
                },
                onItemTap: (value) => _onChatItemTap(context, value),
              ),
              failure: (message) => DlsFailure(
                message: message,
                onTap: () => context
                    .read<SearchChatBloc>()
                    .add(const SearchChatEvent.onClear()),
                buttonText: S.current.done,
                borderWidth: 1,
              ),
              loading: () => Container(
                alignment: Alignment.topCenter,
                padding: EdgeInsets.only(top: 50.h),
                child: DLSPreloader.notCenter,
              ),
            );
          },
        ),
      ),
    );
  }

  void _onChatItemTap(BuildContext context, String roomId) {
    final items = roomId.split(':');

    final currentChatId = getRoomIdByCurrentPath(context);

    if (currentChatId.isEmpty) {
      context.pushRoute(
        WebChatPersonalRoute(
          chatId: items.first,
          server: items.last,
        ),
      );
    } else {
      context.replaceRoute(
        WebChatPersonalRoute(
          chatId: items.first,
          server: items.last,
          key: Key('WebChatPersonal_TextRoomPage_${items.first}:${items.last}'),
        ),
      );
    }
  }

  void _onNewUserTap(BuildContext context, DLSUser user) {
    context.read<ChatManagerBloc>().add(ChatManagerEvent.createPrivate(user));
    context.read<SearchChatBloc>().add(const SearchChatEvent.onClear());
  }
}

class _WebChatPersonalChatListBuilder extends StatelessWidget {
  const _WebChatPersonalChatListBuilder({
    required this.onChatItemTap,
  });

  final ValueChanged<String> onChatItemTap;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GlobalChatBloc, GlobalChatState>(
      buildWhen: (previous, current) =>
          previous.privateRooms != current.privateRooms ||
          previous.privateRoomsUnreadCount != current.privateRoomsUnreadCount,
      builder: (context, globalChatState) {
        return BlocBuilder<ChatPersonalBloc, ChatPersonalState>(
          builder: (context, state) {
            return WebRoomsList(
              rooms: globalChatState.privateRooms,
              onItemTap: onChatItemTap,
              emptyPanel: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    S.current.personal_list_is_empty,
                    style: context.ts_s14h22_4w400
                        .copyWith(color: context.c_text_grey),
                  ),
                  SizedBox(height: 4.h),
                  DLSButtonText(
                    text: S.current.search_by_people,
                    onTap: () {
                      // TODO(alexsh): implement chat search state
                    },
                    iconLeft: Assets.icons.search1.svg(
                      width: 18.w,
                      height: 18.h,
                      color: context.c_blue,
                    ),
                    alignment: MainAxisAlignment.center,
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
