// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dls_tasks_sprint_story_points.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DlsTasksSprintStoryPoints _$DlsTasksSprintStoryPointsFromJson(
    Map<String, dynamic> json) {
  return _DlsTasksSprintStoryPoints.fromJson(json);
}

/// @nodoc
mixin _$DlsTasksSprintStoryPoints {
  @JsonKey(name: 'plan')
  int? get plan => throw _privateConstructorUsedError;
  @JsonKey(name: 'fact')
  int? get fact => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DlsTasksSprintStoryPointsCopyWith<DlsTasksSprintStoryPoints> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DlsTasksSprintStoryPointsCopyWith<$Res> {
  factory $DlsTasksSprintStoryPointsCopyWith(DlsTasksSprintStoryPoints value,
          $Res Function(DlsTasksSprintStoryPoints) then) =
      _$DlsTasksSprintStoryPointsCopyWithImpl<$Res, DlsTasksSprintStoryPoints>;
  @useResult
  $Res call(
      {@JsonKey(name: 'plan') int? plan, @JsonKey(name: 'fact') int? fact});
}

/// @nodoc
class _$DlsTasksSprintStoryPointsCopyWithImpl<$Res,
        $Val extends DlsTasksSprintStoryPoints>
    implements $DlsTasksSprintStoryPointsCopyWith<$Res> {
  _$DlsTasksSprintStoryPointsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? plan = freezed,
    Object? fact = freezed,
  }) {
    return _then(_value.copyWith(
      plan: freezed == plan
          ? _value.plan
          : plan // ignore: cast_nullable_to_non_nullable
              as int?,
      fact: freezed == fact
          ? _value.fact
          : fact // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DlsTasksSprintStoryPointsCopyWith<$Res>
    implements $DlsTasksSprintStoryPointsCopyWith<$Res> {
  factory _$$_DlsTasksSprintStoryPointsCopyWith(
          _$_DlsTasksSprintStoryPoints value,
          $Res Function(_$_DlsTasksSprintStoryPoints) then) =
      __$$_DlsTasksSprintStoryPointsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'plan') int? plan, @JsonKey(name: 'fact') int? fact});
}

/// @nodoc
class __$$_DlsTasksSprintStoryPointsCopyWithImpl<$Res>
    extends _$DlsTasksSprintStoryPointsCopyWithImpl<$Res,
        _$_DlsTasksSprintStoryPoints>
    implements _$$_DlsTasksSprintStoryPointsCopyWith<$Res> {
  __$$_DlsTasksSprintStoryPointsCopyWithImpl(
      _$_DlsTasksSprintStoryPoints _value,
      $Res Function(_$_DlsTasksSprintStoryPoints) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? plan = freezed,
    Object? fact = freezed,
  }) {
    return _then(_$_DlsTasksSprintStoryPoints(
      plan: freezed == plan
          ? _value.plan
          : plan // ignore: cast_nullable_to_non_nullable
              as int?,
      fact: freezed == fact
          ? _value.fact
          : fact // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DlsTasksSprintStoryPoints extends _DlsTasksSprintStoryPoints {
  _$_DlsTasksSprintStoryPoints(
      {@JsonKey(name: 'plan') this.plan, @JsonKey(name: 'fact') this.fact})
      : super._();

  factory _$_DlsTasksSprintStoryPoints.fromJson(Map<String, dynamic> json) =>
      _$$_DlsTasksSprintStoryPointsFromJson(json);

  @override
  @JsonKey(name: 'plan')
  final int? plan;
  @override
  @JsonKey(name: 'fact')
  final int? fact;

  @override
  String toString() {
    return 'DlsTasksSprintStoryPoints(plan: $plan, fact: $fact)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DlsTasksSprintStoryPoints &&
            (identical(other.plan, plan) || other.plan == plan) &&
            (identical(other.fact, fact) || other.fact == fact));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, plan, fact);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DlsTasksSprintStoryPointsCopyWith<_$_DlsTasksSprintStoryPoints>
      get copyWith => __$$_DlsTasksSprintStoryPointsCopyWithImpl<
          _$_DlsTasksSprintStoryPoints>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DlsTasksSprintStoryPointsToJson(
      this,
    );
  }
}

abstract class _DlsTasksSprintStoryPoints extends DlsTasksSprintStoryPoints {
  factory _DlsTasksSprintStoryPoints(
      {@JsonKey(name: 'plan') final int? plan,
      @JsonKey(name: 'fact') final int? fact}) = _$_DlsTasksSprintStoryPoints;
  _DlsTasksSprintStoryPoints._() : super._();

  factory _DlsTasksSprintStoryPoints.fromJson(Map<String, dynamic> json) =
      _$_DlsTasksSprintStoryPoints.fromJson;

  @override
  @JsonKey(name: 'plan')
  int? get plan;
  @override
  @JsonKey(name: 'fact')
  int? get fact;
  @override
  @JsonKey(ignore: true)
  _$$_DlsTasksSprintStoryPointsCopyWith<_$_DlsTasksSprintStoryPoints>
      get copyWith => throw _privateConstructorUsedError;
}
