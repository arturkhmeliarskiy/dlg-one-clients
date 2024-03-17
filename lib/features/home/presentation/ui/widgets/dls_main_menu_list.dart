import 'package:dls_one/core/core.dart';
import 'package:dls_one/features/home/presentation/bloc/global_chat_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DLSMainMenuList extends StatelessWidget {
  const DLSMainMenuList({
    required this.onChatTap,
    required this.onImportantTap,
    required this.onRepliesTap,
    super.key,
  });

  final VoidCallback onChatTap;
  final VoidCallback onImportantTap;
  final VoidCallback onRepliesTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        BlocBuilder<GlobalChatBloc, GlobalChatState>(
          buildWhen: (previous, current) =>
              previous.privateRoomsUnreadCount !=
              current.privateRoomsUnreadCount,
          builder: (context, state) {
            return GestureDetector(
              onTap: onChatTap,
              child: Container(
                height: 42.h,
                padding: EdgeInsets.symmetric(horizontal: 25.w),
                child: Row(
                  children: [
                    Assets.icons.listUl1.svg(
                      width: 18.w,
                      height: 18.h,
                      colorFilter: context.c_text_grey_color_filter,
                    ),
                    SizedBox(width: 8.w),
                    Expanded(
                      child: Text(
                        S.current.chats,
                        style: context.ts_s14h14w400.copyWith(
                          color: context.c_text_grey,
                        ),
                      ),
                    ),
                    if (state.privateRoomsUnreadCount > 0)
                      DlsNotificationsCounter(
                        count: state.privateRoomsUnreadCount.toString(),
                      ),
                  ],
                ),
              ),
            );
          },
        ),
        GestureDetector(
          onTap: onImportantTap,
          child: Container(
            height: 42.h,
            padding: EdgeInsets.symmetric(horizontal: 25.w),
            child: Row(
              children: [
                Assets.icons.star1.svg(
                  width: 18.w,
                  height: 18.h,
                  colorFilter: context.c_text_grey_color_filter,
                ),
                SizedBox(width: 8.w),
                Text(
                  S.current.important,
                  style: context.ts_s14h14w400.copyWith(
                    color: context.c_text_grey,
                  ),
                ),
              ],
            ),
          ),
        ),
        GestureDetector(
          onTap: onRepliesTap,
          child: Container(
            height: 42.h,
            padding: EdgeInsets.symmetric(horizontal: 25.w),
            child: Row(
              children: [
                Assets.icons.commentLines.svg(
                  width: 18.w,
                  height: 18.h,
                  colorFilter: context.c_text_grey_color_filter,
                ),
                SizedBox(width: 8.w),
                Text(
                  S.current.my_replies,
                  style: context.ts_s14h14w400.copyWith(
                    color: context.c_text_grey,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
