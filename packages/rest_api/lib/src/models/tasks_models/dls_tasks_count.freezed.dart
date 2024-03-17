// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dls_tasks_count.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DlsTasksCount _$DlsTasksCountFromJson(Map<String, dynamic> json) {
  return _DlsTasksCount.fromJson(json);
}

/// @nodoc
mixin _$DlsTasksCount {
  @JsonKey(name: 'count')
  int? get count => throw _privateConstructorUsedError;
  @JsonKey(name: 'done')
  int? get done => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DlsTasksCountCopyWith<DlsTasksCount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DlsTasksCountCopyWith<$Res> {
  factory $DlsTasksCountCopyWith(
          DlsTasksCount value, $Res Function(DlsTasksCount) then) =
      _$DlsTasksCountCopyWithImpl<$Res, DlsTasksCount>;
  @useResult
  $Res call(
      {@JsonKey(name: 'count') int? count, @JsonKey(name: 'done') int? done});
}

/// @nodoc
class _$DlsTasksCountCopyWithImpl<$Res, $Val extends DlsTasksCount>
    implements $DlsTasksCountCopyWith<$Res> {
  _$DlsTasksCountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = freezed,
    Object? done = freezed,
  }) {
    return _then(_value.copyWith(
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      done: freezed == done
          ? _value.done
          : done // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DlsTasksCountCopyWith<$Res>
    implements $DlsTasksCountCopyWith<$Res> {
  factory _$$_DlsTasksCountCopyWith(
          _$_DlsTasksCount value, $Res Function(_$_DlsTasksCount) then) =
      __$$_DlsTasksCountCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'count') int? count, @JsonKey(name: 'done') int? done});
}

/// @nodoc
class __$$_DlsTasksCountCopyWithImpl<$Res>
    extends _$DlsTasksCountCopyWithImpl<$Res, _$_DlsTasksCount>
    implements _$$_DlsTasksCountCopyWith<$Res> {
  __$$_DlsTasksCountCopyWithImpl(
      _$_DlsTasksCount _value, $Res Function(_$_DlsTasksCount) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = freezed,
    Object? done = freezed,
  }) {
    return _then(_$_DlsTasksCount(
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      done: freezed == done
          ? _value.done
          : done // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DlsTasksCount extends _DlsTasksCount {
  _$_DlsTasksCount(
      {@JsonKey(name: 'count') this.count, @JsonKey(name: 'done') this.done})
      : super._();

  factory _$_DlsTasksCount.fromJson(Map<String, dynamic> json) =>
      _$$_DlsTasksCountFromJson(json);

  @override
  @JsonKey(name: 'count')
  final int? count;
  @override
  @JsonKey(name: 'done')
  final int? done;

  @override
  String toString() {
    return 'DlsTasksCount(count: $count, done: $done)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DlsTasksCount &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.done, done) || other.done == done));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, count, done);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DlsTasksCountCopyWith<_$_DlsTasksCount> get copyWith =>
      __$$_DlsTasksCountCopyWithImpl<_$_DlsTasksCount>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DlsTasksCountToJson(
      this,
    );
  }
}

abstract class _DlsTasksCount extends DlsTasksCount {
  factory _DlsTasksCount(
      {@JsonKey(name: 'count') final int? count,
      @JsonKey(name: 'done') final int? done}) = _$_DlsTasksCount;
  _DlsTasksCount._() : super._();

  factory _DlsTasksCount.fromJson(Map<String, dynamic> json) =
      _$_DlsTasksCount.fromJson;

  @override
  @JsonKey(name: 'count')
  int? get count;
  @override
  @JsonKey(name: 'done')
  int? get done;
  @override
  @JsonKey(ignore: true)
  _$$_DlsTasksCountCopyWith<_$_DlsTasksCount> get copyWith =>
      throw _privateConstructorUsedError;
}
