import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/tasks/view/web/filters/filter_files_custom_button.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

class FilterFiles extends StatefulWidget {
  const FilterFiles({
    required this.onTapFile,
    super.key,
  });

  final void Function(int) onTapFile;

  @override
  State<FilterFiles> createState() => _FilterFilesState();
}

class _FilterFilesState extends State<FilterFiles> {
  final items = <String>[
    S.current.all_tasks,
    S.current.with_files,
    S.current.without_files,
  ];

  final hint = S.current.files_title;

  String? selectedValue;
  bool isMenuOpen = false;

  Color getColor(Set<MaterialState> states) {
    if (states.contains(MaterialState.hovered)) {
      return context.c_grey_grey;
    } else if (states.contains(MaterialState.pressed)) {
      return context.c_grey_hover;
    } else if (states.contains(MaterialState.selected)) {
      return context.c_grey_grey;
    } else if (states.contains(MaterialState.focused)) {
      return context.c_grey_grey;
    }
    return context.c_white_text;
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton2(
        customButton: FilterFilesCustomButton(
          hint: hint,
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
        dropdownWidth: 196.w,
        itemPadding: EdgeInsets.zero,
        value: selectedValue,
        dropdownDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.r),
          border: Border.all(
            color: context.c_grey_stoke,
          ),
        ),
        onChanged: (value) {
          setState(() {
            selectedValue = value;
          });
        },
        onMenuStateChange: (isOpen) {
          setState(() {
            isMenuOpen = isOpen;
          });
        },
        items: List.generate(items.length, (index) {
          return DropdownMenuItem<String>(
            value: items[index],
            enabled: false,
            child: Container(
              margin: EdgeInsets.only(
                left: 4.w,
                right: 4.w,
              ),
              height: 32.h,
              width: 196.w,
              child: InkWell(
                borderRadius: BorderRadius.circular(5.r),
                hoverColor: context.c_grey_grey,
                onTap: () {
                  widget.onTapFile(index);
                },
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 12.w,
                    right: 12.w,
                  ),
                  child: Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.symmetric(horizontal: 12.w),
                    child: Text(
                      items[index],
                      style: context.ts_s14h22_4w400.copyWith(
                        color: context.c_text,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
