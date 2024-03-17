// ignore_for_file: invalid_annotation_target

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rest_api/src/models/tasks_models/dls_tasks.dart';
import 'package:rest_api/src/models/tasks_models/dls_tasks_link.dart';

part 'dls_tasks_all.freezed.dart';
part 'dls_tasks_all.g.dart';

@freezed
class DlsTasksAll with _$DlsTasksAll {
  DlsTasksAll._();

  factory DlsTasksAll({
    @JsonKey(name: 'current_page') int? currentPage,
    @JsonKey(name: 'data') required List<DlsTasks> tasks,
    @JsonKey(name: 'first_page_url') String? firstPageUrl,
    @JsonKey(name: 'from') int? from,
    @JsonKey(name: 'last_page') int? lastPage,
    @JsonKey(name: 'last_page_url') String? lastPageUrl,
    @JsonKey(name: 'links') DlsTasksLink? links,
    @JsonKey(name: 'next_page_url') String? nextPageUrl,
    @JsonKey(name: 'path') String? path,
    @JsonKey(name: 'per_page') int? perPage,
    @JsonKey(name: 'prev_page_url') String? prevPageUrl,
    @JsonKey(name: 'to') int? to,
    @JsonKey(name: 'total') int? total,
  }) = _DlsTasksAll;

  factory DlsTasksAll.fromJson(Map<String, dynamic> json) =>
      _$DlsTasksAllFromJson(json);

  String stringify() =>
      jsonEncode(toJson()..removeWhere((key, dynamic value) => value == null));

  factory DlsTasksAll.fromStringJson(String string) =>
      DlsTasksAll.fromJson(jsonDecode(string) as Map<String, dynamic>);
}
