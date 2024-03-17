import 'package:collection/collection.dart';
import 'package:dls_one/web/sprints/sprints.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rest_api/rest_api.dart';

part 'sprints_bloc.freezed.dart';

part 'sprints_event.dart';

part 'sprints_state.dart';

class SprintsBloc extends Bloc<SprintsEvent, SprintsState> {
  SprintsBloc(this._sprintsApi, this._dlsRestApi)
      : super(const SprintsState()) {
    // TODO add Error handler
    on<SprintsEvent>(
      (event, emit) => event.map(
        getSprints: (event) => _getSprints(event, emit),
        statusClick: (event) => _statusClick(event, emit),
        setCurrentSprint: (event) => _setCurrentSprint(event, emit),
        updateSprint: (event) => _updateSprint(event, emit),
      ),
    );
  }

  final SprintsApi _sprintsApi;
  final DlsRestApi _dlsRestApi;

  Future<void> _getSprints(
    _GetSprints event,
    Emitter<SprintsState> emit,
  ) async {
    try {
      if (event.withLoading) {
        emit(state.toLoading());
      }
      final page = event.page;
      final request =
          GetSprintsRequest(page: page, view: GetSprintsViewType.withTasks);
      final response = await _sprintsApi.getSprints(request: request);
      final list = [
        if (page != null) ...state.model.data,
        ...response.data,
      ];
      var currentSprint = state.model.currentSprint;
      if (currentSprint != null && !list.contains(currentSprint)) {
        currentSprint = list.firstWhereOrNull((e) => e.id == currentSprint!.id);
      }
      emit(
        SprintsState(
          model: SprintsModel(
            data: list,
            openStatuses: page == null && event.withLoading
                ? []
                : state.model.openStatuses,
            currentSprint: currentSprint,
            meta: response.meta,
          ),
        ),
      );
      if (state.model.currentSprint != null) {
        return;
      }
      // TODO set by Status
      add(SprintsEvent.setCurrentSprint(state.model.data.first));
    } catch (e) {
      // TODO add error handler
      emit(state.toError(e.toString()));
      rethrow;
    }
  }

  Future<void> _statusClick(
    _StatusClick event,
    Emitter<SprintsState> emit,
  ) async {
    final list = state.model.openStatuses.toList();
    final status = event.status;
    if (list.contains(status)) {
      list.remove(status);
    } else {
      list.add(status);
    }
    emit(SprintsState(model: state.model.copyWith(openStatuses: list)));
  }

  Future<void> _setCurrentSprint(
    _SetCurrentSprint event,
    Emitter<SprintsState> emit,
  ) async {
    final sprint = event.sprint;
    try {
      emit(state.toLoading());
      final response = await _sprintsApi.getSprintById(sprint.id);
      final list = state.model.data.map((e) {
        if (e.id == response.id) {
          return response;
        }
        return e;
      }).toList();
      emit(
        SprintsState(
          model: state.model.copyWith(
            currentSprint: response,
            openStatuses: [],
            data: list,
          ),
        ),
      );
    } catch (e) {
      emit(state.toError(e.toString()));
      rethrow;
    }
  }

  void _updateSprint(_UpdateSprint event, Emitter<SprintsState> emit) {
    final sprint = event.sprint;
    final sprints = state.model.data.toList();
    final index = sprints.indexWhere((e) => e.id == sprint.id);
    sprints[index] = sprint;
    final currentSprint = state.model.currentSprint?.id == sprint.id
        ? sprint
        : state.model.currentSprint;
    emit(
      SprintsState(
        model: state.model.copyWith(
          data: sprints,
          currentSprint: currentSprint,
        ),
      ),
    );
  }
}
