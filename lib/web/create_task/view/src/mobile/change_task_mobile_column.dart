import 'package:dls_one/core/core.dart';
import 'package:dls_one/utils/utils.dart';
import 'package:dls_one/web/create_task/create_task.dart';
import 'package:dls_one/web/sprints/view/widgets/completed_sprint_page/right_column/comments.dart';
import 'package:flutter/material.dart';

class ChangeTaskMobileColumn extends StatefulWidget {
  const ChangeTaskMobileColumn({
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
  State<ChangeTaskMobileColumn> createState() => _ChangeTaskMobileColumnState();
}

class _ChangeTaskMobileColumnState extends State<ChangeTaskMobileColumn>
    with SingleTickerProviderStateMixin {
  SaveTaskModel get model => widget.state.model;

  late final TabController _controller;
  late final TextEditingController _titleController;
  late final TextEditingController _descriptionController;
  bool _subtaskOpen = false;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 3, vsync: this);
    _titleController = TextEditingController(text: model.title);
    _descriptionController = TextEditingController(text: model.description);
  }

  @override
  void didUpdateWidget(covariant ChangeTaskMobileColumn oldWidget) {
    super.didUpdateWidget(oldWidget);
    _titleController.updateIfNotEqual(widget.state.model.title);
    _descriptionController.updateIfNotEqual(widget.state.model.description);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
          controller: _controller,
          indicator: BoxDecoration(
            border: Border(bottom: BorderSide(color: context.c_blue)),
          ),
          labelStyle: context.ts_s14h22_4w400,
          tabs: [
            Tab(text: S.current.general),
            Tab(text: S.current.details),
            Tab(text: S.current.tab_comments),
          ],
        ),
        Expanded(
          child: TabBarView(
            controller: _controller,
            children: [
              ListView(
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
              ),
              ListView(
                children: [
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
                ],
              ),
              Comments(chatId: model.matrixRoom),
            ],
          ),
        ),
      ],
    );
  }
}
