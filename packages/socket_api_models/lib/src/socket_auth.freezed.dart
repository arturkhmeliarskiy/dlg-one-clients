// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'socket_auth.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SocketAuth _$SocketAuthFromJson(Map<String, dynamic> json) {
  return _SocketAuth.fromJson(json);
}

/// @nodoc
mixin _$SocketAuth {
  String get token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SocketAuthCopyWith<SocketAuth> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SocketAuthCopyWith<$Res> {
  factory $SocketAuthCopyWith(
          SocketAuth value, $Res Function(SocketAuth) then) =
      _$SocketAuthCopyWithImpl<$Res, SocketAuth>;
  @useResult
  $Res call({String token});
}

/// @nodoc
class _$SocketAuthCopyWithImpl<$Res, $Val extends SocketAuth>
    implements $SocketAuthCopyWith<$Res> {
  _$SocketAuthCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
  }) {
    return _then(_value.copyWith(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SocketAuthCopyWith<$Res>
    implements $SocketAuthCopyWith<$Res> {
  factory _$$_SocketAuthCopyWith(
          _$_SocketAuth value, $Res Function(_$_SocketAuth) then) =
      __$$_SocketAuthCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String token});
}

/// @nodoc
class __$$_SocketAuthCopyWithImpl<$Res>
    extends _$SocketAuthCopyWithImpl<$Res, _$_SocketAuth>
    implements _$$_SocketAuthCopyWith<$Res> {
  __$$_SocketAuthCopyWithImpl(
      _$_SocketAuth _value, $Res Function(_$_SocketAuth) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
  }) {
    return _then(_$_SocketAuth(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SocketAuth extends _SocketAuth {
  _$_SocketAuth({required this.token}) : super._();

  factory _$_SocketAuth.fromJson(Map<String, dynamic> json) =>
      _$$_SocketAuthFromJson(json);

  @override
  final String token;

  @override
  String toString() {
    return 'SocketAuth(token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SocketAuth &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SocketAuthCopyWith<_$_SocketAuth> get copyWith =>
      __$$_SocketAuthCopyWithImpl<_$_SocketAuth>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SocketAuthToJson(
      this,
    );
  }
}

abstract class _SocketAuth extends SocketAuth {
  factory _SocketAuth({required final String token}) = _$_SocketAuth;
  _SocketAuth._() : super._();

  factory _SocketAuth.fromJson(Map<String, dynamic> json) =
      _$_SocketAuth.fromJson;

  @override
  String get token;
  @override
  @JsonKey(ignore: true)
  _$$_SocketAuthCopyWith<_$_SocketAuth> get copyWith =>
      throw _privateConstructorUsedError;
}
