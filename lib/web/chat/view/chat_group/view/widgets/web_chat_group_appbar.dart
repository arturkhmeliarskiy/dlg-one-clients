import 'package:auto_route/auto_route.dart';
import 'package:collection/collection.dart';
import 'package:dls_one/const/enums.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/features/home/presentation/bloc/global_chat_bloc.dart';
import 'package:dls_one/features/textroom/bloc/helpers/user_typing_bloc.dart';
import 'package:dls_one/features/textroom/ui/components/subtitle_text.dart';
import 'package:dls_one/web/chat/chat_information/view/widgets/group_menu_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:matrix/matrix.dart';

class WebChatGroupRoomAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const WebChatGroupRoomAppBar({
    required this.onCallTap,
    required this.onShowInfoTap,
    required this.chatId,
    required this.onPlusTap,
    required this.onTapRename,
    required this.onTapExit,
    required this.onTapDelete,
    required this.onTapVideoCall,
    required this.canDelete,
    required this.canAdd,
    required this.onHangupTap,
    this.onSearchTap,
    super.key,
  });

  final String chatId;
  final bool canAdd;
  final bool canDelete;
  final VoidCallback? onSearchTap;
  final VoidCallback onCallTap;
  final VoidCallback onShowInfoTap;
  final VoidCallback onPlusTap;
  final VoidCallback onTapRename;
  final VoidCallback onTapExit;
  final VoidCallback onTapDelete;
  final VoidCallback onTapVideoCall;
  final VoidCallback onHangupTap;

  @override
  Size get preferredSize => Size.fromHeight(52.h);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GlobalChatBloc, GlobalChatState>(
      builder: (context, state) {
        final room = state.publicRooms.firstWhereOrNull((e) => e.id == chatId);
        final title = room?.getLocalizedDisplayname() ?? '';

        final isNotifyEnabled = room?.pushRuleState == PushRuleState.dontNotify;

        return SizedBox(
          width: double.infinity,
          height: preferredSize.height,
          child: Column(
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: Row(
                          children: [
                            Flexible(
                              child: DLSHeaders.h1(title),
                            ),
                            if (isNotifyEnabled)
                              Padding(
                                padding: EdgeInsets.only(left: 8.w),
                                child: _buildNotify(context),
                              ),
                            if (room != null)
                              Padding(
                                padding: EdgeInsets.only(left: 12.w),
                                child: DecoratedBox(
                                  decoration: BoxDecoration(
                                    color: context.c_grey_grey,
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 8.w,
                                      vertical: 3.h,
                                    ),
                                    child: Row(
                                      children: [
                                        Assets.icons.usersAlt1.svg(
                                          width: 18.r,
                                          height: 18.r,
                                          colorFilter:
                                              context.c_text_grey_color_filter,
                                        ),
                                        SizedBox(width: 2.w),
                                        DLSBody.smallest(
                                          room
                                              .getParticipants()
                                              .length
                                              .toString(),
                                          color: context.c_text_grey,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            if (canAdd)
                              Padding(
                                padding: EdgeInsets.only(left: 8.w),
                                child: DLSButtonFlat(
                                  onTap: onPlusTap,
                                  borderRadius: BorderRadius.circular(100),
                                  width: 24.r,
                                  height: 24.r,
                                  icon: Assets.icons.plus1.svg(
                                    width: 18.r,
                                    height: 18.r,
                                    colorFilter:
                                        context.c_text_grey_color_filter,
                                  ),
                                  border:
                                      Border.all(color: context.c_grey_stoke),
                                ),
                              ),
                            BlocBuilder<UserTypingBloc, UserTypingState>(
                              builder: (context, state) {
                                if (state.message.isNotEmpty) {
                                  return Flexible(
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 12.w),
                                      child: SubtitleText(text: state.message),
                                    ),
                                  );
                                }
                                return const SizedBox();
                              },
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          if (onSearchTap != null) ...[
                            _buildSearchButton(context),
                            SizedBox(width: 14.w),
                          ],
                          _buildCallButton(context),
                          SizedBox(width: 14.w),
                          _buildHangupButton(context),
                          SizedBox(width: 14.w),
                          GroupMenuButton(
                            canDelete: canDelete,
                            onMenuItemSelected: (p0) {
                              switch (p0) {
                                case PopupMenuItems.videoCall:
                                  onTapVideoCall();
                                  break;
                                case PopupMenuItems.rename:
                                  onTapRename();
                                  break;
                                case PopupMenuItems.exit:
                                  onTapExit();
                                  break;
                                case PopupMenuItems.delete:
                                  onTapDelete();
                                  break;
                                // ignore: no_default_cases
                                default:
                                  break;
                              }
                            },
                          ),
                          SizedBox(width: 14.w),
                          _buildShowInfoButton(context),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              _buildBottomLine(context),
            ],
          ),
        );
      },
    );
  }

  Widget _buildNotify(BuildContext context) {
    return Assets.icons.bellSlash1.svg(
      width: 18.w,
      height: 18.h,
      color: context.c_placeholder,
    );
  }

  Widget _buildSearchButton(BuildContext context) {
    return WebButtonIconWithTooltip(
      icon: Assets.icons.search1.path,
      cornerRadius: 5.r,
      onTap: onSearchTap,
      iconColor: context.c_text_grey,
      tooltip: S.current.search,
    );
  }

  Widget _buildCallButton(BuildContext context) {
    return WebButtonIconWithTooltip(
      icon: Assets.icons.phone1.path,
      cornerRadius: 5.r,
      onTap: onCallTap,
      iconColor: context.c_text_grey,
      tooltip: S.current.call,
    );
  }

  Widget _buildHangupButton(BuildContext context) {
    return WebButtonIconWithTooltip(
      icon: Assets.icons.phoneTimes1.path,
      cornerRadius: 5.r,
      onTap: onHangupTap,
      iconColor: context.c_text_grey,
      tooltip: S.current.hangup,
    );
  }

  Widget _buildShowInfoButton(BuildContext context) {
    return WebButtonIconWithTooltip(
      icon: Assets.icons.webSection1.path,
      cornerRadius: 5.r,
      onTap: onShowInfoTap,
      isPressed: context.topRoute.path == 'info',
      iconColor: context.c_text_grey,
      pressedIconColor: context.c_blue,
      tooltip: S.current.information,
    );
  }

  Widget _buildBottomLine(BuildContext context) {
    return Container(
      color: context.c_grey_stoke,
      height: 1.h,
    );
  }
}
