enum EmployeeAuthFilter {
  authorized,
  unauthorized,
}

enum EmployeeLockFilter {
  locked,
  unlocked,
}

class EmployeeFilter {
  EmployeeFilter({
    required this.query,
    this.authFilter,
    this.lockFilter,
  });

  final String query;
  final EmployeeAuthFilter? authFilter;
  final EmployeeLockFilter? lockFilter;
}
