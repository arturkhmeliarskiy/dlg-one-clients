import 'package:dls_one/features/todo/model/todo_time_config.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rest_api/rest_api.dart';

part 'todo_model.freezed.dart';

@freezed
class TodoModel with _$TodoModel {
  const factory TodoModel({
    required int id,
    required TodoStatus status,
    required String title,
    TodoTimeConfig? time,
  }) = _TodoModel;

  const TodoModel._();
}

extension TodoModelExt on TodoModel {
  UpdateTodoModelRequest toRequest({DateTime? startTime, DateTime? endTime}) {
    return UpdateTodoModelRequest(
      title: title,
      isFullDay: time?.isFullDay ?? true,
      status: status,
      startTime: startTime ?? time?.startTime,
      endTime: endTime ?? time?.expireTime,
    );
  }
}
