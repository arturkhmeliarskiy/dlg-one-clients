import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';
import 'package:rest_api/rest_api.dart';

class UserChip extends StatelessWidget {
  const UserChip({
    required this.user,
    this.onClose,
    super.key,
  });

  final DLSUser user;
  final VoidCallback? onClose;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: context.c_grey_stoke,
        borderRadius: BorderRadius.circular(5.r),
      ),
      padding: EdgeInsets.fromLTRB(8.w, 3.h, onClose != null ? 1.w : 8.w, 3.h),
      height: 24.r,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            user.DLSUserName,
            style: context.ts_s12h12w400.copyWith(color: context.c_text_grey),
          ),
          if (onClose != null)
            InkWell(
              onTap: onClose,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 3.w),
                child: Assets.icons.times1.svg(
                  width: 18.r,
                  height: 18.r,
                  colorFilter: context.c_text_grey_color_filter,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
