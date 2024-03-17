// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dls_res_status_data_error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DLSRestStatusDataError _$DLSRestStatusDataErrorFromJson(
    Map<String, dynamic> json) {
  return _DLSRestStatusDataError.fromJson(json);
}

/// @nodoc
mixin _$DLSRestStatusDataError {
  @JsonKey(name: 'email')
  List<String>? get emails => throw _privateConstructorUsedError;
  @JsonKey(name: 'number')
  List<String>? get numbers => throw _privateConstructorUsedError;
  @JsonKey(name: 'password_old')
  List<String>? get passwordOld => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DLSRestStatusDataErrorCopyWith<DLSRestStatusDataError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DLSRestStatusDataErrorCopyWith<$Res> {
  factory $DLSRestStatusDataErrorCopyWith(DLSRestStatusDataError value,
          $Res Function(DLSRestStatusDataError) then) =
      _$DLSRestStatusDataErrorCopyWithImpl<$Res, DLSRestStatusDataError>;
  @useResult
  $Res call(
      {@JsonKey(name: 'email') List<String>? emails,
      @JsonKey(name: 'number') List<String>? numbers,
      @JsonKey(name: 'password_old') List<String>? passwordOld});
}

/// @nodoc
class _$DLSRestStatusDataErrorCopyWithImpl<$Res,
        $Val extends DLSRestStatusDataError>
    implements $DLSRestStatusDataErrorCopyWith<$Res> {
  _$DLSRestStatusDataErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emails = freezed,
    Object? numbers = freezed,
    Object? passwordOld = freezed,
  }) {
    return _then(_value.copyWith(
      emails: freezed == emails
          ? _value.emails
          : emails // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      numbers: freezed == numbers
          ? _value.numbers
          : numbers // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      passwordOld: freezed == passwordOld
          ? _value.passwordOld
          : passwordOld // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DLSRestStatusDataErrorCopyWith<$Res>
    implements $DLSRestStatusDataErrorCopyWith<$Res> {
  factory _$$_DLSRestStatusDataErrorCopyWith(_$_DLSRestStatusDataError value,
          $Res Function(_$_DLSRestStatusDataError) then) =
      __$$_DLSRestStatusDataErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'email') List<String>? emails,
      @JsonKey(name: 'number') List<String>? numbers,
      @JsonKey(name: 'password_old') List<String>? passwordOld});
}

/// @nodoc
class __$$_DLSRestStatusDataErrorCopyWithImpl<$Res>
    extends _$DLSRestStatusDataErrorCopyWithImpl<$Res,
        _$_DLSRestStatusDataError>
    implements _$$_DLSRestStatusDataErrorCopyWith<$Res> {
  __$$_DLSRestStatusDataErrorCopyWithImpl(_$_DLSRestStatusDataError _value,
      $Res Function(_$_DLSRestStatusDataError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emails = freezed,
    Object? numbers = freezed,
    Object? passwordOld = freezed,
  }) {
    return _then(_$_DLSRestStatusDataError(
      emails: freezed == emails
          ? _value._emails
          : emails // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      numbers: freezed == numbers
          ? _value._numbers
          : numbers // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      passwordOld: freezed == passwordOld
          ? _value._passwordOld
          : passwordOld // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DLSRestStatusDataError extends _DLSRestStatusDataError {
  _$_DLSRestStatusDataError(
      {@JsonKey(name: 'email') final List<String>? emails,
      @JsonKey(name: 'number') final List<String>? numbers,
      @JsonKey(name: 'password_old') final List<String>? passwordOld})
      : _emails = emails,
        _numbers = numbers,
        _passwordOld = passwordOld,
        super._();

  factory _$_DLSRestStatusDataError.fromJson(Map<String, dynamic> json) =>
      _$$_DLSRestStatusDataErrorFromJson(json);

  final List<String>? _emails;
  @override
  @JsonKey(name: 'email')
  List<String>? get emails {
    final value = _emails;
    if (value == null) return null;
    if (_emails is EqualUnmodifiableListView) return _emails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _numbers;
  @override
  @JsonKey(name: 'number')
  List<String>? get numbers {
    final value = _numbers;
    if (value == null) return null;
    if (_numbers is EqualUnmodifiableListView) return _numbers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _passwordOld;
  @override
  @JsonKey(name: 'password_old')
  List<String>? get passwordOld {
    final value = _passwordOld;
    if (value == null) return null;
    if (_passwordOld is EqualUnmodifiableListView) return _passwordOld;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'DLSRestStatusDataError(emails: $emails, numbers: $numbers, passwordOld: $passwordOld)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DLSRestStatusDataError &&
            const DeepCollectionEquality().equals(other._emails, _emails) &&
            const DeepCollectionEquality().equals(other._numbers, _numbers) &&
            const DeepCollectionEquality()
                .equals(other._passwordOld, _passwordOld));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_emails),
      const DeepCollectionEquality().hash(_numbers),
      const DeepCollectionEquality().hash(_passwordOld));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DLSRestStatusDataErrorCopyWith<_$_DLSRestStatusDataError> get copyWith =>
      __$$_DLSRestStatusDataErrorCopyWithImpl<_$_DLSRestStatusDataError>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DLSRestStatusDataErrorToJson(
      this,
    );
  }
}

abstract class _DLSRestStatusDataError extends DLSRestStatusDataError {
  factory _DLSRestStatusDataError(
          {@JsonKey(name: 'email') final List<String>? emails,
          @JsonKey(name: 'number') final List<String>? numbers,
          @JsonKey(name: 'password_old') final List<String>? passwordOld}) =
      _$_DLSRestStatusDataError;
  _DLSRestStatusDataError._() : super._();

  factory _DLSRestStatusDataError.fromJson(Map<String, dynamic> json) =
      _$_DLSRestStatusDataError.fromJson;

  @override
  @JsonKey(name: 'email')
  List<String>? get emails;
  @override
  @JsonKey(name: 'number')
  List<String>? get numbers;
  @override
  @JsonKey(name: 'password_old')
  List<String>? get passwordOld;
  @override
  @JsonKey(ignore: true)
  _$$_DLSRestStatusDataErrorCopyWith<_$_DLSRestStatusDataError> get copyWith =>
      throw _privateConstructorUsedError;
}
