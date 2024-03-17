import 'package:auto_route/auto_route.dart';
import 'package:dls_one/const/enums.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/features/textroom/bloc/helpers/user_typing_bloc.dart';
import 'package:dls_one/features/textroom/ui/components/subtitle_text.dart';
import 'package:dls_one/web/chat/view/chat_personal/view/widgets/personal_menu_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WebChatPersonalRoomAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const WebChatPersonalRoomAppBar({
    required this.companionUserId,
    required this.isInfoVisible,
    required this.isNotifyEnabled,
    required this.onCallTap,
    required this.onShowInfoTap,
    required this.onTapDelete,
    required this.onHangupTap,
    this.onSearchTap,
    super.key,
  });

  final String? companionUserId;
  final bool isInfoVisible;
  final bool isNotifyEnabled;
  final VoidCallback? onSearchTap;
  final VoidCallback onCallTap;
  final VoidCallback onShowInfoTap;
  final VoidCallback onTapDelete;
  final VoidCallback onHangupTap;

  @override
  Size get preferredSize => Size.fromHeight(52.h);

  @override
  Widget build(BuildContext context) {
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
                          child: _buildTitle(context),
                        ),
                        if (isNotifyEnabled)
                          Padding(
                            padding: EdgeInsets.only(left: 12.w),
                            child: _buildNotify(context),
                          ),
                        BlocBuilder<UserTypingBloc, UserTypingState>(
                          builder: (context, state) {
                            if (companionUserId != null) {
                              if (state.message.isNotEmpty) {
                                return Flexible(
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 12.w),
                                    child: SubtitleText(text: state.message),
                                  ),
                                );
                              }
                              return Padding(
                                padding: EdgeInsets.only(left: 12.w),
                                child:
                                    LastOnline(matrixUserId: companionUserId!),
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
                      _buildMenuButton(context),
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
  }

  Widget _buildTitle(BuildContext context) {
    return BlocBuilder<UsersBloc, UsersState>(
      buildWhen: (previous, current) =>
          previous.store[companionUserId] != current.store[companionUserId],
      builder: (context, state) {
        return DLSHeaders.h1(state.store[companionUserId]?.DLSUserName ?? '');
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

  Widget _buildMenuButton(BuildContext context) {
    return PersonalMenuButton(
      onMenuItemSelected: (p0) {
        switch (p0) {
          case PopupMenuItems.delete:
            onTapDelete();
            break;
          // ignore: no_default_cases
          default:
            break;
        }
      },
    );
  }

  Widget _buildShowInfoButton(BuildContext context) {
    return WebButtonIconWithTooltip(
      icon: Assets.icons.webSection1.path,
      cornerRadius: 5.r,
      onTap: () {
        if (isInfoVisible) {
          context.back();
          return;
        }

        onShowInfoTap.call();
      },
      isPressed: isInfoVisible,
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
