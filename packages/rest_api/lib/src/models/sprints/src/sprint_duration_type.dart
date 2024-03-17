import 'package:freezed_annotation/freezed_annotation.dart';

enum SprintDurationType{
  @JsonValue(1)
  oneWeek,
  @JsonValue(2)
  twoWeeks,
  @JsonValue(3)
  fourWeeks,
  @JsonValue(4)
  custom,
}