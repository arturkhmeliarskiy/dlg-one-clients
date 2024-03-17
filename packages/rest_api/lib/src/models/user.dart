// ignore_for_file: invalid_annotation_target, public_member_api_docs


import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rest_api/rest_api.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class DLSUser with _$DLSUser {
  factory DLSUser({
    @JsonKey(name: 'id') required int? dlsId, // 33,
    @JsonKey(name: 'name') String? name, //"Бэйлиш Петир Мизинец",
    @JsonKey(name: 'name_surname') String? nameSurname, // "Петир Мизинец",
    @JsonKey(name: 'first_name') String? firstName, // "Петир",
    @JsonKey(name: 'second_name') String? secondName, // "Мизинец",
    @JsonKey(name: 'last_name') String? lastName, // "Бэйлиш",
    @JsonKey(name: 'email') String? email, // "q@q.q",
    @JsonKey(name: 'number') String? number, // "123456",
    @JsonKey(name: 'department') String? department, // "Придворные короля",
    @JsonKey(name: 'position') String? position, // "Мастер над монетой",
    @JsonKey(name: 'snils') String? snils, // "123456",
    @JsonKey(name: 'created_at')
        DateTime? createdAt, // "2022-11-16T06:36:49.000000Z",
    // @JsonKey(name: "blocked") bool? blocked, // false,
    @JsonKey(name: 'matrix_device') String? matrixDevice, // "ZYCCEILGPV",
    @JsonKey(name: 'matrix_token')
        String? matrixToken, // "syt_dTMz_IesRPcqWKpwToWUKaedB_0i30Me",
    @JsonKey(name: 'matrix_password') String? matrixPassword,
    @JsonKey(name: 'file_full')
        String? avatar, // 'https://qq.qq/wer/sdfg/asdf.png'
    @JsonKey(name: 'file') String? avatarPathOnly, // '/wer/sdfg/asdf.png'
    @JsonKey(name: 'sip') SipUser? sip,
    // {
    // "number": "sip:9e1c012882abe88094ae@freeswitch.shvetsov.tech",
    // "password": "304cdbd9c11e0c4eb6c5b55a8e263a7c6e04b61b"
    // }

    /// уникальный идентификатор в matrix
    @JsonKey(name: 'matrix_user') required String? id,

    /// имя в matrix
    @JsonKey(name: 'matrix_name') String? matrixName,

    /// Whether the user is currently active
    bool? currentlyActive,

    /// The length of time in milliseconds since an action was performed
    /// by this user.
    int? lastActiveAgo,

    /// This user's presence.
    /// Matrix enum type [PresenceType]
    /// для получения статуса онлайн использовать currentlyActive
    String? presence,

    /// The state message for this user if one was set.
    String? statusMsg,
    @JsonKey(name: 'emails') List<DLSContact>? emails,
    @JsonKey(name: 'phones') List<DLSContact>? phones,
  }) = _DLSUser;

  factory DLSUser.empty() => DLSUser(id: null, dlsId: null);

  factory DLSUser.fromJson(Map<String, dynamic> json) =>
      _$DLSUserFromJson(json);

  DLSUser._();

  // ignore: non_constant_identifier_names
  String get DLSUserName => (name ?? matrixName) ?? '';

  @override
  String toString() =>
      '{$dlsId, $id, $name, $email, ${sip?.number}, ${sip?.password}}';
}
