import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/tasks/view/web/filters/models/filter_status_item.dart';
import 'package:flutter/material.dart';

class FilterRolesMenuItem extends StatelessWidget {
  const FilterRolesMenuItem({
    required this.isSelected,
    required this.title,
    super.key,
  });

  final bool isSelected;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 12.w),
      child: Row(
        children: [
          WebDropdownMenuCheckBox(isSelected: isSelected),
          SizedBox(width: 12.w),
          Text(
            title,
            style: context.ts_s14h22_4w400.apply(
              color: context.c_text,
            ),
          ),
        ],
      ),
    );
  }
}
