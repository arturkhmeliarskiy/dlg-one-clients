// ignore_for_file: invalid_annotation_target

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'sub_task_data.freezed.dart';
part 'sub_task_data.g.dart';

@freezed
class SubTaskData with _$SubTaskData {
  SubTaskData._();

  factory SubTaskData({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'paperclip') int? paperclip,
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'avatar') String? avatar,
    @JsonKey(name: 'hierarchy') int? hierarchy,
    @JsonKey(name: 'state') String? state,
    @JsonKey(name: 'deadline') String? deadline,
  }) = _SubTaskData;

  factory SubTaskData.fromJson(Map<String, dynamic> json) =>
      _$SubTaskDataFromJson(json);

  String stringify() =>
      jsonEncode(toJson()..removeWhere((key, dynamic value) => value == null));

  factory SubTaskData.fromStringJson(String string) =>
      SubTaskData.fromJson(jsonDecode(string) as Map<String, dynamic>);
}
