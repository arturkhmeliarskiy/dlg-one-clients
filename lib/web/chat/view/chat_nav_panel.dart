import 'package:auto_route/auto_route.dart';
import 'package:collection/collection.dart';
import 'package:dls_matrix_client/dls_matrix_client.dart';
import 'package:dls_one/app/router/app_router.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/features/home/presentation/bloc/global_chat_bloc.dart';
import 'package:dls_one/utils/utils.dart';
import 'package:dls_one/web/chat/chat.dart';
import 'package:dls_one/web/chat/view/widgets/web_chat_panel_appbar.dart';
import 'package:dls_one/web/sip/sip.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:matrix/matrix.dart';
import 'package:rest_api/rest_api.dart';

class ChatNavPanel extends StatelessWidget {
  const ChatNavPanel({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ChatManagerBloc(
            matrixClient: context.read<DlsMatrixClient>(),
          ),
        ),
        BlocProvider(
          create: (context) => SearchChatBloc(
            restApi: context.read<DlsRestApi>(),
            matrixClient: context.read<DlsMatrixClient>(),
          ),
        ),
      ],
      child: Scaffold(
        backgroundColor: context.c_grey_grey,
        appBar: WebChatPanelAppBar(
          title: S.current.messages,
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 7.h),
              _PrivateChatBuilder(
                isSelected:
                    context.watchRouter.currentPath.contains('personal'),
                onPrivateChatTap: () {
                  final matrixClient = context.read<DlsMatrixClient>();
                  final items =
                      matrixClient.privateRooms.firstOrNull?.id.split(':');

                  context.replaceRoute(
                    WebChatPersonalWrapperRoute(
                      children: items != null
                          ? [
                              WebChatPersonalRoute(
                                chatId: items.first,
                                server: items.last,
                              ),
                            ]
                          : null,
                    ),
                  );
                },
              ),
              SizedBox(height: 1.h),
              WebButtonIconTitleNotification(
                icon: Assets.icons.star1.path,
                title: S.current.important,
                isPressed: context.topRoute.name == ChatBookmarkRoute.name,
                onTap: () {
                  context.replaceRoute(
                    const ChatBookmarkRoute(),
                  );
                },
              ),
              SizedBox(height: 1.h),
              WebButtonIconTitleNotification(
                icon: Assets.icons.commentLines.path,
                title: S.current.my_replies,
                isPressed: context.topRoute.name == ChatCommentRoute.name,
                onTap: () {
                  context.replaceRoute(
                    const ChatCommentRoute(),
                  );
                },
              ),
              SizedBox(height: 24.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 20.h,
                      bottom: 12.h,
                      left: 20.w,
                    ),
                    child: Text(
                      S.current.groups,
                      style: context.ts_s14h16_4w500
                          .copyWith(color: context.c_text),
                      textHeightBehavior: const TextHeightBehavior(
                        applyHeightToFirstAscent: false,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 12.w, bottom: 8.h),
                    child: Builder(
                      builder: (context) => WebButtonIconWithTooltip(
                        tooltip: S.current.add_group,
                        icon: Assets.icons.plus1.path,
                        onTap: () {
                          groupNameDialog(
                            context,
                            SimpleGroup(name: '', users: []),
                          ).then((dynamic value) {
                            if (value is SimpleGroup) {
                              groupSelectUsersDialog(
                                context,
                                value,
                                title: S.current.groupAddPeople,
                                loadPersonalChatsOnInit: true,
                              ).then(
                                (dynamic value) {
                                  if (value is SimpleGroup) {
                                    context.read<ChatManagerBloc>().add(
                                          ChatManagerEvent.createGroup(value),
                                        );
                                  }
                                },
                              );
                            }
                          });
                        },
                      ),
                    ),
                  ),
                ],
              ),
              const Divider(),
              Expanded(
                child: _GroupChatBuilder(
                  selectedButton:
                      _GroupChatBuilder.getRouteByArguments(context),
                  onPublicRoomTap: (value) {
                    final items = value.split(':');

                    context.replaceRoute(
                      ChatGroupRoute(
                        chatId: items.first,
                        server: items.last,
                        key: Key(
                          'WebChatGroup_TextRoomPage_${items.first}:${items.last}',
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _PrivateChatBuilder extends StatelessWidget {
  const _PrivateChatBuilder({
    required this.isSelected,
    required this.onPrivateChatTap,
  });

  final bool isSelected;
  final VoidCallback onPrivateChatTap;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GlobalChatBloc, GlobalChatState>(
      buildWhen: (previous, current) =>
          // We need to handle two case:
          // - created new room, list count changed;
          // - new message added to room, list count not changed, but order changed;
          previous.privateRooms != current.privateRooms ||
          previous.privateRoomsUnreadCount != current.privateRoomsUnreadCount,
      builder: (context, state) {
        return WebButtonIconTitleNotification(
          icon: Assets.icons.listUl1.path,
          title: S.current.personal_chats,
          notificationCount: state.privateRoomsUnreadCount,
          isPressed: isSelected,
          onTap: onPrivateChatTap,
        );
      },
    );
  }
}

class _GroupChatBuilder extends StatelessWidget {
  const _GroupChatBuilder({
    required this.selectedButton,
    required this.onPublicRoomTap,
  });

  final String selectedButton;
  final ValueChanged<String> onPublicRoomTap;

  static String getRouteByArguments(BuildContext context) {
    if (context.topRoute.name != ChatGroupRoute.name) {
      return '';
    }

    final roomId = getRoomIdByCurrentPath(context);

    if (roomId.isEmpty) {
      return 'public_chat_unknown';
    }

    return 'public_chat_${roomId.keys.first}:${roomId.values.first}';
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DLSSearchChatAppBar(
          onChange: (value) => context
              .read<SearchChatBloc>()
              .add(SearchChatEvent.onChangeSearch(value, isOnlyGroups: true)),
          onSubmitted: (value) => context
              .read<SearchChatBloc>()
              .add(SearchChatEvent.onChangeSearch(value, isOnlyGroups: true)),
          onClear: () => context
              .read<SearchChatBloc>()
              .add(const SearchChatEvent.onClear()),
          isGroup: true,
        ),
        Expanded(
          child: BlocBuilder<SearchChatBloc, SearchChatState>(
            builder: (context, state) {
              return state.maybeWhen(
                orElse: () => _GroupAllChatsBuilder(
                  onPublicRoomTap: onPublicRoomTap,
                ),
                data: (rooms) => _GroupChatsList(
                  onPublicRoomTap: onPublicRoomTap,
                  rooms: rooms
                      .whereType<Room>()
                      .where((element) => !element.isDirectChat)
                      .toList(),
                  isSearch: true,
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
      ],
    );
  }
}

class _GroupAllChatsBuilder extends StatelessWidget {
  const _GroupAllChatsBuilder({
    required this.onPublicRoomTap,
  });

  final ValueChanged<String> onPublicRoomTap;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GlobalChatBloc, GlobalChatState>(
      buildWhen: (previous, current) =>
          // We need to handle two case:
          // - created new room, list count changed;
          // - new message added to room, list count not changed, but order changed;
          previous.roomNames != current.roomNames ||
          previous.publicRooms != current.publicRooms ||
          previous.publicRoomsUnreadCount != current.publicRoomsUnreadCount,
      builder: (context, state) {
        return _GroupChatsList(
          onPublicRoomTap: onPublicRoomTap,
          rooms: state.publicRooms,
        );
      },
    );
  }
}

class _GroupChatsList extends StatelessWidget {
  const _GroupChatsList({
    required this.onPublicRoomTap,
    required this.rooms,
    this.isSearch = false,
  });

  final ValueChanged<String> onPublicRoomTap;
  final List<Room> rooms;
  final bool isSearch;

  @override
  Widget build(BuildContext context) {
    if (isSearch && rooms.isEmpty) {
      return Center(
        child: DLSHeaders.h3(
          S.current.searchResultsIsEmpty,
        ),
      );
    }

    final roomId = getRoomIdByCurrentPath(context);

    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: rooms.map((e) {
          return Padding(
            padding: EdgeInsets.only(bottom: 2.h),
            child: WebButtonIconTitleNotification(
              title: e.getLocalizedDisplayname(),
              subWidget: CallTicker(chatId: e.id),
              notificationCount: e.notificationCount,
              // ignore: avoid_bool_literals_in_conditional_expressions
              isPressed: roomId.isEmpty
                  ? false
                  : '${roomId.keys.first}:${roomId.values.first}' == e.id,
              onTap: () {
                onPublicRoomTap(e.id);
              },
            ),
          );
        }).toList(),
      ),
    );
  }
}
