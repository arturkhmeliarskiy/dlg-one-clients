import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rest_api/rest_api.dart';

part 'todo_models_config.freezed.dart';

/// Описание требований UI о составе списка моделей [TodoModel], которое
/// необходимо отобразить.
@freezed
class TodoModelsConfig with _$TodoModelsConfig {
  const factory TodoModelsConfig({
    required DateTime endDate,
    DateTime? startDate,
  }) = _TodoModelsConfig;

  const TodoModelsConfig._();
}
