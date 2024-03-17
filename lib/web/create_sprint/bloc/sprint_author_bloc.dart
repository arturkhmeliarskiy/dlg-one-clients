import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:dls_one/web/sprints/sprints.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rest_api/rest_api.dart';

part 'sprint_author_bloc.freezed.dart';

part 'sprint_author_event.dart';

part 'sprint_author_state.dart';

class SprintAuthorBloc extends Bloc<SprintAuthorEvent, SprintAuthorState> {
  SprintAuthorBloc(
    this._restApi, {
    ValueGetter<DateTime>? dateProvider,
  }) : super(const SprintAuthorState.idle()) {
    this.dateProvider = dateProvider ?? DateTime.now;
    on<SprintAuthorEvent>(
      (event, emit) => event.map<Future<void>>(
        init: (event) => _init(event, emit),
        fetch: (event) => _fetch(event, emit),
        updateSubtask: (event) => _updateSubtask(event, emit),
        updateModel: (event) => _updateModel(event, emit),
        updateDuration: (event) => _updateDuration(event, emit),
        save: (event) => _save(event, emit),
        finish: (event) => _finish(event, emit),
      ),
      transformer: sequential(),
    );
  }

  late final ValueGetter<DateTime> dateProvider;
  final DlsRestApi _restApi;

  void _updateSprint() {
    if (state.model.sprint == null) {
      return;
    }
    // TODO config only saving with changing parameters
    add(const SprintAuthorEvent.save());
  }

  Future<void> _init(_Init event, Emitter<SprintAuthorState> emit) async {
    final sprint = event.sprint;
    if (sprint != null) {
      emit(
        SprintAuthorState.idle(
          model: sprint
              .toSprintAuthorModel()
              .copyWith(parentTitle: event.parentTitle),
        ),
      );
      add(const SprintAuthorEvent.fetch());
      return;
    }
    emit(
      SprintAuthorState.idle(
        model: state.model.copyWith(
          author: event.currentUser,
          parentTitle: event.parentTitle,
          date: DateTime.now(),
          superTask: event.superTask,
        ),
      ),
    );
    add(
      const SprintAuthorEvent.updateDuration(
        duration: SprintDurationType.oneWeek,
      ),
    );

    final subtasks = <TaskStatusType, List<DlsTasks>>{
      TaskStatusType.atWork: [],
      TaskStatusType.inTheQueue: [],
    };
    final sprintSubtasks = <TaskStatusType, List<DlsTasks>>{
      TaskStatusType.atWork: [],
      TaskStatusType.inTheQueue: [],
    };
    for (final i in event.backlog) {
      final status = i.status;
      if (status == null) {
        continue;
      }
      final list = subtasks[status] ?? [];
      subtasks[status] = list..add(i);
      if (!sprintSubtasks.containsKey(status)) {
        sprintSubtasks[status] = [];
      }
    }

    emit(
      SprintAuthorState.idle(
        model: state.model.copyWith(
          backlogSubtasks: subtasks,
          sprintSubtasks: sprintSubtasks,
        ),
      ),
    );
  }

  Future<void> _fetch(_Fetch event, Emitter<SprintAuthorState> emit) async {
    final sprint = state.model.sprint;
    if (sprint == null) {
      return;
    }
    if (!event.update) {
      emit(SprintAuthorState.loading(model: state.model));
    }
    try {
      final result = await _restApi.sprintsApi.getSprintById(sprint.id);
      DlsTasks? task;
      final superTask = result.superTask;
      if (superTask != null) {
        task = await _restApi.getTask(superTask.id);
      }
      final model = result
          .toSprintAuthorModel(task)
          .copyWith(parentTitle: state.model.parentTitle);
      if (event.update) {
        emit(SprintAuthorState.updateSuccess(model: model));
      } else {
        emit(SprintAuthorState.idle(model: model));
      }
    } catch (e) {
      emit(SprintAuthorState.error(e.toString(), model: state.model));
      rethrow;
    }
  }

  Future<void> _updateModel(
    _UpdateModel event,
    Emitter<SprintAuthorState> emit,
  ) async {
    emit(SprintAuthorState.idle(model: event.model));
    _updateSprint();
  }

  Future<void> _updateSubtask(
    _UpdateSubtask event,
    Emitter<SprintAuthorState> emit,
  ) async {
    final backlog = {...state.model.backlogSubtasks};
    final sprint = {...state.model.sprintSubtasks};

    final backlogList = backlog[event.status]?.toList() ?? [];
    final sprintList = sprint[event.status]?.toList() ?? [];

    if (event.backlog) {
      backlogList.remove(event.item);
      sprintList.add(event.item);
    } else {
      sprintList.remove(event.item);
      backlogList.add(event.item);
    }

    backlog[event.status] = backlogList;
    sprint[event.status] = sprintList;

    emit(
      SprintAuthorState.idle(
        model: state.model.copyWith(
          backlogSubtasks: backlog,
          sprintSubtasks: sprint,
        ),
      ),
    );
    _updateSprint();
  }

  Future<void> _updateDuration(
    _UpdateDuration event,
    Emitter<SprintAuthorState> emit,
  ) async {
    var endDate = event.endDate;
    if (event.duration != SprintDurationType.custom) {
      final date = state.model.date;
      endDate = date?.add(event.duration.duration() ?? Duration.zero);
      emit(
        SprintAuthorState.idle(
          model: state.model.copyWith(
            duration: event.duration,
            endDate: endDate,
          ),
        ),
      );
      _updateSprint();
      return;
    }
    if (endDate == null) {
      emit(
        SprintAuthorState.idle(
          model: state.model.copyWith(duration: event.duration),
        ),
      );
      _updateSprint();
      return;
    }
    emit(
      SprintAuthorState.idle(
        model: state.model.copyWith(duration: event.duration, endDate: endDate),
      ),
    );
    _updateSprint();
  }

  Future<void> _save(_Save event, Emitter<SprintAuthorState> emit) async {
    try {
      final request = state.model.toRequest();
      if (request == null) {
        return;
      }
      final currentSprint = state.model.sprint;
      late DlsSprintModel sprint;
      if (currentSprint == null) {
        emit(SprintAuthorState.loading(model: state.model));
        sprint = await _restApi.sprintsApi.createSprint(request);
        emit(
          SprintAuthorState.success(
            model: state.model.copyWith(sprint: sprint),
          ),
        );
        return;
      }
      sprint = await _restApi.sprintsApi.updateSprint(
        currentSprint.id,
        request,
      );
      add(const SprintAuthorEvent.fetch(update: true));
    } catch (e) {
      emit(SprintAuthorState.error(e.toString(), model: state.model));
      rethrow;
    }
  }

  Future<void> _finish(_Finish event, Emitter<SprintAuthorState> emit) async {
    final currentSprint = state.model.sprint;
    if (state.loading || currentSprint == null) {
      return;
    }
    emit(SprintAuthorState.loading(model: state.model));
    try {
      // TODO config after finishing new sprint logic
      final sprint = await _restApi.sprintsApi.finishSprint(currentSprint.id);
      emit(
        SprintAuthorState.updateSuccess(
          model: state.model.copyWith(
            sprint: currentSprint.copyWith(status: SprintStatus.finished),
            status: SprintStatus.finished,
          ),
        ),
      );
    } catch (e) {
      emit(SprintAuthorState.error(e.toString(), model: state.model));
      rethrow;
    }
  }
}
