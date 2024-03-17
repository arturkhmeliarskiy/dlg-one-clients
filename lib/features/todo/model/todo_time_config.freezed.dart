// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'todo_time_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TodoTimeConfig {
  DateTime get startTime => throw _privateConstructorUsedError;
  DateTime get expireTime => throw _privateConstructorUsedError;
  bool get isOverdue => throw _privateConstructorUsedError;
  bool get isFullDay => throw _privateConstructorUsedError;
  Repeat? get repeat => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TodoTimeConfigCopyWith<TodoTimeConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoTimeConfigCopyWith<$Res> {
  factory $TodoTimeConfigCopyWith(
          TodoTimeConfig value, $Res Function(TodoTimeConfig) then) =
      _$TodoTimeConfigCopyWithImpl<$Res, TodoTimeConfig>;
  @useResult
  $Res call(
      {DateTime startTime,
      DateTime expireTime,
      bool isOverdue,
      bool isFullDay,
      Repeat? repeat});

  $RepeatCopyWith<$Res>? get repeat;
}

/// @nodoc
class _$TodoTimeConfigCopyWithImpl<$Res, $Val extends TodoTimeConfig>
    implements $TodoTimeConfigCopyWith<$Res> {
  _$TodoTimeConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startTime = null,
    Object? expireTime = null,
    Object? isOverdue = null,
    Object? isFullDay = null,
    Object? repeat = freezed,
  }) {
    return _then(_value.copyWith(
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      expireTime: null == expireTime
          ? _value.expireTime
          : expireTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isOverdue: null == isOverdue
          ? _value.isOverdue
          : isOverdue // ignore: cast_nullable_to_non_nullable
              as bool,
      isFullDay: null == isFullDay
          ? _value.isFullDay
          : isFullDay // ignore: cast_nullable_to_non_nullable
              as bool,
      repeat: freezed == repeat
          ? _value.repeat
          : repeat // ignore: cast_nullable_to_non_nullable
              as Repeat?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RepeatCopyWith<$Res>? get repeat {
    if (_value.repeat == null) {
      return null;
    }

    return $RepeatCopyWith<$Res>(_value.repeat!, (value) {
      return _then(_value.copyWith(repeat: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TodoTimeConfigCopyWith<$Res>
    implements $TodoTimeConfigCopyWith<$Res> {
  factory _$$_TodoTimeConfigCopyWith(
          _$_TodoTimeConfig value, $Res Function(_$_TodoTimeConfig) then) =
      __$$_TodoTimeConfigCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime startTime,
      DateTime expireTime,
      bool isOverdue,
      bool isFullDay,
      Repeat? repeat});

  @override
  $RepeatCopyWith<$Res>? get repeat;
}

/// @nodoc
class __$$_TodoTimeConfigCopyWithImpl<$Res>
    extends _$TodoTimeConfigCopyWithImpl<$Res, _$_TodoTimeConfig>
    implements _$$_TodoTimeConfigCopyWith<$Res> {
  __$$_TodoTimeConfigCopyWithImpl(
      _$_TodoTimeConfig _value, $Res Function(_$_TodoTimeConfig) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startTime = null,
    Object? expireTime = null,
    Object? isOverdue = null,
    Object? isFullDay = null,
    Object? repeat = freezed,
  }) {
    return _then(_$_TodoTimeConfig(
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      expireTime: null == expireTime
          ? _value.expireTime
          : expireTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isOverdue: null == isOverdue
          ? _value.isOverdue
          : isOverdue // ignore: cast_nullable_to_non_nullable
              as bool,
      isFullDay: null == isFullDay
          ? _value.isFullDay
          : isFullDay // ignore: cast_nullable_to_non_nullable
              as bool,
      repeat: freezed == repeat
          ? _value.repeat
          : repeat // ignore: cast_nullable_to_non_nullable
              as Repeat?,
    ));
  }
}

/// @nodoc

class _$_TodoTimeConfig extends _TodoTimeConfig {
  const _$_TodoTimeConfig(
      {required this.startTime,
      required this.expireTime,
      this.isOverdue = false,
      this.isFullDay = true,
      this.repeat})
      : super._();

  @override
  final DateTime startTime;
  @override
  final DateTime expireTime;
  @override
  @JsonKey()
  final bool isOverdue;
  @override
  @JsonKey()
  final bool isFullDay;
  @override
  final Repeat? repeat;

  @override
  String toString() {
    return 'TodoTimeConfig(startTime: $startTime, expireTime: $expireTime, isOverdue: $isOverdue, isFullDay: $isFullDay, repeat: $repeat)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TodoTimeConfig &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.expireTime, expireTime) ||
                other.expireTime == expireTime) &&
            (identical(other.isOverdue, isOverdue) ||
                other.isOverdue == isOverdue) &&
            (identical(other.isFullDay, isFullDay) ||
                other.isFullDay == isFullDay) &&
            (identical(other.repeat, repeat) || other.repeat == repeat));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, startTime, expireTime, isOverdue, isFullDay, repeat);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TodoTimeConfigCopyWith<_$_TodoTimeConfig> get copyWith =>
      __$$_TodoTimeConfigCopyWithImpl<_$_TodoTimeConfig>(this, _$identity);
}

abstract class _TodoTimeConfig extends TodoTimeConfig {
  const factory _TodoTimeConfig(
      {required final DateTime startTime,
      required final DateTime expireTime,
      final bool isOverdue,
      final bool isFullDay,
      final Repeat? repeat}) = _$_TodoTimeConfig;
  const _TodoTimeConfig._() : super._();

  @override
  DateTime get startTime;
  @override
  DateTime get expireTime;
  @override
  bool get isOverdue;
  @override
  bool get isFullDay;
  @override
  Repeat? get repeat;
  @override
  @JsonKey(ignore: true)
  _$$_TodoTimeConfigCopyWith<_$_TodoTimeConfig> get copyWith =>
      throw _privateConstructorUsedError;
}
