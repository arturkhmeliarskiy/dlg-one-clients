import 'package:auto_route/auto_route.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/core/widgets/dls_page_builder.dart';
import 'package:dls_one/web/create_sprint/create_sprint.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rest_api/rest_api.dart';

@RoutePage<DlsSprintModel>()
class NewSprintPage extends StatefulWidget with AutoRouteWrapper {
  const NewSprintPage({
    super.key,
    this.popOnSuccess = false,
    this.parentTitle = '',
    this.backlog = const [],
    this.sprint,
    this.onSprintSaved,
    this.superTask,
  });

  final bool popOnSuccess;
  final String parentTitle;
  final List<DlsTasks> backlog;
  final DlsTasks? superTask;
  final DlsSprintModel? sprint;
  final ValueChanged<DlsSprintModel>? onSprintSaved;

  @override
  State<NewSprintPage> createState() => _NewSprintPageState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => SprintAuthorBloc(context.read<DlsRestApi>())
        ..add(
          SprintAuthorEvent.init(
            parentTitle: parentTitle,
            backlog: backlog,
            sprint: sprint,
            superTask: superTask,
            currentUser: context.read<UsersBloc>().state.currentUser,
          ),
        ),
      child: this,
    );
  }
}

class _NewSprintPageState extends State<NewSprintPage> with NotificationsMixin {
  void _onState(SprintAuthorState state) {
    state.maybeWhen(
      orElse: () {},
      error: (message, model) {
        showDLSSnackBar(context, message);
      },
      success: (state) {
        final sprint = state.sprint;
        if (sprint == null) {
          return;
        }
        widget.onSprintSaved?.call(sprint);
        if (!widget.popOnSuccess) {
          return;
        }
        context.popRoute(sprint);
      },
      updateSuccess: (state) {
        final sprint = state.sprint;
        if (sprint == null) {
          return;
        }
        widget.onSprintSaved?.call(sprint);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return DLSPageBuilder(
      wide: WideCreateSprintView(onState: _onState),
      narrow: NarrowCreateSprintView(onState: _onState),
    );
  }
}
