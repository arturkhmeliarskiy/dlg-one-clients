import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_error.freezed.dart';

@freezed
class TodoError with _$TodoError {
  const factory TodoError.fatal() = FatalTodoError;

  const factory TodoError.common() = CommonTodoError;
}
