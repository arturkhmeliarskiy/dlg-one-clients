// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dls_tasks_checklist.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DlsTasksChecklist _$DlsTasksChecklistFromJson(Map<String, dynamic> json) {
  return _DlsTasksChecklist.fromJson(json);
}

/// @nodoc
mixin _$DlsTasksChecklist {
// TODO make required after Dev -> Demo server migrate
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'task_id')
  int? get taskId => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_checked')
  bool get isChecked => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DlsTasksChecklistCopyWith<DlsTasksChecklist> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DlsTasksChecklistCopyWith<$Res> {
  factory $DlsTasksChecklistCopyWith(
          DlsTasksChecklist value, $Res Function(DlsTasksChecklist) then) =
      _$DlsTasksChecklistCopyWithImpl<$Res, DlsTasksChecklist>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'task_id') int? taskId,
      @JsonKey(name: 'is_checked') bool isChecked,
      String name});
}

/// @nodoc
class _$DlsTasksChecklistCopyWithImpl<$Res, $Val extends DlsTasksChecklist>
    implements $DlsTasksChecklistCopyWith<$Res> {
  _$DlsTasksChecklistCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? taskId = freezed,
    Object? isChecked = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      taskId: freezed == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as int?,
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
abstract class _$$_DlsTasksChecklistCopyWith<$Res>
    implements $DlsTasksChecklistCopyWith<$Res> {
  factory _$$_DlsTasksChecklistCopyWith(_$_DlsTasksChecklist value,
          $Res Function(_$_DlsTasksChecklist) then) =
      __$$_DlsTasksChecklistCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'task_id') int? taskId,
      @JsonKey(name: 'is_checked') bool isChecked,
      String name});
}

/// @nodoc
class __$$_DlsTasksChecklistCopyWithImpl<$Res>
    extends _$DlsTasksChecklistCopyWithImpl<$Res, _$_DlsTasksChecklist>
    implements _$$_DlsTasksChecklistCopyWith<$Res> {
  __$$_DlsTasksChecklistCopyWithImpl(
      _$_DlsTasksChecklist _value, $Res Function(_$_DlsTasksChecklist) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? taskId = freezed,
    Object? isChecked = null,
    Object? name = null,
  }) {
    return _then(_$_DlsTasksChecklist(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      taskId: freezed == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as int?,
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
class _$_DlsTasksChecklist extends _DlsTasksChecklist {
  _$_DlsTasksChecklist(
      {this.id,
      @JsonKey(name: 'task_id') this.taskId,
      @JsonKey(name: 'is_checked') this.isChecked = false,
      this.name = ''})
      : super._();

  factory _$_DlsTasksChecklist.fromJson(Map<String, dynamic> json) =>
      _$$_DlsTasksChecklistFromJson(json);

// TODO make required after Dev -> Demo server migrate
  @override
  final int? id;
  @override
  @JsonKey(name: 'task_id')
  final int? taskId;
  @override
  @JsonKey(name: 'is_checked')
  final bool isChecked;
  @override
  @JsonKey()
  final String name;

  @override
  String toString() {
    return 'DlsTasksChecklist(id: $id, taskId: $taskId, isChecked: $isChecked, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DlsTasksChecklist &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.taskId, taskId) || other.taskId == taskId) &&
            (identical(other.isChecked, isChecked) ||
                other.isChecked == isChecked) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, taskId, isChecked, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DlsTasksChecklistCopyWith<_$_DlsTasksChecklist> get copyWith =>
      __$$_DlsTasksChecklistCopyWithImpl<_$_DlsTasksChecklist>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DlsTasksChecklistToJson(
      this,
    );
  }
}

abstract class _DlsTasksChecklist extends DlsTasksChecklist {
  factory _DlsTasksChecklist(
      {final int? id,
      @JsonKey(name: 'task_id') final int? taskId,
      @JsonKey(name: 'is_checked') final bool isChecked,
      final String name}) = _$_DlsTasksChecklist;
  _DlsTasksChecklist._() : super._();

  factory _DlsTasksChecklist.fromJson(Map<String, dynamic> json) =
      _$_DlsTasksChecklist.fromJson;

  @override // TODO make required after Dev -> Demo server migrate
  int? get id;
  @override
  @JsonKey(name: 'task_id')
  int? get taskId;
  @override
  @JsonKey(name: 'is_checked')
  bool get isChecked;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_DlsTasksChecklistCopyWith<_$_DlsTasksChecklist> get copyWith =>
      throw _privateConstructorUsedError;
}
