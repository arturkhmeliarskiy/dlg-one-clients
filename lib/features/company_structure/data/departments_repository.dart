import 'dart:math';

import 'package:collection/collection.dart';
import 'package:dls_one/features/company_structure/model/department.dart';
import 'package:dls_one/features/company_structure/model/department_node.dart';
import 'package:dls_one/features/company_structure/model/department_position.dart';
import 'package:dls_one/features/company_structure/model/employee.dart';
import 'package:dls_one/features/company_structure/model/employee_position.dart';
import 'package:dls_one/features/company_structure/model/position_permission.dart';
import 'package:flutter/foundation.dart';
import 'package:rest_api/rest_api.dart';

abstract class IDepartmentsRepository {
  /// Подгрузка дерева иерархии отделов.
  Future<DepartmentNode> fetchTree();

  Future<List<Department>> fetchAll();

  Future<void> update({
    required Department departament,
  });

  Future<void> create({
    required DepartmentMetaData parentDepartment,
    required Department departament,
  });

  Future<void> delete({
    required Department departament,
  });
}

class MockDepartmentsRepository implements IDepartmentsRepository {
  MockDepartmentsRepository({
    required this.userProvider,
  });

  final Random random = Random();
  final ValueGetter<DLSUser> userProvider;

  DepartmentNode? _generateNode(int length) {
    if (length <= 0) {
      return null;
    }

    return DepartmentNode(
      department: _generateDepartment(),
      children: [
        _generateNode(length - 1),
        _generateNode(length - 2),
      ].whereNotNull().toList(),
    );
  }

  Department _generateDepartment() {
    final id = random.nextInt(1000);
    final staffId = random.nextInt(1000);
    final meta = DepartmentMetaData(id: id, name: 'Name: $id');
    return Department(
      meta: meta,
      manager: _generateManager(meta),
      staffPositions: [
        StaffDepartmentPosition(
          position: EmployeePosition(
            department: meta,
            id: staffId,
            name: 'Staff $staffId',
            type: EmployeePositionType.employee,
            permission: const PositionPermission(),
          ),
          staff: [
            _generateEmployee(meta),
            _generateEmployee(meta),
            _generateEmployee(meta),
            _generateEmployee(meta),
            _generateEmployee(meta),
            _generateEmployee(meta),
            _generateEmployee(meta),
            _generateEmployee(meta),
            _generateEmployee(meta),
            _generateEmployee(meta),
          ],
        ),
        StaffDepartmentPosition(
          position: EmployeePosition(
            department: meta,
            id: staffId + 1,
            name: 'Staff ${staffId + 1}',
            type: EmployeePositionType.employee,
            permission: const PositionPermission(),
          ),
          staff: [
            _generateEmployee(meta),
            _generateEmployee(meta),
            _generateEmployee(meta),
          ],
        ),
      ],
    );
  }

  ManagerDepartmentPosition _generateManager(
    DepartmentMetaData departmentMetaData,
  ) {
    return ManagerDepartmentPosition(
      position: EmployeePosition(
        id: random.nextInt(1000),
        department: departmentMetaData,
        name: 'Big boss',
        type: EmployeePositionType.manager,
        permission: const PositionPermission(),
      ),
      assigned: _generateEmployee(departmentMetaData),
    );
  }

  Employee _generateEmployee(
    DepartmentMetaData departmentMetaData,
  ) {
    return Employee(
      id: random.nextInt(1000),
      profile: userProvider.call(),
      positions: [
        EmployeePosition(
          id: random.nextInt(1000),
          department: departmentMetaData,
          name: 'Big boss',
          type: EmployeePositionType.manager,
          permission: const PositionPermission(),
        )
      ],
    );
  }

  @override
  Future<void> create({
    required DepartmentMetaData parentDepartment,
    required Department departament,
  }) {
    // TODO: implement create
    throw UnimplementedError();
  }

  @override
  Future<void> delete({required Department departament}) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<List<Department>> fetchAll() {
    // TODO: implement fetchAll
    throw UnimplementedError();
  }

  @override
  Future<DepartmentNode> fetchTree() async {
    await Future<void>.delayed(const Duration(seconds: 1));

    return Future.value(_generateNode(3));
  }

  @override
  Future<void> update({required Department departament}) {
    // TODO: implement update
    throw UnimplementedError();
  }
}
