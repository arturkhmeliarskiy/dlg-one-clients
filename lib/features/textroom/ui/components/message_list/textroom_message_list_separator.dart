import 'package:dls_matrix_client/dls_matrix_client.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/features/textroom/ui/components/chat_message/view/chat_message_unread_marker.dart';
import 'package:flutter/material.dart';

class TextRoomMessageListSeparator extends StatelessWidget {
  const TextRoomMessageListSeparator({
    required this.messages,
    required this.lastReadMessageId,
    required this.itemIndex,
    required this.userId,
    super.key,
  });

  final List<DlsChatMessage> messages;
  final String? lastReadMessageId;
  final String userId;
  final int itemIndex;

  @override
  Widget build(BuildContext context) {
    // we should show marker after lastReadEventId
    final prevEvent = messages.tryGet(itemIndex + 1);
    var canShowMarker = false;
    if (prevEvent?.eventId == lastReadMessageId) {
      canShowMarker = messages
          .take(itemIndex + 1)
          .any((e) => e is DlsChatMessageText && e.senderId != userId);
    }
    if (canShowMarker) {
      return ChatMessageUnreadMarker();
    }
    return const SizedBox();
  }
}
