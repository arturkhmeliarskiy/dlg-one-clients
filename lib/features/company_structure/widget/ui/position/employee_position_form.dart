import 'package:dls_one/core/core.dart';
import 'package:dls_one/core/widgets/src/dls_form_input.dart';
import 'package:dls_one/features/company_structure/model/employee_position.dart';
import 'package:dls_one/features/company_structure/widget/ui/department/department_employees_tab.dart';
import 'package:dls_one/features/company_structure/widget/ui/position/position_permissions_form.dart';
import 'package:flutter/material.dart';

class EmployeePositionForm extends StatefulWidget {
  const EmployeePositionForm({
    required this.initialPosition,
    super.key,
  });

  final EmployeePosition initialPosition;

  @override
  State<EmployeePositionForm> createState() => _EmployeePositionFormState();
}

class _EmployeePositionFormState extends State<EmployeePositionForm> {
  final _controller = TextEditingController();
  late var _position = widget.initialPosition;

  @override
  void initState() {
    super.initState();

    _controller.text = _position.name;
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 20.h),
                    child: Row(
                      children: [
                        Text(S.current.positionName),
                        SizedBox(width: 24.w),
                        Expanded(
                          child: DLSFormInput(
                            controller: _controller,
                            // TODO: вынести в отдельный валидатор.
                            validator: (value) => ((value ?? '').length < 3)
                                ? S.current.positionNameLengthError
                                : null,
                            hintText: S.current.employeePosition,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                PositionPermissionForm(
                  permission: _position.permission,
                  onChanged: (value) {
                    setState(() {
                      _position = _position.copyWith(
                        permission: value,
                      );
                    });
                  },
                )
              ]
                  .intersperse(
                    const SliverToBoxAdapter(
                      child: Divider(),
                    ),
                  )
                  .toList(),
            ),
          ),
        ),
      ],
    );
  }
}
