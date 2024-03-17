import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/tasks/view/web/filters/models/filter_priority_item.dart';
import 'package:flutter/material.dart';

class FilterPriorityCustomButton extends StatefulWidget {
  const FilterPriorityCustomButton({
    required this.selectedItems,
    required this.isMenuOpen,
    required this.hint,
    super.key,
  });

  final List<PriorityItem> selectedItems;
  final bool isMenuOpen;
  final String hint;

  @override
  State<FilterPriorityCustomButton> createState() =>
      _FilterPriorityCustomButtonState();
}

class _FilterPriorityCustomButtonState
    extends State<FilterPriorityCustomButton> {
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
            if (widget.selectedItems.isNotEmpty)
              Row(
                children: List.generate(widget.selectedItems.length, (index) {
                  if (widget.selectedItems[index].icon != null) {
                    return widget.selectedItems[index].icon!;
                  } else {
                    return Text(
                      widget.selectedItems[index].title,
                      style: context.ts_s14h22_4w400.copyWith(
                        color: context.c_text,
                        overflow: TextOverflow.ellipsis,
                      ),
                      maxLines: 1,
                    );
                  }
                }),
              )
            else
              Text(
                widget.hint,
                style: context.ts_s14h22_4w400.copyWith(
                  color: context.c_text_grey,
                ),
              ),
            SizedBox(width: 7.w),
            WebDropdownMenuIcon(
              isIconUp: true,
              isMenuOpen: widget.isMenuOpen,
            ),
          ],
        ),
      ),
    );
  }
}
