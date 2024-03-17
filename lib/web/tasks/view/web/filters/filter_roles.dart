import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/tasks/bloc/task_list_bloc/task_list_bloc.dart';
import 'package:dls_one/web/tasks/const/enums.dart';
import 'package:dls_one/web/tasks/view/web/filters/filter_roles_custom_button.dart';
import 'package:dls_one/web/tasks/view/web/filters/filter_roles_menu_item.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rest_api/src/models/enums/dls_task_roles_type.dart';

class FilterRoles extends StatefulWidget {
  const FilterRoles({
    required this.onChangeRole,
    required this.filters,
    this.isTaskList = false,
    super.key,
  });

  final void Function(List<TaskRolesType>) onChangeRole;
  final Map<FilterTypes, Object> filters;
  final bool isTaskList;

  @override
  State<FilterRoles> createState() => _FilterRolesState();
}

class _FilterRolesState extends State<FilterRoles> {
  final _items = <String>[
    S.current.all_roles,
    S.current.viewing,
    S.current.executor,
    S.current.author,
    S.current.responsible,
    S.current.observer,
  ];

  List<String> _selectedItems = [];
  List<TaskRolesType> _selectedTypes = [];
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
  void didUpdateWidget(covariant FilterRoles oldWidget) {
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
        customButton: FilterRolesCutomButton(
          hint: S.current.my_role,
          isMenuOpen: _isMenuOpen,
          selectedItems: _selectedItems,
        ),
        buttonDecoration:
            BoxDecoration(borderRadius: BorderRadius.circular(5.r)),
        buttonOverlayColor: MaterialStateProperty.resolveWith(getColor),
        alignment: Alignment.centerLeft,
        dropdownElevation: 0,
        value: _selectedItems.isEmpty ? null : _selectedItems.last,
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
        items: List.generate(
          _items.length,
          (index) {
            return DropdownMenuItem<String>(
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
                          _selectedItems.remove(_items[index]);
                          _selectedTypes.remove(TaskRolesType.values[index]);
                        } else {
                          if (_items[index] == S.current.all_roles) {
                            _selectedItems = [_items.first];
                            _selectedTypes = [TaskRolesType.unknown];
                          }

                          if (_selectedTypes.contains(TaskRolesType.unknown)) {
                            _selectedTypes.remove(TaskRolesType.unknown);
                            _selectedItems.remove(S.current.all_roles);
                          }

                          _selectedTypes.add(TaskRolesType.values[index]);
                          _selectedItems.add(_items[index]);
                        }
                      });
                      menuSetState(() {});
                      widget.onChangeRole(_selectedTypes);
                    },
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
                        if (filters.keys.contains(FilterTypes.myRole)) {
                          final rolesFilter = filters[FilterTypes.myRole]
                              as List<TaskRolesType>;

                          return FilterRolesMenuItem(
                            title: _items[index],
                            isSelected: rolesFilter.contains(
                              TaskRolesType.values[index],
                            ),
                          );
                        } else {
                          return FilterRolesMenuItem(
                            title: _items[index],
                            isSelected: false,
                          );
                        }
                      },
                    ),
                  ).paddingSymmetric(horizontal: 4.w);
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
