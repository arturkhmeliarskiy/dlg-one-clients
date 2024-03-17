import 'package:auto_route/auto_route.dart';
import 'package:dls_one/app/router/app_router.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/create_sprint/create_sprint.dart';
import 'package:dls_one/web/create_sprint/view/mobile/src/mobile_event_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rest_api/rest_api.dart';

class NarrowCreateSprintEventList extends StatelessWidget {
  const NarrowCreateSprintEventList({required this.model, super.key});

  final SprintAuthorModel model;

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<SprintAuthorBloc>();
    final events = model.events;
    return Column(
      children: [
        SizedBox(
          height: 24.h,
          child: WebDlsLabelField(
            icon: Assets.icons.calender.path,
            label: S.current.events,
            actions: [
              DlsCircleAddButton(
                onTap: () async {
                  // TODO uncomment if we con not create event without sprint
                  // if (model.sprint == null) {
                  //   return;
                  // }
                  final event = await context.router.push<TaskEventModel>(
                    CreateEventRoute(
                      popOnSuccess: true,
                      sprint: model.sprint,
                    ),
                  );
                  if (event == null) {
                    return;
                  }
                  final events = model.events.toList()..add(event);
                  bloc.add(
                    SprintAuthorEvent.updateModel(
                      model.copyWith(events: events),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
        if (model.events.isNotEmpty)
          DlsPadding.only(
            top: 16.h,
            child: Column(
              children: List.generate(
                events.length,
                (index) {
                  final item = events[index];
                  return GestureDetector(
                    onTap: () {
                      // TODO config updating data after changing event
                      context.router.push(CreateEventRoute(event: item));
                    },
                    behavior: HitTestBehavior.opaque,
                    child: Padding(
                      padding: index < events.length - 1
                          ? EdgeInsets.only(bottom: 8.h)
                          : EdgeInsets.zero,
                      child: MobileEventItem(
                        model: item,
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
      ],
    );
  }
}
