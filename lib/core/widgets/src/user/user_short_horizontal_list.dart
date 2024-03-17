import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';
import 'package:rest_api/rest_api.dart';

class UserShortHorizontalList extends StatelessWidget {
  const UserShortHorizontalList({required this.users, super.key})
      : assert(users.length != 0, 'Must not be empty');

  final List<DlsUserShort> users;

  @override
  Widget build(BuildContext context) {
    var width = 24.w;
    if (users.length > 1) {
      width += 20 * (users.length - 1);
    }
    return SizedBox(
      width: width,
      height: 24.w,
      child: Stack(
        children: [
          for (int i = 0; i < users.length; i++) ...[
            if (i > 0)
              Positioned(
                left: 20.w * i - 2.w,
                child: SizedBox(
                  height: 24.h,
                  width: 24.w,
                  child: CircleAvatar(
                    backgroundColor: context.c_white_text,
                  ),
                ),
              ),
            Positioned(
              left: 20.w * i,
              child: DLSAvatar(
                imageUrl: users[i].avatar ?? '',
                size: 24.r,
              ),
            )
          ],
        ],
      ),
    );
  }
}
