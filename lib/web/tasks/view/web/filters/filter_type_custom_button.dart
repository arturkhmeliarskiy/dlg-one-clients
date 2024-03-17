import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/tasks/view/web/filters/models/filter_type_item.dart';
import 'package:flutter/material.dart';

class FilterTypeCustomButton extends StatelessWidget {
  const FilterTypeCustomButton({
    required this.selectedValue,
    required this.isMenuOpen,
    super.key,
  });

  final TypeItem? selectedValue;
  final bool isMenuOpen;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 8.w,
        right: 4.w,
        top: 3.h,
        bottom: 3.h,
      ),
      height: 28.h,
      child: Row(
        children: [
          if (selectedValue != null && selectedValue!.icon != null)
            Padding(
              padding: EdgeInsets.only(right: 5.5.w),
              child: selectedValue!.icon,
            ),
          Text(
            selectedValue != null ? selectedValue!.title : S.current.types_hint,
            style: context.ts_s14h22_4w400.copyWith(
              color:
                  selectedValue != null ? context.c_text : context.c_text_grey,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          SizedBox(width: 7.w),
          WebDropdownMenuIcon(
            isIconUp: true,
            isMenuOpen: !isMenuOpen,
          ),
        ],
      ),
    );
  }
}
