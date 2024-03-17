import 'package:dls_one/features/company_structure/model/department.dart';
import 'package:dls_one/features/company_structure/model/position_permission.dart';
import 'package:flutter/foundation.dart';

enum EmployeePositionType {
  manager,
  employee,
}

@immutable
class EmployeePosition {
  const EmployeePosition({
    required this.id,
    required this.name,
    required this.type,
    required this.department,
    required this.permission,
  });

  final int id;
  final String name;
  final EmployeePositionType type;
  final DepartmentMetaData department;
  final PositionPermission permission;

  EmployeePosition copyWith({
    int? id,
    String? name,
    EmployeePositionType? type,
    DepartmentMetaData? department,
    PositionPermission? permission,
  }) {
    return EmployeePosition(
      id: id ?? this.id,
      name: name ?? this.name,
      type: type ?? this.type,
      department: department ?? this.department,
      permission: permission ?? this.permission,
    );
  }
}
