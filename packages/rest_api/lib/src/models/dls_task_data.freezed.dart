// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dls_task_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DlsTaskData _$DlsTaskDataFromJson(Map<String, dynamic> json) {
  return _DlsTaskData.fromJson(json);
}

/// @nodoc
mixin _$DlsTaskData {
  @JsonKey(name: 'over_tasks')
  List<SubTaskData>? get over_tasks => throw _privateConstructorUsedError;
  @JsonKey(name: 'subtasks')
  List<SubTaskData>? get subtasks => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DlsTaskDataCopyWith<DlsTaskData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DlsTaskDataCopyWith<$Res> {
  factory $DlsTaskDataCopyWith(
          DlsTaskData value, $Res Function(DlsTaskData) then) =
      _$DlsTaskDataCopyWithImpl<$Res, DlsTaskData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'over_tasks') List<SubTaskData>? over_tasks,
      @JsonKey(name: 'subtasks') List<SubTaskData>? subtasks});
}

/// @nodoc
class _$DlsTaskDataCopyWithImpl<$Res, $Val extends DlsTaskData>
    implements $DlsTaskDataCopyWith<$Res> {
  _$DlsTaskDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? over_tasks = freezed,
    Object? subtasks = freezed,
  }) {
    return _then(_value.copyWith(
      over_tasks: freezed == over_tasks
          ? _value.over_tasks
          : over_tasks // ignore: cast_nullable_to_non_nullable
              as List<SubTaskData>?,
      subtasks: freezed == subtasks
          ? _value.subtasks
          : subtasks // ignore: cast_nullable_to_non_nullable
              as List<SubTaskData>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DlsTaskDataCopyWith<$Res>
    implements $DlsTaskDataCopyWith<$Res> {
  factory _$$_DlsTaskDataCopyWith(
          _$_DlsTaskData value, $Res Function(_$_DlsTaskData) then) =
      __$$_DlsTaskDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'over_tasks') List<SubTaskData>? over_tasks,
      @JsonKey(name: 'subtasks') List<SubTaskData>? subtasks});
}

/// @nodoc
class __$$_DlsTaskDataCopyWithImpl<$Res>
    extends _$DlsTaskDataCopyWithImpl<$Res, _$_DlsTaskData>
    implements _$$_DlsTaskDataCopyWith<$Res> {
  __$$_DlsTaskDataCopyWithImpl(
      _$_DlsTaskData _value, $Res Function(_$_DlsTaskData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? over_tasks = freezed,
    Object? subtasks = freezed,
  }) {
    return _then(_$_DlsTaskData(
      over_tasks: freezed == over_tasks
          ? _value._over_tasks
          : over_tasks // ignore: cast_nullable_to_non_nullable
              as List<SubTaskData>?,
      subtasks: freezed == subtasks
          ? _value._subtasks
          : subtasks // ignore: cast_nullable_to_non_nullable
              as List<SubTaskData>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DlsTaskData extends _DlsTaskData {
  const _$_DlsTaskData(
      {@JsonKey(name: 'over_tasks') final List<SubTaskData>? over_tasks,
      @JsonKey(name: 'subtasks') final List<SubTaskData>? subtasks})
      : _over_tasks = over_tasks,
        _subtasks = subtasks,
        super._();

  factory _$_DlsTaskData.fromJson(Map<String, dynamic> json) =>
      _$$_DlsTaskDataFromJson(json);

  final List<SubTaskData>? _over_tasks;
  @override
  @JsonKey(name: 'over_tasks')
  List<SubTaskData>? get over_tasks {
    final value = _over_tasks;
    if (value == null) return null;
    if (_over_tasks is EqualUnmodifiableListView) return _over_tasks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<SubTaskData>? _subtasks;
  @override
  @JsonKey(name: 'subtasks')
  List<SubTaskData>? get subtasks {
    final value = _subtasks;
    if (value == null) return null;
    if (_subtasks is EqualUnmodifiableListView) return _subtasks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'DlsTaskData(over_tasks: $over_tasks, subtasks: $subtasks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DlsTaskData &&
            const DeepCollectionEquality()
                .equals(other._over_tasks, _over_tasks) &&
            const DeepCollectionEquality().equals(other._subtasks, _subtasks));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_over_tasks),
      const DeepCollectionEquality().hash(_subtasks));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DlsTaskDataCopyWith<_$_DlsTaskData> get copyWith =>
      __$$_DlsTaskDataCopyWithImpl<_$_DlsTaskData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DlsTaskDataToJson(
      this,
    );
  }
}

abstract class _DlsTaskData extends DlsTaskData {
  const factory _DlsTaskData(
          {@JsonKey(name: 'over_tasks') final List<SubTaskData>? over_tasks,
          @JsonKey(name: 'subtasks') final List<SubTaskData>? subtasks}) =
      _$_DlsTaskData;
  const _DlsTaskData._() : super._();

  factory _DlsTaskData.fromJson(Map<String, dynamic> json) =
      _$_DlsTaskData.fromJson;

  @override
  @JsonKey(name: 'over_tasks')
  List<SubTaskData>? get over_tasks;
  @override
  @JsonKey(name: 'subtasks')
  List<SubTaskData>? get subtasks;
  @override
  @JsonKey(ignore: true)
  _$$_DlsTaskDataCopyWith<_$_DlsTaskData> get copyWith =>
      throw _privateConstructorUsedError;
}
