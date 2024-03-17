import 'package:dls_one/core/core.dart';
import 'package:dls_one/utils/utils.dart';
import 'package:dls_one/web/create_sprint/create_sprint.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NarrowCreateSprintTextFields extends StatefulWidget {
  const NarrowCreateSprintTextFields({required this.model, super.key});

  final SprintAuthorModel model;

  @override
  State<NarrowCreateSprintTextFields> createState() =>
      _NarrowCreateSprintTextFieldsState();
}

class _NarrowCreateSprintTextFieldsState
    extends State<NarrowCreateSprintTextFields> {
  late final _titleController = TextEditingController(text: widget.model.title);
  late final _descriptionController =
      TextEditingController(text: widget.model.description);

  SprintAuthorModel get model => widget.model;

  @override
  void didUpdateWidget(covariant NarrowCreateSprintTextFields oldWidget) {
    super.didUpdateWidget(oldWidget);
    _titleController.updateIfNotEqual(model.title);
    _descriptionController.updateIfNotEqual(model.description);
  }

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<SprintAuthorBloc>();
    return Column(
      children: [
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
              bloc.add(
                SprintAuthorEvent.updateModel(
                  model.copyWith(title: _titleController.text),
                ),
              );
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
              bloc.add(
                SprintAuthorEvent.updateModel(
                  model.copyWith(description: _descriptionController.text),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
