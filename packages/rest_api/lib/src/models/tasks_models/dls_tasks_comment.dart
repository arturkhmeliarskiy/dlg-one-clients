// ignore_for_file: invalid_annotation_target

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'dls_tasks_comment.freezed.dart';
part 'dls_tasks_comment.g.dart';

@freezed
class DlsTasksComment with _$DlsTasksComment {
  DlsTasksComment._();

  factory DlsTasksComment({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    @JsonKey(name: 'deleted_at') DateTime? deletedAt,
    @JsonKey(name: 'user_id') int? userId,
    @JsonKey(name: 'task_id') int? taskId,
    @JsonKey(name: 'parent_id') int? parentId,
    @JsonKey(name: 'text_comment') String? textComment,
  }) = _DlsTasksComment;

  factory DlsTasksComment.fromJson(Map<String, dynamic> json) =>
      _$DlsTasksCommentFromJson(json);

  String stringify() =>
      jsonEncode(toJson()..removeWhere((key, dynamic value) => value == null));

  factory DlsTasksComment.fromStringJson(String string) =>
      DlsTasksComment.fromJson(jsonDecode(string) as Map<String, dynamic>);
}
