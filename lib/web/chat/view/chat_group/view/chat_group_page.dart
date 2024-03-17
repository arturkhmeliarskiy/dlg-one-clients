import 'package:auto_route/auto_route.dart';
import 'package:collection/collection.dart';
import 'package:dls_matrix_client/dls_matrix_client.dart';
import 'package:dls_one/app/router/app_router.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/core/widgets/dls_page_builder.dart';
import 'package:dls_one/features/features.dart';
import 'package:dls_one/features/home/presentation/bloc/global_chat_bloc.dart';
import 'package:dls_one/web/chat/chat_information/chat_information.dart';
import 'package:dls_one/web/chat/chat_manager/chat_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:multi_split_view/multi_split_view.dart';

@RoutePage()
class ChatGroupPage extends StatelessWidget {
  const ChatGroupPage({
    @pathParam required this.chatId,
    @pathParam required this.server,
    this.forwardMessages = const [],
    super.key,
  });

  final String chatId;
  final String server;
  final List<DlsChatMessageText> forwardMessages;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ChatManagerBloc(
        matrixClient: context.read<DlsMatrixClient>(),
      ),
      child: _ChatGroupLayout._(
        chatId: '$chatId:$server',
        forwardMessages: forwardMessages,
      ),
    );
  }
}

class _ChatGroupLayout extends StatefulWidget {
  const _ChatGroupLayout._({
    required this.chatId,
    required this.forwardMessages,
  });

  final String chatId;
  final List<DlsChatMessageText> forwardMessages;

  @override
  State<_ChatGroupLayout> createState() => _ChatGroupLayoutState();
}

class _ChatGroupLayoutState extends State<_ChatGroupLayout> {
  @override
  Widget build(BuildContext context) {
    final room = context
        .read<GlobalChatBloc>()
        .state
        .publicRooms
        .firstWhereOrNull((e) => e.id == widget.chatId);
    return Stack(
      children: [
        BlocListener<ChatManagerBloc, ChatManagerState>(
          listener: (context, state) {
            state.whenOrNull(
              message: (message) => showDLSDialog2(
                context,
                null,
                message,
                width: 200.w,
                onlyYesButton: true,
                yesButtonLabel: S.current.ok,
              ),
              notEnoughRights: (transaction) => showDLSDialog2(
                context,
                S.current.error,
                S.current.notEnoughRights,
                width: S.current.notEnoughRights.length * 10,
                onlyYesButton: true,
                yesButtonLabel: S.current.ok,
              ),
              leftChat: (transaction) {
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
                              forwardMessages: widget.forwardMessages,
                            ),
                          ]
                        : null,
                  ),
                );
              },
              rightsChanged: (transaction) => showDLSDialog2(
                context,
                S.current.rightsChanged,
                null,
                width: 200.w,
                onlyYesButton: true,
                yesButtonLabel: S.current.done,
              ),
            );
          },
          listenWhen: (previous, current) {
            return current.maybeWhen(
              orElse: () => false,
              message: (cur) {
                return previous.maybeWhen(
                  orElse: () => true,
                  message: (prev) => cur != prev,
                );
              },
              notEnoughRights: (cur) {
                return previous.maybeWhen(
                  orElse: () => true,
                  notEnoughRights: (prev) => cur != prev,
                );
              },
              rightsChanged: (cur) {
                return previous.maybeWhen(
                  orElse: () => true,
                  rightsChanged: (prev) => cur != prev,
                );
              },
              leftChat: (cur) {
                return previous.maybeWhen(
                  orElse: () => true,
                  leftChat: (prev) => cur != prev,
                );
              },
            );
          },
          child: DLSPageBuilder(
            narrow: const AutoRouter(),
            wide: AutoRouter(
              builder: (context, content) => ColoredBox(
                color: context.c_white_text,
                child: MultiSplitView(
                  dividerBuilder: (
                    Axis axis,
                    int index,
                    bool resizable,
                    bool dragging,
                    bool highlighted,
                    MultiSplitViewThemeData themeData,
                  ) {
                    return DlsVerticalPanelSplitter();
                  },
                  initialAreas: [
                    Area(weight: 0.8, minimalSize: 424),
                    Area(weight: 0.2, minimalSize: 200),
                  ],
                  children: [
                    WebTextRoomWrapperPage(
                      key: Key('TextRoomPage_${widget.chatId}'),
                      chatId: widget.chatId,
                      onOpenCommentsPanel: (msg) =>
                          _onOpenCommentsPanel(msg, context),
                      onOpenInfoPanel: () =>
                          _onOpenInfoPanel(context, room?.name),
                      onAddUsersToGroupChat: _onAddUsersToGroupChat,
                      onGroupChatRename: _onRenameGroupChat,
                      onGroupChatExit: _onExitGroupChat,
                      onGroupChatDelete: context
                              .read<DlsMatrixClient>()
                              .isMeOwnerOfChat(widget.chatId)
                          ? _onGroupChatDelete
                          : null,
                    ),
                    if (context.topRoute.path == 'thread' ||
                        context.topRoute.path == 'info')
                      content,
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  void _onRenameGroupChat() {
    final room = context
        .read<GlobalChatBloc>()
        .state
        .publicRooms
        .firstWhereOrNull((e) => e.id == widget.chatId);
    groupNameDialog(
      context,
      SimpleGroup(
        name: room?.name ?? '',
        users: [],
        chatId: widget.chatId,
      ),
    ).then(
      (dynamic value) {
        if (value is SimpleGroup) {
          context
              .read<ChatManagerBloc>()
              .add(ChatManagerEvent.updateName(value));
        }
      },
    );
  }

  void _onExitGroupChat() {
    final room = context
        .read<GlobalChatBloc>()
        .state
        .publicRooms
        .firstWhereOrNull((e) => e.id == widget.chatId);
    final roomName = room?.name ?? '';
    showDLSDialog2(
      context,
      S.current.leaveGroupQuestion(roomName),
      S.current.youLoseGroupData,
      width: S.current.youLoseGroupData.length * 10,
      yesButtonLabel: S.current.leave,
      cancelButtonLabel: S.current.cancel2,
    ).then(
      (value) {
        if (value == DLSDialogAnswer.confirm) {
          if (context.read<DlsMatrixClient>().isMeOwnerOfChat(widget.chatId)) {
            final chatUsers = context
                .read<UsersBloc>()
                .state
                .chatUsers(room?.getParticipants());

            selectGroupOwnerDialog(
              context,
              SimpleGroup(
                name: roomName,
                users: chatUsers,
                chatId: widget.chatId,
              ),
            ).then((dynamic group) {
              if (group is SimpleGroup) {
                context
                    .read<ChatManagerBloc>()
                    .add(ChatManagerEvent.ownerLeave(group));
              }
            });
          } else {
            context
                .read<ChatManagerBloc>()
                .add(ChatManagerEvent.leave(widget.chatId));
          }
        }
      },
    );
  }

  void _onOpenCommentsPanel(DlsChatMessageText message, BuildContext context) {
    context.navigateTo(
      WebTextRoomWrapperRoute(
        chatId: widget.chatId,
        threadMessageId: message.eventId,
        key: Key(
          'WebChatGroup_TextRoomPage_Comments_${widget.chatId}_${message.eventId}',
        ),
      ),
    );
  }

  void _onOpenInfoPanel(BuildContext context, String? roomName) {
    context.navigateTo(
      GroupChatInformationWrapperRoute(
        chatId: widget.chatId,
        args: GroupInformationArgs(
          onTapAddUser: (users) {
            updateUsersInGroupChat(
              SimpleGroup(
                name: roomName ?? '',
                users: users,
                chatId: widget.chatId,
              ),
            );
          },
          onTapUserKick: (String matrixId) =>
              _onUsersKick([matrixId], widget.chatId),
          onTapRename: _onRenameGroupChat,
          onTapExit: _onExitGroupChat,
          canDelete:
              context.read<DlsMatrixClient>().isMeOwnerOfChat(widget.chatId),
          onTapDelete: _onGroupChatDelete,
          onAdminAccess: (user, isAdmin) {
            if (isAdmin) {
              onDenyAdmin(
                SimpleGroup(
                  name: roomName ?? '',
                  users: [user],
                  chatId: widget.chatId,
                ),
              );
            } else {
              onGrantAdmin(
                SimpleGroup(
                  name: roomName ?? '',
                  users: [user],
                  chatId: widget.chatId,
                ),
              );
            }
          },
        ),
        key: Key(
          'WebChatGroup_TextRoomPage_Information_${widget.chatId}',
        ),
      ),
    );
  }

  void _onUsersKick(
    List<String> usersIds,
    String chatId,
  ) {
    context.read<ChatManagerBloc>().add(
          ChatManagerEvent.kickUsers(
            widget.chatId,
            usersIds,
          ),
        );
  }

  void updateUsersInGroupChat(SimpleGroup init) {
    groupSelectUsersDialog(context, init, title: init.name).then(
      (dynamic value) {
        if (value is SimpleGroup) {
          context
              .read<ChatManagerBloc>()
              .add(ChatManagerEvent.updateUsers(value));
        }
      },
    );
  }

  void _onAddUsersToGroupChat() {
    final chat = context
        .read<GlobalChatBloc>()
        .state
        .publicRooms
        .firstWhereOrNull((e) => e.id == widget.chatId);
    final chatUsers =
        context.read<UsersBloc>().state.chatUsers(chat?.getParticipants());
    groupSelectUsersDialog(
      context,
      SimpleGroup(name: chat?.name ?? '', users: chatUsers, chatId: chat?.id),
      title: chat?.name ?? '',
      onKickUsers: (usersIds) {
        if (chat?.id == null) {
          return;
        }

        _onUsersKick(usersIds, chat!.id);
      },
      onAddUsers: (usersIds) {
        if (chat?.id == null) {
          return;
        }

        context.read<ChatManagerBloc>().add(
              ChatManagerEvent.addUsers(
                widget.chatId,
                usersIds,
              ),
            );
      },
    );
  }

  void _onGroupChatDelete() {
    if (context.read<DlsMatrixClient>().isMeOwnerOfChat(widget.chatId)) {
      final room = context
          .read<GlobalChatBloc>()
          .state
          .publicRooms
          .firstWhereOrNull((e) => e.id == widget.chatId);
      final usersCount = (room?.getParticipants() ?? []).length;
      showDLSDialog2(
        context,
        S.current.leaveGroupQuestion(room?.name ?? ''),
        S.current.xPeopleAutoDeleteFromGroup(usersCount),
        width: S.current.xPeopleAutoDeleteFromGroup(usersCount).length * 10,
        yesButtonLabel: S.current.delete,
        cancelButtonLabel: S.current.cancel2,
      ).then(
        (value) {
          if (value == DLSDialogAnswer.confirm) {
            context
                .read<ChatManagerBloc>()
                .add(ChatManagerEvent.delete(widget.chatId));
          }
        },
      );
    }
  }

  void onGrantAdmin(SimpleGroup adminAndIdOnly) => context
      .read<ChatManagerBloc>()
      .add(ChatManagerEvent.setAdmin(adminAndIdOnly));

  void onDenyAdmin(SimpleGroup adminAndIdOnly) => context
      .read<ChatManagerBloc>()
      .add(ChatManagerEvent.removeAdmin(adminAndIdOnly));
}
