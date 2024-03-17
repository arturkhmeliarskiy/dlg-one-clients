import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/tasks/bloc/bloc.dart';
import 'package:dls_one/web/tasks/const/enums.dart';
import 'package:dls_one/web/tasks/view/web/filters/filter_status_custom_button.dart';
import 'package:dls_one/web/tasks/view/web/filters/filter_status_menu_item.dart';
import 'package:dls_one/web/tasks/view/web/filters/models/filter_status_item.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rest_api/rest_api.dart';

class FilterStatus extends StatefulWidget {
  const FilterStatus({
    required this.onChangeStatus,
    required this.filters,
    this.isTaskList = false,
    super.key,
  });

  final void Function(List<TaskStatusType>) onChangeStatus;
  final Map<FilterTypes, Object> filters;
  final bool isTaskList;

  @override
  State<FilterStatus> createState() => _FilterStatusState();
}

class _FilterStatusState extends State<FilterStatus> {
  final List<StatusItem> _items = [
    StatusItem(
      title: S.current.status_all,
      status: TaskStatusType.unknown,
    ),
    StatusItem(
      title: S.current.status_todo,
      icon: Assets.icons.webTaskPlus.svg(),
      status: TaskStatusType.inTheQueue,
    ),
    StatusItem(
      title: S.current.status_in_progress,
      icon: Assets.icons.webTaskPlay.svg(),
      status: TaskStatusType.atWork,
    ),
    StatusItem(
      title: S.current.status_done,
      icon: Assets.icons.webTaskDone.svg(),
      status: TaskStatusType.completed,
    ),
  ];

  final _hint = S.current.status_hint;
  List<StatusItem> _selectedItems = [];
  List<TaskStatusType> _selectedTypes = [];
  bool _isMenuOpen = false;

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
  void didUpdateWidget(covariant FilterStatus oldWidget) {
    if (widget.filters.isEmpty) {
      _selectedItems = [];
      _selectedTypes = [];
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<TaskListBloc>();
    return DropdownButtonHideUnderline(
      child: DropdownButton2(
        customButton: FilterStatusCustomButton(
          hint: _hint,
          isMenuOpen: !_isMenuOpen,
          selectedItems: _selectedItems,
        ),
        buttonDecoration:
            BoxDecoration(borderRadius: BorderRadius.circular(5.r)),
        buttonOverlayColor: MaterialStateProperty.resolveWith(getColor),
        alignment: Alignment.centerLeft,
        dropdownElevation: 0,
        value: _selectedItems.isEmpty ? null : _selectedItems.first,
        onChanged: (value) {},
        buttonHeight: 28.h,
        itemHeight: 40.h,
        itemPadding: EdgeInsets.zero,
        isExpanded: true,
        dropdownWidth: 200.w,
        onMenuStateChange: (isOpen) {
          setState(() {
            _isMenuOpen = isOpen;
          });
        },
        dropdownDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.r),
          border: Border.all(
            color: context.c_grey_stoke,
          ),
        ),
        items: List.generate(_items.length, (index) {
          return DropdownMenuItem<StatusItem>(
            value: _items[index],
            enabled: false,
            child: StatefulBuilder(
              builder: (context, menuSetState) {
                return InkWell(
                  borderRadius: BorderRadius.circular(5.r),
                  hoverColor: context.c_grey_grey,
                  onTap: () {
                    final isSelected = _selectedItems.contains(_items[index]);
                    setState(() {
                      if (isSelected) {
                        _selectedTypes.remove(
                            _items[index].status ?? TaskStatusType.inTheQueue);
                        _selectedItems.remove(_items[index]);
                      } else {
                        if (_items[index].status == TaskStatusType.unknown) {
                          _selectedTypes = [TaskStatusType.unknown];
                          _selectedItems = [_items.first];
                        }

                        if (_selectedTypes.contains(TaskStatusType.unknown)) {
                          _selectedTypes.remove(TaskStatusType.unknown);
                          _selectedItems.remove(_items.first);
                        }

                        _selectedTypes.add(
                            _items[index].status ?? TaskStatusType.unknown);
                        _selectedItems.add(_items[index]);
                      }
                    });
                    menuSetState(() {});

                    widget.onChangeStatus(_selectedTypes);
                  },
                  child: Container(
                    height: double.infinity,
                    padding: EdgeInsets.symmetric(horizontal: 12.w),
                    child: BlocBuilder<TaskListBloc, TaskListState>(
                      bloc: bloc,
                      builder: (context, state) {
                        final filters = widget.isTaskList
                            ? state.model.filters
                            : state.model.filtersKanban;
                        if (filters.isEmpty) {
                          _selectedItems = [];
                          _selectedTypes = [];
                        }
                        if (filters.keys.contains(FilterTypes.status)) {
                          final statusFilter = filters[FilterTypes.status]
                                  as List<TaskStatusType>? ??
                              [];
                          return FilterStatusMenuItem(
                            isSelected: statusFilter.contains(
                              _items[index].status,
                            ),
                            item: _items[index],
                            index: index,
                          );
                        } else {
                          return FilterStatusMenuItem(
                            isSelected: false,
                            item: _items[index],
                            index: index,
                          );
                        }
                      },
                    ),
                  ),
                ).paddingSymmetric(horizontal: 4.w);
              },
            ),
          );
        }).toList(),
      ),
    );
  }
}
