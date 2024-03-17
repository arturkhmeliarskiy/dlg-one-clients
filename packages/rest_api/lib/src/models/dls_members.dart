// ignore_for_file: invalid_annotation_target

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'dls_members.freezed.dart';
part 'dls_members.g.dart';

@freezed
class DlsMembers with _$DlsMembers {
  DlsMembers._();

  @JsonSerializable(includeIfNull: false)
  factory DlsMembers({
    @JsonKey(name: 'executors') List<int>? executors,
    @JsonKey(name: 'responsible') List<int>? responsible,
    @JsonKey(name: 'observers') List<int>? observers,
    @JsonKey(name: 'authors') List<int>? authors,
  }) = _DlsMembers;

  factory DlsMembers.fromJson(Map<String, dynamic> json) =>
      _$DlsMembersFromJson(json);
}
