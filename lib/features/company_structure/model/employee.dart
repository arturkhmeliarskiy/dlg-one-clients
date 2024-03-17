import 'package:dls_one/features/company_structure/model/employee_position.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rest_api/rest_api.dart';

part 'employee.freezed.dart';

@freezed
class Employee with _$Employee {
  const factory Employee({
    required int id,
    required DLSUser profile,
    required List<EmployeePosition> positions,
  }) = _Employee;
}
