import 'package:dls_one/web/create_sprint/create_sprint.dart';
import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';

class NarrowCreateSprintTasksView extends StatefulWidget {
  const NarrowCreateSprintTasksView({required this.model, super.key});

  final SprintAuthorModel model;

  @override
  State<NarrowCreateSprintTasksView> createState() =>
      _NarrowCreateSprintTasksViewState();
}

class _NarrowCreateSprintTasksViewState
    extends State<NarrowCreateSprintTasksView> {
  final _controller = PageController(viewportFraction: 0.9);

  @override
  Widget build(BuildContext context) {
    return ExpandablePageView(
      controller: _controller,
      children: [
        NarrowSprintTasksView(model: widget.model),
        NarrowSprintTasksView(model: widget.model, backlog: false),
      ],
    );
  }
}
