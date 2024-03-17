import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/chat/chat_manager/chat_manager.dart';
import 'package:flutter/material.dart';
import 'package:rest_api/rest_api.dart';

class TaskBuildAddButton extends StatelessWidget {
  const TaskBuildAddButton({
    required this.performers,
    required this.count,
    required this.onSelectGroup,
    this.marginTop = 8,
    super.key,
  });

  final List<DlsTasksExecutors> performers;
  final void Function(List<DLSUser>) onSelectGroup;
  final double marginTop;
  final int count;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 24.w,
      height: 24.h,
      alignment: Alignment.center,
      margin: EdgeInsets.only(
        top: marginTop.h,
      ),
      child: DLSPlusIconButton(
        tooltip: S.current.add_a_performer,
        onTap: () {
          groupSelectUsersDialog(
            context,
            SimpleGroup(
              name: '',
              users: List<DLSUser>.from(
                performers
                    .map(
                      (item) => DLSUser(
                        dlsId: item.id,
                        id: item.id.toString(),
                        name: item.name,
                      ),
                    )
                    .toList(),
              ),
            ),
            onSelectGroup: (value) {
              onSelectGroup(value.users);
            },
            title: S.current.performer,
          );
        },
      ),
    ).paddingOnly(
      left: (count > 2 ? 3 : count) * 16.w,
    );
  }
}
