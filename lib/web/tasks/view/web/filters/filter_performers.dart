import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/tasks/bloc/bloc.dart';
import 'package:dls_one/web/tasks/const/enums.dart';
import 'package:dls_one/web/tasks/view/web/filters/filter_roles_custom_button.dart';
import 'package:dls_one/web/tasks/view/web/filters/filter_tags_menu_item.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rest_api/rest_api.dart';

class FilterPerformers extends StatefulWidget {
  const FilterPerformers({
    required this.onChangePerformers,
    required this.filters,
    this.isTaskList = false,
    super.key,
  });

  final void Function(List<int>) onChangePerformers;
  final Map<FilterTypes, Object> filters;
  final bool isTaskList;

  @override
  State<FilterPerformers> createState() => _FilterPerformersState();
}

class _FilterPerformersState extends State<FilterPerformers> {
  List<String> _items = <String>[];

  List<DlsTasksExecutors> _performers = <DlsTasksExecutors>[];

  final _hint = S.current.responsible2;

  List<String> _selectedItems = [];
  List<DlsTasksExecutors> _selectedPerformers = [];
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
  void didUpdateWidget(covariant FilterPerformers oldWidget) {
    if (widget.filters.isEmpty) {
      _selectedItems = [];
      _selectedPerformers = [];
    }

    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: BlocBuilder<TaskListBloc, TaskListState>(
        builder: (context, state) {
          final model = state.model;
          _items = [S.current.all_performers];
          _performers = [
            DlsTasksExecutors(
              id: -1,
              name: S.current.all_performers,
            )
          ];
          for (var i = 0; i < model.performers.length; i++) {
            if (!_items.contains(model.performers[i].name ?? '') &&
                (model.performers[i].name ?? '').isNotEmpty) {
              _items.add(model.performers[i].name ?? '');
              _performers.add(model.performers[i]);
            }
          }

          return DropdownButton2(
            customButton: FilterRolesCutomButton(
              hint: _hint,
              isMenuOpen: _isMenuOpen,
              selectedItems: _selectedItems,
            ),
            buttonDecoration:
                BoxDecoration(borderRadius: BorderRadius.circular(5)),
            buttonOverlayColor: MaterialStateProperty.resolveWith(getColor),
            alignment: Alignment.centerLeft,
            dropdownElevation: 0,
            value: _selectedItems.isEmpty ? null : _selectedItems.last,
            onChanged: (value) {},
            buttonHeight: 28.h,
            itemHeight: 40.h,
            itemPadding: EdgeInsets.zero,
            isExpanded: true,
            dropdownWidth: 200.h,
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
              return DropdownMenuItem<String>(
                value: _items[index],
                enabled: false,
                child: StatefulBuilder(
                  builder: (context, menuSetState) {
                    return Padding(
                      padding: EdgeInsets.only(
                        left: 4.w,
                        right: 4.w,
                      ),
                      child: InkWell(
                        borderRadius: BorderRadius.circular(5.r),
                        hoverColor: context.c_grey_grey,
                        onTap: () {
                          final performer = DlsTasksExecutors(
                            id: -1,
                            name: S.current.all_performers,
                          );
                          final isSelected =
                              _selectedItems.contains(_items[index]);
                          setState(() {
                            if (isSelected) {
                              if (index != 0) {
                                _selectedItems.remove(_items[index]);
                                _selectedPerformers.remove(
                                  _performers[index],
                                );
                              } else {
                                _selectedItems.remove(_items[index]);
                                _selectedPerformers.remove(performer);
                              }
                            } else {
                              if (_items[index] == S.current.all_performers) {
                                _selectedItems = [];
                                _selectedPerformers = [];
                              }

                              if (_selectedPerformers.contains(performer)) {
                                _selectedItems = [];
                                _selectedPerformers = [];
                              }

                              if (index != 0) {
                                _selectedPerformers.add(_performers[index]);
                                _selectedItems.add(_items[index]);
                              } else {
                                _selectedPerformers.add(performer);
                                _selectedItems.add(_items[index]);
                              }
                            }
                          });
                          final selectedIds = _selectedPerformers
                              .map((item) => item.id ?? 0)
                              .toList();

                          menuSetState(() {});
                          widget.onChangePerformers(
                            selectedIds,
                          );
                        },
                        child: BlocBuilder<TaskListBloc, TaskListState>(
                          builder: (context, state) {
                            final filters = widget.isTaskList
                                ? state.model.filters
                                : state.model.filtersKanban;
                            if (filters.keys.contains(FilterTypes.performers)) {
                              final performersFilter =
                                  filters[FilterTypes.performers] as List<int>;

                              return FilterTagsMenuItem(
                                title: _items[index],
                                isSelected: performersFilter.contains(
                                  _performers[index].id,
                                ),
                              );
                            } else {
                              return FilterTagsMenuItem(
                                title: _items[index],
                                isSelected: false,
                              );
                            }
                          },
                        ),
                      ),
                    );
                  },
                ),
              );
            }).toList(),
          );
        },
      ),
    );
  }
}
