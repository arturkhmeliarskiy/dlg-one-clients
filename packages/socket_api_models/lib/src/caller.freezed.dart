// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'caller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Caller _$CallerFromJson(Map<String, dynamic> json) {
  return _Caller.fromJson(json);
}

/// @nodoc
mixin _$Caller {
  @JsonKey(name: 'num')
  String get num => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int get dlsId => throw _privateConstructorUsedError;

  /// имя пользователя которое отобразится в ui
  String? get userFriendlyName => throw _privateConstructorUsedError;

  /// уникальный идентификатор, по нему можно будет понять кому принадлежит входящий видеопоток
  @JsonKey(name: 'label')
  String get label => throw _privateConstructorUsedError;

  /// TODO: надо сделать required bool speak после доработок на сервере
  @JsonKey(name: 'speak')
  bool? get speak => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CallerCopyWith<Caller> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CallerCopyWith<$Res> {
  factory $CallerCopyWith(Caller value, $Res Function(Caller) then) =
      _$CallerCopyWithImpl<$Res, Caller>;
  @useResult
  $Res call(
      {@JsonKey(name: 'num') String num,
      @JsonKey(name: 'user_id') int dlsId,
      String? userFriendlyName,
      @JsonKey(name: 'label') String label,
      @JsonKey(name: 'speak') bool? speak});
}

/// @nodoc
class _$CallerCopyWithImpl<$Res, $Val extends Caller>
    implements $CallerCopyWith<$Res> {
  _$CallerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? num = null,
    Object? dlsId = null,
    Object? userFriendlyName = freezed,
    Object? label = null,
    Object? speak = freezed,
  }) {
    return _then(_value.copyWith(
      num: null == num
          ? _value.num
          : num // ignore: cast_nullable_to_non_nullable
              as String,
      dlsId: null == dlsId
          ? _value.dlsId
          : dlsId // ignore: cast_nullable_to_non_nullable
              as int,
      userFriendlyName: freezed == userFriendlyName
          ? _value.userFriendlyName
          : userFriendlyName // ignore: cast_nullable_to_non_nullable
              as String?,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      speak: freezed == speak
          ? _value.speak
          : speak // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CallerCopyWith<$Res> implements $CallerCopyWith<$Res> {
  factory _$$_CallerCopyWith(_$_Caller value, $Res Function(_$_Caller) then) =
      __$$_CallerCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'num') String num,
      @JsonKey(name: 'user_id') int dlsId,
      String? userFriendlyName,
      @JsonKey(name: 'label') String label,
      @JsonKey(name: 'speak') bool? speak});
}

/// @nodoc
class __$$_CallerCopyWithImpl<$Res>
    extends _$CallerCopyWithImpl<$Res, _$_Caller>
    implements _$$_CallerCopyWith<$Res> {
  __$$_CallerCopyWithImpl(_$_Caller _value, $Res Function(_$_Caller) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? num = null,
    Object? dlsId = null,
    Object? userFriendlyName = freezed,
    Object? label = null,
    Object? speak = freezed,
  }) {
    return _then(_$_Caller(
      num: null == num
          ? _value.num
          : num // ignore: cast_nullable_to_non_nullable
              as String,
      dlsId: null == dlsId
          ? _value.dlsId
          : dlsId // ignore: cast_nullable_to_non_nullable
              as int,
      userFriendlyName: freezed == userFriendlyName
          ? _value.userFriendlyName
          : userFriendlyName // ignore: cast_nullable_to_non_nullable
              as String?,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      speak: freezed == speak
          ? _value.speak
          : speak // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Caller extends _Caller {
  _$_Caller(
      {@JsonKey(name: 'num') required this.num,
      @JsonKey(name: 'user_id') required this.dlsId,
      this.userFriendlyName,
      @JsonKey(name: 'label') required this.label,
      @JsonKey(name: 'speak') this.speak})
      : super._();

  factory _$_Caller.fromJson(Map<String, dynamic> json) =>
      _$$_CallerFromJson(json);

  @override
  @JsonKey(name: 'num')
  final String num;
  @override
  @JsonKey(name: 'user_id')
  final int dlsId;

  /// имя пользователя которое отобразится в ui
  @override
  final String? userFriendlyName;

  /// уникальный идентификатор, по нему можно будет понять кому принадлежит входящий видеопоток
  @override
  @JsonKey(name: 'label')
  final String label;

  /// TODO: надо сделать required bool speak после доработок на сервере
  @override
  @JsonKey(name: 'speak')
  final bool? speak;

  @override
  String toString() {
    return 'Caller(num: $num, dlsId: $dlsId, userFriendlyName: $userFriendlyName, label: $label, speak: $speak)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Caller &&
            (identical(other.num, num) || other.num == num) &&
            (identical(other.dlsId, dlsId) || other.dlsId == dlsId) &&
            (identical(other.userFriendlyName, userFriendlyName) ||
                other.userFriendlyName == userFriendlyName) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.speak, speak) || other.speak == speak));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, num, dlsId, userFriendlyName, label, speak);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CallerCopyWith<_$_Caller> get copyWith =>
      __$$_CallerCopyWithImpl<_$_Caller>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CallerToJson(
      this,
    );
  }
}

abstract class _Caller extends Caller {
  factory _Caller(
      {@JsonKey(name: 'num') required final String num,
      @JsonKey(name: 'user_id') required final int dlsId,
      final String? userFriendlyName,
      @JsonKey(name: 'label') required final String label,
      @JsonKey(name: 'speak') final bool? speak}) = _$_Caller;
  _Caller._() : super._();

  factory _Caller.fromJson(Map<String, dynamic> json) = _$_Caller.fromJson;

  @override
  @JsonKey(name: 'num')
  String get num;
  @override
  @JsonKey(name: 'user_id')
  int get dlsId;
  @override

  /// имя пользователя которое отобразится в ui
  String? get userFriendlyName;
  @override

  /// уникальный идентификатор, по нему можно будет понять кому принадлежит входящий видеопоток
  @JsonKey(name: 'label')
  String get label;
  @override

  /// TODO: надо сделать required bool speak после доработок на сервере
  @JsonKey(name: 'speak')
  bool? get speak;
  @override
  @JsonKey(ignore: true)
  _$$_CallerCopyWith<_$_Caller> get copyWith =>
      throw _privateConstructorUsedError;
}
