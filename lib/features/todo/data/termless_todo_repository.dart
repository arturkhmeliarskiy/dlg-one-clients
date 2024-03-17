import 'package:dls_one/core/bloc/pages_data.dart';
import 'package:dls_one/core/bloc/paginated_data.dart';
import 'package:dls_one/features/todo/data/todo_repositoy.dart';
import 'package:dls_one/features/todo/model/todo_model.dart';
import 'package:flutter/foundation.dart';
import 'package:rest_api/rest_api.dart';

typedef TodoModelsPage = PaginatedData<TodoModel>;
typedef TodoPages = PagesData<TodoModel>;

abstract class ITermlessTodoRepository extends ITodoReposiotry {
  /// Загрузка следующей пачки моделей независимо от их данных
  /// Список моделей прийдет отсортированный по дате.
  Future<TodoModelsPage> fetchPage(
    int page, {
    required bool includeCompleted,
  });

  /// Загрузка всех [TodoModel] до конкретной страницы [lastPage] включительно.
  /// Список моделей прийдет отсортированный по дате.
  Future<TodoPages> fetchPages(
    int lastPage, {
    required bool includeCompleted,
  });
}

class TermlessTodoRepository extends TodoReposiotry
    implements ITermlessTodoRepository {
  TermlessTodoRepository({
    required super.todoApi,
    required this.dateProvider,
  });

  final ValueGetter<DateTime> dateProvider;

  @override
  Future<TodoModelsPage> fetchPage(
    int page, {
    bool includeCompleted = true,
  }) async {
    final result = await todoApi.fetchAll(
      request: FetchTodoRequest(
        page: page,
        hasNotDate: true,
        sortByCreate: TodoCreateSortType.createDecrease,
        filteredStatus: includeCompleted ? null : TodoStatus.processing,
      ),
    );

    final date = dateProvider.call();

    final currentPage = result.meta?.currentPage ?? 0;
    final lastPage = result.meta?.lastPage ?? 0;

    return TodoModelsPage(
      data: result.data.map((e) => e.domainModel(date)).toList(),
      number: page,
      hasMore: currentPage <= lastPage,
    );
  }

  @override
  Future<TodoPages> fetchPages(
    int lastPage, {
    required bool includeCompleted,
  }) =>
      Stream.fromIterable(List.generate(lastPage, (index) => index + 1))
          .asyncMap(
            (page) => fetchPage(page, includeCompleted: includeCompleted),
          )
          .toList()
          .then(TodoPages.new);
}
