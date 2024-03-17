import 'package:auto_route/auto_route.dart';
import 'package:dls_matrix_client/dls_matrix_client.dart';
import 'package:dls_one/app/router/app_router.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/features/home/presentation/bloc/global_chat_bloc.dart';
import 'package:dls_one/utils/utils.dart';
import 'package:dls_one/web/sip/sip.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DlsGroupsList extends StatelessWidget {
  const DlsGroupsList({
    super.key,
    this.onTapAdd,
  });

  final GestureTapCallback? onTapAdd;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GlobalChatBloc, GlobalChatState>(
      builder: (context, state) {
        final matrixClient = context.read<DlsMatrixClient>();
        final chats = matrixClient.publicRooms;

        return Padding(
          key: UniqueKey(),
          padding: EdgeInsets.only(
            top: 15.h,
          ),
          child: chats.isNotEmpty != true
              ? _EmptyList(onTapAdd: onTapAdd)
              : ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: chats.length + 1,
                  itemBuilder: (context, i) {
                    final index = i - 1;
                    if (index < 0) {
                      return Container(
                        height: 32.h,
                        padding: EdgeInsets.symmetric(horizontal: 25.w),
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              S.current.groups,
                              style: context.ts_s14h14w500
                                  .copyWith(color: context.c_text),
                            ),
                            DLSButtonText(
                              text: '+ ${S.current.add}',
                              onTap: onTapAdd,
                            )
                          ],
                        ),
                      );
                    }
                    final chat = chats[index];

                    return GestureDetector(
                      child: Container(
                        height: 40.h,
                        color: Colors.transparent,
                        padding: EdgeInsets.symmetric(
                          vertical: 9.h,
                          horizontal: 25.w,
                        ),
                        child: Row(
                          children: [
                            DLSBody.s14(txt(chat.getLocalizedDisplayname()))
                                .expanded(),
                            if (chat.notificationCount > 0)
                              DlsNotificationsCounter(
                                count: chat.notificationCount.toString(),
                              ),

                            /// счетчик звонка
                            Padding(
                              padding: EdgeInsets.only(left: 4.w),
                              child: CallTicker(chatId: chat.id),
                            ),
                          ],
                        ),
                      ),
                      onTap: () {
                        final items = chat.id.split(':');
                        context.navigateTo(
                          ChatsRootRoute(
                            children: [
                              MobileTextRoomWrapperRoute(
                                chatId: items.first,
                                server: items.last,
                              )
                            ],
                          ),
                        );
                      },
                    );
                  },
                ),
        );
      },
    );
  }
}

class _EmptyList extends StatelessWidget {
  const _EmptyList({required this.onTapAdd});

  final GestureTapCallback? onTapAdd;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(height: 146.h),
        Text(
          S.current.group_list_is_empty,
          style: context.ts_s14h22_4w400.copyWith(color: context.c_text_grey),
        ),
        SizedBox(height: 4.h),
        DLSButtonText(
          text: '+ ${S.current.add}',
          onTap: onTapAdd,
          alignment: MainAxisAlignment.center,
        ),
      ],
    );
  }
}
