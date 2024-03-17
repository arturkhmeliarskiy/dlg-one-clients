import 'package:dls_one/features/company_structure/model/department_position.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'department.freezed.dart';

@freezed
class Department with _$Department {
  const factory Department({
    required DepartmentMetaData meta,
    required ManagerDepartmentPosition manager,
    @Default([]) List<StaffDepartmentPosition> staffPositions,
  }) = _Department;
}

@immutable
class DepartmentMetaData {
  const DepartmentMetaData({
    required this.id,
    required this.name,
  });

  final int id;
  final String name;

  DepartmentMetaData copyWith({
    int? id,
    String? name,
  }) {
    return DepartmentMetaData(
      id: id ?? this.id,
      name: name ?? this.name,
    );
  }
}
