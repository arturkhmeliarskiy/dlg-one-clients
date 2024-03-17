// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_checklist_create_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TasksChecklistCreateRequest _$TasksChecklistCreateRequestFromJson(
    Map<String, dynamic> json) {
  return _TasksChecklistCreateRequest.fromJson(json);
}

/// @nodoc
mixin _$TasksChecklistCreateRequest {
  @JsonKey(name: 'task_id')
  int get taskId => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_checked')
  bool get isChecked => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TasksChecklistCreateRequestCopyWith<TasksChecklistCreateRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TasksChecklistCreateRequestCopyWith<$Res> {
  factory $TasksChecklistCreateRequestCopyWith(
          TasksChecklistCreateRequest value,
          $Res Function(TasksChecklistCreateRequest) then) =
      _$TasksChecklistCreateRequestCopyWithImpl<$Res,
          TasksChecklistCreateRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'task_id') int taskId,
      @JsonKey(name: 'is_checked') bool isChecked,
      String name});
}

/// @nodoc
class _$TasksChecklistCreateRequestCopyWithImpl<$Res,
        $Val extends TasksChecklistCreateRequest>
    implements $TasksChecklistCreateRequestCopyWith<$Res> {
  _$TasksChecklistCreateRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskId = null,
    Object? isChecked = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      taskId: null == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as int,
      isChecked: null == isChecked
          ? _value.isChecked
          : isChecked // ignore: cast_nullable_to_non_nullable
              as bool,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TasksChecklistCreateRequestCopyWith<$Res>
    implements $TasksChecklistCreateRequestCopyWith<$Res> {
  factory _$$_TasksChecklistCreateRequestCopyWith(
          _$_TasksChecklistCreateRequest value,
          $Res Function(_$_TasksChecklistCreateRequest) then) =
      __$$_TasksChecklistCreateRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'task_id') int taskId,
      @JsonKey(name: 'is_checked') bool isChecked,
      String name});
}

/// @nodoc
class __$$_TasksChecklistCreateRequestCopyWithImpl<$Res>
    extends _$TasksChecklistCreateRequestCopyWithImpl<$Res,
        _$_TasksChecklistCreateRequest>
    implements _$$_TasksChecklistCreateRequestCopyWith<$Res> {
  __$$_TasksChecklistCreateRequestCopyWithImpl(
      _$_TasksChecklistCreateRequest _value,
      $Res Function(_$_TasksChecklistCreateRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskId = null,
    Object? isChecked = null,
    Object? name = null,
  }) {
    return _then(_$_TasksChecklistCreateRequest(
      taskId: null == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as int,
      isChecked: null == isChecked
          ? _value.isChecked
          : isChecked // ignore: cast_nullable_to_non_nullable
              as bool,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$_TasksChecklistCreateRequest extends _TasksChecklistCreateRequest {
  _$_TasksChecklistCreateRequest(
      {@JsonKey(name: 'task_id') required this.taskId,
      @JsonKey(name: 'is_checked') this.isChecked = false,
      this.name = ''})
      : super._();

  factory _$_TasksChecklistCreateRequest.fromJson(Map<String, dynamic> json) =>
      _$$_TasksChecklistCreateRequestFromJson(json);

  @override
  @JsonKey(name: 'task_id')
  final int taskId;
  @override
  @JsonKey(name: 'is_checked')
  final bool isChecked;
  @override
  @JsonKey()
  final String name;

  @override
  String toString() {
    return 'TasksChecklistCreateRequest(taskId: $taskId, isChecked: $isChecked, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TasksChecklistCreateRequest &&
            (identical(other.taskId, taskId) || other.taskId == taskId) &&
            (identical(other.isChecked, isChecked) ||
                other.isChecked == isChecked) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, taskId, isChecked, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TasksChecklistCreateRequestCopyWith<_$_TasksChecklistCreateRequest>
      get copyWith => __$$_TasksChecklistCreateRequestCopyWithImpl<
          _$_TasksChecklistCreateRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TasksChecklistCreateRequestToJson(
      this,
    );
  }
}

abstract class _TasksChecklistCreateRequest
    extends TasksChecklistCreateRequest {
  factory _TasksChecklistCreateRequest(
      {@JsonKey(name: 'task_id') required final int taskId,
      @JsonKey(name: 'is_checked') final bool isChecked,
      final String name}) = _$_TasksChecklistCreateRequest;
  _TasksChecklistCreateRequest._() : super._();

  factory _TasksChecklistCreateRequest.fromJson(Map<String, dynamic> json) =
      _$_TasksChecklistCreateRequest.fromJson;

  @override
  @JsonKey(name: 'task_id')
  int get taskId;
  @override
  @JsonKey(name: 'is_checked')
  bool get isChecked;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_TasksChecklistCreateRequestCopyWith<_$_TasksChecklistCreateRequest>
      get copyWith => throw _privateConstructorUsedError;
}
