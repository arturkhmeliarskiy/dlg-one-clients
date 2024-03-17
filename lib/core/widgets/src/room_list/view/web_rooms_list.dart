import 'package:dls_one/core/core.dart';
import 'package:dls_one/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:matrix/matrix.dart';

class WebRoomsList extends StatelessWidget {
  /// Constructor
  const WebRoomsList({
    required this.rooms,
    this.onItemTap,
    this.emptyPanel = const SizedBox(),
    super.key,
    this.physics,
    this.shrinkWrap = false,
  });

  final List<Room> rooms;
  final ValueChanged<String>? onItemTap;
  final Widget emptyPanel;
  final ScrollPhysics? physics;
  final bool shrinkWrap;

  @override
  Widget build(BuildContext context) {
    if (rooms.isEmpty) {
      return emptyPanel;
    }
    return ListView.builder(
      physics: physics,
      shrinkWrap: shrinkWrap,
      itemCount: rooms.length,
      itemBuilder: (context, index) {
        final room = rooms[index];
        final isFirst = index == 0;
        final isLast = index == rooms.length - 1;

        final roomId = getRoomIdByCurrentPath(context);

        return Padding(
          padding: EdgeInsets.only(
            left: 8.w,
            top: isFirst ? 8.h : 2.h,
            right: 8.w,
            bottom: isLast ? 8.h : 2.h,
          ),
          child: WebRoomListItemRoomWrapper(
            key: ValueKey(
              'WebRoomListItemRoomWrapper_${room.id}_${room.getLocalizedDisplayname()}_${room.notificationCount}',
            ),
            room: room,
            isSelected: room.id ==
                (roomId.isEmpty
                    ? ''
                    : '${roomId.keys.first}:${roomId.values.first}'),
            onTap: () {
              onItemTap?.call(room.id);
            },
          ),
        );
      },
    );
  }
}
