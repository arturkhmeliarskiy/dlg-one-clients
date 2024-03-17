import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';

class TextRoomMessageListEmptyBuilder extends StatelessWidget {
  const TextRoomMessageListEmptyBuilder({
    required this.isDirectChat,
    super.key,
  });

  final bool isDirectChat;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text(
        isDirectChat
            ? S.current.chat_mess_empty_pers
            : S.current.chat_mess_empty_group,
        style: context.ts_s14h22_4w400.copyWith(
          color: context.c_text_grey,
        ),
      ),
    );
  }
}
