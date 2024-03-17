import 'package:collection/collection.dart';
import 'package:dls_one/const/enums.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/features/features.dart';
import 'package:dls_one/features/home/presentation/bloc/global_chat_bloc.dart';
import 'package:dls_one/features/textroom/ui/chat_personal_menu_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:matrix/matrix.dart';
import 'package:timeago/timeago.dart' as timeago;

class MobilePersonalChatAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const MobilePersonalChatAppBar({
    required this.chatId,
    required this.onTapBack,
    required this.onTapCall,
    required this.onMenuItemSelected,
    required this.onHangupTap,
    super.key,
  });

  final String chatId;
  final VoidCallback? onTapBack;
  final VoidCallback onTapCall;
  final VoidCallback onHangupTap;
  final void Function(PopupMenuItems) onMenuItemSelected;

  @override
  Size get preferredSize => Size.fromHeight(60.h);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GlobalChatBloc, GlobalChatState>(
      builder: (context, state) {
        final chat = state.privateRooms.firstWhereOrNull((e) => e.id == chatId);
        final matrixUser = chat
            ?.getParticipants()
            .firstWhereOrNull((element) => element.id != chat.client.userID);
        final dontNotify = chat?.pushRuleState == PushRuleState.dontNotify;
        return Container(
          height: preferredSize.height,
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                width: 1.h,
                color: context.c_grey_stoke,
              ),
            ),
          ),
          child: Row(
            children: [
              GestureDetector(
                behavior: HitTestBehavior.translucent,
                onTap: onTapBack,
                child: Assets.icons.back.svg(
                  width: 18.w,
                  height: 18.h,
                  colorFilter: context.c_text_grey_color_filter,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.w),
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Row(
                                children: [
                                  Flexible(
                                    child: BlocBuilder<UsersBloc, UsersState>(
                                      builder: (context, usersState) {
                                        final user =
                                            usersState.store[matrixUser?.id];
                                        if (user == null) {
                                          return const SizedBox();
                                        }
                                        return DLSHeaders.h3(
                                          user.DLSUserName,
                                        );
                                      },
                                    ),
                                  ),
                                  if (dontNotify)
                                    Padding(
                                      padding: EdgeInsets.only(left: 4.w),
                                      child: Assets.icons.bellSlash1.svg(
                                        width: 18.w,
                                        height: 18.h,
                                        colorFilter:
                                            context.c_placeholder_color_filter,
                                      ),
                                    )
                                ],
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 4.sp),
                          child: Row(
                            children: [
                              BlocBuilder<UserTypingBloc, UserTypingState>(
                                builder: (context, userTypingState) {
                                  /// если кто-то печатает
                                  if (userTypingState.message.isNotEmpty) {
                                    return Expanded(
                                      child: SubtitleText(
                                        text: userTypingState.message,
                                      ),
                                    );
                                  }

                                  /// todo необходимо обновлять статус онлайна
                                  if (chat == null) {
                                    return const SizedBox();
                                  }
                                  return Expanded(
                                    child: BlocBuilder<UsersBloc, UsersState>(
                                      builder: (context, usersState) {
                                        final user =
                                            usersState.store[matrixUser?.id];

                                        return user?.currentlyActive ?? false
                                            ? DLSBody.s1421(
                                                S.current.online,
                                                color: context.c_green,
                                                maxLines: 1,
                                              )
                                            : user?.lastActiveAgo == null
                                                ? DLSBody.s1421(
                                                    S.current.offline,
                                                    color: context.c_text_grey,
                                                    maxLines: 1,
                                                  )
                                                : DLSBody.s1421(
                                                    '${S.current.wasOnline} ${timeago.format(
                                                      DateTime.now().subtract(
                                                        Duration(
                                                          milliseconds:
                                                              user?.lastActiveAgo ??
                                                                  0,
                                                        ),
                                                      ),
                                                    )}',
                                                    color: context.c_text_grey,
                                                    maxLines: 1,
                                                  );
                                      },
                                    ),
                                  );
                                },
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 14.w),
                    child: GestureDetector(
                      onTap: onTapCall,
                      child: Assets.icons.phone1.svg(
                        width: 18.w,
                        height: 18.h,
                        colorFilter: context.c_text_grey_color_filter,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 14.w),
                    child: GestureDetector(
                      onTap: onHangupTap,
                      child: Assets.icons.phoneTimes1.svg(
                        width: 18.w,
                        height: 18.h,
                        colorFilter: context.c_text_grey_color_filter,
                      ),
                    ),
                  ),
                  ChatPersonalMenuButton(
                    onMenuItemSelected: onMenuItemSelected,
                    dontNotify: dontNotify,
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
