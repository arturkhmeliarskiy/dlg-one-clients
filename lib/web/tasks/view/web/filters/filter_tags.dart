import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/tasks/bloc/bloc.dart';
import 'package:dls_one/web/tasks/const/enums.dart';
import 'package:dls_one/web/tasks/view/web/filters/filter_roles_custom_button.dart';
import 'package:dls_one/web/tasks/view/web/filters/filter_tags_menu_item.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rest_api/rest_api.dart';

class FilterTags extends StatefulWidget {
  const FilterTags({
    required this.onChangeTags,
    required this.filters,
    this.isTaskList = false,
    super.key,
  });

  final void Function(List<int>) onChangeTags;
  final Map<FilterTypes, Object> filters;
  final bool isTaskList;

  @override
  State<FilterTags> createState() => _FilterTagsState();
}

class _FilterTagsState extends State<FilterTags> {
  final _items = <String>[
    S.current.all_tags,
  ];

  final _hint = S.current.tags;

  List<String> _selectedItems = [];
  List<TaskTagModel> _selectedTags = [];
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
  void didUpdateWidget(covariant FilterTags oldWidget) {
    if (widget.filters.isEmpty) {
      _selectedItems = [];
      _selectedTags = [];
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: BlocBuilder<TaskListBloc, TaskListState>(
        builder: (context, state) {
          final model = state.model;

          for (var i = 0; i < model.tags.length; i++) {
            _items.add(model.tags[i].title);
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
            items: List.generate(model.tags.length, (index) {
              final isSelected = _selectedItems.contains(_items[index]);
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
                          final tag =
                              TaskTagModel(id: 0, title: S.current.all_tags);
                          setState(() {
                            if (isSelected) {
                              if (index != 0) {
                                _selectedItems.remove(_items[index]);
                                _selectedTags.remove(model.tags[index - 1]);
                              } else {
                                _selectedItems.remove(_items[index]);
                                _selectedTags.remove(tag);
                              }
                            } else {
                              if (_items[index] == S.current.all_tags) {
                                _selectedItems = [];
                                _selectedTags = [];
                              }

                              if (_selectedTags.contains(tag)) {
                                _selectedItems = [];
                                _selectedTags = [];
                              }

                              if (index != 0) {
                                _selectedTags.add(model.tags[index - 1]);
                                _selectedItems.add(_items[index]);
                              } else {
                                _selectedTags.add(tag);
                                _selectedItems.add(_items[index]);
                              }
                            }
                          });
                          final selectedIds =
                              _selectedTags.map((item) => item.id).toList();

                          menuSetState(() {});
                          widget.onChangeTags(
                            selectedIds,
                          );
                        },
                        child: BlocBuilder<TaskListBloc, TaskListState>(
                          builder: (context, state) {
                            final filters = widget.isTaskList
                                ? state.model.filters
                                : state.model.filtersKanban;
                            if (filters.keys.contains(FilterTypes.tags)) {
                              final tagsFilter =
                                  filters[FilterTypes.tags] as List<int>;

                              return FilterTagsMenuItem(
                                title: _items[index],
                                isSelected: tagsFilter.contains(index),
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
