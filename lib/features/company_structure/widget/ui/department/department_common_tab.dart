import 'package:dls_one/core/core.dart';
import 'package:dls_one/features/company_structure/model/department.dart';
import 'package:flutter/material.dart';

class DepartmentCommonTab extends StatefulWidget {
  const DepartmentCommonTab({
    required this.meta,
    super.key,
  });

  final DepartmentMetaData meta;

  @override
  State<DepartmentCommonTab> createState() => _DepartmentCommonTabState();
}

class _DepartmentCommonTabState extends State<DepartmentCommonTab> {
  final _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    _controller.text = widget.meta.name;
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              Text(
                S.current.departmentName,
                style: context.ts_s14h16_4w500,
              ),
              SizedBox(width: 25.w),
              Expanded(
                // TODO: добавить валидацию.
                child: DLSInput(
                  controller: _controller,
                ),
              ),
            ],
          ),
          SizedBox(height: 20.h),
          OutlinedButton(
            onPressed: () {
              // TODO: delete department.
            },
            style: OutlinedButton.styleFrom(
              foregroundColor: context.c_red,
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 12.h),
              side: BorderSide(
                color: context.c_red,
              ),
            ),
            child: Text(S.current.deleteDepartment),
          ),
        ],
      ),
    );
  }
}
