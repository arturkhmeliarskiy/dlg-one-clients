import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';
import 'package:rest_api/rest_api.dart';

class TaskTagItem extends StatelessWidget {
  const TaskTagItem({
    required this.tag,
    required this.checked,
    required this.onTap,
    super.key,
  });

  final TaskTagModel tag;
  final bool checked;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 44.h,
      child: InkWell(
        onTap: onTap,
        child: DlsPadding.symmetric(
          horizontal: 16.w,
          child: Row(
            children: [
              Expanded(
                child: Text(
                  tag.title,
                  style: context.ts_s14h22_4w400,
                ),
              ),
              if (checked)
                DlsPadding.only(
                  left: 4.w,
                  child: Assets.icons.check
                      .svg(colorFilter: context.c_blue_color_filter),
                )
            ],
          ),
        ),
      ),
    );
  }
}
