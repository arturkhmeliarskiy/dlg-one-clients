import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ChatCommentPage extends StatelessWidget {
  const ChatCommentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Комментарии к сообщениям',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
