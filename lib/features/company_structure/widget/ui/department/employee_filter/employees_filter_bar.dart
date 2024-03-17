import 'package:dls_one/core/core.dart';
import 'package:dls_one/features/company_structure/widget/ui/department/employee_filter/dls_single_filter_selector.dart';
import 'package:dls_one/features/company_structure/widget/ui/department/employee_filter/employee_filter.dart';
import 'package:flutter/material.dart';

class EmployeeFilterBar extends StatefulWidget {
  const EmployeeFilterBar({
    required this.onChangedFilter,
    super.key,
  });

  final ValueChanged<EmployeeFilter> onChangedFilter;

  @override
  State<EmployeeFilterBar> createState() => _EmployeeFilterBarState();
}

class _EmployeeFilterBarState extends State<EmployeeFilterBar> {
  EmployeeFilter _filter = EmployeeFilter(query: '');

  late final _searchController = TextEditingController();
  final _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();

    _focusNode.addListener(_onFocusChanged);
  }

  void _onFocusChanged() {
    _filter = EmployeeFilter(
      query: _searchController.text,
      authFilter: _filter.authFilter,
      lockFilter: _filter.lockFilter,
    );
  }

  @override
  void dispose() {
    _searchController.dispose();
    _focusNode
      ..removeListener(_onFocusChanged)
      ..dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        DlsSingleFilterSelector<EmployeeAuthFilter>(
          value: _filter.authFilter,
          items: EmployeeAuthFilter.values,
          onChanged: (value) {
            setState(() {
              _filter = EmployeeFilter(
                query: _filter.query,
                authFilter: value,
                lockFilter: _filter.lockFilter,
              );
            });
          },
          onFormat: (value) => value?.label ?? S.current.authorization,
          dropdownWidth: 180.w,
        ),
        SizedBox(width: 5.w),
        DlsSingleFilterSelector<EmployeeLockFilter>(
          value: _filter.lockFilter,
          items: EmployeeLockFilter.values,
          onChanged: (value) {
            setState(() {
              _filter = EmployeeFilter(
                query: _filter.query,
                authFilter: _filter.authFilter,
                lockFilter: value,
              );
            });
          },
          onFormat: (value) => value?.label ?? S.current.lock,
          dropdownWidth: 180.w,
        ),
        SizedBox(width: 15.w),
        Assets.icons.search1.svg(
          color: context.c_text_grey,
        ),
        SizedBox(width: 5.w),
        Expanded(
          child: TextField(
            controller: _searchController,
            focusNode: _focusNode,
            decoration: InputDecoration(
              hintText: S.current.search,
              border: InputBorder.none,
            ),
          ),
        )
      ],
    );
  }
}

extension on EmployeeLockFilter {
  String get label {
    switch (this) {
      case EmployeeLockFilter.locked:
        return S.current.locked;
      case EmployeeLockFilter.unlocked:
        return S.current.unlocked;
    }
  }
}

extension on EmployeeAuthFilter {
  String get label {
    switch (this) {
      case EmployeeAuthFilter.authorized:
        return S.current.authorized;
      case EmployeeAuthFilter.unauthorized:
        return S.current.unauthorized;
    }
  }
}
