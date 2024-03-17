// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'todo_models_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TodoModelsConfig {
  DateTime get endDate => throw _privateConstructorUsedError;
  DateTime? get startDate => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TodoModelsConfigCopyWith<TodoModelsConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoModelsConfigCopyWith<$Res> {
  factory $TodoModelsConfigCopyWith(
          TodoModelsConfig value, $Res Function(TodoModelsConfig) then) =
      _$TodoModelsConfigCopyWithImpl<$Res, TodoModelsConfig>;
  @useResult
  $Res call({DateTime endDate, DateTime? startDate});
}

/// @nodoc
class _$TodoModelsConfigCopyWithImpl<$Res, $Val extends TodoModelsConfig>
    implements $TodoModelsConfigCopyWith<$Res> {
  _$TodoModelsConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? endDate = null,
    Object? startDate = freezed,
  }) {
    return _then(_value.copyWith(
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TodoModelsConfigCopyWith<$Res>
    implements $TodoModelsConfigCopyWith<$Res> {
  factory _$$_TodoModelsConfigCopyWith(
          _$_TodoModelsConfig value, $Res Function(_$_TodoModelsConfig) then) =
      __$$_TodoModelsConfigCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime endDate, DateTime? startDate});
}

/// @nodoc
class __$$_TodoModelsConfigCopyWithImpl<$Res>
    extends _$TodoModelsConfigCopyWithImpl<$Res, _$_TodoModelsConfig>
    implements _$$_TodoModelsConfigCopyWith<$Res> {
  __$$_TodoModelsConfigCopyWithImpl(
      _$_TodoModelsConfig _value, $Res Function(_$_TodoModelsConfig) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? endDate = null,
    Object? startDate = freezed,
  }) {
    return _then(_$_TodoModelsConfig(
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$_TodoModelsConfig extends _TodoModelsConfig {
  const _$_TodoModelsConfig({required this.endDate, this.startDate})
      : super._();

  @override
  final DateTime endDate;
  @override
  final DateTime? startDate;

  @override
  String toString() {
    return 'TodoModelsConfig(endDate: $endDate, startDate: $startDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TodoModelsConfig &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, endDate, startDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TodoModelsConfigCopyWith<_$_TodoModelsConfig> get copyWith =>
      __$$_TodoModelsConfigCopyWithImpl<_$_TodoModelsConfig>(this, _$identity);
}

abstract class _TodoModelsConfig extends TodoModelsConfig {
  const factory _TodoModelsConfig(
      {required final DateTime endDate,
      final DateTime? startDate}) = _$_TodoModelsConfig;
  const _TodoModelsConfig._() : super._();

  @override
  DateTime get endDate;
  @override
  DateTime? get startDate;
  @override
  @JsonKey(ignore: true)
  _$$_TodoModelsConfigCopyWith<_$_TodoModelsConfig> get copyWith =>
      throw _privateConstructorUsedError;
}
