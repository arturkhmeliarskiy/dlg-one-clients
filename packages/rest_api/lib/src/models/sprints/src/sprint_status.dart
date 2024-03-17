import 'package:freezed_annotation/freezed_annotation.dart';

enum SprintStatus {
  @JsonValue(1)
  newSprint,
  @JsonValue(2)
  inProgress,
  @JsonValue(3)
  finished;
}
