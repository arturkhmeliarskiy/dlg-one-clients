import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';
import 'package:rest_api/rest_api.dart';

class MessageUserAvatarBuilder extends StatelessWidget {
  const MessageUserAvatarBuilder({
    required this.user,
    this.size = 40,
    this.onlineVisible = true,
    super.key,
  });

  final DLSUser? user;
  final double size;
  final bool onlineVisible;

  @override
  Widget build(BuildContext context) {
    if ((user?.id ?? '').isEmpty) {
      return Container(
        alignment: Alignment.center,
        width: size.r,
        height: size.r,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: context.c_blue,
        ),
        child: Text(
          (user?.DLSUserName ?? ' ')[0].toUpperCase(),
          style: context.ts_s13h15w500.copyWith(color: context.c_white_text),
          textAlign: TextAlign.center,
        ),
      );
    }
    return DlsAvatar(
      size: size,
      matrixUserId: user!.id!,
      text: user!.DLSUserName,
      onlineVisible: onlineVisible,
    );
  }
}
