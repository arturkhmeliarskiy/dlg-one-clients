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
@Deprecated('Используйте [MobileSelectUsersPage]')
class MobileSelectGroupUsersPage extends StatelessWidget {
  const MobileSelectGroupUsersPage({
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
      child: _MobileSelectGroupUsersLayout(init: init),
    );
  }
}

class _MobileSelectGroupUsersLayout extends StatefulWidget {
  const _MobileSelectGroupUsersLayout({required this.init});

  final SimpleGroup init;

  @override
  State<_MobileSelectGroupUsersLayout> createState() =>
      __MobileSelectGroupUsersLayoutState();
}

class __MobileSelectGroupUsersLayoutState
    extends State<_MobileSelectGroupUsersLayout> {
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
          created: (chatId, isDirect) {
            /// TODO надо заменять только роуты где задается имя и выбираются пользователи
            if (!isDirect) {
              final items = chatId.split(':');
              AutoRouter.of(context).replace(
                MobileTextRoomWrapperRoute(
                  chatId: items.first,
                  server: items.last,
                ),
              );
            }
          },
        );
      },
      listenWhen: (previous, current) {
        return current.maybeWhen(
          orElse: () => false,
          created: (chatId, isDirect) {
            return previous.maybeWhen(
              orElse: () => true,
              created: (chatIdPrev, isDirectPrev) => chatIdPrev != chatId,
            );
          },
        );
      },
      child: Scaffold(
        backgroundColor: context.c_appbar,
        appBar: MobileSelectGroupUsersAppBar(
          onTapBack: context.popRoute,
          onTapNext: controller.text.isEmpty
              ? null
              : () {
                  context.read<ChatManagerBloc>().add(
                        ChatManagerEvent.createGroup(
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
