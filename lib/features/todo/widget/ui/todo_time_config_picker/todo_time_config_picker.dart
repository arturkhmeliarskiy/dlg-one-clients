import 'package:dls_one/core/core.dart';
import 'package:dls_one/core/widgets/dls_layout_item_builder.dart';
import 'package:dls_one/features/todo/model/todo_time_config.dart';
import 'package:dls_one/features/todo/widget/ui/todo_time_config_picker/narrow_todo_time_config_picker.dart';
import 'package:dls_one/features/todo/widget/ui/todo_time_config_picker/wide_todo_time_config_picker.dart';
import 'package:flutter/material.dart';

/// Return [TodoTimeConfig] on [Navigator.pop].
class TodoTimeConfigPicker {
  const TodoTimeConfigPicker._();

  static Future<TodoTimeConfig?> show(
    BuildContext context, {
    required TodoTimeConfig initialConfig,
  }) =>
      DLSLayoutItemBuilder(
        wide: () => showDialog<TodoTimeConfig>(
          context: context,
          builder: (context) => Dialog(
            backgroundColor: Colors.transparent,
            insetPadding: EdgeInsets.zero,
            child: WideTodoTimeConfigPicker(
              initialConfig: initialConfig,
            ),
          ),
        ),
        narrow: () => showModalBottomSheet<TodoTimeConfig>(
          context: context,
          enableDrag: false,
          isScrollControlled: true,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(8.r)),
          ),
          builder: (context) => NarrowTodoTimeConfigPicker(
            initialConfig: initialConfig,
          ),
        ),
      ).call();
}
