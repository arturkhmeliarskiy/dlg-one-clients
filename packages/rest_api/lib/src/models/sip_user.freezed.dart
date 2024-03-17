// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sip_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SipUser _$SipUserFromJson(Map<String, dynamic> json) {
  return _SipUser.fromJson(json);
}

/// @nodoc
mixin _$SipUser {
  @JsonKey(name: 'number')
  String? get number => throw _privateConstructorUsedError;
  @JsonKey(name: 'password')
  String? get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SipUserCopyWith<SipUser> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SipUserCopyWith<$Res> {
  factory $SipUserCopyWith(SipUser value, $Res Function(SipUser) then) =
      _$SipUserCopyWithImpl<$Res, SipUser>;
  @useResult
  $Res call(
      {@JsonKey(name: 'number') String? number,
      @JsonKey(name: 'password') String? password});
}

/// @nodoc
class _$SipUserCopyWithImpl<$Res, $Val extends SipUser>
    implements $SipUserCopyWith<$Res> {
  _$SipUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = freezed,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SipUserCopyWith<$Res> implements $SipUserCopyWith<$Res> {
  factory _$$_SipUserCopyWith(
          _$_SipUser value, $Res Function(_$_SipUser) then) =
      __$$_SipUserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'number') String? number,
      @JsonKey(name: 'password') String? password});
}

/// @nodoc
class __$$_SipUserCopyWithImpl<$Res>
    extends _$SipUserCopyWithImpl<$Res, _$_SipUser>
    implements _$$_SipUserCopyWith<$Res> {
  __$$_SipUserCopyWithImpl(_$_SipUser _value, $Res Function(_$_SipUser) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = freezed,
    Object? password = freezed,
  }) {
    return _then(_$_SipUser(
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SipUser extends _SipUser {
  _$_SipUser(
      {@JsonKey(name: 'number') this.number,
      @JsonKey(name: 'password') this.password})
      : super._();

  factory _$_SipUser.fromJson(Map<String, dynamic> json) =>
      _$$_SipUserFromJson(json);

  @override
  @JsonKey(name: 'number')
  final String? number;
  @override
  @JsonKey(name: 'password')
  final String? password;

  @override
  String toString() {
    return 'SipUser(number: $number, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SipUser &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, number, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SipUserCopyWith<_$_SipUser> get copyWith =>
      __$$_SipUserCopyWithImpl<_$_SipUser>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SipUserToJson(
      this,
    );
  }
}

abstract class _SipUser extends SipUser {
  factory _SipUser(
      {@JsonKey(name: 'number') final String? number,
      @JsonKey(name: 'password') final String? password}) = _$_SipUser;
  _SipUser._() : super._();

  factory _SipUser.fromJson(Map<String, dynamic> json) = _$_SipUser.fromJson;

  @override
  @JsonKey(name: 'number')
  String? get number;
  @override
  @JsonKey(name: 'password')
  String? get password;
  @override
  @JsonKey(ignore: true)
  _$$_SipUserCopyWith<_$_SipUser> get copyWith =>
      throw _privateConstructorUsedError;
}
