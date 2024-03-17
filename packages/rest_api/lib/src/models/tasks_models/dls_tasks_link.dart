// ignore_for_file: invalid_annotation_target

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'dls_tasks_link.freezed.dart';
part 'dls_tasks_link.g.dart';

@freezed
class DlsTasksLink with _$DlsTasksLink {
  DlsTasksLink._();

  factory DlsTasksLink({
    @JsonKey(name: 'url') String? url,
    @JsonKey(name: 'label') String? label,
    @JsonKey(name: 'active') bool? active,
  }) = _DlsTasksLink;

  factory DlsTasksLink.fromJson(Map<String, dynamic> json) =>
      _$DlsTasksLinkFromJson(json);

  String stringify() =>
      jsonEncode(toJson()..removeWhere((key, dynamic value) => value == null));

  factory DlsTasksLink.fromStringJson(String string) =>
      DlsTasksLink.fromJson(jsonDecode(string) as Map<String, dynamic>);
}
