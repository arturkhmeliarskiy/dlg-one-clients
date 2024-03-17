import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'dls_tasks_count.freezed.dart';
part 'dls_tasks_count.g.dart';

@freezed
class DlsTasksCount with _$DlsTasksCount {
  DlsTasksCount._();

  factory DlsTasksCount({
    @JsonKey(name: 'count') int? count,
    @JsonKey(name: 'done') int? done,
  }) = _DlsTasksCount;

  factory DlsTasksCount.fromJson(Map<String, dynamic> json) =>
      _$DlsTasksCountFromJson(json);

  String stringify() =>
      jsonEncode(toJson()..removeWhere((key, dynamic value) => value == null));

  factory DlsTasksCount.fromStringJson(String string) =>
      DlsTasksCount.fromJson(jsonDecode(string) as Map<String, dynamic>);
}
