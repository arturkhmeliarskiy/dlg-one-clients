import 'package:collection/collection.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/features/home/presentation/bloc/global_chat_bloc.dart';
import 'package:dls_one/web/sip/sip.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CallPassiveBar extends StatelessWidget {
  const CallPassiveBar({
    required this.onTapBar,
    required this.chatId,
    required this.startAt,
    required this.usersCount,
    super.key,
  });

  final VoidCallback? onTapBar;
  final String chatId;
  final DateTime startAt;
  final int usersCount;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: GestureDetector(
        onTap: onTapBar,
        child: Container(
          height: 36.h,
          alignment: Alignment.center,
          color: context.c_green_light,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Row(
              children: [
                Assets.icons.phone1.svg(
                  colorFilter: context.c_green_color_filter,
                  width: 18.r,
                  height: 18.r,
                ),
                Expanded(
                  child: Row(
                    children: [
                      Flexible(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8.w),
                          child: BlocBuilder<GlobalChatBloc, GlobalChatState>(
                            builder: (context, globalChatState) {
                              final chat = globalChatState.chats
                                  .where((chat) => chat.id == chatId)
                                  .first;
                              if (chat.isDirectChat) {
                                final matrixUser =
                                    chat.getParticipants().firstWhereOrNull(
                                          (user) =>
                                              user.id != chat.client.userID,
                                        );
                                return BlocBuilder<UsersBloc, UsersState>(
                                  builder: (context, usersState) {
                                    final user =
                                        usersState.store[matrixUser?.id];
                                    if (user == null) {
                                      return Container();
                                    }
                                    return DLSBody.s12(
                                      user.DLSUserName,
                                      color: context.c_green,
                                      overflow: true,
                                    );
                                  },
                                );
                              }
                              return DLSBody.s12(
                                chat.getLocalizedDisplayname(),
                                color: context.c_green,
                                overflow: true,
                              );
                            },
                          ),
                        ),
                      ),
                      Assets.icons.usersAlt1.svg(
                        colorFilter: context.c_green_color_filter,
                        width: 18.r,
                        height: 18.r,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 2.w),
                        child: DLSBody.s12(
                          usersCount.toString(),
                          color: context.c_green,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.w),
                        child: CallTextTickerWidget(
                          init: startAt,
                          style: context.ts_s12h12w500.copyWith(
                            color: context.c_green,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Assets.icons.angleRight.svg(
                  colorFilter: context.c_green_color_filter,
                  width: 18.r,
                  height: 18.r,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
