import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';

class LastMessageBuilder extends StatelessWidget {
  const LastMessageBuilder({
    required this.lastMessage,
    super.key,
  });

  final String lastMessage;

  @override
  Widget build(BuildContext context) {
    return Text(
      lastMessage,
      maxLines: 1,
      style: context.ts_s12h14w400,
      overflow: TextOverflow.ellipsis,
    );
  }
}
