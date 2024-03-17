import 'package:dls_one/core/core.dart';
import 'package:dls_one/utils/utils.dart';
import 'package:dls_one/web/create_task/create_task.dart';
import 'package:flutter/material.dart';

class NewTaskMobileColumn extends StatefulWidget {
  const NewTaskMobileColumn({
    required this.state,
    required this.onChangeTitle,
    required this.onChangeDescription,
    required this.onChangeStartAt,
    required this.onChangeExpiredAt,
    super.key,
  });

  final TaskState state;
  final ValueChanged<String> onChangeTitle;
  final ValueChanged<String> onChangeDescription;
  final ValueChanged<DateTime> onChangeStartAt;
  final ValueChanged<DateTime> onChangeExpiredAt;

  @override
  State<NewTaskMobileColumn> createState() => _NewTaskMobileColumnState();
}

class _NewTaskMobileColumnState extends State<NewTaskMobileColumn> {
  SaveTaskModel get model => widget.state.model;

  final _titleController = TextEditingController();
  final _descriptionController = TextEditingController();
  bool _subtaskOpen = false;

  @override
  void didUpdateWidget(covariant NewTaskMobileColumn oldWidget) {
    super.didUpdateWidget(oldWidget);
    _titleController.updateIfNotEqual(widget.state.model.title);
    _descriptionController.updateIfNotEqual(widget.state.model.description);
  }

  @override
  Widget build(BuildContext context) {
    // TODO refactor to slivers
    return ListView(
      children: [
        SizedBox(height: 16.h),
        DlsPadding.symmetric(
          horizontal: 16.w,
          child: WebDlsHintField(
            controller: _titleController,
            hintText: S.current.name_task,
            hintStyle: context.ts_s18h21w500.copyWith(
              height: 1,
              color: context.c_placeholder,
            ),
            style: context.ts_s18h21w500.copyWith(height: 1),
            validation: model.title.isEmpty,
            maxLines: null,
            onEditingComplete: () {
              widget.onChangeTitle(_titleController.text);
            },
          ),
        ),
        SizedBox(height: 8.h),
        DlsPadding.symmetric(
          horizontal: 16.w,
          child: WebDlsHintField(
            controller: _descriptionController,
            style: context.ts_s14h22_4w400,
            hintText: S.current.enter_description_task,
            hintStyle: context.ts_s14h22_4w400.apply(
              color: context.c_placeholder,
            ),
            maxLines: null,
            onEditingComplete: () {
              widget.onChangeDescription(_descriptionController.text);
            },
          ),
        ),
        SizedBox(height: 16.h),
        const Divider(),
        SizedBox(height: 8.h),
        DlsPadding.symmetric(
          horizontal: 16.w,
          child: MobileTaskTopItems(
            model: model,
            onChangeStartAt: widget.onChangeStartAt,
            onChangeExpiredAt: widget.onChangeExpiredAt,
          ),
        ),
        SizedBox(
          height: 56.h,
          child: MobileAddItemsList(model: model),
        ),
        const Divider(),
        SizedBox(height: 16.h),
        DlsPadding.symmetric(
          horizontal: 16.w,
          child: MobileTaskBottomItems(
            model: model,
            subtaskOpen: _subtaskOpen,
            onSubtaskOpen: () {
              _subtaskOpen = !_subtaskOpen;
              setState(() {});
            },
          ),
        ),
        SizedBox(height: 8.h),
        SizedBox(
          height: 80.h,
          child: MobileTaskCircleItems(model: model),
        )
      ],
    );
  }
}
