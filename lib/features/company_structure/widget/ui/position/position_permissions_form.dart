import 'package:dls_one/core/core.dart';
import 'package:dls_one/features/company_structure/model/position_permission.dart';
import 'package:dls_one/features/company_structure/widget/ui/position/radio_form.dart';
import 'package:flutter/material.dart';
import 'package:sliver_tools/sliver_tools.dart';

class PositionPermissionForm extends StatelessWidget {
  const PositionPermissionForm({
    required this.permission,
    required this.onChanged,
    super.key,
  });

  final PositionPermission permission;
  final ValueChanged<PositionPermission> onChanged;

  @override
  Widget build(BuildContext context) {
    return MultiSliver(
      children: [
        SliverPadding(
          padding: EdgeInsets.only(top: 20.h, bottom: 12.h),
          sliver: SliverToBoxAdapter(
            child: Text(
              S.current.permissionSetting,
              style: context.ts_s14h16_4w500,
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: RadioForm(
            title: '${S.current.taskEditing}:',
            value: permission.task,
            items: EditingCredentials.values,
            onChanged: (value) {
              onChanged(permission.copyWith(task: value));
            },
            labelBuilder: (value) => value.label,
          ),
        ),
        SliverToBoxAdapter(
          child: RadioForm(
            title: '${S.current.sprintEditing}:',
            value: permission.sprint,
            items: EditingCredentials.values,
            onChanged: (value) {
              onChanged(permission.copyWith(sprint: value));
            },
            labelBuilder: (value) => value.label,
          ),
        ),
        SliverToBoxAdapter(
          child: RadioForm(
            title: '${S.current.eventEditing}:',
            value: permission.event,
            items: EditingCredentials.values,
            onChanged: (value) {
              onChanged(permission.copyWith(event: value));
            },
            labelBuilder: (value) => value.label,
          ),
        ),
        SliverToBoxAdapter(
          child: RadioForm(
            title: '${S.current.spaceSetting}:',
            value: permission.spaces,
            items: AccessRights.values,
            onChanged: (value) {
              onChanged(permission.copyWith(spaces: value));
            },
            labelBuilder: (value) {
              switch (value) {
                case AccessRights.reading:
                  return S.current.reading;
                case AccessRights.editing:
                  return S.current.editing;
              }
            },
          ),
        ),
      ],
    );
  }
}

extension on EditingCredentials {
  String get label {
    switch (this) {
      case EditingCredentials.own:
        return S.current.onlyOwn;
      case EditingCredentials.department:
        return S.current.allDepartment;
    }
  }
}
