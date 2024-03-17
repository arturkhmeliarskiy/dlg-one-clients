import 'package:dls_matrix_client/dls_matrix_client.dart';
import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';

class MobileChatSelectedMessageAppBar extends StatelessWidget
    with PreferredSizeWidget {
  const MobileChatSelectedMessageAppBar({
    required this.currentUserId,
    required this.selectedMessages,
    required this.onCleanSelected,
    required this.onForwardTap,
    required this.onBookmarkTap,
    required this.onRemoveTap,
    super.key,
  });

  final String currentUserId;
  final List<DlsChatMessageText> selectedMessages;
  final VoidCallback onCleanSelected;
  final VoidCallback onForwardTap;
  final VoidCallback onBookmarkTap;
  final VoidCallback onRemoveTap;

  @override
  Size get preferredSize => Size.fromHeight(60.h);

  @override
  Widget build(BuildContext context) {
    final hasOpponentMessages =
        selectedMessages.any((e) => e.senderId != currentUserId);
    return Container(
      height: preferredSize.height,
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 1.h,
            color: context.c_grey_stoke,
          ),
        ),
      ),
      child: Row(
        children: [
          Text(
            S.current.chatMessageCount(selectedMessages.length),
            style: context.ts_s14h16_4w500.copyWith(
              color: context.c_text,
            ),
          ),
          SizedBox(
            width: 4.w,
          ),
          GestureDetector(
            behavior: HitTestBehavior.translucent,
            onTap: onCleanSelected,
            child: Assets.icons.paperclip4.svg(
              width: 18.w,
              height: 18.h,
              color: context.c_text_grey,
            ),
          ),
          const Spacer(),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              GestureDetector(
                behavior: HitTestBehavior.translucent,
                onTap: onForwardTap,
                child: Assets.icons.paperclip2.svg(
                  width: 18.w,
                  height: 18.h,
                  color: context.c_text_grey,
                ),
              ),
              SizedBox(
                width: 8.w,
              ),
              GestureDetector(
                behavior: HitTestBehavior.translucent,
                onTap: onBookmarkTap,
                child: Assets.icons.star1.svg(
                  width: 18.w,
                  height: 18.h,
                  color: context.c_text_grey,
                ),
              ),
              SizedBox(
                width: 8.w,
              ),
              GestureDetector(
                behavior: HitTestBehavior.translucent,
                onTap: hasOpponentMessages ? null : onRemoveTap,
                child: Assets.icons.times8.svg(
                  width: 18.w,
                  height: 18.h,
                  color: hasOpponentMessages
                      ? context.c_placeholder
                      : context.c_text_grey,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
