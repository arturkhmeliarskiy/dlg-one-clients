import 'package:freezed_annotation/freezed_annotation.dart';

enum TaskEventType {
  @JsonValue(1)
  online,
  @JsonValue(2)
  offline;
}
