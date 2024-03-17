import 'package:dls_one/core/core.dart';
import 'package:dls_one/features/todo/model/todo_model.dart';
import 'package:dls_one/features/todo/model/todo_time_config.dart';
import 'package:rest_api/rest_api.dart';

/// Базовый репозиторий по работе с делами.
abstract class ITodoReposiotry {
  Future<void> create(TodoModel model);

  Future<void> update(TodoModel model);

  Future<void> delete(TodoModel model);
}

class TodoReposiotry implements ITodoReposiotry {
  const TodoReposiotry({
    required this.todoApi,
  });

  final TodoApi todoApi;

  @override
  Future<void> create(TodoModel model) => todoApi.create(
        UpdateTodoModelRequest(
          title: model.title,
          // TODO: ждем правок на бэке
          description: 'qwertyqwerty',
          isFullDay: model.time?.isFullDay ?? true,
          status: model.status,
          startTime: model.time?.startTime,
          endTime: model.time?.expireTime,
        ),
      );

  @override
  Future<void> delete(TodoModel model) => todoApi.delete(model.id);

  @override
  Future<void> update(TodoModel model) => todoApi.update(
        model.id,
        UpdateTodoModelRequest(
          title: model.title,
          // TODO: ждем правок на бэке
          description: 'qwertyqwerty',
          isFullDay: model.time?.isFullDay ?? true,
          status: model.status,
          startTime: model.time?.startTime,
          endTime: model.time?.expireTime,
        ),
      );
}

extension TodoMapper on TodoModelDTO {
  TodoModel domainModel(DateTime date) {
    final startTimeSnapshot = startTime;
    final expireTimeSnapshot = expireTime;
    final TodoTimeConfig? timeConfig;

    if (startTimeSnapshot != null && expireTimeSnapshot != null) {
      final isOverdue =
          (isFullDay ? expireTimeSnapshot.endOfDay() : expireTimeSnapshot)
              .isBefore(date);

      timeConfig = TodoTimeConfig(
        startTime: startTimeSnapshot,
        expireTime: expireTimeSnapshot,
        isOverdue: isOverdue,
        isFullDay: isFullDay,
      );
    } else {
      timeConfig = null;
    }

    return TodoModel(
      id: id,
      status: status,
      title: title,
      time: timeConfig,
    );
  }
}
