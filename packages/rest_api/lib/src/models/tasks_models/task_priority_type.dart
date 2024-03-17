import 'package:freezed_annotation/freezed_annotation.dart';

enum TaskPriorityType {
  unknown,
  @JsonValue(0)
  veryLow,
  @JsonValue(1)
  low,
  @JsonValue(2)
  mid,
  @JsonValue(3)
  high,
  @JsonValue(4)
  veryHigh,
}
