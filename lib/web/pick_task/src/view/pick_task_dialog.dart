import 'package:auto_route/auto_route.dart';
import 'package:dls_one/core/widgets/dls_page_builder.dart';
import 'package:dls_one/web/pick_task/pick_task.dart';
import 'package:dls_one/web/tasks/bloc/hover_task_bloc/hover_task_bloc.dart';
import 'package:dls_one/web/tasks/bloc/task_list_bloc/task_list_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rest_api/rest_api.dart';

@RoutePage<DlsTasks>()
class PickTaskDialogPage extends StatelessWidget with AutoRouteWrapper {
  const PickTaskDialogPage({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
          TaskListBloc(context.read<DlsRestApi>())
            ..add(const TaskListEvent.init()),
        ),
        BlocProvider(
          create: (context) => HoverTaskBloc(),
        ),
      ],
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return const DLSPageBuilder(
      wide: WidePickTaskPage(),
      narrow: NarrowPickTaskPage(),
    );
  }
}
