import 'dart:convert';

import 'package:dls_matrix_client/dls_matrix_client.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/core/widgets/src/room_list_item/view/widgets/display_name_builder.dart';
import 'package:dls_one/core/widgets/src/room_list_item/view/widgets/last_message_builder.dart';
import 'package:dls_one/core/widgets/src/room_list_item/view/widgets/time_ago_builder.dart';
import 'package:dls_one/features/textroom/ui/components/chat_message/bloc/ago_updater_bloc.dart';
import 'package:flutter_quill/flutter_quill.dart' as quill;
import 'package:dls_one/web/sip/sip.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_quill/flutter_quill.dart';
import 'package:matrix/matrix.dart';

class MobileRoomListItemRoomWrapper extends StatelessWidget {
  const MobileRoomListItemRoomWrapper({
    required this.room,
    this.isMuted = false,
    this.lastMessage,
    this.lastUpdateTime,
    this.unreadCount = 0,
    this.onTap,
    this.isSelected = false,
    super.key,
  });

  final Room room;
  final bool isMuted;
  final String? lastMessage;
  final DateTime? lastUpdateTime;
  final int unreadCount;
  final VoidCallback? onTap;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) {
            return RoomListItemBloc(
              roomId: room.id,
              matrixClient: context.read<DlsMatrixClient>(),
              users: context.read<UsersBloc>(),
            );
          },
        ),
        BlocProvider(
          create: (_) => AgoUpdaterBloc(),
        ),
      ],
      child: BlocBuilder<RoomListItemBloc, RoomListItemState>(
        builder: (context, state) {
          return MobileRoomListItem._(
            key: key,
            matrixChatId: state.matrixChatId,
            opponentMatrixUserId: state.opponentMatrixUserId,
            displayName: state.displayName,
            isMuted: state.isMuted,
            lastMessage: state.lastMessage,
            lastUpdateTime: state.lastUpdateTime,
            unreadCount: state.unreadCount,
            onTap: onTap,
            isSelected: isSelected,
          );
        },
      ),
    );
  }
}

class MobileRoomListItem extends StatelessWidget {
  const MobileRoomListItem._({
    required this.matrixChatId,
    required this.opponentMatrixUserId,
    required this.displayName,
    this.isMuted = false,
    this.lastMessage,
    this.lastUpdateTime,
    this.unreadCount = 0,
    this.onTap,
    this.isSelected = false,
    super.key,
  });

  final String matrixChatId;
  final String opponentMatrixUserId;
  final String displayName;
  final bool isMuted;
  final String? lastMessage;
  final DateTime? lastUpdateTime;
  final int unreadCount;
  final VoidCallback? onTap;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      dense: true,
      contentPadding: EdgeInsets.symmetric(vertical: 4.h, horizontal: 16.w),
      leading: Container(
        alignment: Alignment.center,
        height: 40.r,
        width: 40.r,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: context.c_blue,
        ),

        /// если чат direct то в matrixChatId будет имя пользователя
        child: DlsAvatar(
          matrixUserId: opponentMatrixUserId,
          text: displayName,
        ),
      ),
      title: Row(
        children: [
          Flexible(
            child: DisplayNameBuilder(
              displayName: displayName,
            ),
          ),
          if (isMuted)
            Padding(
              padding: EdgeInsets.only(left: 8.w),
              child: Assets.icons.bellSlash1.svg(
                width: 14.w,
                height: 14.h,
                color: context.c_placeholder,
              ),
            )
        ],
      ),
      subtitle: LastMessageBuilder(
        lastMessage: lastMessage ?? '',
      ),
      trailing: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          if (lastUpdateTime != null)
            TimeAgoBuilder(
              lastUpdateTime: lastUpdateTime!,
            ),
          const Spacer(),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (unreadCount > 0)
                DlsNotificationsCounter(
                  count: unreadCount.toString(),
                ),
              Padding(
                padding: EdgeInsets.only(left: 4.w),
                child: CallTicker(chatId: matrixChatId),
              )
            ],
          ),
        ],
      ),
    );
  }
}
