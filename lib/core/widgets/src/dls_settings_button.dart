import 'package:dls_one/common/gen/localization/l10n.dart';
import 'package:dls_one/const/enums.dart';
import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';

class DlsSettingsButton extends StatelessWidget {
  const DlsSettingsButton({super.key, required this.onMenuItemSelected});
  final void Function(PopupMenuItems) onMenuItemSelected;

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<PopupMenuItems>(
      onSelected: onMenuItemSelected,
      itemBuilder: (BuildContext context) => <PopupMenuEntry<PopupMenuItems>>[
        PopupMenuItem<PopupMenuItems>(
          value: PopupMenuItems.settings,
          child: Row(
            children: [
              Assets.icons.setting
                  .svg(width: 18.r, height: 18.r, color: context.c_text_grey),
              SizedBox(width: 8.w),
              Text(
                S.current.settings,
                style: context.ts_s14h14w400.copyWith(color: context.c_text),
              ),
            ],
          ),
        ),
        PopupMenuItem<PopupMenuItems>(
          value: PopupMenuItems.exit,
          child: Row(
            children: [
              Assets.icons.signout1
                  .svg(width: 18.r, height: 18.r, color: context.c_text_grey),
              SizedBox(width: 8.w),
              Text(
                S.current.exit_from_account,
                style: context.ts_s14h14w400.copyWith(color: context.c_text),
              ),
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
        color: Colors.transparent,
        child: Assets.icons.setting
            .svg(width: 18.w, height: 18.h, color: context.c_text_grey),
      ),
    );
  }
}
