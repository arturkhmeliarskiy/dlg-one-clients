import 'package:auto_route/auto_route.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/core/widgets/src/dls_app_bar.dart';
import 'package:dls_one/features/company_structure/model/department.dart';
import 'package:dls_one/features/company_structure/widget/ui/department/department_common_tab.dart';
import 'package:dls_one/features/company_structure/widget/ui/department/department_employees_tab.dart';
import 'package:dls_one/features/company_structure/widget/ui/department_root_page.dart';
import 'package:flutter/material.dart';

@RoutePage<Department>()
class DepartmentPage extends StatefulWidget {
  const DepartmentPage({
    required this.department,
    super.key,
  });

  final Department department;

  @override
  State<DepartmentPage> createState() => _DepartmentPageState();
}

class _DepartmentPageState extends State<DepartmentPage> {
  var _selectedTab = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: add will pop.
    return OverlayBuilder(
      child: Scaffold(
        appBar: DLSAppBar(
          title: Text(widget.department.meta.name),
        ),
        body: DefaultTabController(
          length: 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Stack(
                children: [
                  const Positioned.fill(
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Divider(),
                    ),
                  ),
                  Positioned(
                    child: TabBar(
                      onTap: (value) {
                        setState(() {
                          _selectedTab = value;
                        });
                      },
                      isScrollable: true,
                      unselectedLabelColor: context.c_placeholder,
                      padding: EdgeInsets.symmetric(horizontal: 20.w),
                      tabs: [
                        Tab(text: S.current.common),
                        Tab(text: S.current.employeesList),
                      ],
                      indicator: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: context.c_blue,
                            width: 2.h,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: _selectedTab == 0
                    ? DepartmentCommonTab(
                        meta: widget.department.meta,
                      )
                    : DepartmentEmployeesTab(
                        department: widget.department,
                      ),
              )
            ],
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
                      // TODO: save changes.
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
