import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/tasks/view/web/filters/filter_type_custom_button.dart';
import 'package:dls_one/web/tasks/view/web/filters/models/filter_type_item.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

class FilterType extends StatefulWidget {
  const FilterType({
    super.key,
    required this.onChangeType,
  });

  final void Function(int) onChangeType;

  @override
  State<FilterType> createState() => _FilterTypeState();
}

class _FilterTypeState extends State<FilterType> {
  final List<TypeItem> _items = [
    TypeItem(title: S.current.types_all),
    TypeItem(
      title: S.current.types_document_flow,
      icon: Assets.icons.webTaskFileDocument.svg(),
    ),
    TypeItem(
      title: S.current.types_task,
      icon: Assets.icons.webTaskIssue.svg(),
    ),
  ];

  Color getColor(Set<MaterialState> states) {
    if (states.contains(MaterialState.hovered)) {
      return context.c_grey_grey;
    } else if (states.contains(MaterialState.pressed)) {
      return context.c_grey_hover;
    } else if (states.contains(MaterialState.selected)) {
      return context.c_grey_hover;
    } else if (states.contains(MaterialState.focused)) {
      return context.c_grey_grey;
    }
    return context.c_white_text;
  }

  TypeItem? selectedValue;
  bool isMenuOpen = false;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton2(
        customButton: FilterTypeCustomButton(
          isMenuOpen: isMenuOpen,
          selectedValue: selectedValue,
        ),
        buttonDecoration:
            BoxDecoration(borderRadius: BorderRadius.circular(5.r)),
        buttonOverlayColor: MaterialStateProperty.resolveWith(getColor),
        alignment: Alignment.centerLeft,
        dropdownElevation: 0,
        buttonHeight: 28.h,
        itemHeight: 40.h,
        isExpanded: true,
        dropdownWidth: 200.w,
        itemPadding: EdgeInsets.zero,
        value: selectedValue,
        onMenuStateChange: (isOpen) {
          setState(() {
            isMenuOpen = isOpen;
          });
        },
        items: _items.map((TypeItem item) {
          return DropdownMenuItem<TypeItem>(
            value: item,
            enabled: false,
            child: Container(
              margin: EdgeInsets.only(
                left: 4.w,
                right: 4.w,
              ),
              height: 32.h,
              child: InkWell(
                borderRadius: BorderRadius.circular(5.r),
                hoverColor: context.c_grey_grey,
                onTap: () {
                  widget.onChangeType(_items.indexOf(item));
                },
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 12.w,
                    right: 12.w,
                  ),
                  child: Row(
                    children: [
                      if (item.icon != null)
                        Padding(
                          padding: EdgeInsets.only(right: 5.5.w),
                          child: item.icon,
                        )
                      else
                        const SizedBox(),
                      Text(
                        item.title,
                        style: context.ts_s14h22_4w400.copyWith(
                          color: context.c_text,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        }).toList(),
        onChanged: (value) {
          setState(() {
            selectedValue = value;
          });
        },
        dropdownDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.r),
          border: Border.all(
            color: context.c_grey_stoke,
          ),
        ),
      ),
    );
  }
}
