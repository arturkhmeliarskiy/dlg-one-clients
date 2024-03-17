import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/notifications/notifications.dart';
import 'package:flutter/material.dart';
import 'package:notifications_models/notifications_models.dart';

class UsersStack extends StatelessWidget {
  const UsersStack({
    required this.users,
    super.key,
  });

  final List<DLSNotificationUser> users;

  @override
  Widget build(BuildContext context) {
    final wdg = List<Widget>.generate(
      users.length > 3 ? 3 : users.length,
      (i) => Padding(
        padding: EdgeInsets.only(left: i * 16.w),
        child: UserWithName(user: users[i], hideName: true),
      ),
    );
    if (users.length > 3) {
      wdg.add(
        Padding(
          padding: EdgeInsets.only(left: 3 * 16.w),
          child: Container(
            height: 24.r,
            width: 24.r,
            decoration: BoxDecoration(
              color: context.c_grey_stoke,
              borderRadius: BorderRadius.circular(10000),
              border: Border.all(color: context.c_grey_grey, width: 1.r),
            ),
            alignment: Alignment.center,
            child: Text(
              '+${users.length - 3}',
              style: context.ts_s12h12w400.copyWith(color: context.c_text_grey),
            ),
          ),
        ),
      );
    }
    return Stack(children: wdg);
  }
}
