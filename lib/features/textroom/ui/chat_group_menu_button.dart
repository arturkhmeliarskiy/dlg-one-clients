// ignore_for_file: public_member_api_docs

import 'package:dls_one/const/enums.dart';
import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';

class ChatGroupMenuButton extends StatelessWidget {
  const ChatGroupMenuButton({
    required this.onMenuItemSelected,
    required this.dontNotify,
    required this.canDelete,
    super.key,
  });

  final void Function(PopupMenuItems) onMenuItemSelected;
  final bool dontNotify;
  final bool canDelete;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.r),
      ),
      child: PopupMenuButton<PopupMenuItems>(
        padding: EdgeInsets.zero,
        onSelected: onMenuItemSelected,
        tooltip: '',
        itemBuilder: (BuildContext context) => <PopupMenuEntry<PopupMenuItems>>[
          PopupMenuItem<PopupMenuItems>(
            padding: EdgeInsets.zero,
            value: PopupMenuItems.showInfo,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(width: 16.w),
                Assets.icons.infoCircle.svg(
                  height: 18.h,
                  width: 18.w,
                  colorFilter: context.c_text_grey_color_filter,
                ),
                SizedBox(width: 8.w),
                Expanded(
                  child: DLSBody.s14(
                    S.current.show_info,
                  ),
                ),
                SizedBox(width: 16.w),
              ],
            ),
          ),
          PopupMenuItem<PopupMenuItems>(
            padding: EdgeInsets.zero,
            value: PopupMenuItems.videoCall,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(width: 16.w),
                Assets.icons.video1.svg(
                  height: 18.h,
                  width: 18.w,
                  colorFilter: context.c_text_grey_color_filter,
                ),
                SizedBox(width: 8.w),
                Expanded(
                  child: DLSBody.s14(
                    S.current.video_call,
                  ),
                ),
                SizedBox(width: 16.w),
              ],
            ),
          ),
          PopupMenuItem<PopupMenuItems>(
            padding: EdgeInsets.zero,
            value: PopupMenuItems.mute,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(width: 16.w),
                dontNotify
                    ? Assets.icons.bell1.svg(
                        height: 18.h,
                        width: 18.w,
                        colorFilter: context.c_text_grey_color_filter,
                      )
                    : Assets.icons.bellSlash1.svg(
                        height: 18.h,
                        width: 18.w,
                        colorFilter: context.c_text_grey_color_filter,
                      ),
                SizedBox(width: 8.w),
                Expanded(
                  child: DLSBody.s14(
                    dontNotify ? S.current.unmute : S.current.mute,
                  ),
                ),
                SizedBox(width: 16.w),
              ],
            ),
          ),
          PopupMenuItem<PopupMenuItems>(
            padding: EdgeInsets.zero,
            value: PopupMenuItems.exit,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(width: 16.w),
                Assets.icons.signout1.svg(
                  width: 18.w,
                  height: 18.h,
                  colorFilter: context.c_text_grey_color_filter,
                ),
                SizedBox(width: 8.w),
                Expanded(
                  child: DLSBody.s14(
                    S.current.leave_group,
                  ),
                ),
                SizedBox(width: 16.w),
              ],
            ),
          ),
          if (canDelete)
            PopupMenuItem<PopupMenuItems>(
              padding: EdgeInsets.zero,
              value: PopupMenuItems.delete,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(width: 16.w),
                  Assets.icons.trash.svg(
                    width: 18.w,
                    height: 18.h,
                    colorFilter: context.c_red_color_filter,
                  ),
                  SizedBox(width: 8.w),
                  Expanded(
                    child: DLSBody.s14(
                      S.current.delete_and_leave_group,
                      color: context.c_red,
                    ),
                  ),
                  SizedBox(width: 16.w),
                ],
              ),
            ),
        ],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(5.r),
          ),
        ),
        elevation: 10,
        child: Container(
          width: 28.w,
          height: 28.h,
          alignment: Alignment.center,
          color: Colors.transparent,
          child: Assets.icons.ellipsisV1.svg(
            width: 18.w,
            height: 18.h,
            colorFilter: context.c_text_grey_color_filter,
          ),
        ),
      ),
    );
  }
}
