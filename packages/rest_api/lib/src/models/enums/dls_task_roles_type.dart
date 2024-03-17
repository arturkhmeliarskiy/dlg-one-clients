import 'package:json_annotation/json_annotation.dart';

enum TaskRolesType {
  unknown,
  @JsonValue(0)
  viewing,
  @JsonValue(1)
  executor,
  @JsonValue(2)
  author,
  @JsonValue(3)
  responsible,
  @JsonValue(4)
  observer,
}
