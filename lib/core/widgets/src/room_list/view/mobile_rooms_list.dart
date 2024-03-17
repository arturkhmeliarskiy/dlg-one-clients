import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';
import 'package:matrix/matrix.dart';

class MobileRoomsList extends StatelessWidget {
  /// Constructor
  const MobileRoomsList({
    required this.rooms,
    this.selectedRoomId,
    this.onItemTap,
    this.emptyPanel = const SizedBox(),
    super.key,
    this.physics,
    this.shrinkWrap = false,
  });

  final List<Room> rooms;
  final String? selectedRoomId;
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
        return MobileRoomListItemRoomWrapper(
          key: ValueKey(
            'MobileRoomListItemRoomWrapper_${room.id}_${room.getLocalizedDisplayname()}_${room.notificationCount}',
          ),
          room: room,
          isSelected: room.id == selectedRoomId,
          onTap: () {
            onItemTap?.call(room.id);
          },
        );
      },
    );
  }
}
