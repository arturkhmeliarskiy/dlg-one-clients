import 'package:dls_one/core/core.dart';
import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';

class DlsUserChatMessage extends StatelessWidget {
  const DlsUserChatMessage({
    Key? key,
    this.onTap,
    this.text,
    this.height,
    this.width,
    this.color,
    this.statusColor,
    this.imgUrl,
    this.isOnline,
  }) : super(key: key);

  final GestureTapCallback? onTap;
  final String? text;
  final String? imgUrl;
  final bool? isOnline;
  final double? height;
  final double? width;
  final Color? color;
  final Color? statusColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        children: [
          Container(
            alignment: Alignment.center,
            height: height ?? 40.h,
            width: width ?? 40.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100.r),
              color: color ?? context.c_blue,
              image: DecorationImage(
                image: ExtendedImage.network(
                  imgUrl ?? '',
                  cache: true,
                ).image,
                fit: BoxFit.cover,
              ),
            ),
            child: imgUrl == null
                ? Text(
                    text != null ? (text!.isNotEmpty ? text![0] : '') : '',
                    style: context.ts_s13h15w500
                        .copyWith(color: context.c_white_text),
                    textAlign: TextAlign.center,
                  )
                : Container(),
          ),
          if (isOnline ?? false)
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 12.r,
                  width: 12.r,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100.r),
                    color: context.c_grey_stoke,
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  height: 8.r,
                  width: 8.r,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100.r),
                    color: statusColor ?? context.c_green,
                  ),
                ),
              ],
            )
          else
            Container(),
        ],
      ),
    );
  }
}
