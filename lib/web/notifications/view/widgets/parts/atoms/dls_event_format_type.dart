import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';

/// сделано для мероприятия
/// тип формат мероприятия
/// онлайн/оффлайн
class DLSFormatType extends StatelessWidget {

  const DLSFormatType({
    super.key,
    required this.isOnline,
    this.backgroundColor,
    this.textColor,
  });

  final bool isOnline;
  final Color? backgroundColor;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: backgroundColor ??
            (isOnline
                ? context.c_purple_background
                : context.c_tiffany_background),
        borderRadius: BorderRadius.circular(5.r),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 3.h),
        child: DLSBody.s1421(
          isOnline ? S.current.online : S.current.offline,
          color: textColor ?? (isOnline ? context.c_purple : context.c_tiffany),
          maxLines: 1,
          overflow: true,
        ),
      ),
    );
  }
}
