import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rest_api/rest_api.dart';

part 'dls_tasks_user.freezed.dart';

part 'dls_tasks_user.g.dart';

@freezed
class DlsTasksUser with _$DlsTasksUser {
  DlsTasksUser._();

  factory DlsTasksUser({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'name_surname') String? nameSurname,
    @JsonKey(name: 'avatar') String? avatar,
  }) = _DlsTasksUser;

  factory DlsTasksUser.fromJson(Map<String, dynamic> json) =>
      _$DlsTasksUserFromJson(json);

  String stringify() =>
      jsonEncode(toJson()..removeWhere((key, dynamic value) => value == null));

  factory DlsTasksUser.fromStringJson(String string) =>
      DlsTasksUser.fromJson(jsonDecode(string) as Map<String, dynamic>);
}

extension DlsTasksUserExt on DlsTasksUser {
  DLSUser makeUser() {
    return DLSUser(
      dlsId: id,
      id: null,
      name: name,
      nameSurname: nameSurname,
      avatar: avatar,
    );
  }
}
