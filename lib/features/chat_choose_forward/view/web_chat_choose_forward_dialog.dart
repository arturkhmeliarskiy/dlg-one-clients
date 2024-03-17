import 'package:auto_route/auto_route.dart';
import 'package:dls_matrix_client/dls_matrix_client.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/features/chat_choose_forward/bloc/chat_choose_forward_bloc.dart';
import 'package:dls_one/features/chat_choose_forward/view/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:matrix/matrix.dart';

@RoutePage<Room>()
class WebChatChooseForwardDialogPage extends StatefulWidget
    implements AutoRouteWrapper {
  const WebChatChooseForwardDialogPage({
    super.key,
  });

  @override
  State<WebChatChooseForwardDialogPage> createState() =>
      _WebChatChooseForwardDialogState();

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

class _WebChatChooseForwardDialogState
    extends State<WebChatChooseForwardDialogPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: context.c_shadow.withOpacity(0.4),
      child: Container(
        width: 400.w,
        height: 335.h,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.r),
          color: context.c_white_text,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DlsPadding.only(
              left: 20.w,
              top: 15.h,
              right: 20.w,
              child: Row(
                children: [
                  Text(
                    S.current.chatChooseForward,
                    style: context.ts_s18h21w500.copyWith(
                      color: context.c_text,
                    ),
                  ),
                  const Spacer(),
                  InkWell(
                    onTap: () {
                      context.popRoute();
                    },
                    borderRadius: BorderRadius.circular(500),
                    child: Assets.icons.times1.svg(
                      width: 18.w,
                      height: 18.h,
                      colorFilter: context.c_text_grey_color_filter,
                    ),
                  ),
                ],
              ),
            ),
            BlocBuilder<ChatChooseForwardBloc, ChatChooseForwardState>(
              buildWhen: (previous, current) =>
                  previous.searchFilter != current.searchFilter,
              builder: (context, state) {
                return DlsPadding.only(
                  left: 20.w,
                  top: 15.h,
                  right: 20.w,
                  bottom: 15.h,
                  child: BorderedInput(
                    initialValue: state.searchFilter,
                    prefixIcon: Assets.icons.search1.svg(
                      width: 18.w,
                      height: 18.h,
                      colorFilter: context.c_text_grey_color_filter,
                    ),
                    onChange: _onChangeSearch,
                    onClear: _onClearSearch,
                  ),
                );
              },
            ),
            const Divider(),
            Expanded(
              child: BlocBuilder<ChatChooseForwardBloc, ChatChooseForwardState>(
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
            ),
          ],
        ),
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
