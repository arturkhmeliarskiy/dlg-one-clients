// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DLSUser _$DLSUserFromJson(Map<String, dynamic> json) {
  return _DLSUser.fromJson(json);
}

/// @nodoc
mixin _$DLSUser {
  @JsonKey(name: 'id')
  int? get dlsId => throw _privateConstructorUsedError; // 33,
  @JsonKey(name: 'name')
  String? get name =>
      throw _privateConstructorUsedError; //"Бэйлиш Петир Мизинец",
  @JsonKey(name: 'name_surname')
  String? get nameSurname =>
      throw _privateConstructorUsedError; // "Петир Мизинец",
  @JsonKey(name: 'first_name')
  String? get firstName => throw _privateConstructorUsedError; // "Петир",
  @JsonKey(name: 'second_name')
  String? get secondName => throw _privateConstructorUsedError; // "Мизинец",
  @JsonKey(name: 'last_name')
  String? get lastName => throw _privateConstructorUsedError; // "Бэйлиш",
  @JsonKey(name: 'email')
  String? get email => throw _privateConstructorUsedError; // "q@q.q",
  @JsonKey(name: 'number')
  String? get number => throw _privateConstructorUsedError; // "123456",
  @JsonKey(name: 'department')
  String? get department =>
      throw _privateConstructorUsedError; // "Придворные короля",
  @JsonKey(name: 'position')
  String? get position =>
      throw _privateConstructorUsedError; // "Мастер над монетой",
  @JsonKey(name: 'snils')
  String? get snils => throw _privateConstructorUsedError; // "123456",
  @JsonKey(name: 'created_at')
  DateTime? get createdAt =>
      throw _privateConstructorUsedError; // "2022-11-16T06:36:49.000000Z",
// @JsonKey(name: "blocked") bool? blocked, // false,
  @JsonKey(name: 'matrix_device')
  String? get matrixDevice =>
      throw _privateConstructorUsedError; // "ZYCCEILGPV",
  @JsonKey(name: 'matrix_token')
  String? get matrixToken =>
      throw _privateConstructorUsedError; // "syt_dTMz_IesRPcqWKpwToWUKaedB_0i30Me",
  @JsonKey(name: 'matrix_password')
  String? get matrixPassword => throw _privateConstructorUsedError;
  @JsonKey(name: 'file_full')
  String? get avatar =>
      throw _privateConstructorUsedError; // 'https://qq.qq/wer/sdfg/asdf.png'
  @JsonKey(name: 'file')
  String? get avatarPathOnly =>
      throw _privateConstructorUsedError; // '/wer/sdfg/asdf.png'
  @JsonKey(name: 'sip')
  SipUser? get sip => throw _privateConstructorUsedError; // {
// "number": "sip:9e1c012882abe88094ae@freeswitch.shvetsov.tech",
// "password": "304cdbd9c11e0c4eb6c5b55a8e263a7c6e04b61b"
// }
  /// уникальный идентификатор в matrix
  @JsonKey(name: 'matrix_user')
  String? get id => throw _privateConstructorUsedError;

  /// имя в matrix
  @JsonKey(name: 'matrix_name')
  String? get matrixName => throw _privateConstructorUsedError;

  /// Whether the user is currently active
  bool? get currentlyActive => throw _privateConstructorUsedError;

  /// The length of time in milliseconds since an action was performed
  /// by this user.
  int? get lastActiveAgo => throw _privateConstructorUsedError;

  /// This user's presence.
  /// Matrix enum type [PresenceType]
  /// для получения статуса онлайн использовать currentlyActive
  String? get presence => throw _privateConstructorUsedError;

  /// The state message for this user if one was set.
  String? get statusMsg => throw _privateConstructorUsedError;
  @JsonKey(name: 'emails')
  List<DLSContact>? get emails => throw _privateConstructorUsedError;
  @JsonKey(name: 'phones')
  List<DLSContact>? get phones => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DLSUserCopyWith<DLSUser> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DLSUserCopyWith<$Res> {
  factory $DLSUserCopyWith(DLSUser value, $Res Function(DLSUser) then) =
      _$DLSUserCopyWithImpl<$Res, DLSUser>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? dlsId,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'name_surname') String? nameSurname,
      @JsonKey(name: 'first_name') String? firstName,
      @JsonKey(name: 'second_name') String? secondName,
      @JsonKey(name: 'last_name') String? lastName,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'number') String? number,
      @JsonKey(name: 'department') String? department,
      @JsonKey(name: 'position') String? position,
      @JsonKey(name: 'snils') String? snils,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'matrix_device') String? matrixDevice,
      @JsonKey(name: 'matrix_token') String? matrixToken,
      @JsonKey(name: 'matrix_password') String? matrixPassword,
      @JsonKey(name: 'file_full') String? avatar,
      @JsonKey(name: 'file') String? avatarPathOnly,
      @JsonKey(name: 'sip') SipUser? sip,
      @JsonKey(name: 'matrix_user') String? id,
      @JsonKey(name: 'matrix_name') String? matrixName,
      bool? currentlyActive,
      int? lastActiveAgo,
      String? presence,
      String? statusMsg,
      @JsonKey(name: 'emails') List<DLSContact>? emails,
      @JsonKey(name: 'phones') List<DLSContact>? phones});

  $SipUserCopyWith<$Res>? get sip;
}

/// @nodoc
class _$DLSUserCopyWithImpl<$Res, $Val extends DLSUser>
    implements $DLSUserCopyWith<$Res> {
  _$DLSUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dlsId = freezed,
    Object? name = freezed,
    Object? nameSurname = freezed,
    Object? firstName = freezed,
    Object? secondName = freezed,
    Object? lastName = freezed,
    Object? email = freezed,
    Object? number = freezed,
    Object? department = freezed,
    Object? position = freezed,
    Object? snils = freezed,
    Object? createdAt = freezed,
    Object? matrixDevice = freezed,
    Object? matrixToken = freezed,
    Object? matrixPassword = freezed,
    Object? avatar = freezed,
    Object? avatarPathOnly = freezed,
    Object? sip = freezed,
    Object? id = freezed,
    Object? matrixName = freezed,
    Object? currentlyActive = freezed,
    Object? lastActiveAgo = freezed,
    Object? presence = freezed,
    Object? statusMsg = freezed,
    Object? emails = freezed,
    Object? phones = freezed,
  }) {
    return _then(_value.copyWith(
      dlsId: freezed == dlsId
          ? _value.dlsId
          : dlsId // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      nameSurname: freezed == nameSurname
          ? _value.nameSurname
          : nameSurname // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      secondName: freezed == secondName
          ? _value.secondName
          : secondName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String?,
      department: freezed == department
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
              as String?,
      position: freezed == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as String?,
      snils: freezed == snils
          ? _value.snils
          : snils // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      matrixDevice: freezed == matrixDevice
          ? _value.matrixDevice
          : matrixDevice // ignore: cast_nullable_to_non_nullable
              as String?,
      matrixToken: freezed == matrixToken
          ? _value.matrixToken
          : matrixToken // ignore: cast_nullable_to_non_nullable
              as String?,
      matrixPassword: freezed == matrixPassword
          ? _value.matrixPassword
          : matrixPassword // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      avatarPathOnly: freezed == avatarPathOnly
          ? _value.avatarPathOnly
          : avatarPathOnly // ignore: cast_nullable_to_non_nullable
              as String?,
      sip: freezed == sip
          ? _value.sip
          : sip // ignore: cast_nullable_to_non_nullable
              as SipUser?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      matrixName: freezed == matrixName
          ? _value.matrixName
          : matrixName // ignore: cast_nullable_to_non_nullable
              as String?,
      currentlyActive: freezed == currentlyActive
          ? _value.currentlyActive
          : currentlyActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      lastActiveAgo: freezed == lastActiveAgo
          ? _value.lastActiveAgo
          : lastActiveAgo // ignore: cast_nullable_to_non_nullable
              as int?,
      presence: freezed == presence
          ? _value.presence
          : presence // ignore: cast_nullable_to_non_nullable
              as String?,
      statusMsg: freezed == statusMsg
          ? _value.statusMsg
          : statusMsg // ignore: cast_nullable_to_non_nullable
              as String?,
      emails: freezed == emails
          ? _value.emails
          : emails // ignore: cast_nullable_to_non_nullable
              as List<DLSContact>?,
      phones: freezed == phones
          ? _value.phones
          : phones // ignore: cast_nullable_to_non_nullable
              as List<DLSContact>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SipUserCopyWith<$Res>? get sip {
    if (_value.sip == null) {
      return null;
    }

    return $SipUserCopyWith<$Res>(_value.sip!, (value) {
      return _then(_value.copyWith(sip: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DLSUserCopyWith<$Res> implements $DLSUserCopyWith<$Res> {
  factory _$$_DLSUserCopyWith(
          _$_DLSUser value, $Res Function(_$_DLSUser) then) =
      __$$_DLSUserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? dlsId,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'name_surname') String? nameSurname,
      @JsonKey(name: 'first_name') String? firstName,
      @JsonKey(name: 'second_name') String? secondName,
      @JsonKey(name: 'last_name') String? lastName,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'number') String? number,
      @JsonKey(name: 'department') String? department,
      @JsonKey(name: 'position') String? position,
      @JsonKey(name: 'snils') String? snils,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'matrix_device') String? matrixDevice,
      @JsonKey(name: 'matrix_token') String? matrixToken,
      @JsonKey(name: 'matrix_password') String? matrixPassword,
      @JsonKey(name: 'file_full') String? avatar,
      @JsonKey(name: 'file') String? avatarPathOnly,
      @JsonKey(name: 'sip') SipUser? sip,
      @JsonKey(name: 'matrix_user') String? id,
      @JsonKey(name: 'matrix_name') String? matrixName,
      bool? currentlyActive,
      int? lastActiveAgo,
      String? presence,
      String? statusMsg,
      @JsonKey(name: 'emails') List<DLSContact>? emails,
      @JsonKey(name: 'phones') List<DLSContact>? phones});

  @override
  $SipUserCopyWith<$Res>? get sip;
}

/// @nodoc
class __$$_DLSUserCopyWithImpl<$Res>
    extends _$DLSUserCopyWithImpl<$Res, _$_DLSUser>
    implements _$$_DLSUserCopyWith<$Res> {
  __$$_DLSUserCopyWithImpl(_$_DLSUser _value, $Res Function(_$_DLSUser) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dlsId = freezed,
    Object? name = freezed,
    Object? nameSurname = freezed,
    Object? firstName = freezed,
    Object? secondName = freezed,
    Object? lastName = freezed,
    Object? email = freezed,
    Object? number = freezed,
    Object? department = freezed,
    Object? position = freezed,
    Object? snils = freezed,
    Object? createdAt = freezed,
    Object? matrixDevice = freezed,
    Object? matrixToken = freezed,
    Object? matrixPassword = freezed,
    Object? avatar = freezed,
    Object? avatarPathOnly = freezed,
    Object? sip = freezed,
    Object? id = freezed,
    Object? matrixName = freezed,
    Object? currentlyActive = freezed,
    Object? lastActiveAgo = freezed,
    Object? presence = freezed,
    Object? statusMsg = freezed,
    Object? emails = freezed,
    Object? phones = freezed,
  }) {
    return _then(_$_DLSUser(
      dlsId: freezed == dlsId
          ? _value.dlsId
          : dlsId // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      nameSurname: freezed == nameSurname
          ? _value.nameSurname
          : nameSurname // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      secondName: freezed == secondName
          ? _value.secondName
          : secondName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String?,
      department: freezed == department
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
              as String?,
      position: freezed == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as String?,
      snils: freezed == snils
          ? _value.snils
          : snils // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      matrixDevice: freezed == matrixDevice
          ? _value.matrixDevice
          : matrixDevice // ignore: cast_nullable_to_non_nullable
              as String?,
      matrixToken: freezed == matrixToken
          ? _value.matrixToken
          : matrixToken // ignore: cast_nullable_to_non_nullable
              as String?,
      matrixPassword: freezed == matrixPassword
          ? _value.matrixPassword
          : matrixPassword // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      avatarPathOnly: freezed == avatarPathOnly
          ? _value.avatarPathOnly
          : avatarPathOnly // ignore: cast_nullable_to_non_nullable
              as String?,
      sip: freezed == sip
          ? _value.sip
          : sip // ignore: cast_nullable_to_non_nullable
              as SipUser?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      matrixName: freezed == matrixName
          ? _value.matrixName
          : matrixName // ignore: cast_nullable_to_non_nullable
              as String?,
      currentlyActive: freezed == currentlyActive
          ? _value.currentlyActive
          : currentlyActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      lastActiveAgo: freezed == lastActiveAgo
          ? _value.lastActiveAgo
          : lastActiveAgo // ignore: cast_nullable_to_non_nullable
              as int?,
      presence: freezed == presence
          ? _value.presence
          : presence // ignore: cast_nullable_to_non_nullable
              as String?,
      statusMsg: freezed == statusMsg
          ? _value.statusMsg
          : statusMsg // ignore: cast_nullable_to_non_nullable
              as String?,
      emails: freezed == emails
          ? _value._emails
          : emails // ignore: cast_nullable_to_non_nullable
              as List<DLSContact>?,
      phones: freezed == phones
          ? _value._phones
          : phones // ignore: cast_nullable_to_non_nullable
              as List<DLSContact>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DLSUser extends _DLSUser {
  _$_DLSUser(
      {@JsonKey(name: 'id') required this.dlsId,
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'name_surname') this.nameSurname,
      @JsonKey(name: 'first_name') this.firstName,
      @JsonKey(name: 'second_name') this.secondName,
      @JsonKey(name: 'last_name') this.lastName,
      @JsonKey(name: 'email') this.email,
      @JsonKey(name: 'number') this.number,
      @JsonKey(name: 'department') this.department,
      @JsonKey(name: 'position') this.position,
      @JsonKey(name: 'snils') this.snils,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'matrix_device') this.matrixDevice,
      @JsonKey(name: 'matrix_token') this.matrixToken,
      @JsonKey(name: 'matrix_password') this.matrixPassword,
      @JsonKey(name: 'file_full') this.avatar,
      @JsonKey(name: 'file') this.avatarPathOnly,
      @JsonKey(name: 'sip') this.sip,
      @JsonKey(name: 'matrix_user') required this.id,
      @JsonKey(name: 'matrix_name') this.matrixName,
      this.currentlyActive,
      this.lastActiveAgo,
      this.presence,
      this.statusMsg,
      @JsonKey(name: 'emails') final List<DLSContact>? emails,
      @JsonKey(name: 'phones') final List<DLSContact>? phones})
      : _emails = emails,
        _phones = phones,
        super._();

  factory _$_DLSUser.fromJson(Map<String, dynamic> json) =>
      _$$_DLSUserFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? dlsId;
// 33,
  @override
  @JsonKey(name: 'name')
  final String? name;
//"Бэйлиш Петир Мизинец",
  @override
  @JsonKey(name: 'name_surname')
  final String? nameSurname;
// "Петир Мизинец",
  @override
  @JsonKey(name: 'first_name')
  final String? firstName;
// "Петир",
  @override
  @JsonKey(name: 'second_name')
  final String? secondName;
// "Мизинец",
  @override
  @JsonKey(name: 'last_name')
  final String? lastName;
// "Бэйлиш",
  @override
  @JsonKey(name: 'email')
  final String? email;
// "q@q.q",
  @override
  @JsonKey(name: 'number')
  final String? number;
// "123456",
  @override
  @JsonKey(name: 'department')
  final String? department;
// "Придворные короля",
  @override
  @JsonKey(name: 'position')
  final String? position;
// "Мастер над монетой",
  @override
  @JsonKey(name: 'snils')
  final String? snils;
// "123456",
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
// "2022-11-16T06:36:49.000000Z",
// @JsonKey(name: "blocked") bool? blocked, // false,
  @override
  @JsonKey(name: 'matrix_device')
  final String? matrixDevice;
// "ZYCCEILGPV",
  @override
  @JsonKey(name: 'matrix_token')
  final String? matrixToken;
// "syt_dTMz_IesRPcqWKpwToWUKaedB_0i30Me",
  @override
  @JsonKey(name: 'matrix_password')
  final String? matrixPassword;
  @override
  @JsonKey(name: 'file_full')
  final String? avatar;
// 'https://qq.qq/wer/sdfg/asdf.png'
  @override
  @JsonKey(name: 'file')
  final String? avatarPathOnly;
// '/wer/sdfg/asdf.png'
  @override
  @JsonKey(name: 'sip')
  final SipUser? sip;
// {
// "number": "sip:9e1c012882abe88094ae@freeswitch.shvetsov.tech",
// "password": "304cdbd9c11e0c4eb6c5b55a8e263a7c6e04b61b"
// }
  /// уникальный идентификатор в matrix
  @override
  @JsonKey(name: 'matrix_user')
  final String? id;

  /// имя в matrix
  @override
  @JsonKey(name: 'matrix_name')
  final String? matrixName;

  /// Whether the user is currently active
  @override
  final bool? currentlyActive;

  /// The length of time in milliseconds since an action was performed
  /// by this user.
  @override
  final int? lastActiveAgo;

  /// This user's presence.
  /// Matrix enum type [PresenceType]
  /// для получения статуса онлайн использовать currentlyActive
  @override
  final String? presence;

  /// The state message for this user if one was set.
  @override
  final String? statusMsg;
  final List<DLSContact>? _emails;
  @override
  @JsonKey(name: 'emails')
  List<DLSContact>? get emails {
    final value = _emails;
    if (value == null) return null;
    if (_emails is EqualUnmodifiableListView) return _emails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<DLSContact>? _phones;
  @override
  @JsonKey(name: 'phones')
  List<DLSContact>? get phones {
    final value = _phones;
    if (value == null) return null;
    if (_phones is EqualUnmodifiableListView) return _phones;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DLSUser &&
            (identical(other.dlsId, dlsId) || other.dlsId == dlsId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.nameSurname, nameSurname) ||
                other.nameSurname == nameSurname) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.secondName, secondName) ||
                other.secondName == secondName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.department, department) ||
                other.department == department) &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.snils, snils) || other.snils == snils) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.matrixDevice, matrixDevice) ||
                other.matrixDevice == matrixDevice) &&
            (identical(other.matrixToken, matrixToken) ||
                other.matrixToken == matrixToken) &&
            (identical(other.matrixPassword, matrixPassword) ||
                other.matrixPassword == matrixPassword) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.avatarPathOnly, avatarPathOnly) ||
                other.avatarPathOnly == avatarPathOnly) &&
            (identical(other.sip, sip) || other.sip == sip) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.matrixName, matrixName) ||
                other.matrixName == matrixName) &&
            (identical(other.currentlyActive, currentlyActive) ||
                other.currentlyActive == currentlyActive) &&
            (identical(other.lastActiveAgo, lastActiveAgo) ||
                other.lastActiveAgo == lastActiveAgo) &&
            (identical(other.presence, presence) ||
                other.presence == presence) &&
            (identical(other.statusMsg, statusMsg) ||
                other.statusMsg == statusMsg) &&
            const DeepCollectionEquality().equals(other._emails, _emails) &&
            const DeepCollectionEquality().equals(other._phones, _phones));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        dlsId,
        name,
        nameSurname,
        firstName,
        secondName,
        lastName,
        email,
        number,
        department,
        position,
        snils,
        createdAt,
        matrixDevice,
        matrixToken,
        matrixPassword,
        avatar,
        avatarPathOnly,
        sip,
        id,
        matrixName,
        currentlyActive,
        lastActiveAgo,
        presence,
        statusMsg,
        const DeepCollectionEquality().hash(_emails),
        const DeepCollectionEquality().hash(_phones)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DLSUserCopyWith<_$_DLSUser> get copyWith =>
      __$$_DLSUserCopyWithImpl<_$_DLSUser>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DLSUserToJson(
      this,
    );
  }
}

abstract class _DLSUser extends DLSUser {
  factory _DLSUser(
      {@JsonKey(name: 'id') required final int? dlsId,
      @JsonKey(name: 'name') final String? name,
      @JsonKey(name: 'name_surname') final String? nameSurname,
      @JsonKey(name: 'first_name') final String? firstName,
      @JsonKey(name: 'second_name') final String? secondName,
      @JsonKey(name: 'last_name') final String? lastName,
      @JsonKey(name: 'email') final String? email,
      @JsonKey(name: 'number') final String? number,
      @JsonKey(name: 'department') final String? department,
      @JsonKey(name: 'position') final String? position,
      @JsonKey(name: 'snils') final String? snils,
      @JsonKey(name: 'created_at') final DateTime? createdAt,
      @JsonKey(name: 'matrix_device') final String? matrixDevice,
      @JsonKey(name: 'matrix_token') final String? matrixToken,
      @JsonKey(name: 'matrix_password') final String? matrixPassword,
      @JsonKey(name: 'file_full') final String? avatar,
      @JsonKey(name: 'file') final String? avatarPathOnly,
      @JsonKey(name: 'sip') final SipUser? sip,
      @JsonKey(name: 'matrix_user') required final String? id,
      @JsonKey(name: 'matrix_name') final String? matrixName,
      final bool? currentlyActive,
      final int? lastActiveAgo,
      final String? presence,
      final String? statusMsg,
      @JsonKey(name: 'emails') final List<DLSContact>? emails,
      @JsonKey(name: 'phones') final List<DLSContact>? phones}) = _$_DLSUser;
  _DLSUser._() : super._();

  factory _DLSUser.fromJson(Map<String, dynamic> json) = _$_DLSUser.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get dlsId;
  @override // 33,
  @JsonKey(name: 'name')
  String? get name;
  @override //"Бэйлиш Петир Мизинец",
  @JsonKey(name: 'name_surname')
  String? get nameSurname;
  @override // "Петир Мизинец",
  @JsonKey(name: 'first_name')
  String? get firstName;
  @override // "Петир",
  @JsonKey(name: 'second_name')
  String? get secondName;
  @override // "Мизинец",
  @JsonKey(name: 'last_name')
  String? get lastName;
  @override // "Бэйлиш",
  @JsonKey(name: 'email')
  String? get email;
  @override // "q@q.q",
  @JsonKey(name: 'number')
  String? get number;
  @override // "123456",
  @JsonKey(name: 'department')
  String? get department;
  @override // "Придворные короля",
  @JsonKey(name: 'position')
  String? get position;
  @override // "Мастер над монетой",
  @JsonKey(name: 'snils')
  String? get snils;
  @override // "123456",
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override // "2022-11-16T06:36:49.000000Z",
// @JsonKey(name: "blocked") bool? blocked, // false,
  @JsonKey(name: 'matrix_device')
  String? get matrixDevice;
  @override // "ZYCCEILGPV",
  @JsonKey(name: 'matrix_token')
  String? get matrixToken;
  @override // "syt_dTMz_IesRPcqWKpwToWUKaedB_0i30Me",
  @JsonKey(name: 'matrix_password')
  String? get matrixPassword;
  @override
  @JsonKey(name: 'file_full')
  String? get avatar;
  @override // 'https://qq.qq/wer/sdfg/asdf.png'
  @JsonKey(name: 'file')
  String? get avatarPathOnly;
  @override // '/wer/sdfg/asdf.png'
  @JsonKey(name: 'sip')
  SipUser? get sip;
  @override // {
// "number": "sip:9e1c012882abe88094ae@freeswitch.shvetsov.tech",
// "password": "304cdbd9c11e0c4eb6c5b55a8e263a7c6e04b61b"
// }
  /// уникальный идентификатор в matrix
  @JsonKey(name: 'matrix_user')
  String? get id;
  @override

  /// имя в matrix
  @JsonKey(name: 'matrix_name')
  String? get matrixName;
  @override

  /// Whether the user is currently active
  bool? get currentlyActive;
  @override

  /// The length of time in milliseconds since an action was performed
  /// by this user.
  int? get lastActiveAgo;
  @override

  /// This user's presence.
  /// Matrix enum type [PresenceType]
  /// для получения статуса онлайн использовать currentlyActive
  String? get presence;
  @override

  /// The state message for this user if one was set.
  String? get statusMsg;
  @override
  @JsonKey(name: 'emails')
  List<DLSContact>? get emails;
  @override
  @JsonKey(name: 'phones')
  List<DLSContact>? get phones;
  @override
  @JsonKey(ignore: true)
  _$$_DLSUserCopyWith<_$_DLSUser> get copyWith =>
      throw _privateConstructorUsedError;
}
