// ignore_for_file: inference_failure_on_function_return_type, public_member_api_docs

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
class GroupChatInformationWrapperPage extends StatelessWidget {
  const GroupChatInformationWrapperPage({
    required this.chatId,
    required this.args,
    super.key,
  });
  final String chatId;
  final GroupInformationArgs args;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      key: ValueKey('GroupChatInformationBloc_$chatId'),
      create: (context) {
        return GroupChatInformationBloc(
          chatId: chatId,
          restApi: context.read<DlsRestApi>(),
          matrixClient: context.read<DlsMatrixClient>(),
        );
      },
      child: GroupChatInformationWidget._(args: args),
    );
  }
}

class GroupChatInformationWidget extends StatelessWidget {
  const GroupChatInformationWidget._({
    required this.args,
    super.key,
  });

  final GroupInformationArgs args;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const WebChatInformationAppBar(),
      body: DlsPadding.only(
        top: 20.h,
        child: Column(
          children: [
            GroupChatInformationName(
              canDelete: args.canDelete,
              onTapRename: args.onTapRename,
              onTapExit: args.onTapExit,
              onTapDelete: args.onTapDelete,
            ),
            Expanded(
              child: GroupChatInformationContent(
                onTapAddUser: args.onTapAddUser,
                onTapUserKick: args.onTapUserKick,
                onAdminAccess: args.onAdminAccess,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
