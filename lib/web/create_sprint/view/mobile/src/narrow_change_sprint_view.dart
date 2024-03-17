import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/create_sprint/create_sprint.dart';
import 'package:dls_one/web/sprints/view/widgets/completed_sprint_page/right_column/comments.dart';
import 'package:flutter/material.dart';

class NarrowChangeSprintView extends StatefulWidget {
  const NarrowChangeSprintView({required this.model, super.key});

  final SprintAuthorModel model;

  @override
  State<NarrowChangeSprintView> createState() => _NarrowChangeSprintViewState();
}

class _NarrowChangeSprintViewState extends State<NarrowChangeSprintView>
    with SingleTickerProviderStateMixin {
  late final TabController _controller = TabController(length: 3, vsync: this);

  SprintAuthorModel get model => widget.model;

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
                  NarrowCreateSprintTextFields(model: model),
                  SizedBox(height: 16.h),
                  const Divider(),
                  SizedBox(height: 16.h),
                  DlsPadding.symmetric(
                    horizontal: 16.w,
                    child: NarrowCreateSprintEventList(model: model),
                  ),
                  SizedBox(height: 16.h),
                  const Divider(),
                  NarrowCreateSprintTasksView(model: model),
                  SizedBox(height: 40.h),
                ],
              ),
              SingleChildScrollView(
                child: DlsPadding.all(
                  16.w,
                  child: NarrowCreateSprintTopItems(model: model),
                ),
              ),
              Comments(chatId: model.matrixRoom),
            ],
          ),
        ),
      ],
    );
  }
}
