import 'package:dls_one/core/core.dart';
import 'package:dls_one/utils/utils.dart';
import 'package:flutter/material.dart';

/// превью ссылки в чате
class ChatDataPreview extends StatelessWidget {
  /// constructor
  const ChatDataPreview({
    super.key,
    this.padding,
    this.title,
    this.content,
    this.icon,
    this.close,
  });

  final EdgeInsets? padding;
  final String? title;
  final String? content;
  final Widget? icon;
  final GestureTapCallback? close;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 66.h,
      width: MediaQuery.of(context).size.width,
      padding: padding ?? EdgeInsets.zero,
      child: DecoratedBox(
        decoration: BoxDecoration(
          border: Border.all(color: context.c_grey_stoke),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (icon != null) icon!.paddingOnly(right: 8.w),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      txt(title),
                      overflow: TextOverflow.ellipsis,
                      style:
                          context.ts_s14h16_4w400.copyWith(color: context.c_text),
                    ).expanded(),
                    SizedBox(width: 8.w),
                    if (close != null)
                      Assets.icons.times1
                          .svg(
                            width: 18.r,
                            height: 18.r,
                            color: context.c_text_grey,
                          )
                          .gestureDetector(onTap: close)
                  ],
                ),
                Text(
                  txt(content),
                  overflow: TextOverflow.ellipsis,
                  style: context.ts_s14h16_4w400.copyWith(
                    color: context.c_text_grey,
                  ),
                ),
              ],
            ).expanded(),
          ],
        ).paddingSymmetric(horizontal: 16.w, vertical: 16.h),
      ),
    );
  }
}
