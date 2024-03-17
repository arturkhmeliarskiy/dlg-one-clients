import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/create_events/create_events.dart';
import 'package:dls_one/web/sprints/view/widgets/completed_sprint_page/right_column/comments.dart';
import 'package:dls_one/web/sprints/view/widgets/completed_sprint_page/right_column/sprint_tab_bar_navigation.dart';
import 'package:flutter/material.dart';

class CreateEventRightView extends StatelessWidget {
  const CreateEventRightView({super.key, required this.model});

  final CreateEventsModel model;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 340.w,
      child: SprintTabBarNavigation(
        firstListWidgets: CreateEventDetailsView(model: model),
        secondListWidgets: Comments(chatId: model.matrixRoom),
      ),
    );
  }
}
