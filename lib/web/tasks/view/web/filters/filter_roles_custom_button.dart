import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';

class FilterRolesCutomButton extends StatelessWidget {
  const FilterRolesCutomButton({
    required this.selectedItems,
    required this.isMenuOpen,
    required this.hint,
    super.key,
  });

  final List<String> selectedItems;

  final bool isMenuOpen;
  final String hint;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 28.h,
      child: Padding(
        padding: EdgeInsets.only(
          left: 8.w,
          right: 4.w,
          top: 3.h,
          bottom: 3.h,
        ),
        child: Row(
          children: [
            if (selectedItems.isNotEmpty)
              Container(
                constraints: BoxConstraints(
                  maxWidth: 120.w,
                ),
                child: Text(
                  selectedItems.join(', '),
                  style: context.ts_s14h22_4w400.copyWith(
                    color: context.c_text,
                    overflow: TextOverflow.ellipsis,
                  ),
                  maxLines: 1,
                ),
              )
            else
              Text(
                hint,
                style: context.ts_s14h22_4w400.copyWith(
                  color: context.c_text_grey,
                ),
              ),
            SizedBox(width: 7.w),
            WebDropdownMenuIcon(
              isIconUp: true,
              isMenuOpen: !isMenuOpen,
            ),
          ],
        ),
      ),
    );
  }
}
