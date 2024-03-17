import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';
import 'package:rest_api/rest_api.dart';

class MobileTaskTagsRow extends StatelessWidget {
  const MobileTaskTagsRow({required this.tags, super.key});

  final List<TaskTagModel> tags;

  double _calculateTextWidth(String text, TextStyle style) {
    final textPainter = TextPainter(
      text: TextSpan(text: text),
      textDirection: TextDirection.ltr,
    )..layout();

    return textPainter.width;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final style =
            context.ts_s12h14w400.copyWith(color: context.c_text_grey);

        final totalWidth = constraints.maxWidth;
        final separator = 4.w;
        var consumedWidth =
            separator + 12.w + _calculateTextWidth('+${tags.length}', style);
        var visibleItemCount = 0;

        for (var i = 0; i < tags.length; i++) {
          final itemWidth =
              _calculateTextWidth(tags[i].title, style) + 12.w + separator;

          if (consumedWidth + itemWidth <= totalWidth) {
            consumedWidth += itemWidth;
            visibleItemCount++;
          } else {
            break;
          }
        }

        final hiddenItemCount = tags.length - visibleItemCount;

        return Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            for (int i = 0; i < visibleItemCount; i++)
              Container(
                padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 5.h),
                margin: EdgeInsets.only(
                    right: i == visibleItemCount - 1 && hiddenItemCount == 0
                        ? 0
                        : 4.w),
                decoration: BoxDecoration(
                  color: context.c_grey_stoke,
                  borderRadius: BorderRadius.circular(4.r),
                ),
                child: Text(
                  tags[i].title,
                  style: style,
                ),
              ),
            if (hiddenItemCount > 0)
              Container(
                padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 5.h),
                decoration: BoxDecoration(
                  color: context.c_grey_stoke,
                  borderRadius: BorderRadius.circular(4.r),
                ),
                child: Text('+$hiddenItemCount', style: style),
              ),
          ],
        );
      },
    );
  }
}
