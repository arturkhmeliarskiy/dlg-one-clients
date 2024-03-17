import 'package:auto_route/auto_route.dart';
import 'package:dls_matrix_client/dls_matrix_client.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/features/chat_choose_forward/chat_choose_forward.dart';
import 'package:dls_one/features/chat_choose_forward/view/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:matrix/matrix.dart';

@RoutePage<Room>()
class MobileChatChooseForwardPage extends StatefulWidget
    implements AutoRouteWrapper {
  const MobileChatChooseForwardPage({
    super.key,
  });

  @override
  State<StatefulWidget> createState() {
    return _MobileChatChooseForwardPageState();
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<ChatChooseForwardBloc>(
      create: (context) {
        return ChatChooseForwardBloc(
          matrixClient: context.read<DlsMatrixClient>(),
        );
      },
      child: this,
    );
  }
}

class _MobileChatChooseForwardPageState
    extends State<MobileChatChooseForwardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.c_white_text,
      appBar: DLSAppBar(
        title: Text(
          S.current.chatChooseForward,
          style: context.ts_s14h14w500.copyWith(
            color: context.c_text,
          ),
        ),
        bottom: _AppBarBottomInput(
          onChange: _onChangeSearch,
          onClear: _onClearSearch,
        ),
      ),
      body: BlocBuilder<ChatChooseForwardBloc, ChatChooseForwardState>(
        buildWhen: (previous, current) =>
            previous.chatRooms != current.chatRooms,
        builder: (context, state) {
          return ListView.separated(
            itemCount: state.chatRooms.length,
            separatorBuilder: (_, index) {
              return SizedBox(height: 4.h);
            },
            itemBuilder: (_, index) {
              return ChatListItem(
                currentUserId: state.currentUser,
                room: state.chatRooms[index],
                onTap: () {
                  context.popRoute(state.chatRooms[index]);
                },
              );
            },
          );
        },
      ),
    );
  }

  void _onChangeSearch(String value) {
    context.read<ChatChooseForwardBloc>().add(
          ChatChooseForwardEvent.search(value),
        );
  }

  void _onClearSearch() {
    context.read<ChatChooseForwardBloc>().add(
          const ChatChooseForwardEvent.search(''),
        );
  }
}

class _AppBarBottomInput extends StatelessWidget
    implements PreferredSizeWidget {
  const _AppBarBottomInput({
    required this.onChange,
    required this.onClear,
    super.key,
  });

  final ValueChanged<String> onChange;
  final VoidCallback onClear;

  @override
  Size get preferredSize => Size.fromHeight(64.h);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: preferredSize.height,
      padding: EdgeInsets.only(
        left: 16.w,
        right: 16.w,
        bottom: 16.h,
      ),
      child: BlocBuilder<ChatChooseForwardBloc, ChatChooseForwardState>(
        buildWhen: (previous, current) =>
            previous.searchFilter != current.searchFilter,
        builder: (context, state) {
          return BorderedInput(
            initialValue: state.searchFilter,
            onChange: onChange,
            onClear: onClear,
            prefixIcon: Assets.icons.search1.svg(
              width: 18.w,
              height: 18.h,
              colorFilter: context.c_text_grey_color_filter,
            ),
          );
        },
      ),
    );
  }
}
