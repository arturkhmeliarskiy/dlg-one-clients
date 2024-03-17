// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rest_api/rest_api.dart';

///
/// Created by Nightwelf 13.03.2023 18:49
/// Telegram: @nightwelf
///

part 'dls_search_result_users.freezed.dart';

/// DLSSearchResultUsers model
@freezed
class DLSSearchResultUsers with _$DLSSearchResultUsers {
  /// freezed factory
  factory DLSSearchResultUsers({
    required List<DLSUser> data,
    int? nextPage,
    int? prevPage,
  }) = _DLSSearchResultUsers;
}
