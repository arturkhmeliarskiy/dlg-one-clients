import 'package:json_annotation/json_annotation.dart';

enum TaskStatusType {
  @JsonValue(0)
  unknown,
  @JsonValue(1)
  draft,
  @JsonValue(2)
  inTheQueue,
  @JsonValue(3)
  atWork,
  @JsonValue(4)
  completed,
}
