import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:dls_one/core/bloc/bloc_action_performer.dart';
import 'package:dls_one/core/bloc/pages_data.dart';
import 'package:dls_one/features/todo/data/termless_todo_repository.dart';
import 'package:dls_one/features/todo/model/todo_error.dart';
import 'package:dls_one/features/todo/model/todo_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'termless_todo_bloc.freezed.dart';

@freezed
class TermlessTodoState with _$TermlessTodoState {
  const factory TermlessTodoState.idle({
    required TodoPages? data,
    required bool showCompleted,
  }) = IdleTermlessTodoState;

  const factory TermlessTodoState.loading({
    required TodoPages? data,
    required bool showCompleted,
  }) = LoadingTermlessTodoState;

  const factory TermlessTodoState.loadingMore({
    required TodoPages? data,
    required bool showCompleted,
  }) = LoadingMoreTermlessTodoState;

  const factory TermlessTodoState.error({
    required TodoPages? data,
    required bool showCompleted,
    required TodoError error,
  }) = ErrorTermlessTodoState;

  /// Успешное обновление / создание модели [TodoModel].
  /// Необходимо для тригера рефреша списка моделей в других блоках,
  /// которые потенциально могут использовать эту же модель.
  const factory TermlessTodoState.successEditTodo({
    required TodoPages data,
    required bool showCompleted,
    required TodoModel editedModel,
  }) = SuccessEditTodoTermlessTodoState;

  const factory TermlessTodoState.success({
    required TodoPages data,
    required bool showCompleted,
  }) = SuccessTermlessTodoState;

  const TermlessTodoState._();

  TodoPages? get data => when(
        idle: (data, _) => data,
        loading: (data, _) => data,
        loadingMore: (data, _) => data,
        error: (data, _, __) => data,
        success: (data, _) => data,
        successEditTodo: (data, _, __) => data,
      );

  bool get isLoading => map(
        idle: (_) => false,
        loading: (_) => true,
        loadingMore: (_) => false,
        error: (_) => false,
        successEditTodo: (_) => false,
        success: (_) => false,
      );

  bool get isComplete => map(
        idle: (_) => false,
        loading: (_) => false,
        loadingMore: (_) => false,
        error: (_) => true,
        successEditTodo: (_) => true,
        success: (_) => true,
      );
}

@freezed
class TermlessTodoEvent with _$TermlessTodoEvent {
  const factory TermlessTodoEvent.loadNextPage() = _LoadNextPage;

  const factory TermlessTodoEvent.reload() = _Reload;

  const factory TermlessTodoEvent.create({
    required TodoModel model,
  }) = _CreateEvent;

  const factory TermlessTodoEvent.update({
    required TodoModel model,
  }) = _UpdateEvent;

  const factory TermlessTodoEvent.delete({
    required TodoModel model,
  }) = _DeleteEvent;

  const factory TermlessTodoEvent.updateFilter({
    required bool showCompleted,
  }) = _UpdateFilter;

  const TermlessTodoEvent._();
}

class TermlessTodoBloc extends Bloc<TermlessTodoEvent, TermlessTodoState>
    with BlocActionPerformer {
  TermlessTodoBloc({
    required ITermlessTodoRepository todoRepository,
  })  : _todoRepository = todoRepository,
        super(
          const TermlessTodoState.idle(data: null, showCompleted: true),
        ) {
    on<TermlessTodoEvent>(
      (event, emit) => event.map(
        reload: (event) => _onReload(event, emit),
        loadNextPage: (event) => _onLoadNextPage(event, emit),
        create: (event) => _onCreate(event, emit),
        update: (event) => _onUpdate(event, emit),
        delete: (event) => _onDelete(event, emit),
        updateFilter: (event) => _onUpdateFilter(event, emit),
      ),
      transformer: sequential(),
    );
  }

  final ITermlessTodoRepository _todoRepository;

  TodoPages get _effectiveData => state.data ?? TodoPages(const []);

  TermlessTodoState _makeLoadingState() => TermlessTodoState.loading(
        data: state.data,
        showCompleted: state.showCompleted,
      );

  TermlessTodoState _makeIdleState() => TermlessTodoState.idle(
        data: state.data,
        showCompleted: state.showCompleted,
      );

  Future<void> _onReload(
    _Reload event,
    Emitter<TermlessTodoState> emitter,
  ) =>
      performSafeAction(
        () async {
          final pages = await _todoRepository.fetchPages(
            _effectiveData.count,
            includeCompleted: state.showCompleted,
          );

          emitter.call(
            TermlessTodoState.success(
              data: pages,
              showCompleted: state.showCompleted,
            ),
          );
        },
        emitter,
        loadingState: _makeLoadingState,
        idleState: _makeIdleState,
      );

  Future<void> _onLoadNextPage(
    _LoadNextPage event,
    Emitter<TermlessTodoState> emitter,
  ) =>
      performSafeAction(
        () async {
          final actualData = _effectiveData;

          final nextPage = await _todoRepository.fetchPage(
            actualData.count + 1,
            includeCompleted: state.showCompleted,
          );

          emitter.call(
            TermlessTodoState.success(
              data: actualData.applyPage(nextPage),
              showCompleted: state.showCompleted,
            ),
          );
        },
        emitter,
        loadingState: () => _effectiveData.count == 0
            ? TermlessTodoState.loading(
                data: state.data,
                showCompleted: state.showCompleted,
              )
            : TermlessTodoState.loadingMore(
                data: _effectiveData,
                showCompleted: state.showCompleted,
              ),
        idleState: _makeIdleState,
      );

  Future<void> _onCreate(
    _CreateEvent event,
    Emitter<TermlessTodoState> emitter,
  ) =>
      performSafeAction(
        () async {
          await _todoRepository.create(event.model);

          final result = await _todoRepository.fetchPages(
            _effectiveData.count,
            includeCompleted: state.showCompleted,
          );

          emitter.call(
            TermlessTodoState.successEditTodo(
              data: result,
              editedModel: event.model,
              showCompleted: state.showCompleted,
            ),
          );
        },
        emitter,
        loadingState: _makeLoadingState,
        idleState: _makeIdleState,
      );

  Future<void> _onUpdate(
    _UpdateEvent event,
    Emitter<TermlessTodoState> emitter,
  ) =>
      performSafeAction(
        () async {
          await _todoRepository.update(event.model);

          final result = await _todoRepository.fetchPages(
            _effectiveData.count,
            includeCompleted: state.showCompleted,
          );

          emitter.call(
            TermlessTodoState.successEditTodo(
              data: result,
              editedModel: event.model,
              showCompleted: state.showCompleted,
            ),
          );
        },
        emitter,
        loadingState: _makeLoadingState,
        idleState: _makeIdleState,
      );

  Future<void> _onUpdateFilter(
    _UpdateFilter event,
    Emitter<TermlessTodoState> emitter,
  ) =>
      performSafeAction(
        () async {
          emitter.call(
            TermlessTodoState.idle(
              data: state.data,
              showCompleted: event.showCompleted,
            ),
          );

          add(const TermlessTodoEvent.reload());
        },
        emitter,
        loadingState: _makeLoadingState,
        idleState: _makeIdleState,
      );

  Future<void> _onDelete(
    _DeleteEvent event,
    Emitter<TermlessTodoState> emitter,
  ) =>
      performSafeAction(
        () async {
          await _todoRepository.delete(event.model);

          final result = await _todoRepository.fetchPages(
            _effectiveData.count,
            includeCompleted: state.showCompleted,
          );

          emitter.call(
            TermlessTodoState.success(
              data: result,
              showCompleted: state.showCompleted,
            ),
          );
        },
        emitter,
        loadingState: _makeLoadingState,
        idleState: _makeIdleState,
      );

  @override
  Future<void> handleError(
    Object error,
    StackTrace stackTrace,
    Emitter<TermlessTodoState> emitter,
  ) async {
    final TodoError error;

    if (_effectiveData.count < 1) {
      error = const TodoError.fatal();
    } else {
      error = const TodoError.common();
    }

    emitter.call(
      TermlessTodoState.error(
        data: state.data,
        error: error,
        showCompleted: state.showCompleted,
      ),
    );
    Error.throwWithStackTrace(error, stackTrace);
  }
}
