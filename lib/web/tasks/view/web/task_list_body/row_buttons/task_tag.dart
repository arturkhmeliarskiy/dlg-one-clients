import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';
import 'package:rest_api/rest_api.dart';

class TaskTag extends StatelessWidget {
  const TaskTag({
    required this.items,
    super.key,
  });

  final List<TaskTagModel> items;

  @override
  Widget build(BuildContext context) {
    if (items.isNotEmpty) {
      return Row(
        children: [
          DecoratedBox(
            decoration: BoxDecoration(
              color: context.c_grey_stoke,
              borderRadius: BorderRadius.circular(5.r),
            ),
            child: Text(
              items.first.title,
              style: context.ts_s12h14w400.copyWith(
                color: context.c_text_grey,
              ),
            ).paddingSymmetric(
              horizontal: 8.w,
              vertical: 5.h,
            ),
          ),
          SizedBox(
            width: 4.w,
          ),
          if (items.length > 1)
            DecoratedBox(
              decoration: BoxDecoration(
                color: context.c_grey_stoke,
                borderRadius: BorderRadius.circular(5.r),
              ),
              child: Text(
                '+${items.length - 1}',
                style: context.ts_s12h14w400.copyWith(
                  color: context.c_text_grey,
                ),
              ).paddingSymmetric(
                horizontal: 8.w,
                vertical: 5.h,
              ),
            ),
        ],
      );
    } else {
      return const SizedBox();
    }
  }
}
