// ignore_for_file: invalid_annotation_target

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rest_api/rest_api.dart';

///
/// Created by Nightwelf 14.02.2023 13:13
/// Telegram: @nightwelf
///

part 'dls_contact.freezed.dart';
part 'dls_contact.g.dart';

@freezed
class DLSContact with _$DLSContact {
  DLSContact._();

  /// {
  ///   "user_id": 33,
  ///   "type": "1",
  ///   "contact": "qwqwqw@qwqwqw.qw",
  ///   "updated_at": "2023-02-14T07:25:19.000000Z",
  ///   "created_at": "2023-02-14T07:25:19.000000Z",
  ///   "id": 9,
  ///   "verified_at": null,
  ///   "validate_text": "На E-mail qwqwqw@qwqwqw.qw отправлено письмо с кодом 2600"
  /// }
  factory DLSContact({
    @JsonKey(name: 'user_id') required int userId,
    @JsonKey(name: 'type', unknownEnumValue: ContactType.unknown)
        ContactType? cType,
    @JsonKey(name: 'contact') String? contact,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'verified_at') String? verifiedAt,
    @JsonKey(name: 'validate_text') String? validateText,
  }) = _DLSContact;

  factory DLSContact.fromJson(Map<String, dynamic> json) =>
      _$DLSContactFromJson(json);

  String stringify() =>
      jsonEncode(toJson()..removeWhere((key, dynamic value) => value == null));

  factory DLSContact.fromStringJson(String string) =>
      DLSContact.fromJson(jsonDecode(string) as Map<String, dynamic>);
}
