import 'dart:async';

import 'package:dls_one/core/core.dart';
import 'package:dls_one/features/todo/model/todo_model.dart';
import 'package:dls_one/features/todo/model/todo_time_config.dart';
import 'package:dls_one/features/todo/widget/ui/todo_item/edit/edit_todo_card.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:rest_api/rest_api.dart';

class AddTodoItem extends StatefulWidget {
  const AddTodoItem({
    required this.onSave,
    this.initialDate,
    super.key,
    this.isEditingMode = false,
    this.message = '',
  });

  final bool? isEditingMode;
  final String? message;
  final AsyncValueSetter<TodoModel> onSave;
  final DateTime? initialDate;

  @override
  State<AddTodoItem> createState() => _AddTodoItemState();
}

class _AddTodoItemState extends State<AddTodoItem> {
  bool isEditingMode = false;
  DateTime? get initialDateTime =>
      widget.initialDate?.applyTime(const TimeOfDay(hour: 10, minute: 00));

  late TodoModel _initialModel = TodoModel(
    id: 0,
    title: '',
    status: TodoStatus.processing,
    time: initialDateTime != null
        ? TodoTimeConfig(
            startTime: initialDateTime!,
            expireTime: initialDateTime!.add(const Duration(minutes: 15)),
          )
        : null,
  );

  Future<void> _onSave(TodoModel value) async {
    await widget.onSave(value);
    if (isEditingMode) {
      setState(() {
        isEditingMode = false;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    isEditingMode = widget.isEditingMode ?? false;
    if (isEditingMode) {
      _initialModel = TodoModel(
        id: 0,
        title: widget.message ?? '',
        status: TodoStatus.processing,
      );
    }
  }

  void _onCancel() {
    setState(() {
      isEditingMode = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return isEditingMode
          ? Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4.r),
              border: Border.all(color: context.c_blue),
            ),
            padding: EdgeInsets.all(12.r),
            child: EditTodoCard(
              initialDate: widget.initialDate ?? DateTime.now(),
              initialModel: _initialModel,
              onSave: _onSave,
              onCancel: _onCancel,
            )
          )
        : TextButton(
            onPressed: () {
              setState(() {
                isEditingMode = true;
              });
            },
            style: TextButton.styleFrom(
              foregroundColor: context.c_placeholder,
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 2.h),
              child: Row(
                children: [
                  Assets.icons.add.svg(width: 18.r, height: 18.r),
                  SizedBox(width: 4.w),
                  Text(
                    S.current.addTodo,
                    // Высота подстроена согласно дизайну, хотя значение другое.
                    style: const TextStyle(height: 20 / 14),
                  ),
                ],
              ),
            ),
          );
  }
}
