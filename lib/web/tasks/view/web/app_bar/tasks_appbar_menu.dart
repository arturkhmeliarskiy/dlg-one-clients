import 'package:dls_one/common/gen/localization/l10n.dart';
import 'package:dls_one/core/core.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

class AppBarMenuDropDown extends StatefulWidget {
  const AppBarMenuDropDown({
    required this.onTasksViewChanged,
    required this.tasks,
    this.isMobile = false,
    super.key,
  });

  final ValueChanged<bool> onTasksViewChanged;
  final bool tasks;
  final bool isMobile;

  @override
  State<AppBarMenuDropDown> createState() => _AppBarMenuDropDownState();
}

class _AppBarMenuDropDownState extends State<AppBarMenuDropDown> {
  final List<String> items = [
    S.current.all,
    S.current.by_sprints,
  ];

  String? selectedValue;

  bool _isMenuOpen = false;

  @override
  void initState() {
    super.initState();
    if (widget.tasks) {
      selectedValue = items.first;
      return;
    }
    selectedValue = items[1];
  }

  Color getColor(Set<MaterialState> states) {
    if (states.contains(MaterialState.hovered)) {
      return context.c_grey_grey;
    } else if (states.contains(MaterialState.pressed)) {
      return context.c_white_text;
    } else if (states.contains(MaterialState.selected)) {
      return context.c_white_text;
    } else if (states.contains(MaterialState.focused)) {
      return context.c_white_text;
    }
    return context.c_white_text;
  }

  @override
  Widget build(BuildContext context) {
    return DlsDropDownButton<String>(
      items: items,
      value: selectedValue ?? items.first,
      dropdownWidth: 200.w,
      onChanged: (value) {
        setState(() {
          selectedValue = value;
        });
        widget.onTasksViewChanged(selectedValue == items.first);
      },
      onMenuStateChange: (isOpen) {
        setState(() {
          _isMenuOpen = isOpen;
        });
      },
      button: Row(
        children: [
          DlsPadding.only(
            right: 8.w,
            child: Text(
              selectedValue ?? items.first,
              style: widget.isMobile
                  ? context.ts_s14h16w400.copyWith(
                      color: context.c_blue,
                    )
                  : context.ts_s18h21w400.copyWith(
                      color: context.c_blue,
                    ),
            ),
          ),
          WebDropdownMenuIcon(
            isMenuOpen: _isMenuOpen,
            color: context.c_blue,
          ),
        ],
      ),
    );
  }
}
