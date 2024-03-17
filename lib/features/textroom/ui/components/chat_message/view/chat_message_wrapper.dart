import 'package:dls_matrix_client/dls_matrix_client.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/features/textroom/ui/components/chat_message/view/view.dart';
import 'package:flutter/material.dart';

class ChatMessageWrapper extends StatelessWidget {
  ///
  const ChatMessageWrapper({
    required this.message,
    required this.isSelected,
    required this.isSelectMode,
    required this.menuMessageId,
    required this.onOpenVideo,
    required this.onOpenImage,
    required this.onShowCustomMenu,
    required this.onBeforeOpenMenu,
    this.opponentLastReadDate,
    this.onShowMessageComments,
    this.onSelectMessage,
    this.onCreateTask,
    super.key,
  });

  final DlsChatMessage message;
  final ValueNotifier<DateTime>? opponentLastReadDate;
  final bool isSelected;
  final bool isSelectMode;
  final String? menuMessageId;
  final ValueChanged<DlsChatMessageText>? onShowMessageComments;
  final ValueChanged<DlsChatMessageAttachment> onOpenVideo;
  final void Function(int, Map<String, dynamic>) onOpenImage;
  final ValueChanged<DlsChatMessage> onShowCustomMenu;
  final ValueChanged<TapDownDetails> onBeforeOpenMenu;
  final VoidCallback? onSelectMessage;
  final VoidCallback? onCreateTask;

  @override
  Widget build(BuildContext context) {
    if (message is DlsChatMessageText) {
      return ChatMessageText(
        message: message as DlsChatMessageText,
        isSelected: isSelected,
        isSelectMode: isSelectMode,
        onSelectMessage: onSelectMessage,
        opponentLastReadDate: opponentLastReadDate,
        messageMenuId: menuMessageId,
        onBeforeOpenMenu: onBeforeOpenMenu,
        onOpenComments: onShowMessageComments != null
            ? () {
                final msg = message.safeCast<DlsChatMessageText>();
                if (msg == null) {
                  return;
                }
                onShowMessageComments?.call(msg);
              }
            : null,
        onOpenMenu: () => onShowCustomMenu(message),
        onCreateTask: onCreateTask,
        onOpenVideo: onOpenVideo,
        onOpenImage: onOpenImage,
      );
    } else if (message is DlsChatMessageDateMarker) {
      return ChatMessageDateMarker(
        message: message as DlsChatMessageDateMarker,
      );
    } else if (message is DlsChatMessageRoomMember) {
      return ChatMessageRoomMember(
        message: message as DlsChatMessageRoomMember,
      );
    } else {
      return const SizedBox();
    }
  }
}
