import 'package:dls_one/core/core.dart';
import 'package:dls_one/features/company_structure/model/department_position.dart';
import 'package:dls_one/features/company_structure/model/employee.dart';
import 'package:dls_one/features/company_structure/widget/ui/department/department_position_card.dart';
import 'package:dls_one/features/company_structure/widget/ui/department/employee_card.dart';
import 'package:dls_one/features/company_structure/widget/ui/department/employee_selector.dart';
import 'package:flutter/material.dart';

class DepartmentManagerPositionCard extends StatelessWidget {
  const DepartmentManagerPositionCard({
    required this.manager,
    required this.handleAction,
    required this.modeBuilder,
    this.onTapSettings,
    super.key,
  });

  final ManagerDepartmentPosition manager;
  final VoidCallback? onTapSettings;
  final void Function(Employee, EmployeeAction) handleAction;
  final CardModeBuilder modeBuilder;

  @override
  Widget build(BuildContext context) {
    final employee = manager.assigned;
    return DepartmentPositionCard(
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(width: 12.w),
              Assets.icons.padlock.svg(
                width: 18.r,
                height: 18.r,
                color: context.c_text_grey,
              ),
              SizedBox(width: 8.w),
              Text(
                '${S.current.managerPosition}: ',
                style:
                    context.ts_s12h14w400.copyWith(color: context.c_text_grey),
              ),
              Expanded(
                child: Text(
                  manager.position.name,
                  style: context.ts_s12h14w400,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 4.w),
                child: InkWell(
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
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.w),
            child: employee != null
                ? EmployeeCard(
                    employee: employee,
                    handleAction: (action) {
                      handleAction(employee, action);
                    },
                    modeBuilder: modeBuilder,
                  )
                : EmployeeSectionControlPanel(
                    onSelectTap: () {},
                    onCreateTap: () {},
                  ),
          ),
          SizedBox(height: 12.h),
        ],
      ),
    );
  }
}
