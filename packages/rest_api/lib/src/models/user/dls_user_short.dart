// ignore_for_file: public_member_api_docs
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rest_api/rest_api.dart';

part 'dls_user_short.freezed.dart';

part 'dls_user_short.g.dart';

@freezed
class DlsUserShort with _$DlsUserShort {
  const factory DlsUserShort({
    required int id,
    required String name,
    @JsonKey(name: 'name_surname') required String nameSurname,
    String? avatar,
  }) = _DlsUserShort;

  factory DlsUserShort.fromJson(Map<String, dynamic> json) =>
      _$DlsUserShortFromJson(json);
}

extension DlsUserShortExt on DlsUserShort {
  DLSUser toUser() {
    return DLSUser(
      dlsId: id,
      id: null,
      name: name,
      nameSurname: nameSurname,
      avatar: avatar,
    );
  }
}
