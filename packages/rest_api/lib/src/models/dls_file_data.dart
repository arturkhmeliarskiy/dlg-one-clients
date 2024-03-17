// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'dls_file_data.freezed.dart';
part 'dls_file_data.g.dart';

@freezed
class DlsFileData with _$DlsFileData {
  const DlsFileData._();

  const factory DlsFileData({
    @JsonKey(name: 'id') int? id,
    // TODO set params nonNullable
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'original_name') String? originalName,
    @JsonKey(name: 'extension') String? extension,
    @JsonKey(name: 'size') String? size,
    @JsonKey(name: 'path') String? path,
    @JsonKey(name: 'mime') String? mime,
  }) = _DlsFileData;

  factory DlsFileData.fromJson(Map<String, dynamic> json) =>
      _$DlsFileDataFromJson(json);
}
