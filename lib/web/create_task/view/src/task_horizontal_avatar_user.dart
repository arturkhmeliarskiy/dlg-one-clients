import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';
import 'package:rest_api/rest_api.dart';

class TaskHorizontalAvatarUser extends StatelessWidget {
  const TaskHorizontalAvatarUser({required this.user, super.key});

  final DLSUser user;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24.h,
      width: 24.w,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white, width: 2.w),
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Tooltip(
        message: user.nameSurname ?? user.name,
        child: DLSAvatar(
          size: 24.r,
          imageUrl: user.avatar ?? '',
          username: user.name ?? user.nameSurname,
        ),
      ),
    );
  }
}
