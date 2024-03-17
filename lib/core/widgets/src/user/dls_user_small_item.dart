import 'package:dls_one/core/core.dart';
import 'package:dls_one/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:rest_api/rest_api.dart';

class DlsUserSmallItem extends StatelessWidget {
  const DlsUserSmallItem({
    super.key,
    required this.user,
    this.isMe = false,
    this.style,
  });

  final DLSUser user;
  final bool isMe;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: user.nameSurname ?? user.name,
      child: Row(
        children: [
          // TODO config avatars
          if (user.id == null)
            DLSAvatar(
              imageUrl: user.avatar ?? '',
              username: user.name,
              size: 24.r,
            )
          else
            DlsAvatar(
              matrixUserId: user.id,
              text: user.name ?? user.matrixName,
              size: 24.r,
            ),
          SizedBox(width: 8.w),
          Expanded(
            child: Text.rich(
              TextSpan(
                text: txt(user.name ?? user.matrixName),
                children: [
                  if (isMe)
                    TextSpan(
                      text: S.current.meComma,
                      style: style ??
                          context.ts_s14h16_4w500.apply(color: context.c_text_grey),
                    ),
                ],
              ),
              style: style ?? context.ts_s14h16_4w500.apply(color: context.c_text),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
