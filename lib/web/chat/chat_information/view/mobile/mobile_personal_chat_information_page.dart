import 'package:auto_route/auto_route.dart';
import 'package:dls_matrix_client/dls_matrix_client.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/chat/chat_information/chat_information.dart';
import 'package:dls_one/web/chat/chat_information/view/mobile/widgets/widgets.dart';
import 'package:dls_one/web/chat/chat_information/view/widgets/widgets.dart';
import 'package:dls_one/web/sip/sip.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rest_api/rest_api.dart';

class MobilePersonalChatInformationPage extends StatelessWidget {
  const MobilePersonalChatInformationPage({
    super.key,
    required this.chatId,
  });

  final String chatId;

  static Widget builder({
    required String chatId,
  }) =>
      MultiBlocProvider(
        providers: [
          BlocProvider(
            key: ValueKey(chatId),
            create: (context) => PersonalChatInformationBloc(
              chatId: chatId,
              restApi: context.read<DlsRestApi>(),
              matrixClient: context.read<DlsMatrixClient>(),
            ),
          ),
        ],
        child: MobilePersonalChatInformationPage(chatId: chatId),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.c_white_text,
      appBar: MobilePersonalChatInformationAppBar(
        onTapBack: context.popRoute,
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 20.h),
        child: const PersonalChatInformationContent(),
      ),
    );
  }
}
