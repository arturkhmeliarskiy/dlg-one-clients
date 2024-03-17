import 'package:auto_route/auto_route.dart';
import 'package:dls_matrix_client/dls_matrix_client.dart';
import 'package:dls_one/app/router/app_router.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/chat/chat_manager/chat_manager.dart';
import 'package:dls_one/web/chat/chat_manager/view/mobile/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rest_api/rest_api.dart';

@RoutePage()
class MobileSelectGroupAdminPage extends StatelessWidget {
  const MobileSelectGroupAdminPage({
    required this.init,
    super.key,
  });
  final SimpleGroup init;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              ChatManagerBloc(matrixClient: context.read<DlsMatrixClient>()),
        ),
        BlocProvider(
          create: (context) => SearchAndSelectUsersBloc(
            const SearchAndSelectUsersState.initial([]),
            restApi: context.read<DlsRestApi>(),
          ),
        ),
      ],
      child: _MobileSelectGroupAdminLayout(init: init),
    );
  }
}

class _MobileSelectGroupAdminLayout extends StatelessWidget {
  const _MobileSelectGroupAdminLayout({required this.init});

  final SimpleGroup init;
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
          leftChat: (transaction) {
            AutoRouter.of(context).navigate(const HomeRoute());
            if (init.chatId != null) {
              context.read<ChatManagerBloc>().add(
                    ChatManagerEvent.leave(init.chatId!),
                  );
            }
          },
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
          leftChat: (transaction) => true,
        );
      },
      child: Scaffold(
        backgroundColor: context.c_appbar,
        appBar: MobileSelectGroupAdminAppBar(
          onTapBack: context.popRoute,
          onTapNext: (List<DLSUser> selectedUsers) {
            context.read<ChatManagerBloc>().add(
                  ChatManagerEvent.ownerLeave(
                    init.copyWith(
                      users: selectedUsers,
                    ),
                  ),
                );
          },
        ),
        body: Padding(
          padding: EdgeInsets.only(top: 16.h),
          child: SearchAndSelectOneUserWidget(
            inputPaddings: EdgeInsets.symmetric(horizontal: 16.w),
            cantDeselectSelfMatrixId: context.read<DlsMatrixClient>().myId,
            group: init.users,
          ),
        ),
      ),
    );
  }
}
