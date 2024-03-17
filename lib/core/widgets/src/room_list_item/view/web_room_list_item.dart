import 'package:dls_matrix_client/dls_matrix_client.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/core/widgets/src/room_list_item/view/widgets/display_name_builder.dart';
import 'package:dls_one/core/widgets/src/room_list_item/view/widgets/last_message_builder.dart';
import 'package:dls_one/core/widgets/src/room_list_item/view/widgets/time_ago_builder.dart';
import 'package:dls_one/features/textroom/ui/components/components.dart';
import 'package:dls_one/web/sip/sip.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:matrix/matrix.dart';

class WebRoomListItemRoomWrapper extends StatelessWidget {
  const WebRoomListItemRoomWrapper({
    required this.room,
    required this.isSelected,
    this.onTap,
    super.key,
  });

  final Room room;
  final bool isSelected;
  final VoidCallback? onTap;

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
          return RoomListItem._(
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

class RoomListItem extends StatelessWidget {
  const RoomListItem._({
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
      tileColor: isSelected ? context.c_grey_grey : Colors.transparent,
      onTap: onTap,
      dense: true,
      hoverColor: context.c_blue.withOpacity(0.3),
      contentPadding: EdgeInsets.symmetric(horizontal: 12.w),
      horizontalTitleGap: 12.w,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.r)),
      leading: Container(
        alignment: Alignment.center,
        height: 40.h,
        width: 40.w,
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
            Assets.icons.bellSlash1.svg(
              width: 14.w,
              height: 14.h,
              color: context.c_placeholder,
            ),
        ],
      ),
      subtitle: LastMessageBuilder(
        lastMessage: lastMessage ?? '',
      ),
      trailing: Padding(
        padding: EdgeInsets.only(top: 8.h),
        child: Column(
          children: [
            if (lastUpdateTime != null)
              TimeAgoBuilder(
                lastUpdateTime: lastUpdateTime!,
              ),
            const Spacer(),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (unreadCount > 0 && !isSelected)
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
      ),
    );
  }
}
