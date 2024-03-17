import 'package:freezed_annotation/freezed_annotation.dart';

enum DlsTaskIncludeType {
  @JsonValue('parent')
  parent,
  @JsonValue('subTasks')
  subTasks,
  @JsonValue('files')
  files,
  @JsonValue('sprints')
  sprints,
  @JsonValue('checklist')
  checklist,
  @JsonValue('events')
  events,
  @JsonValue('tags')
  tags,
  @JsonValue('template')
  template,
  @JsonValue('user')
  user;
}
