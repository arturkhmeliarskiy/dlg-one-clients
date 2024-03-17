import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/tasks/bloc/task_list_bloc/task_list_bloc.dart';
import 'package:dls_one/web/tasks/const/enums.dart';
import 'package:dls_one/web/tasks/view/web/filters/filter_priority_custom_button.dart';
import 'package:dls_one/web/tasks/view/web/filters/filter_priority_menu_item.dart';
import 'package:dls_one/web/tasks/view/web/filters/models/filter_priority_item.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rest_api/rest_api.dart';

class FilterPriority extends StatefulWidget {
  const FilterPriority({
    required this.onChangePriority,
    required this.filters,
    this.isTaskList = false,
    super.key,
  });

  final void Function(List<TaskPriorityType>) onChangePriority;
  final Map<FilterTypes, Object> filters;
  final bool isTaskList;

  @override
  State<FilterPriority> createState() => _FilterPriorityState();
}

class _FilterPriorityState extends State<FilterPriority> {
  final List<PriorityItem> _items = [
    PriorityItem(
      title: S.current.priorety_all,
      priority: TaskPriorityType.unknown,
    ),
    PriorityItem(
      title: S.current.task_priority_critical,
      icon: Assets.icons.webTaskPriorityCritical.svg(),
      priority: TaskPriorityType.veryHigh,
    ),
    PriorityItem(
      title: S.current.task_priority_high,
      icon: Assets.icons.webTaskPriorityHigh.svg(),
      priority: TaskPriorityType.high,
    ),
    PriorityItem(
      title: S.current.task_priority_standart,
      icon: Assets.icons.webTaskPriorityStandart.svg(),
      priority: TaskPriorityType.mid,
    ),
    PriorityItem(
      title: S.current.task_priority_low,
      icon: Assets.icons.webTaskPriorityLow.svg(),
      priority: TaskPriorityType.low,
    ),
    PriorityItem(
      title: S.current.task_priority_minor,
      icon: Assets.icons.webTaskPriorityMinor.svg(),
      priority: TaskPriorityType.veryLow,
    ),
  ];

  List<PriorityItem> _selectedItems = [];
  List<TaskPriorityType> _selectedTypes = [];
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
  void didUpdateWidget(covariant FilterPriority oldWidget) {
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
        customButton: FilterPriorityCustomButton(
          hint: S.current.priority,
          selectedItems: _selectedItems,
          isMenuOpen: !_isMenuOpen,
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
          return DropdownMenuItem<PriorityItem>(
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
                            _items[index].priority ?? TaskPriorityType.unknown);
                        _selectedItems.remove(_items[index]);
                      } else {
                        if (_items[index].priority ==
                            TaskPriorityType.unknown) {
                          _selectedTypes = [TaskPriorityType.unknown];
                          _selectedItems = [_items.first];
                        }

                        if (_selectedTypes.contains(TaskPriorityType.unknown)) {
                          _selectedTypes.remove(TaskPriorityType.unknown);
                          _selectedItems.remove(_items.first);
                        }

                        _selectedTypes.add(
                            _items[index].priority ?? TaskPriorityType.unknown);
                        _selectedItems.add(_items[index]);
                      }
                    });
                    menuSetState(() {});
                    widget.onChangePriority(_selectedTypes);
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
                        if (filters.keys.contains(FilterTypes.priority)) {
                          final priorityFilter = filters[FilterTypes.priority]
                              as List<TaskPriorityType>;
                          return FilterPriorityMenuItem(
                            isStatus: false,
                            isSelected:
                                priorityFilter.contains(_items[index].priority),
                            item: _items[index],
                            index: index,
                          );
                        } else {
                          return FilterPriorityMenuItem(
                            isStatus: false,
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
