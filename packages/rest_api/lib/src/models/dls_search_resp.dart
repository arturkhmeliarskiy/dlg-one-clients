// ignore_for_file: invalid_annotation_target

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rest_api/rest_api.dart';

///
/// Created by Nightwelf 13.03.2023 17:54
/// Telegram: @nightwelf
///

part 'dls_search_resp.freezed.dart';
part 'dls_search_resp.g.dart';

/// DLSSearchResp model
@freezed
class DLSSearchResp with _$DLSSearchResp {
  DLSSearchResp._();

  /// freezed factory
  factory DLSSearchResp({
    @JsonKey(name: 'links') DlsPaginationLinks? links,
    @JsonKey(name: 'meta') DlsPaginationMeta? meta,
    @JsonKey(name: 'data') List<DLSUser>? data,
  }) = _DLSSearchResp;

  // ignore: public_member_api_docs
  factory DLSSearchResp.fromJson(Map<String, dynamic> json) =>
      _$DLSSearchRespFromJson(json);

  // ignore: public_member_api_docs
  String stringify() =>
      jsonEncode(toJson()..removeWhere((key, dynamic value) => value == null));

  // ignore: public_member_api_docs
  factory DLSSearchResp.fromStringJson(String string) =>
      DLSSearchResp.fromJson(jsonDecode(string) as Map<String, dynamic>);
}
