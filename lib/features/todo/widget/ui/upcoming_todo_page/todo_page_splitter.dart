import 'package:dls_one/core/core.dart';
import 'package:dls_one/features/todo/data/upcoming_todo_repository.dart';
import 'package:dls_one/features/todo/model/todo_model.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rest_api/rest_api.dart';

part 'todo_page_splitter.freezed.dart';

@freezed
class TodoSection with _$TodoSection {
  const factory TodoSection.overdue({
    required List<TodoModel> models,
  }) = OverdueTodoSection;

  const factory TodoSection.date({
    required List<TodoModel> models,
    required DateTime date,
  }) = DateTodoSection;
}

class TodoSectionBuilder {
  TodoSectionBuilder({
    required this.startDateProvider,
    required this.maxDate,
  });

  final ValueGetter<DateTime> startDateProvider;

  /// Максимальная дата для секции.
  final DateTime maxDate;

  /// Генерирует секции по дням и просроченные дела.
  /// [lastDate] ограничено сверху значением [maxDate].
  /// В [pages] ожидаются модели, отсортированные по дате начала.
  List<TodoSection> build({
    required TodoPages pages,
    required DateTime lastDate,
  }) {
    final startSectionDate = startDateProvider.call().startOfDay();
    final lastSectionDate =
        (lastDate.isAfter(maxDate) ? maxDate : lastDate).startOfDay();

    final result = <TodoSection>[];

    final models = pages.data.toList();

    final overdueSection = TodoSection.overdue(
      models: models
          .where(
            (element) =>
                !element.isCompleted && (element.time?.isOverdue ?? false),
          )
          .toList(),
    );

    if (overdueSection.models.isNotEmpty) {
      result.add(overdueSection);
    }

    final nonOverdueModels =
        models.where((element) => !(element.time?.isOverdue ?? true)).toList();

    final groupedModels = _groupByDate(
      models: nonOverdueModels,
      startDate: startSectionDate,
      lastDate: lastSectionDate,
    );

    result.addAll(groupedModels);

    assert(
      () {
        final expected = nonOverdueModels.length;
        final received = groupedModels.fold<int>(0, (result, section) {
          return result + section.models.length;
        });
        return expected == received;
      }(),
      'Сгруппированы не все модели [TodoModel]',
    );
    return result;
  }

  List<TodoSection> _groupByDate({
    required List<TodoModel> models,
    required DateTime startDate,
    required DateTime lastDate,
  }) {
    final result = <DateTodoSection>[];
    final modelsIterator = models.iterator;

    TodoModel? model;
    if (modelsIterator.moveNext()) {
      model = modelsIterator.current;
    }
    for (var date = startDate;
        date.isBefore(lastDate);
        date = date.add(const Duration(days: 1))) {
      final sectionModels = <TodoModel>[];

      while (model != null && (model.isSameDate(date))) {
        sectionModels.add(model);
        if (modelsIterator.moveNext()) {
          model = modelsIterator.current;
        } else {
          model = null;
        }
      }

      sectionModels.sort(_compareTodoItems);

      result.add(
        DateTodoSection(
          // TODO: после правок на бэке проверить правильность сортировки.
          models: sectionModels,
          date: date,
        ),
      );
    }

    return result;
  }

  int _compareTodoItems(TodoModel a, TodoModel b) {
    final aTime = a.time;
    final bTime = b.time;

    if (a.status != b.status) {
      return a.status == TodoStatus.completed ? 1 : -1;
    } else if (aTime == null || bTime == null) {
      return 0;
    } else if (aTime.isFullDay == bTime.isFullDay) {
      return aTime.startTime.compareTo(bTime.startTime);
    } else {
      return aTime.isFullDay ? 1 : -1;
    }
  }
}

extension on TodoModel {
  bool get isCompleted => status == TodoStatus.completed;

  bool isSameDate(DateTime date) =>
      time?.startTime.isSameDayWith(date) ?? false;
}
