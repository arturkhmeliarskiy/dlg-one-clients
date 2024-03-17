import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/create_task/view/src/task_horizontal_avatar_user.dart';
import 'package:dls_one/web/create_task/view/src/task_horizontal_users_list.dart';
import 'package:flutter/material.dart';
import 'package:rest_api/rest_api.dart';

class MobileEventItem extends StatelessWidget {
  const MobileEventItem({
    required this.model,
    super.key,
  });

  final TaskEventModel model;

  @override
  Widget build(BuildContext context) {
    final online = model.type == TaskEventType.online;
    final typeColor = online ? context.c_purple : context.c_tiffany;
    // TODO config after API fix
    const enable = true;
    final backgroundColor =
        enable ? context.c_green_light : context.c_red.withOpacity(0.1);
    final color = enable ? context.c_green : context.c_red;
    final asset = enable ? Assets.icons.check : Assets.icons.close;
    return Container(
      padding: EdgeInsets.all(12.r),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4.r),
        border: Border.all(color: context.c_grey_stoke),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 16.h,
            child: Row(
              children: [
                CircleAvatar(
                  radius: 4.r,
                  backgroundColor: typeColor,
                ),
                SizedBox(width: 6.w),
                Expanded(child: Text(model.title))
              ],
            ),
          ),
          SizedBox(height: 8.h),
          SizedBox(
            height: 24.h,
            child: Row(
              children: [
                Container(
                  height: 24.r,
                  width: 24.r,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: backgroundColor,
                  ),
                  child: Center(child: asset.svg(color: color)),
                ),
                SizedBox(width: 8.w),
                Expanded(
                  child: TaskHorizontalUsersList(
                    users: model.members?.map((e) => e.toUser()).toList() ?? [],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
