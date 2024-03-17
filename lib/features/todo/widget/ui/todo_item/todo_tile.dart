import 'package:dls_one/core/core.dart';
import 'package:dls_one/core/widgets/dls_layout_item_builder.dart';
import 'package:dls_one/features/todo/model/todo_model.dart';
import 'package:dls_one/features/todo/model/todo_time_config.dart';
import 'package:dls_one/features/todo/widget/ui/todo_item/edit/todo_time_config_card.dart';
import 'package:dls_one/features/todo/widget/ui/todo_item/todo_checkbox.dart';
import 'package:flutter/material.dart';
import 'package:rest_api/rest_api.dart';

class TodoTile extends StatelessWidget {
  const TodoTile({
    required this.model,
    super.key,
  });

  final TodoModel model;

  static String? _makeLabel(TodoTimeConfig? time) {
    if (time == null) {
      return null;
    }

    return time.isOverdue
        ? time.dateLabel(needPad: false)
        : time.isFullDay
            ? null
            : time.timeLabel(needPad: false);
  }

  @override
  Widget build(BuildContext context) {
    final time = model.time;

    final timeLabel = _makeLabel(time);

    return SizedBox(
      height: 36.h,
      child: Row(
        children: [
          Theme(
            data: ThemeData(unselectedWidgetColor: Colors.white),
            child: TodoCheckBox(
              isChecked: model.isFinished,
              size: DLSLayoutItemBuilder.values(wide: 20.r, narrow: 16.r)(),
            ),
          ),
          SizedBox(width: 8.w),
          Expanded(
            child: RichText(
              maxLines: 1,
              softWrap: false,
              text: TextSpan(
                children: [
                  if (timeLabel != null)
                    TextSpan(
                      text: '$timeLabel ',
                      style: context.ts_s14h22_4w400.copyWith(
                        color: model.isFinished
                            ? context.c_placeholder
                            : model.isOverdue
                                ? context.c_red.withOpacity(0.5)
                                : context.c_text_grey,
                      ),
                    ),
                  TextSpan(
                    text: model.title,
                    style: context.ts_s14h14w400.copyWith(
                      color: model.isFinished
                          ? context.c_placeholder
                          : model.isOverdue
                              ? context.c_red
                              : context.c_text,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

extension on TodoModel {
  bool get isOverdue => time?.isOverdue ?? false;

  bool get isFinished => status == TodoStatus.completed;
}
