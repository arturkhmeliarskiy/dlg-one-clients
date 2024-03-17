import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/create_sprint/view/mobile/src/mobile_event_item.dart';
import 'package:dls_one/web/create_task/bloc/task_bloc.dart';
import 'package:dls_one/web/create_task/view/src/task_horizontal_avatar_user.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rest_api/rest_api.dart';

class CreateTaskMobileEventsList extends StatelessWidget {
  const CreateTaskMobileEventsList({
    required this.onTap,
    this.events = const [],
    super.key,
  });

  final List<TaskEventModel> events;
  final ValueSetter<TaskEventModel> onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(events.length, (index) {
        final item = events[index];
        return GestureDetector(
          onTap: () => onTap(item),
          behavior: HitTestBehavior.opaque,
          child: Padding(
            padding: index < events.length - 1
                ? EdgeInsets.only(bottom: 8.h)
                : EdgeInsets.zero,
            child: MobileEventItem(model: events[index]),
          ),
        );
      }),
    );
  }
}
