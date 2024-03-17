import 'package:dls_one/core/core.dart';
import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';

class DLSImageTextRight extends StatelessWidget {
  const DLSImageTextRight({
    super.key,
    this.imageUrl,
    this.text,
    this.isDisabled = false,
    this.radius,
  });

  final String? imageUrl;
  final String? text;
  final bool isDisabled;
  final double? radius;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Stack(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(radius ?? 12.r),
                    color: context.c_white_text,
                  ),
                  height: (radius ?? 12.r) * 2,
                  width: (radius ?? 12.r) * 2,
                ),
                CircleAvatar(
                  radius: radius ?? 12.r,
                  backgroundColor: context.c_blue,
                  backgroundImage:
                  imageUrl != null ? ExtendedImage.network(imageUrl!).image : null,
                ),
              ],
            ),
            if (isDisabled)
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(radius ?? 12.r),
                  color: Colors.grey.withOpacity(0.5),
                ),
                height: (radius ?? 12.r) * 2,
                width: (radius ?? 12.r) * 2,
              )
          ],
        ),
        if (text != null)
          DLSBody.notification(
            text,
            color: isDisabled ? context.c_placeholder : null,
            overflow: true,
            maxLines: 1,
          ).paddingOnly(left: 8.w)
      ],
    );
  }
}
