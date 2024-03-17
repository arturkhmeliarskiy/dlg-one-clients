import 'package:dls_one/core/core.dart';
import 'package:dls_one/features/todo/model/todo_model.dart';
import 'package:dls_one/features/todo/widget/ui/todo_item/edit/todo_time_config_card.dart';
import 'package:flutter/material.dart';

class EditTodoCard extends StatefulWidget {
  const EditTodoCard({
    required this.initialModel,
    required this.onSave,
    required this.onCancel,
    required this.initialDate,
    super.key,
  });

  final TodoModel initialModel;
  final DateTime initialDate;
  final ValueSetter<TodoModel> onSave;
  final VoidCallback onCancel;

  @override
  State<EditTodoCard> createState() => _EditTodoCardState();
}

class _EditTodoCardState extends State<EditTodoCard> {
  late TodoModel _model = widget.initialModel;

  final _editingController = TextEditingController();

  bool get _canSave => _editingController.text.isNotEmpty;

  void _onEditTitle() {
    setState(() {
      _model = _model.copyWith(title: _editingController.text);
    });
  }

  @override
  void initState() {
    super.initState();

    _editingController
      ..text = _model.title
      ..addListener(_onEditTitle);
  }

  @override
  void dispose() {
    _editingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        TextField(
          controller: _editingController,
          style: context.ts_s14h16w400,
          autofocus: true,
          decoration: InputDecoration(
            hintText: S.current.enterTodoTitle,
            isDense: true,
            contentPadding: EdgeInsets.zero,
            border: InputBorder.none,
          ),
        ),
        SizedBox(height: 12.h),
        Row(
          children: [
            TodoTimeConfigCard(
              config: _model.time,
              defaultDate: widget.initialDate,
              onChange: (value) {
                setState(() {
                  _model = _model.copyWith(time: value);
                });
              },
            ),
            const Spacer(),
            DLSButtonIcon(
              height: 32.r,
              width: 32.r,
              onTap: widget.onCancel,
              color: Colors.transparent,
              icon: Assets.icons.close.svg(
                width: 16.r,
                height: 16.r,
                color: context.c_gray,
              ),
            ),
            SizedBox(width: 8.w),
            DLSButtonIcon(
              height: 32.r,
              width: 32.r,
              isDisabled: !_canSave,
              onTap: () {
                widget.onSave(_model);
              },
              icon: Assets.icons.message1.svg(
                width: 16.r,
                height: 16.r,
                color: context.c_white_text,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
