import 'package:auto_route/auto_route.dart';
import 'package:dls_one/web/sprints/sprints.dart';
import 'package:dls_one/web/tasks/bloc/hover_task_bloc/hover_task_bloc.dart';
import 'package:dls_one/web/tasks/tasks.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rest_api/rest_api.dart';

@RoutePage()
class TasksRootPage extends StatelessWidget with AutoRouteWrapper{
  const TasksRootPage({
    super.key,
  });

  @override
  Widget wrappedRoute(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        // TODO extract unnecessary providers to the bottom levels
        BlocProvider(
          create: (context) => TaskListBloc(context.read<DlsRestApi>()),
        ),
        BlocProvider(
          create: (context) => HoverTaskBloc(),
        ),
        BlocProvider(
          create: (context) => SprintsBloc(
            context.read<DlsRestApi>().sprintsApi,
            context.read<DlsRestApi>(),
          )..add(const SprintsEvent.getSprints()),
        ),
      ],
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return const AutoRouter();
  }
}
