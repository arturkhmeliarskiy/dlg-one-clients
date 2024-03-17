import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/calendar/model/model.dart';
import 'package:dls_one/web/calendar/widget/common/app_bar/app_bar_mobile_view_dropdown.dart';
import 'package:flutter/material.dart';

// TODO(Stas): убрать разделение на платформы в коллбеках https://gitlab.shvetsov.tech/dls-one/dlg-one-clients/-/issues/415
class CalendarAppBar extends StatefulWidget {
  const CalendarAppBar({
    required this.onWideTodoSelected,
    required this.onWideTaskEventSelected,
    required this.selectedViewTypeIndex,
    required this.onViewTypeChanged,
    required this.onNarrowTodoButtonTap,
    super.key,
  });

  final VoidCallback onWideTodoSelected;
  final VoidCallback onWideTaskEventSelected;
  final int selectedViewTypeIndex;
  final ValueChanged<CalendarViewType> onViewTypeChanged;
  final VoidCallback onNarrowTodoButtonTap;

  @override
  State<CalendarAppBar> createState() => _CalendarAppBarState();
}

class _CalendarAppBarState extends State<CalendarAppBar> {
  final bool _isNarrow =
      DLSLayoutItemBuilder.values(wide: false, narrow: true)();

  final List<String> _dropDownItems = [
    S.current.add_task_event,
    S.current.add_todo,
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.c_appbar,
      height: _isNarrow ? 59.h : 51.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SizedBox(
                width: _isNarrow ? 16.w : 20.w,
              ),
              if (_isNarrow)
                DLSHeaders.h2(S.current.calendar)
              else ...[
                DLSHeaders.h3(S.current.calendar),
                SizedBox(
                  width: 12.w,
                ),
                DlsDropDownButton<String>(
                  items: _dropDownItems,
                  dropdownWidth: 196.w,
                  height: 46.h,
                  onChanged: (label) {
                    if (label == _dropDownItems[0]) {
                      widget.onWideTaskEventSelected.call();
                    } else {
                      widget.onWideTodoSelected.call();
                    }
                  },
                  itemBuilder: (label) => Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.only(
                      top: (label == _dropDownItems[0]) ? 16.h : 6.h,
                      bottom: (label == _dropDownItems[0]) ? 6.h : 16.h,
                      left: 16.w,
                      right: 16.w,
                    ),
                    child: Text(
                      label,
                      textAlign: TextAlign.left,
                      maxLines: 1,
                      style: context.ts_s14h22_4w400.copyWith(
                        color: context.c_text,
                      ),
                    ),
                  ),
                  button: const DLSPlusIconButton(),
                ),
              ],
            ],
          ),
          if (_isNarrow)
            Row(
              children: [
                AppBarMobileViewTypeDropdown(
                  selectedViewTypeIndex: widget.selectedViewTypeIndex,
                  onViewTypeChanged: widget.onViewTypeChanged,
                ),
                SizedBox(
                  width: 12.w,
                ),
                GestureDetector(
                  onTap: widget.onNarrowTodoButtonTap,
                  child: Assets.icons.flash.svg(
                    colorFilter: context.c_text_grey_color_filter,
                    height: 15.h,
                    width: 12.w,
                  ),
                ),
                SizedBox(
                  width: 16.w,
                ),
              ],
            )
        ],
      ),
    );
  }
}
