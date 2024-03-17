import 'package:dls_one/features/todo/model/todo_model.dart';
import 'package:flutter/foundation.dart';

@immutable
class TodoModelsPage {
  const TodoModelsPage({
    required this.page,
    required this.data,
  });

  /// Номер самой последней страницы, содержащейся в [data].
  final int page;

  final List<TodoModel> data;
}
