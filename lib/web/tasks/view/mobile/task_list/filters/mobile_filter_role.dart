import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/tasks/const/enums.dart';
import 'package:dls_one/web/tasks/view/mobile/task_list/filters/mobile_filter_role_content.dart';
import 'package:flutter/material.dart';
import 'package:rest_api/rest_api.dart';

class MobileFilterRole extends StatefulWidget {
  const MobileFilterRole({
    required this.onChangeRole,
    required this.filters,
    super.key,
  });

  final void Function(List<TaskRolesType>) onChangeRole;
  final Map<FilterTypes, Object> filters;

  @override
  State<MobileFilterRole> createState() => _MobileFilterRoleState();
}

class _MobileFilterRoleState extends State<MobileFilterRole> {
  List<String> selectedItems = [];

  @override
  void didUpdateWidget(covariant MobileFilterRole oldWidget) {
    if (widget.filters.isEmpty) {
      selectedItems = [];
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        await showModalBottomSheet<void>(
          context: context,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(8.r),
            ),
          ),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          builder: (context) {
            return StatefulBuilder(
              builder: (BuildContext context, StateSetter setStat) {
                return MobileFilerRoleContent(
                  onChangeRole: (value) {
                    widget.onChangeRole(value);
                  },
                  onChangeRoleTitle: (value) {
                    setState(() {
                      selectedItems = [];
                      selectedItems = value;
                    });
                  },
                );
              },
            );
          },
        );
      },
      child: SizedBox(
        height: 44.h,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 16.w),
              child: Text(
                S.current.my_role,
                style: context.ts_s14h22_4w400,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 16.w),
              child: Text(
                selectedItems.isNotEmpty
                    ? _listRoles(selectedItems)
                    : S.current.all[0].toUpperCase() +
                        S.current.all.substring(1, 3),
                style: context.ts_s14h22_4w400,
              ),
            ),
          ],
        ),
      ),
    );
  }

  String _listRoles(List<String> selectedItems) {
    var result = '';
    for (var i = 0; i < selectedItems.length; i++) {
      if (selectedItems.length == 1) {
        result = selectedItems[i];
      } else if (i < 2 && selectedItems.length != 1) {
        result = '$result${selectedItems[i]}, ';
      }
    }
    if (selectedItems.length > 2) {
      result = '$result+${selectedItems.length - 2}';
    }
    return result;
  }
}
