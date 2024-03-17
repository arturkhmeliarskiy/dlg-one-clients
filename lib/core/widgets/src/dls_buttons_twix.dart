import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';

/// группа из двух кнопок
/// одна слева другая справа
/// зактугления общие
/// цвета разные
/// есть иконки
class DLSButtonsTwix extends StatelessWidget {
  const DLSButtonsTwix({
    super.key,
    this.labelLeft,
    this.labelRight,
    this.onTapLeft,
    this.onTapRight,
  });

  /// текст левой кнопки
  final String? labelLeft;

  /// обработчик левой кнопки
  final VoidCallback? onTapLeft;

  /// текст правой кнопки
  final String? labelRight;

  /// обработчик правой кнопки
  final VoidCallback? onTapRight;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        DLSButtonFlat(
          icon: Assets.icons.check
              .svg(
                colorFilter: ColorFilter.mode(
                  context.c_green,
                  BlendMode.srcIn,
                ),
              )
              .paddingOnly(right: 4.w),
          text: labelLeft,
          textStyle: context.ts_s14h16_4w400.copyWith(
            color: context.c_text,
          ),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(4.r),
            topLeft: Radius.circular(4.r),
          ),
          border: Border.all(color: context.c_green, width: 1),
          color: context.c_green_light,
          horizontalPadding: 8.w,
          onTap: onTapLeft,
        ).paddingOnly(bottom: 12.h),
        DLSButtonFlat(
          icon: Assets.icons.times1
              .svg(
                colorFilter: ColorFilter.mode(
                  context.c_red,
                  BlendMode.srcIn,
                ),
              )
              .paddingOnly(right: 4.w),
          text: labelRight,
          textStyle: context.ts_s14h16_4w400.copyWith(
            color: context.c_text,
          ),
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(4.r),
            topRight: Radius.circular(4.r),
          ),
          border: Border.all(color: context.c_grey_stoke, width: 1),
          horizontalPadding: 8.w,
          onTap: onTapRight,
        ).paddingOnly(right: 12.w, bottom: 12.h),
      ],
    );
  }
}
