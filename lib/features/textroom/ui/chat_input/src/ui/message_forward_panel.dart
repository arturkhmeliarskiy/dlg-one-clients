import 'package:dls_matrix_client/dls_matrix_client.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/utils/src/etc.dart';
import 'package:dls_one/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:collection/collection.dart';

class MessageForwardPanel extends StatelessWidget {
  const MessageForwardPanel({
    required this.forwardMessages,
    required this.onCancelForward,
    super.key,
  });

  final List<DlsChatMessageText> forwardMessages;
  final VoidCallback onCancelForward;

  @override
  Widget build(BuildContext context) {
    final usersBloc = context.read<UsersBloc>();
    final messageUserNames = forwardMessages
        .map((e) => e.senderId)
        .toSet()
        .map((userId) => usersBloc.state.store[userId])
        .whereNotNull();
    final messageContent = forwardMessages.length > 1
        ? S.current.chatMessageCount(forwardMessages.length)
        : QuillEditorHelper.buildDocument(forwardMessages.first.plainText)
            .toPlainText();
    return Container(
      padding: EdgeInsets.only(bottom: 12.h),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: context.c_grey_stoke,
          ),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Assets.icons.share1.svg(
            width: 18.r,
            height: 18.r,
            color: context.c_text_grey,
          ),
          SizedBox(width: 8.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        messageUserNames.map((e) => e.DLSUserName).join(', '),
                        style: context.ts_s14h16_4w400.copyWith(
                          color: context.c_text,
                        ),
                      ),
                    ),
                    GestureDetector(
                      behavior: HitTestBehavior.translucent,
                      onTap: onCancelForward,
                      child: Assets.icons.times14.svg(
                        width: 18.r,
                        height: 18.r,
                        color: context.c_text_grey,
                      ),
                    ),
                  ],
                ),
                Text(
                  txt(messageContent),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: context.ts_s14h22_4w400.copyWith(
                    color: context.c_text_grey,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
