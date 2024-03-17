import 'package:boxy/slivers.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/features/company_structure/model/department_position.dart';
import 'package:dls_one/features/company_structure/model/employee.dart';
import 'package:dls_one/features/company_structure/widget/ui/department/department_position_card.dart';
import 'package:dls_one/features/company_structure/widget/ui/department/employee_card.dart';
import 'package:dls_one/features/company_structure/widget/ui/department/employee_selector.dart';
import 'package:flutter/material.dart';

class DepartmentStaffPositionCard extends StatefulWidget {
  const DepartmentStaffPositionCard({
    required this.staff,
    required this.modeBuilder,
    required this.handleAction,
    super.key,
  });

  final StaffDepartmentPosition staff;
  final CardModeBuilder modeBuilder;
  final void Function(Employee, EmployeeAction) handleAction;

  @override
  State<DepartmentStaffPositionCard> createState() =>
      _DepartmentStaffPositionCardState();
}

class _DepartmentStaffPositionCardState
    extends State<DepartmentStaffPositionCard> {
  bool isCollapsed = false;

  @override
  Widget build(BuildContext context) {
    final eployees = widget.staff.staff;

    return SliverContainer(
      background: const DepartmentPositionCard(
        child: SizedBox.expand(),
      ),
      sliver: SliverPadding(
        padding: EdgeInsets.all(4.r) + EdgeInsets.only(bottom: 8.h),
        sliver: SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              if (index == 0) {
                return _Header(
                  staff: widget.staff,
                  isCollapsed: isCollapsed,
                  onCollapse: () {
                    setState(() {
                      isCollapsed = !isCollapsed;
                    });
                  },
                  onTapSettings: () {},
                  onTapCollapse: () {},
                );
              } else if (index == 1) {
                return Padding(
                  padding: EdgeInsets.only(
                    left: 12.w,
                    right: 12.w,
                    bottom: 8.h,
                    top: 2.h,
                  ),
                  child: EmployeeSectionControlPanel(
                    onSelectTap: () {},
                    onCreateTap: () {},
                  ),
                );
              } else {
                final employee = eployees[index - 2];
                return Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 4.h,
                    horizontal: 12.w,
                  ),
                  child: EmployeeCard(
                    employee: employee,
                    handleAction: (action) {
                      widget.handleAction(employee, action);
                    },
                    modeBuilder: widget.modeBuilder,
                  ),
                );
              }
            },
            childCount: isCollapsed ? 1 : eployees.length + 2,
          ),
        ),
      ),
    );
  }
}

class _Header extends StatelessWidget {
  const _Header({
    required this.staff,
    required this.onTapSettings,
    required this.onTapCollapse,
    required this.isCollapsed,
    required this.onCollapse,
  });

  final VoidCallback onTapSettings;
  final VoidCallback onTapCollapse;
  final StaffDepartmentPosition staff;
  final bool isCollapsed;
  final VoidCallback onCollapse;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 12.w),
        Assets.icons.padlock.svg(
          width: 18.r,
          height: 18.r,
          color: context.c_text_grey,
        ),
        SizedBox(width: 8.w),
        Text(
          '${S.current.job_position}: ',
          style: context.ts_s12h14w400.copyWith(color: context.c_text_grey),
        ),
        Expanded(
          child: Text(
            '${staff.position.name} (${staff.staff.length})',
            style: context.ts_s12h14w400,
            maxLines: 1,
          ),
        ),
        InkWell(
          onTap: onTapSettings,
          borderRadius: BorderRadius.circular(16.r),
          child: Padding(
            padding: EdgeInsets.all(12.r),
            child: Assets.icons.departmentSetting.svg(
              width: 16.r,
              height: 16.r,
              color: context.c_text_grey,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(right: 4.w),
          child: InkWell(
            onTap: onCollapse,
            child: Padding(
              padding: EdgeInsets.all(12.r),
              child: WebDropdownMenuIcon(
                isIconUp: true,
                isMenuOpen: !isCollapsed,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
