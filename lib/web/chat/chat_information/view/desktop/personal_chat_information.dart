// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:dls_matrix_client/dls_matrix_client.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/chat/chat_information/chat_information.dart';
import 'package:dls_one/web/chat/chat_information/view/desktop/widgets/widgets.dart';
import 'package:dls_one/web/chat/chat_information/view/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rest_api/rest_api.dart';

@RoutePage()
class PersonalChatInformationWrapperPage extends StatelessWidget {
  const PersonalChatInformationWrapperPage({
    required this.chatId,
    required this.onTapDelete,
    super.key,
  });

  final String chatId;
  final VoidCallback onTapDelete;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      key: ValueKey('PersonalChatInformationBloc_$chatId'),
      create: (context) {
        return PersonalChatInformationBloc(
          chatId: chatId,
          restApi: context.read<DlsRestApi>(),
          matrixClient: context.read<DlsMatrixClient>(),
        );
      },
      child: PersonalChatInformationWidget._(
        onTapDelete: onTapDelete,
      ),
    );
  }
}

class PersonalChatInformationWidget extends StatelessWidget {
  const PersonalChatInformationWidget._({
    required this.onTapDelete,
    super.key,
  });

  final VoidCallback onTapDelete;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.c_white_text,
      appBar: const WebChatInformationAppBar(),
      body: SingleChildScrollView(
        child: DlsPadding.only(
          top: 20.h,
          child: const PersonalChatInformationContent(),
        ),
      ),
    );
  }
}
