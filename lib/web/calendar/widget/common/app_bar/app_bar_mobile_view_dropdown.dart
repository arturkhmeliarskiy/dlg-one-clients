import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/calendar/model/model.dart';
import 'package:flutter/material.dart';

class AppBarMobileViewTypeDropdown extends StatefulWidget {
  const AppBarMobileViewTypeDropdown({
    required this.onViewTypeChanged,
    required this.selectedViewTypeIndex,
    super.key,
  });

  final ValueChanged<CalendarViewType> onViewTypeChanged;
  final int selectedViewTypeIndex;

  @override
  State<AppBarMobileViewTypeDropdown> createState() =>
      _AppBarMobileViewTypeDropdownState();
}

class _AppBarMobileViewTypeDropdownState
    extends State<AppBarMobileViewTypeDropdown> {
  bool _isMenuOpen = false;

  final List<String> _titles =
      CalendarViewType.values.map((type) => type.getTitle).toList();

  @override
  Widget build(BuildContext context) {
    return DlsDropDownButton<String>(
      items: _titles,
      value: _titles[widget.selectedViewTypeIndex],
      height: 43.h,
      dropdownWidth: 108.w,
      onChanged: (title) {
        if (title != null) {
          final index = CalendarViewTypeHelper.getIndexFromTitle(title);
          if (index != -1) {
            widget.onViewTypeChanged(CalendarViewType.values[index]);
          }
        }
      },
      onMenuStateChange: (isOpen) {
        setState(() {
          _isMenuOpen = isOpen;
        });
      },
      button: Row(
        children: [
          DlsPadding.only(
            right: 11.w,
            child: Text(
              _titles[widget.selectedViewTypeIndex],
              style: context.ts_s14h22_4w400,
            ),
          ),
          WebDropdownMenuIcon(
            // Такая странная конструкция появилась потому что при открытом меню
            // иконка стрелки должна быть направлена вниз, однако в WebDropdownMenuIcon
            // она наоборот направлена вверх
            isMenuOpen: !_isMenuOpen,
            color: context.c_text,
            isIconUp: true,
            width: 10.w,
            height: 6.h,
          ),
        ],
      ),
    );
  }
}
