import 'package:freezed_annotation/freezed_annotation.dart';

part 'dls_pagination_meta.freezed.dart';
part 'dls_pagination_meta.g.dart';

// ignore_for_file: invalid_annotation_target

@freezed
class DlsPaginationMeta with _$DlsPaginationMeta {
  factory DlsPaginationMeta({
    @JsonKey(name: 'current_page') required int? currentPage,
    @JsonKey(name: 'from') required int? from,
    @JsonKey(name: 'last_page') required int? lastPage,
    @JsonKey(name: 'path') required String? path,
    @JsonKey(name: 'per_page') required int? perPage,
    @JsonKey(name: 'to') required int? to,
    @JsonKey(name: 'total') required int? total,
  }) = _DlsPaginationMeta;

  factory DlsPaginationMeta.fromJson(Map<String, Object?> json) =>
      _$DlsPaginationMetaFromJson(json);

  DlsPaginationMeta._();
}
