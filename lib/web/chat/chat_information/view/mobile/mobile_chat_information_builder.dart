import 'package:auto_route/auto_route.dart';
import 'package:dls_matrix_client/dls_matrix_client.dart';
import 'package:dls_one/web/chat/chat_information/chat_information.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class MobileChatInformationPage extends StatelessWidget {
  const MobileChatInformationPage({
    required this.chatId,
    super.key,
  });

  final String chatId;

  @override
  Widget build(BuildContext context) {
    final chat = context.read<DlsMatrixClient>().client.getRoomById(chatId);
    if (chat == null) return const Placeholder();
    if (chat.isDirectChat == true) {
      return MobilePersonalChatInformationPage.builder(chatId: chatId);
    }
    return MobileGroupChatInformationPage.builder(chatId: chatId);
  }
}
