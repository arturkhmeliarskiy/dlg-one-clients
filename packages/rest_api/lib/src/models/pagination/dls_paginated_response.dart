import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rest_api/src/models/pagination/dls_pagination_links.dart';
import 'package:rest_api/src/models/pagination/dls_pagination_meta.dart';

part 'dls_paginated_response.freezed.dart';
part 'dls_paginated_response.g.dart';

@Freezed(genericArgumentFactories: true)
class DlsPaginatedResponse<T extends Object?> with _$DlsPaginatedResponse<T> {
  @JsonSerializable(
    includeIfNull: false,
    genericArgumentFactories: true,
  )
  const factory DlsPaginatedResponse({
    required List<T> data,
    DlsPaginationLinks? links,
    DlsPaginationMeta? meta,
  }) = _DlsPaginatedResponse;

  factory DlsPaginatedResponse.fromJson(
    Map<String, Object?> json,
    T Function(Object?) fromJsonT,
  ) =>
      _$DlsPaginatedResponseFromJson(json, fromJsonT);
}
