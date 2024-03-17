import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';

class FilterTagsMenuItem extends StatelessWidget {
  const FilterTagsMenuItem({
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
          Expanded(
            child: Text(
              title,
              style: context.ts_s14h22_4w400.apply(
                color: context.c_text,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
