import 'package:dls_one/features/company_structure/model/department.dart';

class DepartmentNode {
  DepartmentNode({
    required this.department,
    required this.children,
  });

  final Department department;
  final List<DepartmentNode> children;
}
