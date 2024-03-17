import 'package:freezed_annotation/freezed_annotation.dart';

part 'dls_pagination_links.freezed.dart';
part 'dls_pagination_links.g.dart';

// ignore_for_file: invalid_annotation_target

@freezed
class DlsPaginationLinks with _$DlsPaginationLinks {
  factory DlsPaginationLinks({
    @JsonKey(name: 'first') required String? first,
    @JsonKey(name: 'last') required String? last,
    @JsonKey(name: 'prev') required String? prev,
    @JsonKey(name: 'next') required String? next,
  }) = _DlsPaginationLinks;

  factory DlsPaginationLinks.fromJson(Map<String, dynamic> json) =>
      _$DlsPaginationLinksFromJson(json);

  DlsPaginationLinks._();
}
