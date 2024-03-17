import 'package:dls_one/features/company_structure/model/employee.dart';
import 'package:dls_one/features/company_structure/model/employee_position.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'department_position.freezed.dart';

@freezed
class DepartmentPosition with _$DepartmentPosition {
  const factory DepartmentPosition.manager({
    required EmployeePosition position,
    Employee? assigned,
  }) = ManagerDepartmentPosition;

  const factory DepartmentPosition.staff({
    required EmployeePosition position,
    @Default(<Employee>[]) List<Employee> staff,
  }) = StaffDepartmentPosition;
}
