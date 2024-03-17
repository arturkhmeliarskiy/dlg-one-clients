import 'package:auto_route/auto_route.dart';
import 'package:dls_one/app/router/app_router.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/features/textroom/textroom.dart';
import 'package:flutter/material.dart';
import 'package:matrix/matrix.dart';

/// выпадающее меню при нажатии три точки
class ChatDotsMenu extends PopupMenuEntry<int> {
  const ChatDotsMenu(this.bloc, {super.key});
  final TextRoomBloc bloc;

  @override
  ChatDotsMenuState createState() => ChatDotsMenuState();

  @override
  double get height => throw UnimplementedError();

  @override
  bool represents(int? value) {
    throw UnimplementedError();
  }
}

class ChatDotsMenuState extends State<ChatDotsMenu> {
  Future<String?> rejectDialog() async {
    return showDialog<String>(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: const Text('Внимание!'),
        content: const Text(
          'На данный момент Вы уже находитесь в звонке, покинуть текущий звонок?',
        ),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.pop(context, 'Cancel'),
            child: const Text('Отмена'),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context, 'OK'),
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        boxShadow: context.shadow,
        color: context.c_white_text,
        borderRadius: BorderRadius.all(
          Radius.circular(5.r),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          DLSButtonText(
            iconLeft: Assets.icons.infoCircle
                .svg(width: 18.r, height: 18.r, color: context.c_text_grey),
            text: S.current.information,
            textStyle: context.ts_s14h22_4w400.copyWith(color: context.c_text),
            onTap: () {
              Navigator.pop(context);
              final items = widget.bloc.id.split(':');
              if (widget.bloc.direct) {
                if (widget.bloc.directUser?.id?.isNotEmpty ?? false) {
                  final items = widget.bloc.id.split(':');
                  context.pushRoute(
                    ChatsRootRoute(
                      children: [
                        MobileTextRoomWrapperRoute(
                          chatId: items.first,
                          server: items.last,
                        ),
                        ChatInformationRootRoute(
                          children: [
                            UserInformationRoute(
                              userId: widget.bloc.directUser!.id!,
                              roomId: widget.bloc.id,
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                }
              } else {
                context.pushRoute(
                  ChatsRootRoute(
                    children: [
                      MobileTextRoomWrapperRoute(
                        chatId: items.first,
                        server: items.last,
                      ),
                      ChatInformationRootRoute(
                        children: [
                          MobileChatInformationRoute(
                            chatId: widget.bloc.id,
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              }
            },
          ).paddingOnly(bottom: 16.h),

          /// todo странное поведение
          /// вероятно это из-за pop
          DLSButtonText(
            text: S.current.video_call,
            iconLeft: Assets.icons.video1.svg(color: context.c_text_grey),
            textStyle: context.ts_s14h22_4w400.copyWith(color: context.c_text),
            // onTap: () async {
            //   Navigator.pop(context);
            //   bool canCall = true;
            //   if (context.read<CallerBloc>().state.dlsCall != null) {
            //     if (context.read<CallerBloc>().state.dlsCall?.matrixRoom !=
            //         widget.bloc.id) {
            //       String? val = await rejectDialog();
            //       if ('OK' != val) canCall = false;
            //     }
            //   }
            //   if (canCall) {
            //     context.read<CallerBloc>().add(
            //           CallerEvent.outCall(
            //             roomId: widget.bloc.id,
            //             isAudioMuted: false,
            //             isVideoMuted: false,
            //           ),
            //         );
            //   }
            // },
          ).paddingOnly(bottom: 16.h),
          DLSButtonText(
            iconLeft: widget.bloc.room.pushRuleState == PushRuleState.dontNotify
                ? Assets.icons.bell1.svg(
                    height: 18.h,
                    width: 18.w,
                    color: context.c_text_grey,
                  )
                : Assets.icons.bellSlash1.svg(
                    height: 18.h,
                    width: 18.w,
                    color: context.c_text_grey,
                  ),
            text: widget.bloc.room.pushRuleState == PushRuleState.dontNotify
                ? S.current.unmute
                : S.current.mute,
            textStyle: context.ts_s14h22_4w400.copyWith(color: context.c_text),
            onTap: () {
              widget.bloc.add(
                TextRoomEvent.enableNotifications(
                  enable:
                      widget.bloc.room.pushRuleState != PushRuleState.notify,
                ),
              );
              Navigator.pop(context);
            },
          ).paddingOnly(bottom: 16.h),
          DLSButtonText(
            iconLeft: Assets.icons.signout1
                .svg(width: 18.r, height: 18.r, color: context.c_red),
            text: widget.bloc.direct
                ? S.current.leave_chat
                // :
                // widget.bloc.admin
                //         ? S.current.delete_and_leave_group
                : S.current.leave_group,
            textStyle: context.ts_s14h22_4w400.copyWith(color: context.c_red),
            onTap: () {
              widget.bloc.add(
                TextRoomEvent.leaveMtx(
                  callback: (bool ok) {
                    Navigator.pop(context);
                    if (ok) {
                      context.navigateTo(
                        const MainRoute(),
                      );
                    }
                  },
                ),
              );
            },
          ),
        ],
      ).paddingSymmetric(horizontal: 16.w, vertical: 16.h),
    );
  }
}
