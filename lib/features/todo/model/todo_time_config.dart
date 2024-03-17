import 'package:dls_one/features/todo/model/repeat.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_time_config.freezed.dart';

@freezed
class TodoTimeConfig with _$TodoTimeConfig {
  const factory TodoTimeConfig({
    required DateTime startTime,
    required DateTime expireTime,
    @Default(false) bool isOverdue,
    @Default(true) bool isFullDay,
    Repeat? repeat,
  }) = _TodoTimeConfig;

  const TodoTimeConfig._();

  TodoTimeConfig applyRepeat(Repeat? value) => TodoTimeConfig(
        startTime: startTime,
        expireTime: expireTime,
        isOverdue: isOverdue,
        isFullDay: isFullDay,
        repeat: value,
      );

  static DateTime maxDateTime = DateTime.now().add(const Duration(days: 3650));
}
