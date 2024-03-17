import 'package:collection/collection.dart';
import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';
import 'package:matrix/matrix.dart';

class ChatListItem extends StatefulWidget {
  const ChatListItem({
    required this.currentUserId,
    required this.room,
    required this.onTap,
    super.key,
  });

  final String currentUserId;
  final Room room;
  final VoidCallback onTap;

  @override
  State<StatefulWidget> createState() {
    return _ChatListItemState();
  }
}

class _ChatListItemState extends State<ChatListItem> {
  var _isHovered = false;

  @override
  Widget build(BuildContext context) {
    final displayName = widget.room.getLocalizedDisplayname();
    final opponentMatrixUserId = widget.room
        .getParticipants()
        .lastWhereOrNull(
          (e) => e.id != widget.currentUserId,
        )
        ?.id;
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          _isHovered = true;
        });
      },
      onExit: (_) {
        setState(() {
          _isHovered = false;
        });
      },
      child: GestureDetector(
        onTap: widget.onTap,
        child: Container(
          height: 56.h,
          margin: EdgeInsets.symmetric(horizontal: 12.w),
          padding: EdgeInsets.symmetric(horizontal: 8.w),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.r),
            color: _isHovered ? context.c_grey_grey : null,
          ),
          child: Row(
            children: [
              DlsAvatar(
                matrixUserId: opponentMatrixUserId,
                text: displayName,
              ),
              SizedBox(
                width: 12.w,
              ),
              Expanded(
                child: Text(
                  displayName,
                  style: context.ts_s14h14w500.copyWith(
                    color: context.c_text,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
