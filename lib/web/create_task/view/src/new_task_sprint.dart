import 'package:auto_route/auto_route.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/core/widgets/dls_page_builder.dart';
import 'package:dls_one/web/create_task/create_task.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rest_api/rest_api.dart';

@RoutePage<DlsTasks>()
class NewTaskSprintPage extends StatefulWidget with AutoRouteWrapper {
  const NewTaskSprintPage({
    super.key,
    this.status,
    this.task,
    this.parentTask,
    this.popOnSuccess = false,
    this.onTaskSaved,
    this.title,
  });

  final bool popOnSuccess;
  final DlsTasks? task;
  final DlsTasks? parentTask;
  final ValueChanged<DlsTasks>? onTaskSaved;
  final TaskStatusType? status;
  final String? title;

  @override
  State<NewTaskSprintPage> createState() => _NewTaskSprintPageState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => TaskBloc(context.read<DlsRestApi>())
        ..add(
          TaskEvent.init(
            task: task,
            parentTask: parentTask,
            status: status,
            title: title,
            currentUser: context.read<UsersBloc>().state.currentUser,
          ),
        ),
      child: this,
    );
  }
}

class _NewTaskSprintPageState extends State<NewTaskSprintPage>
    with NotificationsMixin {
  void _onState(TaskState state) {
    state.maybeWhen(
      null,
      orElse: () {},
      error: (message, model) => showDLSSnackBar(context, message),
      success: (model) {
        final task = model.currentTask;
        if (task == null) {
          return;
        }
        widget.onTaskSaved?.call(task);
        if (!widget.popOnSuccess) {
          return;
        }
        context.router.pop(task);
      },
      updateSuccess: (model) {
        final task = model.currentTask;
        if (task == null) {
          return;
        }
        widget.onTaskSaved?.call(task);
      },
      deleteSuccess: (model) {
        context.router.pop();
        showDLSSnackBar(context, S.current.taskDeleteSuccess);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return DLSPageBuilder(
      wide: NewTaskSprintWeb(onState: _onState, task: widget.task),
      narrow: NewTaskSprintMobile(onState: _onState),
    );
  }
}
