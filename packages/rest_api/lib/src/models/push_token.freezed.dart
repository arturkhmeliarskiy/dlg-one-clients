// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'push_token.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PushToken _$PushTokenFromJson(Map<String, dynamic> json) {
  return _PushToken.fromJson(json);
}

/// @nodoc
mixin _$PushToken {
  @JsonKey(name: 'token')
  String get token => throw _privateConstructorUsedError;
  @JsonKey(name: 'active')
  bool get active => throw _privateConstructorUsedError;
  @JsonKey(name: 'platform_type')
  DlsPlatformNotificationType? get platformType =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int? get dlsId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PushTokenCopyWith<PushToken> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PushTokenCopyWith<$Res> {
  factory $PushTokenCopyWith(PushToken value, $Res Function(PushToken) then) =
      _$PushTokenCopyWithImpl<$Res, PushToken>;
  @useResult
  $Res call(
      {@JsonKey(name: 'token') String token,
      @JsonKey(name: 'active') bool active,
      @JsonKey(name: 'platform_type') DlsPlatformNotificationType? platformType,
      @JsonKey(name: 'id') int? id,
      @JsonKey(name: 'user_id') int? dlsId});
}

/// @nodoc
class _$PushTokenCopyWithImpl<$Res, $Val extends PushToken>
    implements $PushTokenCopyWith<$Res> {
  _$PushTokenCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? active = null,
    Object? platformType = freezed,
    Object? id = freezed,
    Object? dlsId = freezed,
  }) {
    return _then(_value.copyWith(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
      platformType: freezed == platformType
          ? _value.platformType
          : platformType // ignore: cast_nullable_to_non_nullable
              as DlsPlatformNotificationType?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      dlsId: freezed == dlsId
          ? _value.dlsId
          : dlsId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PushTokenCopyWith<$Res> implements $PushTokenCopyWith<$Res> {
  factory _$$_PushTokenCopyWith(
          _$_PushToken value, $Res Function(_$_PushToken) then) =
      __$$_PushTokenCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'token') String token,
      @JsonKey(name: 'active') bool active,
      @JsonKey(name: 'platform_type') DlsPlatformNotificationType? platformType,
      @JsonKey(name: 'id') int? id,
      @JsonKey(name: 'user_id') int? dlsId});
}

/// @nodoc
class __$$_PushTokenCopyWithImpl<$Res>
    extends _$PushTokenCopyWithImpl<$Res, _$_PushToken>
    implements _$$_PushTokenCopyWith<$Res> {
  __$$_PushTokenCopyWithImpl(
      _$_PushToken _value, $Res Function(_$_PushToken) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? active = null,
    Object? platformType = freezed,
    Object? id = freezed,
    Object? dlsId = freezed,
  }) {
    return _then(_$_PushToken(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
      platformType: freezed == platformType
          ? _value.platformType
          : platformType // ignore: cast_nullable_to_non_nullable
              as DlsPlatformNotificationType?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      dlsId: freezed == dlsId
          ? _value.dlsId
          : dlsId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PushToken extends _PushToken {
  _$_PushToken(
      {@JsonKey(name: 'token') required this.token,
      @JsonKey(name: 'active') required this.active,
      @JsonKey(name: 'platform_type') this.platformType,
      @JsonKey(name: 'id') this.id,
      @JsonKey(name: 'user_id') this.dlsId})
      : super._();

  factory _$_PushToken.fromJson(Map<String, dynamic> json) =>
      _$$_PushTokenFromJson(json);

  @override
  @JsonKey(name: 'token')
  final String token;
  @override
  @JsonKey(name: 'active')
  final bool active;
  @override
  @JsonKey(name: 'platform_type')
  final DlsPlatformNotificationType? platformType;
  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'user_id')
  final int? dlsId;

  @override
  String toString() {
    return 'PushToken(token: $token, active: $active, platformType: $platformType, id: $id, dlsId: $dlsId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PushToken &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.active, active) || other.active == active) &&
            (identical(other.platformType, platformType) ||
                other.platformType == platformType) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.dlsId, dlsId) || other.dlsId == dlsId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, token, active, platformType, id, dlsId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PushTokenCopyWith<_$_PushToken> get copyWith =>
      __$$_PushTokenCopyWithImpl<_$_PushToken>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PushTokenToJson(
      this,
    );
  }
}

abstract class _PushToken extends PushToken {
  factory _PushToken(
      {@JsonKey(name: 'token')
          required final String token,
      @JsonKey(name: 'active')
          required final bool active,
      @JsonKey(name: 'platform_type')
          final DlsPlatformNotificationType? platformType,
      @JsonKey(name: 'id')
          final int? id,
      @JsonKey(name: 'user_id')
          final int? dlsId}) = _$_PushToken;
  _PushToken._() : super._();

  factory _PushToken.fromJson(Map<String, dynamic> json) =
      _$_PushToken.fromJson;

  @override
  @JsonKey(name: 'token')
  String get token;
  @override
  @JsonKey(name: 'active')
  bool get active;
  @override
  @JsonKey(name: 'platform_type')
  DlsPlatformNotificationType? get platformType;
  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'user_id')
  int? get dlsId;
  @override
  @JsonKey(ignore: true)
  _$$_PushTokenCopyWith<_$_PushToken> get copyWith =>
      throw _privateConstructorUsedError;
}
