import 'package:auto_route/auto_route.dart';
import 'package:dls_one/app/router/app_router.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/core/widgets/dls_loader/dls_loader_scope.dart';
import 'package:dls_one/web/create_task/create_task.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rest_api/rest_api.dart';

class NewTaskSprintWeb extends StatelessWidget {
  const NewTaskSprintWeb({
    required this.onState,
    this.task,
    super.key,
  });

  final ValueChanged<TaskState> onState;
  final DlsTasks? task;

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<TaskBloc>();
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: WebSideView(
        topChild: BlocConsumer<TaskBloc, TaskState>(
          listener: (context, state) {
            onState(state);
          },
          builder: (context, state) {
            final task = state.model.currentTask ?? this.task;
            if (task == null) {
              final title = state.model.title;
              return AppBarTaskDefault(
                state: state,
                isActive: title.isNotEmpty,
                onSave: () => bloc.add(const TaskEvent.saveTask()),
              );
            }
            return AppBarTaskCompeted(
              task: state.model.currentTask ?? task,
              state: state,
            );
          },
        ),
        mainChild: BlocBuilder<TaskBloc, TaskState>(
          buildWhen: (prev, current) => !current.isLoading,
          builder: (context, state) {
            final task = state.model.currentTask ?? this.task;
            final model = state.model;
            return MainColumnNewTask(
              task: task,
              state: state,
              onChangeTitle: (value) {
                bloc
                  ..add(TaskEvent.updateModel(model.copyWith(title: value)))
                  ..add(TaskEvent.updateTask(DlsTask(title: value)));
              },
              onChangeDescription: (value) {
                bloc
                  ..add(
                    TaskEvent.updateModel(model.copyWith(description: value)),
                  )
                  ..add(TaskEvent.updateTask(DlsTask(description: value)));
              },
              onActive: () async {
                final result = await context.router.push<DlsSprintModel>(
                  NewSprintRoute(
                    popOnSuccess: true,
                    parentTitle: state.model.title,
                    backlog: state.model.subtasks,
                    superTask: state.model.currentTask,
                  ),
                );
                if (result == null) {
                  return;
                }
                final list = model.sprints.toList()..add(result);
                final stateModel = model.copyWith(sprints: list);
                bloc
                  ..add(TaskEvent.updateModel(stateModel))
                  ..add(
                    TaskEvent.updateTask(
                      DlsTask(sprints: stateModel.toRequest().sprints),
                    ),
                  );
              },
              onCreateEvent: () async {
                final event = await context.router.push<TaskEventModel>(
                  CreateEventRoute(popOnSuccess: true),
                );
                if (event == null) {
                  return;
                }
                final events = model.events.toList()..add(event);
                final stateModel = model.copyWith(events: events);
                bloc
                  ..add(TaskEvent.updateModel(stateModel))
                  ..add(
                    TaskEvent.updateTask(
                      DlsTask(events: stateModel.toRequest().events),
                    ),
                  );
              },
            );
          },
        ),
        rightChild: BlocBuilder<TaskBloc, TaskState>(
          buildWhen: (prev, current) => !current.isLoading,
          builder: (context, state) {
            final task = state.model.currentTask ?? this.task;
            final model = state.model;

            return RightColumnNewTask(
              task: task,
              state: state,
              onChangeExpiredAt: (value) {
                bloc
                  ..add(
                    TaskEvent.updateModel(model.copyWith(expiredAt: value)),
                  )
                  ..add(TaskEvent.updateTask(DlsTask(expiredAt: value)));
              },
              onChangeStartAt: (value) {
                bloc
                  ..add(TaskEvent.updateModel(model.copyWith(startAt: value)))
                  ..add(TaskEvent.updateTask(DlsTask(startAt: value)));
              },
              onChangeStoryPoints: (value) {
                bloc
                  ..add(
                    TaskEvent.updateModel(model.copyWith(storyPoints: value)),
                  )
                  ..add(TaskEvent.updateTask(DlsTask(storyPoints: value)));
              },
              onChangeDuration: (value) {
                final stateModel = model.copyWith(daysCount: value);
                bloc
                  ..add(TaskEvent.updateModel(stateModel))
                  ..add(TaskEvent.updateTask(DlsTask(duration: value)));
              },
            );
          },
        ),
        overlayBuilder: (child) {
          return DLSLoaderScope(
            child: BlocListener<TaskBloc, TaskState>(
              listenWhen: (prev, current) => current.isLoading,
              listener: (context, state) {
                DLSLoaderScope.showLoaderOf(
                  context,
                  future:
                      bloc.stream.firstWhere((element) => !element.isLoading),
                );
              },
              child: child,
            ),
          );
        },
      ),
    );
  }
}
