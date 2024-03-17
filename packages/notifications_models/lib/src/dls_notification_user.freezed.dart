// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dls_notification_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DLSNotificationUser _$DLSNotificationUserFromJson(Map<String, dynamic> json) {
  return _DLSNotificationUser.fromJson(json);
}

/// @nodoc
mixin _$DLSNotificationUser {
  /// ид пользователя в нашей системе, может пригодится тут
  int get uuid => throw _privateConstructorUsedError;

  /// ссылка на аватарку
  String? get avatar => throw _privateConstructorUsedError;

  /// имя пользователя Петя Петров
  String get username => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DLSNotificationUserCopyWith<DLSNotificationUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DLSNotificationUserCopyWith<$Res> {
  factory $DLSNotificationUserCopyWith(
          DLSNotificationUser value, $Res Function(DLSNotificationUser) then) =
      _$DLSNotificationUserCopyWithImpl<$Res, DLSNotificationUser>;
  @useResult
  $Res call({int uuid, String? avatar, String username});
}

/// @nodoc
class _$DLSNotificationUserCopyWithImpl<$Res, $Val extends DLSNotificationUser>
    implements $DLSNotificationUserCopyWith<$Res> {
  _$DLSNotificationUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? avatar = freezed,
    Object? username = null,
  }) {
    return _then(_value.copyWith(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as int,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DLSNotificationUserCopyWith<$Res>
    implements $DLSNotificationUserCopyWith<$Res> {
  factory _$$_DLSNotificationUserCopyWith(_$_DLSNotificationUser value,
          $Res Function(_$_DLSNotificationUser) then) =
      __$$_DLSNotificationUserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int uuid, String? avatar, String username});
}

/// @nodoc
class __$$_DLSNotificationUserCopyWithImpl<$Res>
    extends _$DLSNotificationUserCopyWithImpl<$Res, _$_DLSNotificationUser>
    implements _$$_DLSNotificationUserCopyWith<$Res> {
  __$$_DLSNotificationUserCopyWithImpl(_$_DLSNotificationUser _value,
      $Res Function(_$_DLSNotificationUser) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? avatar = freezed,
    Object? username = null,
  }) {
    return _then(_$_DLSNotificationUser(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as int,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DLSNotificationUser extends _DLSNotificationUser {
  _$_DLSNotificationUser(
      {required this.uuid, this.avatar, required this.username})
      : super._();

  factory _$_DLSNotificationUser.fromJson(Map<String, dynamic> json) =>
      _$$_DLSNotificationUserFromJson(json);

  /// ид пользователя в нашей системе, может пригодится тут
  @override
  final int uuid;

  /// ссылка на аватарку
  @override
  final String? avatar;

  /// имя пользователя Петя Петров
  @override
  final String username;

  @override
  String toString() {
    return 'DLSNotificationUser(uuid: $uuid, avatar: $avatar, username: $username)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DLSNotificationUser &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.username, username) ||
                other.username == username));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, uuid, avatar, username);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DLSNotificationUserCopyWith<_$_DLSNotificationUser> get copyWith =>
      __$$_DLSNotificationUserCopyWithImpl<_$_DLSNotificationUser>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DLSNotificationUserToJson(
      this,
    );
  }
}

abstract class _DLSNotificationUser extends DLSNotificationUser {
  factory _DLSNotificationUser(
      {required final int uuid,
      final String? avatar,
      required final String username}) = _$_DLSNotificationUser;
  _DLSNotificationUser._() : super._();

  factory _DLSNotificationUser.fromJson(Map<String, dynamic> json) =
      _$_DLSNotificationUser.fromJson;

  @override

  /// ид пользователя в нашей системе, может пригодится тут
  int get uuid;
  @override

  /// ссылка на аватарку
  String? get avatar;
  @override

  /// имя пользователя Петя Петров
  String get username;
  @override
  @JsonKey(ignore: true)
  _$$_DLSNotificationUserCopyWith<_$_DLSNotificationUser> get copyWith =>
      throw _privateConstructorUsedError;
}
