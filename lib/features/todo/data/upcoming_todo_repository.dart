import 'package:collection/collection.dart';
import 'package:dls_one/core/bloc/pages_data.dart';
import 'package:dls_one/core/bloc/paginated_data.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/features/todo/data/todo_repositoy.dart';
import 'package:dls_one/features/todo/model/todo_model.dart';
import 'package:flutter/foundation.dart';
import 'package:rest_api/rest_api.dart';

typedef TodoModelsPage = PaginatedData<TodoModel>;
typedef TodoPages = PagesData<TodoModel>;

abstract class IUpcomingTodoRepository extends ITodoReposiotry {
  /// Загрузка всех [TodoModel] до [date] включительно.
  /// Список моделей прийдет отсортированный по дате.
  Future<List<TodoModelsPage>> fetchByDate(
    DateTime date,
    int actualPage, {
    required bool includeCompleted,
  });

  /// Загрузка всех [TodoModel] до конкретной страницы [lastPage] включительно.
  /// Список моделей прийдет отсортированный по дате.
  Future<TodoPages> fetchPages(
    int lastPage, {
    required bool includeCompleted,
  });
}

class UpcomingTodoRepository extends TodoReposiotry
    implements IUpcomingTodoRepository {
  UpcomingTodoRepository({
    required super.todoApi,
    required this.dateProvider,
  });

  final ValueGetter<DateTime> dateProvider;

  Future<TodoModelsPage> _fetchPage(
    int page, {
    required bool includeCompleted,
  }) async {
    final result = await todoApi.fetchAll(
      request: FetchTodoRequest(
        page: page,
        // Ждем доработку от бэка по фильтру hasNotDate
        datesRange: [
          DateTime.fromMicrosecondsSinceEpoch(0),
          DateTime.utc(275760, 09, 13),
        ],
        sortByStart: TodoStartSortType.startIncrease,
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
            (page) => _fetchPage(page, includeCompleted: includeCompleted),
          )
          .toList()
          .then(TodoPages.new);

  @override
  Future<List<TodoModelsPage>> fetchByDate(
    DateTime date,
    int actualPage, {
    required bool includeCompleted,
  }) async {
    final result = <TodoModelsPage>[];

    TodoModelsPage? loadedPage;

    int currentPage() => (loadedPage?.number ?? actualPage) + 1;

    while (loadedPage == null ||
        (!loadedPage.hasDate(date) && loadedPage.hasMore)) {
      loadedPage =
          await _fetchPage(currentPage(), includeCompleted: includeCompleted);
      result.add(loadedPage);
    }
    return result;
  }
}

extension on TodoModelsPage {
  bool hasDate(DateTime date) {
    return data.firstWhereOrNull((model) {
          final startDay = model.time?.startTime.startOfDay();

          if (startDay == null) {
            return false;
          }

          return startDay == date || startDay.isBefore(date);
        }) !=
        null;
  }
}
