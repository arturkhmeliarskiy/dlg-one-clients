import 'package:dls_one/core/core.dart';
import 'package:dls_one/utils/utils.dart';
import 'package:flutter/material.dart';

/// аватарка имя статус
class DlsAvatarNameStatus extends StatelessWidget {
  const DlsAvatarNameStatus({
    Key? key,
    this.userId,
    this.name,
  }) : super(key: key);

  final String? name;
  final String? userId;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (userId != null)
          SizedBox(
            width: 48.r,
            child: DlsAvatar(
              size: 48,
              matrixUserId: userId,
              text: name,
            ).paddingOnly(bottom: 16.h),
          )
        else
          Container(
            alignment: Alignment.center,
            height: 48.r,
            width: 48.r,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100.r),
              color: context.c_blue,
            ),
            child: Text(
              (name?[0] ?? '').toUpperCase(),
              style:
                  context.ts_s13h15w500.copyWith(color: context.c_white_text),
              textAlign: TextAlign.center,
            ),
          ).paddingOnly(bottom: 16.h),
        DLSHeaders.h3(txt(name)),
        if (userId != null)
          LastOnline(matrixUserId: userId!).paddingOnly(top: 4.h),
      ],
    );
  }
}
