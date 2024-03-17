import 'package:dls_one/web/sprints/view/sprints_view.dart';
import 'package:dls_one/web/tasks/view/web/kanban_body/kanban_body.dart';
import 'package:dls_one/web/tasks/view/web/task_list_body/tasks_table.dart';
import 'package:flutter/material.dart';

class TabBody extends StatelessWidget {
  const TabBody({
    super.key,
    this.tasks = true,
  });

  final bool tasks;

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      children: [
        if (tasks) const TaskTable() else const SprintsView(),
        const KanbanBody(),
      ],
    );
  }
}
