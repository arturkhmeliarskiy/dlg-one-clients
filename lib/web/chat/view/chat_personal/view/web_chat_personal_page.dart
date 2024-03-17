import 'package:auto_route/auto_route.dart';
import 'package:dls_matrix_client/dls_matrix_client.dart';
import 'package:dls_one/app/router/app_router.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/core/widgets/dls_page_builder.dart';
import 'package:dls_one/features/textroom/ui/web_textroom_page.dart';
import 'package:dls_one/web/chat/chat.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:multi_split_view/multi_split_view.dart';

@RoutePage()
class WebChatPersonalPage extends StatelessWidget {
  const WebChatPersonalPage({
    @pathParam required this.chatId,
    @pathParam required this.server,
    this.forwardMessages = const [],
    super.key,
  });

  final String chatId;
  final String server;
  final List<DlsChatMessageText> forwardMessages;

  @override
  Widget build(BuildContext context) {
    return _ChatMessageListBuilder(
      selectedRoomId: '$chatId:$server',
      forwardMessages: forwardMessages,
      onOpenInfoPanel: () => _onOpenInfoPanel(context),
      onOpenCommentsPanel: (text) => _onOpenCommentsPanel(context, text),
    );
  }

  void _onOpenCommentsPanel(BuildContext context, DlsChatMessageText message) {
    context.navigateTo(
      WebTextRoomWrapperRoute(
        chatId: '$chatId:$server',
        threadMessageId: message.eventId,
        key: Key(
          'WebChatPersonal_TextRoomPage_Comments_$chatId:${server}_${message.eventId}',
        ),
      ),
    );
  }

  void _onOpenInfoPanel(BuildContext context) {
    context.navigateTo(
      PersonalChatInformationWrapperRoute(
        chatId: '$chatId:$server',
        onTapDelete: () => _onTapDelete(context, '$chatId:$server'),
        key: Key(
          'WebChatPersonal_TextRoomPage_Information_$chatId:$server',
        ),
      ),
    );
  }

  void _onTapDelete(BuildContext context, String chatId) {
    showDLSDialog2(
      context,
      S.current.deleteChat,
      null,
      width: 200.w,
    ).then(
      (value) {
        if (value == DLSDialogAnswer.confirm) {
          context.read<ChatManagerBloc>().add(ChatManagerEvent.leave(chatId));
        }
      },
    );
  }
}

class _ChatMessageListBuilder extends StatelessWidget {
  const _ChatMessageListBuilder({
    required this.selectedRoomId,
    required this.forwardMessages,
    required this.onOpenInfoPanel,
    required this.onOpenCommentsPanel,
  });

  final String selectedRoomId;
  final List<DlsChatMessageText> forwardMessages;
  final VoidCallback onOpenInfoPanel;
  final ValueChanged<DlsChatMessageText> onOpenCommentsPanel;

  @override
  Widget build(BuildContext context) {
    return DLSPageBuilder(
      narrow: const AutoRouter(),
      wide: AutoRouter(
        builder: (context, content) => ColoredBox(
          color: context.c_white_text,
          child: MultiSplitView(
            dividerBuilder: (
              axis,
              index,
              resizable,
              dragging,
              highlighted,
              themeData,
            ) {
              return DlsVerticalPanelSplitter();
            },
            children: [
              WebTextRoomWrapperPage(
                key: Key('WebChatPersonal_TextRoomPage_$selectedRoomId'),
                chatId: selectedRoomId,
                forwardMessages: forwardMessages,
                onOpenCommentsPanel: onOpenCommentsPanel,
                onOpenInfoPanel: onOpenInfoPanel,
                onPersonalChatExit: (value) {
                  _onPersonalChatExit(context, value);
                },
              ),
              if (context.topRoute.path == 'thread' ||
                  context.topRoute.path == 'info')
                content,
            ],
          ),
        ),
      ),
    );
  }

  void _onPersonalChatExit(BuildContext context, String chatId) {
    showDLSDialog(
      context,
      '${S.current.delete_and_leave_chat}?',
      null,
      width: '${S.current.delete_and_leave_chat}?'.length * 10,
      yesButtonLabel: S.current.yes,
      cancelButtonLabel: S.current.no,
    ).then(
      (value) {
        if (value == DLSDialogAnswer.confirm) {
          context.read<ChatManagerBloc>().add(ChatManagerEvent.leave(chatId));
        }
      },
    );
  }
}
