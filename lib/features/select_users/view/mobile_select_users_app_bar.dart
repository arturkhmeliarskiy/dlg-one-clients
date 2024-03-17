import 'package:dls_one/core/core.dart';
import 'package:dls_one/core/widgets/src/dls_app_bar.dart';
import 'package:flutter/material.dart';

class MobileSelectUsersAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const MobileSelectUsersAppBar({
    super.key,
    this.title,
    this.actionTitle,
    this.onTap,
  });

  final String? title;
  final String? actionTitle;
  final VoidCallback? onTap;

  @override
  Size get preferredSize => Size.fromHeight(DLSAppBar.defaultToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return DLSAppBar(
      title: DLSHeaders.h1(title ?? S.current.people_adding),
      actions: [
        DLSButtonFlat(
          text: actionTitle ?? S.current.save,
          onTap: onTap,
          textStyle: context.ts_s14h14w400.copyWith(
            color: onTap == null ? context.c_blue_disabled : context.c_blue,
          ),
          border: Border.all(color: Colors.transparent),
        ),
      ],
    );
  }
}
