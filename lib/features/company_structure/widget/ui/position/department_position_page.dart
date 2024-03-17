import 'package:auto_route/auto_route.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/core/widgets/src/dls_app_bar.dart';
import 'package:dls_one/features/company_structure/model/department.dart';
import 'package:dls_one/features/company_structure/model/employee_position.dart';
import 'package:dls_one/features/company_structure/model/position_permission.dart';
import 'package:dls_one/features/company_structure/widget/ui/department_root_page.dart';
import 'package:dls_one/features/company_structure/widget/ui/position/employee_position_form.dart';
import 'package:flutter/material.dart';

@RoutePage()
class DepartmentPositionPage extends StatefulWidget {
  const DepartmentPositionPage({
    @PathParam('id') this.positionId,
    super.key,
  });

  /// ID редактируемого отдела.
  ///
  /// Если null - создание отдела.
  final int? positionId;

  @override
  State<DepartmentPositionPage> createState() => _DepartmentPositionPageState();
}

class _DepartmentPositionPageState extends State<DepartmentPositionPage> {
  final _formKey = GlobalKey<FormState>();

  // TODO: получение из контекста по id или подгружая отдельно.
  EmployeePosition get mockPosition => const EmployeePosition(
        department: DepartmentMetaData(id: 1, name: 'Name: 1'),
        id: 2,
        name: 'Staff 2',
        type: EmployeePositionType.employee,
        permission: PositionPermission(),
      );

  @override
  Widget build(BuildContext context) {
    return OverlayBuilder(
      child: Scaffold(
        appBar: DLSAppBar(
          title: Text(S.current.employeePosition),
        ),
        body: Form(
          key: _formKey,
          child: EmployeePositionForm(
            initialPosition: mockPosition,
          ),
        ),
        bottomNavigationBar: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Divider(),
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: 16.h,
                horizontal: 20.w,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      final state = _formKey.currentState;

                      if (state != null && !state.validate()) {
                        return;
                      }

                      context.router.pop();
                    },
                    child: Text(S.current.save),
                  ),
                  // Дает более низкоуровневый контекст, чтобы WillPop ловил.
                  Builder(
                    builder: (context) {
                      return OutlinedButton(
                        onPressed: () {
                          context.router.pop();
                        },
                        child: Text(S.current.cancel),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
