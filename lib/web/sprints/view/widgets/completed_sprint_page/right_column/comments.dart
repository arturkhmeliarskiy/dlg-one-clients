import 'package:dls_one/core/core.dart';
import 'package:dls_one/features/features.dart';
import 'package:flutter/material.dart';

class Comments extends StatefulWidget {
  const Comments({
    required this.chatId,
    super.key,
  });

  final String? chatId;

  @override
  State<Comments> createState() => _CommentsState();
}

class _CommentsState extends State<Comments> {
  @override
  Widget build(BuildContext context) {
    if (widget.chatId == null) {
      return Center(child: DLSHeaders.h2(S.current.chatNotFound));
    }

    return ListView(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height-104.h,
          child: WebTextRoomWrapperPage(
            chatId: widget.chatId!,
            chatType: ChatType.comments,
          ),
        )
      ],
    );
  }
}
