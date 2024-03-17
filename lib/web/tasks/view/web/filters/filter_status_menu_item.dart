import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/tasks/view/web/filters/models/filter_status_item.dart';
import 'package:flutter/material.dart';

class FilterStatusMenuItem extends StatelessWidget {
  const FilterStatusMenuItem({
    required this.isSelected,
    required this.item,
    required this.index,
    this.isStatus = true,
    super.key,
  });

  final bool isSelected;
  final StatusItem item;
  final int index;
  final bool isStatus;

  Color colorPriority(BuildContext context) {
    if (index == 0) {
      return context.c_text;
    } else if (index == 1) {
      return context.c_red;
    } else if (index == 2) {
      return context.c_orange;
    } else if (index == 3) {
      return context.c_text_grey;
    } else if (index == 4) {
      return context.c_green;
    }
    return context.c_blue;
  }

  Color colorStatus(BuildContext context) {
    if (index == 0) {
      return context.c_text;
    } else if (index == 1) {
      return context.c_blue;
    } else if (index == 2) {
      return context.c_orange;
    }
    return context.c_green;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        WebDropdownMenuCheckBox(
          isSelected: isSelected,
        ),
        SizedBox(width: 12.w),
        if (item.icon != null)
          item.icon!.paddingOnly(
            right: 5.5.w,
          ),
        Text(
          item.title,
          style: context.ts_s14h22_4w400.copyWith(
            color: isStatus ? colorStatus(context) : colorPriority(context),
          ),
        ),
      ],
    );
  }
}
