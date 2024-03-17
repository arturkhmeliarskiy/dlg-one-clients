import 'package:auto_route/auto_route.dart';
import 'package:dls_matrix_client/dls_matrix_client.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/chat/chat_manager/chat_manager.dart';
import 'package:dls_one/web/chat/chat_manager/view/mobile/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class MobileRenameGroupChatPage extends StatelessWidget {
  const MobileRenameGroupChatPage({
    required this.init,
    super.key,
  });
  final SimpleGroup init;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          ChatManagerBloc(matrixClient: context.read<DlsMatrixClient>()),
      child: _MobileRenameGroupChatLayout(init: init),
    );
  }
}

class _MobileRenameGroupChatLayout extends StatefulWidget {
  const _MobileRenameGroupChatLayout({required this.init});

  final SimpleGroup init;

  @override
  State<_MobileRenameGroupChatLayout> createState() =>
      _MobileSetGroupNameState();
}

class _MobileSetGroupNameState extends State<_MobileRenameGroupChatLayout> {
  final controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    controller
      ..text = widget.init.name
      ..addListener(_buttonEnabler);
  }

  void _buttonEnabler() => setState(() {});

  @override
  void dispose() {
    controller
      ..removeListener(_buttonEnabler)
      ..dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<ChatManagerBloc, ChatManagerState>(
      listener: (context, state) {
        state.whenOrNull(
          message: (message) => showDLSDialog(
            context,
            null,
            message,
            width: 200.w,
            onlyYesButton: true,
            yesButtonLabel: S.current.ok,
          ),
          notEnoughRights: (transaction) => showDLSDialog(
            context,
            S.current.error,
            S.current.notEnoughRights,
            width: S.current.notEnoughRights.length * 10,
            onlyYesButton: true,
            yesButtonLabel: S.current.ok,
          ),
          nameUpdated: (transaction) => context.popRoute(),
        );
      },
      listenWhen: (previous, current) {
        return current.maybeWhen(
          orElse: () => false,
          message: (cur) {
            return previous.maybeWhen(
              orElse: () => true,
              message: (prev) => cur != prev,
            );
          },
          notEnoughRights: (cur) {
            return previous.maybeWhen(
              orElse: () => true,
              notEnoughRights: (prev) => cur != prev,
            );
          },
          nameUpdated: (transaction) => true,
        );
      },
      child: Scaffold(
        backgroundColor: context.c_appbar,
        appBar: MobileRenameGroupChatAppBar(
          onTapBack: context.popRoute,
          onTapApply: controller.text.isEmpty
              ? null
              : () => context.read<ChatManagerBloc>().add(
                    ChatManagerEvent.updateName(
                      SimpleGroup(
                        name: controller.text,
                        users: widget.init.users,
                        chatId: widget.init.chatId,
                      ),
                    ),
                  ),
        ),
        body: DLSInput(
          label: S.current.group_name,
          hint: S.current.group_name,
          controller: controller,
          autofocus: true,
        ).paddingSymmetric(horizontal: 20.w, vertical: 20.w),
      ),
    );
  }
}
