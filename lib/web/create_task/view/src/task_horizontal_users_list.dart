import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/create_task/view/src/task_horizontal_avatar_user.dart';
import 'package:flutter/material.dart';
import 'package:rest_api/rest_api.dart';

// TODO check on dublicate and remove dublicates
class TaskHorizontalUsersList extends StatelessWidget {
  const TaskHorizontalUsersList({
    this.onTap,
    this.users = const [],
    super.key,
  });

  final List<DLSUser> users;
  final ValueSetter<DLSUser>? onTap;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: List.generate(
        users.length,
        (index) {
          final item = users[index];
          return GestureDetector(
            onTap: onTap == null
                ? null
                : () {
                    onTap?.call(item);
                  },
            child: Padding(
              padding: EdgeInsets.only(left: index * 20.w),
              child: TaskHorizontalAvatarUser(user: item),
            ),
          );
        },
      ),
    );
  }
}
