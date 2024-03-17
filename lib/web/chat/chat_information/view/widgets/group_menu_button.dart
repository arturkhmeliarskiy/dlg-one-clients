// ignore_for_file: public_member_api_docs

import 'package:dls_one/const/enums.dart';
import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';

class GroupMenuButton extends StatelessWidget {
  const GroupMenuButton({
    required this.onMenuItemSelected,
    required this.canDelete,
    super.key,
  });

  final bool canDelete;
  final void Function(PopupMenuItems) onMenuItemSelected;

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
            value: PopupMenuItems.videoCall,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(width: 16.w),
                Assets.icons.video1.svg(
                  width: 18.w,
                  height: 18.h,
                  colorFilter: context.c_text_grey_color_filter,
                ),
                SizedBox(width: 8.w),
                DLSBody.s14(
                  S.current.video_call,
                ).expanded(),
                SizedBox(width: 16.w),
              ],
            ),
          ),
          PopupMenuItem<PopupMenuItems>(
            padding: EdgeInsets.zero,
            value: PopupMenuItems.rename,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(width: 16.w),
                Assets.icons.pen1.svg(
                  width: 18.w,
                  height: 18.h,
                  colorFilter: context.c_text_grey_color_filter,
                ),
                SizedBox(width: 8.w),
                DLSBody.s14(
                  S.current.rename,
                ).expanded(),
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
                DLSBody.s14(
                  S.current.leave_group,
                ).expanded(),
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
                  DLSBody.s14(
                    S.current.delete_and_leave_group,
                    color: context.c_red,
                  ).expanded(),
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
