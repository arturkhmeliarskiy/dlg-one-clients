import 'package:auto_route/auto_route.dart';
import 'package:collection/collection.dart';
import 'package:dls_one/app/router/app_router.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/features/company_structure/model/department.dart';
import 'package:dls_one/features/company_structure/model/employee.dart';
import 'package:dls_one/features/company_structure/widget/ui/department/department_manager_position_card.dart';
import 'package:dls_one/features/company_structure/widget/ui/department/department_staff_position_card.dart';
import 'package:dls_one/features/company_structure/widget/ui/department/employee_card.dart';
import 'package:dls_one/features/company_structure/widget/ui/department/employee_filter/employees_filter_bar.dart';
import 'package:dls_one/features/company_structure/widget/ui/department/employee_selection_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

enum EmployeesTabMode {
  read,
  select,
}

class DepartmentEmployeesTab extends StatefulWidget {
  const DepartmentEmployeesTab({
    required this.department,
    super.key,
  });

  final Department department;

  @override
  State<DepartmentEmployeesTab> createState() => _DepartmentEmployeesTabState();
}

class _DepartmentEmployeesTabState extends State<DepartmentEmployeesTab> {
  EmployeesTabMode mode = EmployeesTabMode.read;
  bool _isSelectAll = false;

  late final FocusNode _focusNode = FocusNode(
    onKeyEvent: _handleKey,
  );

  Department get _department => widget.department;

  final Set<Employee> selectedEmployees = {};

  EmployeeCardMode _makeCardMode(Employee employee) {
    switch (mode) {
      case EmployeesTabMode.read:
        return const EmployeeCardMode.read();
      case EmployeesTabMode.select:
        return EmployeeCardMode.select(
          isSelected: _isSelectAll || selectedEmployees.contains(employee),
        );
    }
  }

  void _handleAction(Employee employee, EmployeeAction action) {
    switch (action) {
      case EmployeeAction.edit:
        // TODO: Handle this case.
        break;
      case EmployeeAction.bloc:
        // TODO: Handle this case.
        break;
      case EmployeeAction.select:
        if (_isSelectAll) {
          _selectInSelectAllMode(employee);
        } else {
          setState(() {
            if (mode == EmployeesTabMode.select) {
              if (selectedEmployees.contains(employee)) {
                selectedEmployees.remove(employee);
              } else {
                selectedEmployees.add(employee);
              }
            } else {
              mode = EmployeesTabMode.select;
              _focusNode.requestFocus();
              selectedEmployees.add(employee);
            }
          });
        }
        break;
      case EmployeeAction.delete:
        // TODO: Handle this case.
        break;
    }
  }

  void _selectInSelectAllMode(Employee employee) {
    setState(() {
      _isSelectAll = false;
      selectedEmployees
        ..addAll(
          [
            _department.manager.assigned,
            ..._department.staffPositions.fold<List<Employee>>(
              <Employee>[],
              (previousValue, element) => previousValue..addAll(element.staff),
            ),
          ].whereNotNull(),
        )
        ..remove(employee);
    });
  }

  KeyEventResult _handleKey(FocusNode node, KeyEvent event) {
    final logicalKey = event.logicalKey;

    if (logicalKey == LogicalKeyboardKey.escape) {
      if (mode == EmployeesTabMode.select) {
        setState(() {
          mode = EmployeesTabMode.read;
          _focusNode.unfocus();
        });

        return KeyEventResult.handled;
      }
    }

    return KeyEventResult.ignored;
  }

  @override
  void initState() {
    super.initState();
    mode = EmployeesTabMode.read;
  }

  @override
  Widget build(BuildContext context) {
    return Focus(
      focusNode: _focusNode,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 6.h),
            child: mode == EmployeesTabMode.select
                ? EmployeeSelectionBar(
                    selectedCount: selectedEmployees.length,
                    isAllSelected: _isSelectAll,
                    onSelectAll: () {
                      setState(() {
                        _isSelectAll = !_isSelectAll;
                      });
                    },
                    onClose: () {
                      setState(() {
                        _isSelectAll = false;
                        mode = EmployeesTabMode.read;
                        _focusNode.unfocus();
                        selectedEmployees.clear();
                      });
                    },
                    onMove: () {
                      // TODO:
                    },
                    onBlock: () {
                      // TODO:
                    },
                    onDelete: () {
                      // TODO:
                    },
                  )
                : EmployeeFilterBar(
                    onChangedFilter: (filter) {
                      // TODO:
                    },
                  ),
          ),
          const Divider(),
          Expanded(
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: SizedBox(
                    height: 16.h,
                  ),
                ),
                SliverPadding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  sliver: SliverToBoxAdapter(
                    child: OutlinedButton(
                      onPressed: () {
                        context.pushRoute(
                          DepartmentPositionRoute(positionId: 1),
                        );
                      },
                      style: OutlinedButton.styleFrom(
                        padding: EdgeInsets.all(12.r),
                      ),
                      child: Text(S.current.addEmployeePosition),
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: SizedBox(
                    height: 16.h,
                  ),
                ),
                SliverPadding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  sliver: SliverToBoxAdapter(
                    child: DepartmentManagerPositionCard(
                      manager: _department.manager,
                      modeBuilder: _makeCardMode,
                      handleAction: _handleAction,
                      onTapSettings: () {},
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: SizedBox(
                    height: 16.h,
                  ),
                ),
                ..._department.staffPositions
                    .map<Widget>(
                      (position) => SliverPadding(
                        padding: EdgeInsets.symmetric(horizontal: 20.w),
                        sliver: DepartmentStaffPositionCard(
                          staff: position,
                          modeBuilder: _makeCardMode,
                          handleAction: _handleAction,
                        ),
                      ),
                    )
                    .intersperse(
                      SliverToBoxAdapter(
                        child: SizedBox(
                          height: 16.h,
                        ),
                      ),
                    )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

extension IterableX<A> on Iterable<A> {
  Iterable<A> intersperse(A element) sync* {
    var index = 0;
    for (final current in this) {
      yield current;
      if (index++ != length - 1) {
        yield element;
      }
    }
  }
}
