import 'package:freezed_annotation/freezed_annotation.dart';

enum TaskTagType{
  @JsonValue(1)
  active,
  @JsonValue(2)
  inactive;
}