import 'package:auto_route/auto_route.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/core/widgets/dls_page_builder.dart';
import 'package:dls_one/web/create_events/create_events.dart';
import 'package:dls_one/web/create_events/widget/web/wide_create_event_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rest_api/rest_api.dart';

@RoutePage<TaskEventModel>()
class CreateEventPage extends StatelessWidget with AutoRouteWrapper {
  const CreateEventPage({
    this.popOnSuccess = false,
    this.title,
    this.event,
    this.task,
    this.startAt,
    this.endAt,
    this.sprint,
    this.onDelete,
    super.key,
  });

  final bool popOnSuccess;
  final String? title;
  final TaskEventModel? event;
  final DlsTasks? task;
  final DateTime? startAt;
  final DateTime? endAt;
  final DlsSprintModel? sprint;
  final VoidCallback? onDelete;

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<CreateEventsBloc>(
      create: (context) => CreateEventsBloc(
        context.read(),
        FilePickerService(),
      )..add(
          CreateEventsEvent.init(
            title: title,
            currentEvent: event,
            parentTask: task,
            day: startAt?.byDay(),
            startAt: startAt?.timeOfDay(),
            endAt: endAt?.timeOfDay(),
            parentSprint: sprint,
            currentUser: context.read<UsersBloc>().state.currentUser,
          ),
        ),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return DLSPageBuilder(
      wide: WideCreateEventView(
        popOnSuccess: popOnSuccess,
        onDelete: onDelete,
      ),
      narrow: NarrowCreateEventView(popOnSuccess: popOnSuccess),
    );
  }
}
