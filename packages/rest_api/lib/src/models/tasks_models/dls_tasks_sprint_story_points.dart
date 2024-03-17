import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'dls_tasks_sprint_story_points.freezed.dart';
part 'dls_tasks_sprint_story_points.g.dart';

@freezed
class DlsTasksSprintStoryPoints with _$DlsTasksSprintStoryPoints {
  DlsTasksSprintStoryPoints._();

  factory DlsTasksSprintStoryPoints({
    @JsonKey(name: 'plan') int? plan,
    @JsonKey(name: 'fact') int? fact,
  }) = _DlsTasksSprintStoryPoints;

  factory DlsTasksSprintStoryPoints.fromJson(Map<String, dynamic> json) =>
      _$DlsTasksSprintStoryPointsFromJson(json);

  String stringify() =>
      jsonEncode(toJson()..removeWhere((key, dynamic value) => value == null));

  factory DlsTasksSprintStoryPoints.fromStringJson(String string) =>
      DlsTasksSprintStoryPoints.fromJson(
          jsonDecode(string) as Map<String, dynamic>);
}
