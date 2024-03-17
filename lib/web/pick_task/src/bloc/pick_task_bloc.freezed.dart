// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pick_task_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PickTaskEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PickTaskEventCopyWith<$Res> {
  factory $PickTaskEventCopyWith(
          PickTaskEvent value, $Res Function(PickTaskEvent) then) =
      _$PickTaskEventCopyWithImpl<$Res, PickTaskEvent>;
}

/// @nodoc
class _$PickTaskEventCopyWithImpl<$Res, $Val extends PickTaskEvent>
    implements $PickTaskEventCopyWith<$Res> {
  _$PickTaskEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitCopyWith<$Res> {
  factory _$$_InitCopyWith(_$_Init value, $Res Function(_$_Init) then) =
      __$$_InitCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitCopyWithImpl<$Res>
    extends _$PickTaskEventCopyWithImpl<$Res, _$_Init>
    implements _$$_InitCopyWith<$Res> {
  __$$_InitCopyWithImpl(_$_Init _value, $Res Function(_$_Init) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Init implements _Init {
  const _$_Init();

  @override
  String toString() {
    return 'PickTaskEvent.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Init);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _Init implements PickTaskEvent {
  const factory _Init() = _$_Init;
}

/// @nodoc
mixin _$PickTaskState {
// TODO config Pagination
  List<DlsTasks> get tasks => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<DlsTasks> tasks) $default, {
    required TResult Function(List<DlsTasks> tasks) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(List<DlsTasks> tasks)? $default, {
    TResult? Function(List<DlsTasks> tasks)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<DlsTasks> tasks)? $default, {
    TResult Function(List<DlsTasks> tasks)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_PickTaskState value) $default, {
    required TResult Function(_Loading value) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_PickTaskState value)? $default, {
    TResult? Function(_Loading value)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_PickTaskState value)? $default, {
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PickTaskStateCopyWith<PickTaskState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PickTaskStateCopyWith<$Res> {
  factory $PickTaskStateCopyWith(
          PickTaskState value, $Res Function(PickTaskState) then) =
      _$PickTaskStateCopyWithImpl<$Res, PickTaskState>;
  @useResult
  $Res call({List<DlsTasks> tasks});
}

/// @nodoc
class _$PickTaskStateCopyWithImpl<$Res, $Val extends PickTaskState>
    implements $PickTaskStateCopyWith<$Res> {
  _$PickTaskStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tasks = null,
  }) {
    return _then(_value.copyWith(
      tasks: null == tasks
          ? _value.tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<DlsTasks>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PickTaskStateCopyWith<$Res>
    implements $PickTaskStateCopyWith<$Res> {
  factory _$$_PickTaskStateCopyWith(
          _$_PickTaskState value, $Res Function(_$_PickTaskState) then) =
      __$$_PickTaskStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<DlsTasks> tasks});
}

/// @nodoc
class __$$_PickTaskStateCopyWithImpl<$Res>
    extends _$PickTaskStateCopyWithImpl<$Res, _$_PickTaskState>
    implements _$$_PickTaskStateCopyWith<$Res> {
  __$$_PickTaskStateCopyWithImpl(
      _$_PickTaskState _value, $Res Function(_$_PickTaskState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tasks = null,
  }) {
    return _then(_$_PickTaskState(
      tasks: null == tasks
          ? _value._tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<DlsTasks>,
    ));
  }
}

/// @nodoc

class _$_PickTaskState implements _PickTaskState {
  const _$_PickTaskState({final List<DlsTasks> tasks = const []})
      : _tasks = tasks;

// TODO config Pagination
  final List<DlsTasks> _tasks;
// TODO config Pagination
  @override
  @JsonKey()
  List<DlsTasks> get tasks {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tasks);
  }

  @override
  String toString() {
    return 'PickTaskState(tasks: $tasks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PickTaskState &&
            const DeepCollectionEquality().equals(other._tasks, _tasks));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_tasks));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PickTaskStateCopyWith<_$_PickTaskState> get copyWith =>
      __$$_PickTaskStateCopyWithImpl<_$_PickTaskState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<DlsTasks> tasks) $default, {
    required TResult Function(List<DlsTasks> tasks) loading,
  }) {
    return $default(tasks);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(List<DlsTasks> tasks)? $default, {
    TResult? Function(List<DlsTasks> tasks)? loading,
  }) {
    return $default?.call(tasks);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<DlsTasks> tasks)? $default, {
    TResult Function(List<DlsTasks> tasks)? loading,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(tasks);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_PickTaskState value) $default, {
    required TResult Function(_Loading value) loading,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_PickTaskState value)? $default, {
    TResult? Function(_Loading value)? loading,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_PickTaskState value)? $default, {
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _PickTaskState implements PickTaskState {
  const factory _PickTaskState({final List<DlsTasks> tasks}) = _$_PickTaskState;

  @override // TODO config Pagination
  List<DlsTasks> get tasks;
  @override
  @JsonKey(ignore: true)
  _$$_PickTaskStateCopyWith<_$_PickTaskState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res>
    implements $PickTaskStateCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<DlsTasks> tasks});
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$PickTaskStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tasks = null,
  }) {
    return _then(_$_Loading(
      tasks: null == tasks
          ? _value._tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<DlsTasks>,
    ));
  }
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading({final List<DlsTasks> tasks = const []}) : _tasks = tasks;

  final List<DlsTasks> _tasks;
  @override
  @JsonKey()
  List<DlsTasks> get tasks {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tasks);
  }

  @override
  String toString() {
    return 'PickTaskState.loading(tasks: $tasks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Loading &&
            const DeepCollectionEquality().equals(other._tasks, _tasks));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_tasks));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadingCopyWith<_$_Loading> get copyWith =>
      __$$_LoadingCopyWithImpl<_$_Loading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<DlsTasks> tasks) $default, {
    required TResult Function(List<DlsTasks> tasks) loading,
  }) {
    return loading(tasks);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(List<DlsTasks> tasks)? $default, {
    TResult? Function(List<DlsTasks> tasks)? loading,
  }) {
    return loading?.call(tasks);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<DlsTasks> tasks)? $default, {
    TResult Function(List<DlsTasks> tasks)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(tasks);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_PickTaskState value) $default, {
    required TResult Function(_Loading value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_PickTaskState value)? $default, {
    TResult? Function(_Loading value)? loading,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_PickTaskState value)? $default, {
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements PickTaskState {
  const factory _Loading({final List<DlsTasks> tasks}) = _$_Loading;

  @override
  List<DlsTasks> get tasks;
  @override
  @JsonKey(ignore: true)
  _$$_LoadingCopyWith<_$_Loading> get copyWith =>
      throw _privateConstructorUsedError;
}
