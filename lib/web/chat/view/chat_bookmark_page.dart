import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ChatBookmarkPage extends StatelessWidget {
  const ChatBookmarkPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Важные сообщения',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
