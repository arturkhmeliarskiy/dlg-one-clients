import 'dart:async';

import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/tasks/bloc/hover_task_bloc/hover_task_bloc.dart';
import 'package:dls_one/web/tasks/const/enums.dart';
import 'package:dls_one/web/tasks/view/web/task_list_body/row_buttons/task_title/task_build_edit_button.dart';
import 'package:dls_one/web/tasks/view/web/task_list_body/row_buttons/task_title/task_build_text_field.dart';
import 'package:dls_one/web/tasks/view/web/task_list_body/row_buttons/task_title/task_check_sprint.dart';
import 'package:dls_one/web/tasks/view/web/task_list_body/row_buttons/task_title/task_dropdown_button.dart';
import 'package:dls_one/web/tasks/view/web/task_list_body/row_buttons/task_title/task_title_text.dart';
import 'package:dls_one/web/tasks/view/web/task_list_body/row_buttons/task_title/task_type_item.dart';
import 'package:dls_one/web/tasks/view/web/task_list_body/row_buttons/task_title/tool_tip_custom_shape.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rest_api/rest_api.dart';

class TaskTableRowTitle extends StatefulWidget {
  const TaskTableRowTitle({
    required this.type,
    required this.title,
    required this.id,
    required this.index,
    required this.enableTitleEdit,
    required this.onSubmittedText,
    required this.hierarchyView,
    required this.item,
    this.isSprint = false,
    this.sprintName = '',
    this.idTask,
    super.key,
  });

  final int type;
  final String title;
  final int id;
  final int? idTask;
  final int index;
  final bool enableTitleEdit;
  final bool isSprint;
  final String sprintName;
  final void Function(String) onSubmittedText;
  final TasksListHierarchy? hierarchyView;
  final DlsTasks item;

  @override
  State<TaskTableRowTitle> createState() => _TaskTableRowTitleState();
}

class _TaskTableRowTitleState extends State<TaskTableRowTitle> {
  final controller = TextEditingController();
  bool isHover = false;
  bool isActiveInput = false;
  bool isError = false;
  FocusNode focusNode = FocusNode();
  OverlayEntry? overlayEntry;
  GlobalKey globalKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    controller.text = widget.title;
    focusNode.addListener(() {
      setState(() {
        isActiveInput = focusNode.hasFocus;
      });
      if (isActiveInput && overlayEntry != null) {
        overlayEntry?.remove();
      }
    });
  }

  @override
  void didUpdateWidget(covariant TaskTableRowTitle oldWidget) {
    super.didUpdateWidget(oldWidget);
    controller.text = widget.title;
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
    focusNode.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (widget.hierarchyView != null)
          TaskDropdownButton(
            id: widget.idTask,
            index: widget.index,
            item: widget.item,
            hierarchyView: widget.hierarchyView ?? TasksListHierarchy.hierarchy,
          ),
        SizedBox(
          width: (widget.item.subTasks?.isEmpty ?? false) &&
                  (widget.item.uniqueKey?.isNotEmpty ?? false)
              ? 24.w
              : 0,
        ),
        TaskTypeItem(
          type: widget.type,
          role: widget.item.roles?.first,
        ),
        TaskCheckSprint(
          isSprint: widget.isSprint,
          title: widget.sprintName,
          role: widget.item.roles?.first,
        ),
        Expanded(
          child: SizedBox(
            width: 400.w,
            child: Row(
              children: [
                Expanded(
                  child: isActiveInput &&
                          widget.item.roles?.first.role != TaskRolesType.viewing
                      ? TaskBuildTextField(
                          title: controller.text,
                          focusNode: focusNode,
                          isActiveInput: isActiveInput,
                          onChangeText: (value) {
                            setState(() {
                              controller.text = value;
                              if (overlayEntry != null) {
                                overlayEntry?.remove();
                              }
                            });
                          },
                          onSubmittedText: (value) {
                            if (value.isNotEmpty) {
                              widget.onSubmittedText(value);
                              setState(() {
                                isActiveInput = false;
                              });
                              if (overlayEntry != null) {
                                overlayEntry?.remove();
                              }
                            } else {
                              controller.text = widget.title;
                              OverlayState? overlayState = Overlay.of(context);
                              WidgetsBinding.instance.addPostFrameCallback((_) {
                                globalKey;
                              });
                              overlayEntry = _createOverlay(context);
                              Timer(const Duration(seconds: 3), () {
                                if (overlayEntry != null) {
                                  overlayEntry?.remove();
                                }
                              });
                              overlayState.insert(overlayEntry!);
                            }
                          },
                        )
                      : TaskTitleText(
                          title: controller.text,
                          role: widget.item.roles?.first,
                        ),
                ),
                BlocBuilder<HoverTaskBloc, HoverTaskState>(
                  builder: (context, state) => state.maybeMap(
                    preloadData: (initState) {
                      if (initState.idTask == widget.id) {
                        return TaskBuildEditButton(
                          onEdit: () {
                            setState(() {
                              isActiveInput = true;
                              focusNode.requestFocus();
                              controller.selection = TextSelection.fromPosition(
                                TextPosition(
                                  offset: controller.text.length,
                                ),
                              );
                            });
                          },
                        );
                      } else {
                        return const SizedBox();
                      }
                    },
                    orElse: () => const SizedBox(),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }

  OverlayEntry _createOverlay(BuildContext context) {
    final overlayState = Overlay.of(
      context,
    );
    final renderBox = context.findRenderObject() as RenderBox;

    final target = renderBox.localToGlobal(
      renderBox.size.center(Offset.zero),
      ancestor: overlayState.context.findRenderObject(),
    );

    return OverlayEntry(
      builder: (context) => Positioned(
        top: target.dy + 25,
        left: 25,
        child: Container(
          height: 44.h,
          width: 136.w,
          alignment: Alignment.center,
          decoration: ShapeDecoration(
            color: context.c_red,
            shape: const ToolTipCustomShape(),
          ),
          child: Text(
            S.current.enter_name,
            style: context.ts_s14h14w400.copyWith(
              color: context.c_white_text,
            ),
          ),
        ),
      ),
    );
  }
}
