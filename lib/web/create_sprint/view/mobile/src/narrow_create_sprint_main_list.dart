import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/create_sprint/create_sprint.dart';
import 'package:flutter/material.dart';

class NarrowCreateSprintMainList extends StatelessWidget {
  const NarrowCreateSprintMainList({required this.model, super.key});

  final SprintAuthorModel model;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(height: 16.h),
        NarrowCreateSprintTextFields(model: model),
        SizedBox(height: 16.h),
        const Divider(),
        SizedBox(height: 8.h),
        DlsPadding.symmetric(
          horizontal: 16.w,
          child: NarrowCreateSprintTopItems(model: model),
        ),
        SizedBox(height: 8.h),
        const Divider(),
        SizedBox(height: 16.h),
        DlsPadding.symmetric(
          horizontal: 16.w,
          child: NarrowCreateSprintEventList(model: model),
        ),
        SizedBox(height: 16.h),
        const Divider(),
        SizedBox(height: 8.h),
        NarrowCreateSprintTasksView(model: model),
        SizedBox(height: 40.h),
      ],
    );
  }
}
