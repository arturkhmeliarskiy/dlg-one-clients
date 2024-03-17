import 'package:freezed_annotation/freezed_annotation.dart';

enum EventRepeatType {
  @JsonValue(1)
  day,
  @JsonValue(2)
  week,
  @JsonValue(3)
  month,
  unknown;

  static List<EventRepeatType> get items {
    return values.toList()..remove(unknown);
  }
}
