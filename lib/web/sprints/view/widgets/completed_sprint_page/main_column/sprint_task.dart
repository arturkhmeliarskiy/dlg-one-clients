import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';

class SprintTask extends StatelessWidget {
  const SprintTask({
    this.isActiveIcon = false,
    this.path = '',
    this.globalPath = '',
    this.isGlobalArrow = true,
    super.key,
  });

  final bool isActiveIcon;
  final bool isGlobalArrow;
  final String path;
  final String globalPath;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        LayoutBuilder(
          builder: (context, constraints) {
            if (isActiveIcon) {
              return Assets.icons.hierarchy.svg(
                width: 14.w,
                height: 14.h,
                color: context.c_placeholder,
              );
            } else {
              return const SizedBox();
            }
          },
        ),
        if (globalPath.isNotEmpty)
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(width: 8.0.w),
              if (isGlobalArrow)
                Assets.icons.angleRight.svg(
                  width: 14.68.w,
                  height: 17.91.h,
                  color: context.c_placeholder,
                ),
              SizedBox(width: 8.0.w),
              ConstrainedBox(
                constraints: BoxConstraints(maxWidth: 200.w),
                child: Text(
                  globalPath,
                  style:
                      context.ts_s12h14w400.copyWith(color: context.c_text_grey),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
              ),
            ],
          ),
        Flexible(
          child: Row(
            children: [
              SizedBox(
                width: 8.0.w,
              ),
              Assets.icons.angleRight.svg(
                width: 14.68.w,
                height: 17.91.h,
                color: context.c_placeholder,
              ),
              SizedBox(
                width: 8.0.w,
              ),
              Expanded(
                child: Text(
                  path,
                  style: context.ts_s12h14w400.copyWith(color: context.c_blue),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
