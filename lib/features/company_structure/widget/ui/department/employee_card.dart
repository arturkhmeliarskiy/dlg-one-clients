import 'package:dls_one/core/core.dart';
import 'package:dls_one/features/company_structure/model/employee.dart';
import 'package:dls_one/features/todo/widget/ui/todo_item/todo_checkbox.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'employee_card.freezed.dart';

@freezed
class EmployeeCardMode with _$EmployeeCardMode {
  const factory EmployeeCardMode.read() = ReadEmployeeCardMode;

  const factory EmployeeCardMode.select({
    required bool isSelected,
  }) = SelectEmployeeCardMode;

  const EmployeeCardMode._();
}

typedef CardModeBuilder = EmployeeCardMode Function(Employee);

enum EmployeeAction {
  edit,
  bloc,
  select,
  delete,
}

class EmployeeCard extends StatelessWidget {
  const EmployeeCard({
    required this.employee,
    required this.handleAction,
    required this.modeBuilder,
    super.key,
  });

  final Employee employee;
  final ValueChanged<EmployeeAction> handleAction;
  final CardModeBuilder modeBuilder;

  @override
  Widget build(BuildContext context) {
    final mode = modeBuilder(employee);
    final borderColor = mode.when(
      read: () => context.c_grey_stoke,
      select: (isSelected) =>
          isSelected ? context.c_blue : context.c_grey_stoke,
    );

    return InkWell(
      onTap: mode.when(
        read: () => null,
        select: (selected) => () {
          handleAction(EmployeeAction.select);
        },
      ),
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 16.w,
          vertical: 8.h,
        ),
        decoration: BoxDecoration(
          color: context.c_white_background,
          borderRadius: BorderRadius.all(Radius.circular(4.r)),
          border: Border.all(
            width: 1.r,
            color: borderColor,
          ),
        ),
        child: Row(
          children: [
            DLSAvatar(
              size: 40.r,
              imageUrl: employee.profile.avatar ?? '',
              username: employee.profile.name,
            ),
            SizedBox(width: 8.w),
            Expanded(
              child: Text(
                employee.profile.name ?? employee.profile.DLSUserName,
                style: context.ts_s14h16_4w500,
              ),
            ),
            mode.when(
              read: () => DlsDropDownButton<EmployeeAction>(
                dropdownWidth: 155.w,
                height: 32.h,
                button: Assets.icons.ellipsisV6.svg(),
                items: EmployeeAction.values,
                onChanged: (action) {
                  if (action != null) {
                    handleAction(action);
                  }
                },
                itemBuilder: (action) {
                  return Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.w),
                      child: Text(
                        action.label,
                        textAlign: TextAlign.start,
                        maxLines: 1,
                        style: context.ts_s14h16_4w400.copyWith(
                          color: action.foregroundColor(context),
                        ),
                      ),
                    ),
                  );
                },
              ),
              select: (isSelected) => TodoCheckBox(
                isChecked: isSelected,
                size: 20.r,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

extension on EmployeeAction {
  String get label {
    switch (this) {
      case EmployeeAction.edit:
        return S.current.edit;
      case EmployeeAction.bloc:
        return S.current.bloc;
      case EmployeeAction.select:
        return S.current.select;
      case EmployeeAction.delete:
        return S.current.delete;
    }
  }

  Color foregroundColor(BuildContext context) {
    switch (this) {
      case EmployeeAction.edit:
      case EmployeeAction.bloc:
      case EmployeeAction.select:
        return context.c_text;
      case EmployeeAction.delete:
        return context.c_red;
    }
  }
}
