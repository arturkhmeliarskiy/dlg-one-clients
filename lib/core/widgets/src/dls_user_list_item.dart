import 'package:dls_one/core/core.dart';
import 'package:dls_one/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:rest_api/rest_api.dart';

class DlsUserListItem extends StatelessWidget {
  const DlsUserListItem({
    super.key,
    required this.user,
    this.onTap,
    this.isSelected = false,
    this.isMenuOpened = false,
    this.onLongPress,
    this.onTapDown,
    this.isOwner = false,
    this.isAdmin = false,
  });

  final DLSUser user;
  final GestureTapCallback? onTap;
  final GestureTapCallback? onLongPress;
  final bool isSelected;
  final bool isMenuOpened;
  final GestureTapDownCallback? onTapDown;
  final bool isOwner;
  final bool isAdmin;

  @override
  Widget build(BuildContext context) {
    if (user.id == null) return const SizedBox();
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
      decoration: BoxDecoration(
        border: Border.all(
          color: isSelected ? context.c_blue : Colors.transparent,
        ),
        borderRadius: BorderRadius.all(Radius.circular(5.r)),
        color: isMenuOpened ? context.c_grey_grey : null,
      ),
      child: Row(
        children: [
          DlsAvatar(matrixUserId: user.id, text: user.name ?? user.matrixName),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                txt(user.name ?? user.matrixName),
                style: context.ts_s14h16_4w500.copyWith(color: context.c_text),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ).paddingSymmetric(horizontal: 12.w),
              if (isAdmin)
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.w),
                  child: Text(
                    txt(S.current.group_admin),
                    style:
                    context.ts_s14h16_4w400.copyWith(color: context.c_text_grey),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                )
              else if (isOwner)
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.w),
                  child: Text(
                    txt(S.current.group_owner),
                    style:
                        context.ts_s14h16_4w400.copyWith(color: context.c_text_grey),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
            ],
          ).expanded(),
          if (isSelected)
            Assets.icons.checkCircle1
                .svg(width: 18.w, height: 18.h, color: context.c_blue)
                .paddingOnly(right: 8.w)
        ],
      ),
    ).paddingSymmetric(horizontal: 8.w, vertical: 2.h).gestureDetector(
          onTap: onTap,
          onLongPress: onLongPress,
          onTapDown: onTapDown,
        );
  }
}
