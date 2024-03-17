// ignore_for_file: invalid_annotation_target

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rest_api/rest_api.dart';

part 'dls_tasks_file_element.freezed.dart';
part 'dls_tasks_file_element.g.dart';

@freezed
class DlsTasksFileElement with _$DlsTasksFileElement {
  DlsTasksFileElement._();

  factory DlsTasksFileElement({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'original_name') String? originalName,
    @JsonKey(name: 'extension') String? extension,
    @JsonKey(name: 'size') String? size,
    @JsonKey(name: 'sort') int? sort,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'path') String? path,
    @JsonKey(name: 'mime') String? mime,
    @JsonKey(name: 'alt') String? alt,
    @JsonKey(name: 'hash') String? hash,
    @JsonKey(name: 'disk') String? disk,
    @JsonKey(name: 'user_id') int? userId,
    @JsonKey(name: 'group') String? group,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    @JsonKey(name: 'deleted_at') DateTime? deletedAt,
    @JsonKey(name: 'url') String? url,
    @JsonKey(name: 'relativeUrl') String? relativeUrl,
  }) = _DlsTasksFileElement;

  factory DlsTasksFileElement.fromJson(Map<String, dynamic> json) =>
      _$DlsTasksFileElementFromJson(json);

  String stringify() =>
      jsonEncode(toJson()..removeWhere((key, dynamic value) => value == null));

  factory DlsTasksFileElement.fromStringJson(String string) =>
      DlsTasksFileElement.fromJson(jsonDecode(string) as Map<String, dynamic>);
}

extension DlsTasksFileElementExt on DlsTasksFileElement{
  DlsFileData toFileData(){
    return DlsFileData(
      id: id,
      name: name,
      originalName: originalName,
      extension: extension,
      size: size,
      path: path,
      mime: mime,
    );
}
}