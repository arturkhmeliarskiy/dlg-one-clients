import 'package:auto_route/auto_route.dart';
import 'package:dls_one/app/router/app_router.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/features/todo/model/todo_model.dart';
import 'package:dls_one/features/todo/widget/ui/todo_item/edit/edit_todo_card.dart';
import 'package:dls_one/features/todo/widget/ui/todo_item/hovered_menu.dart';
import 'package:dls_one/features/todo/widget/ui/todo_item/todo_tile.dart';
import 'package:flutter/material.dart';
import 'package:rest_api/rest_api.dart';

class TodoItem extends StatefulWidget {
  const TodoItem({
    required this.model,
    required this.onUpdate,
    required this.onDelete,
    super.key,
  });

  final TodoModel model;
  final ValueChanged<TodoModel> onUpdate;
  final VoidCallback onDelete;

  @override
  State<TodoItem> createState() => _TodoItemState();
}

class _TodoItemState extends State<TodoItem> {
  late TodoModel model = widget.model;
  bool isEditingMode = false;

  DateTime get _defaultDate => widget.model.time?.startTime ?? DateTime.now();

  void _onUpdate(TodoModel value) {
    setState(() {
      isEditingMode = false;
      model = value;
      widget.onUpdate(value);
    });
  }

  void _onCancel() {
    setState(() {
      isEditingMode = false;
    });
  }

  void _onDelete() {
    widget.onDelete();
  }

  @override
  void didUpdateWidget(covariant TodoItem oldWidget) {
    super.didUpdateWidget(oldWidget);

    model = widget.model;
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
              initialModel: model,
              initialDate: _defaultDate,
              onSave: _onUpdate,
              onCancel: _onCancel,
            ),
          )
        : HoveredMenu(
            onEdit: () {
              setState(() {
                isEditingMode = true;
              });
            },
            onDelete: _onDelete,
            createEvent: () {
              context.router.push(CreateEventRoute(title: model.title));
            },
            createTask: () {
              context.router.push(NewTaskSprintRoute(title: model.title));
            },
            child: InkWell(
              onTap: () {
                _onUpdate(
                  model.copyWith(
                    status: model.status == TodoStatus.processing
                        ? TodoStatus.completed
                        : TodoStatus.processing,
                  ),
                );
              },
              child: TodoTile(
                model: model,
              ),
            ),
          );
  }
}
