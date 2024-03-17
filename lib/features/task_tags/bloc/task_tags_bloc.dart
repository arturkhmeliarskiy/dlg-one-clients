import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:dls_one/core/bloc/bloc_action_performer.dart';
import 'package:dls_one/features/task_tags/task_tags.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rest_api/rest_api.dart';

part 'task_tags_event.dart';

part 'task_tags_state.dart';

part 'task_tags_bloc.freezed.dart';

class TaskTagsBloc extends Bloc<TaskTagsEvent, TaskTagsState>
    with BlocActionPerformer {
  TaskTagsBloc(this._tagsApi) : super(const TaskTagsState.idle()) {
    on<TaskTagsEvent>(
      (event, emit) => performSafeAction(
        () => event.map(
          fetch: (event) => _fetch(event, emit),
          addTag: (event) => _addTag(event, emit),
        ),
        emit,
      ),
      transformer: sequential(),
    );

    add(const TaskTagsEvent.fetch());
  }

  final TasksTagsApi _tagsApi;

  @override
  Future<void> handleError(
    Object error,
    StackTrace stackTrace,
    Emitter<TaskTagsState> emitter,
  ) async {
    emitter(state.toError(error.toString()));
    Error.throwWithStackTrace(error, stackTrace);
  }

  Future<void> _fetch(_Fetch event, Emitter<TaskTagsState> emit) async {
    if (event.withLoading) {
      emit(state.toLoading());
    }
    final tags = await _tagsApi.getTags(
      GetTagsRequest(title: event.title, page: event.page),
    );
    emit(
      state.toState().copyWith(
            model: state.model.copyWith(
              title: (event.title?.isEmpty ?? true) ? null : event.title,
              tags: tags.data,
              currentPage: tags.meta?.currentPage,
              lastPage: tags.meta?.lastPage,
            ),
          ),
    );
  }

  Future<void> _addTag(_AddTag event, Emitter<TaskTagsState> emit) async {
    emit(state.toLoading());
    final request = CreateTagRequest(title: event.title);
    final result = await _tagsApi.createTag(request);
    emit(state.toTagAdded(result));
    add(TaskTagsEvent.fetch(title: state.model.title, withLoading: false));
  }
}
