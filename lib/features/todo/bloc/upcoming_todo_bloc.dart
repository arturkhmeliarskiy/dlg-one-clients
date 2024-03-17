import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:dls_one/core/bloc/bloc_action_performer.dart';
import 'package:dls_one/features/todo/data/upcoming_todo_repository.dart';
import 'package:dls_one/features/todo/model/todo_error.dart';
import 'package:dls_one/features/todo/model/todo_model.dart';
import 'package:dls_one/features/todo/model/upcoming_state_data.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'upcoming_todo_bloc.freezed.dart';

@freezed
class UpcomingTodoState with _$UpcomingTodoState {
  const factory UpcomingTodoState.idle({
    required UpcomingStateData? data,
  }) = IdleUpcomingTodoState;

  const factory UpcomingTodoState.loading({
    required UpcomingStateData? data,
  }) = LoadingUpcomingTodoState;

  const factory UpcomingTodoState.loadingMore({
    required UpcomingStateData? data,
  }) = LoadingMoreUpcomingTodoState;

  const factory UpcomingTodoState.error({
    required UpcomingStateData? data,
    required TodoError error,
  }) = ErrorUpcomingTodoState;

  /// Успешное обновление / создание модели [TodoModel].
  /// Необходимо для тригера рефреша списка моделей в других блоках,
  /// которые потенциально могут использовать эту же модель.
  const factory UpcomingTodoState.successEditTodo({
    required UpcomingStateData data,
    required TodoModel editedModel,
  }) = SuccessEditTodoUpcomingTodoState;

  const factory UpcomingTodoState.successLoadedByDate({
    required UpcomingStateData data,
    required DateTime date,
  }) = SuccessLoadedByDateUpcomingTodoState;

  const factory UpcomingTodoState.success({
    required UpcomingStateData data,
  }) = SuccessUpcomingTodoState;

  const UpcomingTodoState._();

  UpcomingStateData? get data => when(
        idle: (data) => data,
        loading: (data) => data,
        loadingMore: (data) => data,
        error: (data, _) => data,
        success: (data) => data,
        successEditTodo: (data, _) => data,
        successLoadedByDate: (data, _) => data,
      );

  bool get isLoading => map(
        idle: (_) => false,
        loading: (_) => true,
        loadingMore: (_) => false,
        error: (_) => false,
        successEditTodo: (_) => false,
        success: (_) => false,
        successLoadedByDate: (_) => false,
      );

  bool get isComplete => map(
        idle: (_) => false,
        loading: (_) => false,
        loadingMore: (_) => false,
        error: (_) => true,
        successEditTodo: (_) => true,
        successLoadedByDate: (_) => true,
        success: (_) => true,
      );
}

@freezed
class UpcomingTodoEvent with _$UpcomingTodoEvent {
  const factory UpcomingTodoEvent.reload() = _Reload;

  const factory UpcomingTodoEvent.create({
    required TodoModel model,
  }) = _CreateEvent;

  const factory UpcomingTodoEvent.update({
    required TodoModel model,
  }) = _UpdateEvent;

  const factory UpcomingTodoEvent.delete({
    required TodoModel model,
  }) = _DeleteEvent;

  const factory UpcomingTodoEvent.loadByDate({
    required DateTime date,
  }) = _LoadByDate;

  const factory UpcomingTodoEvent.updateFilter({
    required bool showCompleted,
  }) = _UpdateFilter;

  const UpcomingTodoEvent._();
}

class UpcomingTodoBloc extends Bloc<UpcomingTodoEvent, UpcomingTodoState>
    with BlocActionPerformer {
  UpcomingTodoBloc({
    required IUpcomingTodoRepository todoRepository,
  })  : _todoRepository = todoRepository,
        super(const UpcomingTodoState.idle(data: null)) {
    on<UpcomingTodoEvent>(
      (event, emit) => event.map(
        reload: (event) => _onReload(event, emit),
        create: (event) => _onCreate(event, emit),
        update: (event) => _onUpdate(event, emit),
        delete: (event) => _onDelete(event, emit),
        updateFilter: (event) => _onUpdateFilter(event, emit),
        loadByDate: (event) => _onLoadByDate(event, emit),
      ),
      transformer: sequential(),
    );
  }

  final IUpcomingTodoRepository _todoRepository;

  UpcomingTodoState _makeLoadingState() =>
      UpcomingTodoState.loading(data: state.data);

  UpcomingTodoState _makeIdleState() =>
      UpcomingTodoState.idle(data: state.data);

  late final _initialStateData = UpcomingStateData(
    pages: TodoPages(const []),
    // Моковое значение даты, специально выставлено маленькое, чтобы
    // всегда требовалось догружать данные.
    loadedDateTime: DateTime(2000),
    showCompleted: true,
  );

  UpcomingStateData get _effectiveData => state.data ?? _initialStateData;

  Future<void> _onReload(
    _Reload event,
    Emitter<UpcomingTodoState> emitter,
  ) =>
      performSafeAction(
        () async {
          final pages = await _todoRepository.fetchPages(
            _effectiveData.pages.count,
            includeCompleted: _effectiveData.showCompleted,
          );

          emitter.call(
            UpcomingTodoState.success(
              data: _effectiveData.copyWith(pages: pages),
            ),
          );
        },
        emitter,
        loadingState: _makeLoadingState,
        idleState: _makeIdleState,
      );

  Future<void> _onUpdateFilter(
    _UpdateFilter event,
    Emitter<UpcomingTodoState> emitter,
  ) =>
      performSafeAction(
        () async {
          final actualData = _effectiveData.copyWith(
            showCompleted: event.showCompleted,
          );

          emitter.call(UpcomingTodoState.success(data: actualData));
          add(const UpcomingTodoEvent.reload());
        },
        emitter,
        loadingState: _makeLoadingState,
        idleState: _makeIdleState,
      );

  Future<void> _onLoadByDate(
    _LoadByDate event,
    Emitter<UpcomingTodoState> emitter,
  ) =>
      performSafeAction(
        () async {
          final actualData = _effectiveData;

          if (event.date.isBefore(actualData.loadedDateTime)) {
            return;
          }

          if (!_effectiveData.pages.hasMore) {
            emitter.call(
              UpcomingTodoState.success(
                data: _effectiveData.copyWith(
                  loadedDateTime: event.date.add(const Duration(days: 30)),
                ),
              ),
            );
          }

          final nextPages = await _todoRepository.fetchByDate(
            event.date,
            actualData.pages.count,
            includeCompleted: actualData.showCompleted,
          );

          var resultData = actualData.copyWith(loadedDateTime: event.date);

          for (final page in nextPages) {
            resultData =
                resultData.copyWith(pages: resultData.pages.applyPage(page));
          }

          emitter.call(
            UpcomingTodoState.successLoadedByDate(
              data: resultData,
              date: event.date,
            ),
          );
        },
        emitter,
        loadingState: () => _effectiveData.pages.count == 0
            ? UpcomingTodoState.loading(data: state.data)
            : UpcomingTodoState.loadingMore(data: _effectiveData),
        idleState: _makeIdleState,
      );

  Future<void> _onCreate(
    _CreateEvent event,
    Emitter<UpcomingTodoState> emitter,
  ) =>
      performSafeAction(
        () async {
          await _todoRepository.create(event.model);

          final pages = await _todoRepository.fetchPages(
            _effectiveData.pages.count,
            includeCompleted: _effectiveData.showCompleted,
          );

          emitter.call(
            UpcomingTodoState.successEditTodo(
              data: _effectiveData.copyWith(pages: pages),
              editedModel: event.model,
            ),
          );
        },
        emitter,
        loadingState: _makeLoadingState,
        idleState: _makeIdleState,
      );

  Future<void> _onUpdate(
    _UpdateEvent event,
    Emitter<UpcomingTodoState> emitter,
  ) =>
      performSafeAction(
        () async {
          await _todoRepository.update(event.model);

          final pages = await _todoRepository.fetchPages(
            _effectiveData.pages.count,
            includeCompleted: _effectiveData.showCompleted,
          );

          emitter.call(
            UpcomingTodoState.successEditTodo(
              data: _effectiveData.copyWith(pages: pages),
              editedModel: event.model,
            ),
          );
        },
        emitter,
        loadingState: _makeLoadingState,
        idleState: _makeIdleState,
      );

  Future<void> _onDelete(
    _DeleteEvent event,
    Emitter<UpcomingTodoState> emitter,
  ) =>
      performSafeAction(
        () async {
          await _todoRepository.delete(event.model);

          final pages = await _todoRepository.fetchPages(
            _effectiveData.pages.count,
            includeCompleted: _effectiveData.showCompleted,
          );

          emitter.call(
            UpcomingTodoState.success(
              data: _effectiveData.copyWith(pages: pages),
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
    Emitter<UpcomingTodoState> emitter,
  ) async {
    final TodoError todoError;

    if (_effectiveData.pages.count < 1) {
      todoError = const TodoError.fatal();
    } else {
      todoError = const TodoError.common();
    }

    emitter.call(
      UpcomingTodoState.error(
        data: state.data,
        error: todoError,
      ),
    );
    Error.throwWithStackTrace(error, stackTrace);
  }
}
