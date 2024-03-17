import 'package:auto_route/auto_route.dart';
import 'package:dls_one/app/router/app_router.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/features/todo/model/todo_model.dart';
import 'package:dls_one/features/todo/widget/ui/todo_item/edit/edit_todo_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TodoContextMenu extends StatelessWidget {
  const TodoContextMenu._({
    required this.model,
    required this.saveModel,
    required this.deleteModel,
    required this.intialDate,
  });

  static Future<void> show(
    BuildContext context, {
    required TodoModel model,
    required Future<bool> Function(TodoModel) saveModel,
    required VoidCallback deleteModel,
    required DateTime intialDate,
  }) {
    return showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(8.r)),
      ),
      builder: (_) => TodoContextMenu._(
        model: model,
        saveModel: saveModel,
        deleteModel: deleteModel,
        intialDate: intialDate,
      ),
    );
  }

  final TodoModel model;
  final Future<bool> Function(TodoModel) saveModel;
  final VoidCallback deleteModel;
  final DateTime intialDate;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.only(top: 8.h),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _ContextMenuTile(
              asset: Assets.icons.checkCircle1.path,
              title: S.current.createTask,
              onTap: () {
                Navigator.pop(context);
                context.router.push(NewTaskSprintRoute(title: model.title));
              },
            ),
            _ContextMenuTile(
              asset: Assets.icons.calender.path,
              title: S.current.createEvent,
              onTap: () {
                Navigator.pop(context);
                context.router.push(CreateEventRoute(title: model.title));
              },
            ),
            _ContextMenuTile(
              asset: Assets.icons.pen1.path,
              title: S.current.edit,
              onTap: () {
                Navigator.of(context).pop();
                showModalBottomSheet<void>(
                  context: context,
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(8.r)),
                  ),
                  builder: (context) {
                    return SafeArea(
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                              horizontal: 16.w,
                              vertical: 12.h,
                            ) +
                            MediaQuery.of(context).viewInsets,
                        child: EditTodoCard(
                          initialModel: model,
                          initialDate: intialDate,
                          onSave: (value) async {
                            final navigator = Navigator.of(context);
                            final isSaved = await saveModel(value);

                            if (isSaved) {
                              navigator.pop();
                            }
                          },
                          onCancel: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ),
                    );
                  },
                );
              },
            ),
            _ContextMenuTile(
              asset: Assets.icons.trash.path,
              title: S.current.delete,
              color: context.c_red,
              onTap: () {
                deleteModel();
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      ),
    );
  }
}

class _ContextMenuTile extends StatelessWidget {
  const _ContextMenuTile({
    required this.asset,
    required this.title,
    required this.onTap,
    this.color,
  });

  final String asset;
  final String title;
  final VoidCallback onTap;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 16.w,
          vertical: 10.h,
        ),
        child: Row(
          children: [
            SvgPicture.asset(
              asset,
              width: 16.r,
              height: 16.r,
              color: color ?? context.c_text_grey,
            ),
            SizedBox(width: 8.w),
            Text(
              title,
              style: context.ts_s14h16_4w400.copyWith(color: color),
            ),
          ],
        ),
      ),
    );
  }
}
