import 'package:auto_route/auto_route.dart';
import 'package:dls_matrix_client/dls_matrix_client.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/chat/chat_manager/chat_manager.dart';
import 'package:dls_one/web/chat/chat_manager/view/mobile/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rest_api/rest_api.dart';

@RoutePage()
@Deprecated('Используйте [MobileSelectUsersPage]')
class MobileUpdateGroupUsersPage extends StatelessWidget {
  const MobileUpdateGroupUsersPage({
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
            SearchAndSelectUsersState.initial(init.users),
            restApi: context.read<DlsRestApi>(),
          ),
        ),
      ],
      child: _MobileUpdateGroupUsersLayout(init: init),
    );
  }
}

class _MobileUpdateGroupUsersLayout extends StatefulWidget {
  const _MobileUpdateGroupUsersLayout({required this.init});

  final SimpleGroup init;

  @override
  State<_MobileUpdateGroupUsersLayout> createState() =>
      __MobileUpdateGroupUsersLayoutState();
}

class __MobileUpdateGroupUsersLayoutState
    extends State<_MobileUpdateGroupUsersLayout> {
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
          usersUpdated: (transaction) => context.navigateBack(),
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
          usersUpdated: (transaction) => true,
        );
      },
      child: Scaffold(
        backgroundColor: context.c_appbar,
        appBar: MobileUpdateGroupUsersAppBar(
          onTapBack: context.popRoute,
          onTapNext: controller.text.isEmpty
              ? null
              : () {
                  context.read<ChatManagerBloc>().add(
                        ChatManagerEvent.updateUsers(
                          widget.init.copyWith(
                            users: context
                                .read<SearchAndSelectUsersBloc>()
                                .state
                                .selectedUsers,
                          ),
                        ),
                      );
                },
        ),
        body: Padding(
          padding: EdgeInsets.only(top: 16.h),
          child: SearchAndSelectUsersWidget(
            inputPaddings: EdgeInsets.symmetric(horizontal: 16.w),
            cantDeselectSelfMatrixId: context.read<DlsMatrixClient>().myId,
          ),
        ),
      ),
    );
  }
}
