import 'package:dls_one/core/core.dart';
import 'package:dls_one/utils/utils.dart';
import 'package:flutter/material.dart';

class DlsUserAvatarName extends StatelessWidget {
  const DlsUserAvatarName({
    Key? key,
    this.text,
    required this.matrixId,
    this.onTap, this.textWidth,
  }) : super(key: key);
  final String? text;
  final String matrixId;
  final GestureTapCallback? onTap;
  final double? textWidth;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30.h,
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          alignment: Alignment.centerLeft,
          color: Colors.transparent,
          // width: 230.w,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              DlsSmallAvatar(text: text ?? '', matrixId: matrixId),
              SizedBox(width: 8.w),
              Padding(
                padding: EdgeInsets.only(top: 6.h), // очень странный отступ, но без него все кривое
                child: SizedBox(
                  width: textWidth ?? 210.w,
                  child: Text(
                    txt(text),
                    style: context.ts_s14h16_4w500.copyWith(color: context.c_text),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
