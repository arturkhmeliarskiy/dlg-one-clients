// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'upcoming_todo_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UpcomingTodoState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UpcomingStateData? data) idle,
    required TResult Function(UpcomingStateData? data) loading,
    required TResult Function(UpcomingStateData? data) loadingMore,
    required TResult Function(UpcomingStateData? data, TodoError error) error,
    required TResult Function(UpcomingStateData data, TodoModel editedModel)
        successEditTodo,
    required TResult Function(UpcomingStateData data, DateTime date)
        successLoadedByDate,
    required TResult Function(UpcomingStateData data) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UpcomingStateData? data)? idle,
    TResult? Function(UpcomingStateData? data)? loading,
    TResult? Function(UpcomingStateData? data)? loadingMore,
    TResult? Function(UpcomingStateData? data, TodoError error)? error,
    TResult? Function(UpcomingStateData data, TodoModel editedModel)?
        successEditTodo,
    TResult? Function(UpcomingStateData data, DateTime date)?
        successLoadedByDate,
    TResult? Function(UpcomingStateData data)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UpcomingStateData? data)? idle,
    TResult Function(UpcomingStateData? data)? loading,
    TResult Function(UpcomingStateData? data)? loadingMore,
    TResult Function(UpcomingStateData? data, TodoError error)? error,
    TResult Function(UpcomingStateData data, TodoModel editedModel)?
        successEditTodo,
    TResult Function(UpcomingStateData data, DateTime date)?
        successLoadedByDate,
    TResult Function(UpcomingStateData data)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IdleUpcomingTodoState value) idle,
    required TResult Function(LoadingUpcomingTodoState value) loading,
    required TResult Function(LoadingMoreUpcomingTodoState value) loadingMore,
    required TResult Function(ErrorUpcomingTodoState value) error,
    required TResult Function(SuccessEditTodoUpcomingTodoState value)
        successEditTodo,
    required TResult Function(SuccessLoadedByDateUpcomingTodoState value)
        successLoadedByDate,
    required TResult Function(SuccessUpcomingTodoState value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IdleUpcomingTodoState value)? idle,
    TResult? Function(LoadingUpcomingTodoState value)? loading,
    TResult? Function(LoadingMoreUpcomingTodoState value)? loadingMore,
    TResult? Function(ErrorUpcomingTodoState value)? error,
    TResult? Function(SuccessEditTodoUpcomingTodoState value)? successEditTodo,
    TResult? Function(SuccessLoadedByDateUpcomingTodoState value)?
        successLoadedByDate,
    TResult? Function(SuccessUpcomingTodoState value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IdleUpcomingTodoState value)? idle,
    TResult Function(LoadingUpcomingTodoState value)? loading,
    TResult Function(LoadingMoreUpcomingTodoState value)? loadingMore,
    TResult Function(ErrorUpcomingTodoState value)? error,
    TResult Function(SuccessEditTodoUpcomingTodoState value)? successEditTodo,
    TResult Function(SuccessLoadedByDateUpcomingTodoState value)?
        successLoadedByDate,
    TResult Function(SuccessUpcomingTodoState value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpcomingTodoStateCopyWith<$Res> {
  factory $UpcomingTodoStateCopyWith(
          UpcomingTodoState value, $Res Function(UpcomingTodoState) then) =
      _$UpcomingTodoStateCopyWithImpl<$Res, UpcomingTodoState>;
}

/// @nodoc
class _$UpcomingTodoStateCopyWithImpl<$Res, $Val extends UpcomingTodoState>
    implements $UpcomingTodoStateCopyWith<$Res> {
  _$UpcomingTodoStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$IdleUpcomingTodoStateCopyWith<$Res> {
  factory _$$IdleUpcomingTodoStateCopyWith(_$IdleUpcomingTodoState value,
          $Res Function(_$IdleUpcomingTodoState) then) =
      __$$IdleUpcomingTodoStateCopyWithImpl<$Res>;
  @useResult
  $Res call({UpcomingStateData? data});
}

/// @nodoc
class __$$IdleUpcomingTodoStateCopyWithImpl<$Res>
    extends _$UpcomingTodoStateCopyWithImpl<$Res, _$IdleUpcomingTodoState>
    implements _$$IdleUpcomingTodoStateCopyWith<$Res> {
  __$$IdleUpcomingTodoStateCopyWithImpl(_$IdleUpcomingTodoState _value,
      $Res Function(_$IdleUpcomingTodoState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$IdleUpcomingTodoState(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as UpcomingStateData?,
    ));
  }
}

/// @nodoc

class _$IdleUpcomingTodoState extends IdleUpcomingTodoState {
  const _$IdleUpcomingTodoState({required this.data}) : super._();

  @override
  final UpcomingStateData? data;

  @override
  String toString() {
    return 'UpcomingTodoState.idle(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IdleUpcomingTodoState &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IdleUpcomingTodoStateCopyWith<_$IdleUpcomingTodoState> get copyWith =>
      __$$IdleUpcomingTodoStateCopyWithImpl<_$IdleUpcomingTodoState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UpcomingStateData? data) idle,
    required TResult Function(UpcomingStateData? data) loading,
    required TResult Function(UpcomingStateData? data) loadingMore,
    required TResult Function(UpcomingStateData? data, TodoError error) error,
    required TResult Function(UpcomingStateData data, TodoModel editedModel)
        successEditTodo,
    required TResult Function(UpcomingStateData data, DateTime date)
        successLoadedByDate,
    required TResult Function(UpcomingStateData data) success,
  }) {
    return idle(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UpcomingStateData? data)? idle,
    TResult? Function(UpcomingStateData? data)? loading,
    TResult? Function(UpcomingStateData? data)? loadingMore,
    TResult? Function(UpcomingStateData? data, TodoError error)? error,
    TResult? Function(UpcomingStateData data, TodoModel editedModel)?
        successEditTodo,
    TResult? Function(UpcomingStateData data, DateTime date)?
        successLoadedByDate,
    TResult? Function(UpcomingStateData data)? success,
  }) {
    return idle?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UpcomingStateData? data)? idle,
    TResult Function(UpcomingStateData? data)? loading,
    TResult Function(UpcomingStateData? data)? loadingMore,
    TResult Function(UpcomingStateData? data, TodoError error)? error,
    TResult Function(UpcomingStateData data, TodoModel editedModel)?
        successEditTodo,
    TResult Function(UpcomingStateData data, DateTime date)?
        successLoadedByDate,
    TResult Function(UpcomingStateData data)? success,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IdleUpcomingTodoState value) idle,
    required TResult Function(LoadingUpcomingTodoState value) loading,
    required TResult Function(LoadingMoreUpcomingTodoState value) loadingMore,
    required TResult Function(ErrorUpcomingTodoState value) error,
    required TResult Function(SuccessEditTodoUpcomingTodoState value)
        successEditTodo,
    required TResult Function(SuccessLoadedByDateUpcomingTodoState value)
        successLoadedByDate,
    required TResult Function(SuccessUpcomingTodoState value) success,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IdleUpcomingTodoState value)? idle,
    TResult? Function(LoadingUpcomingTodoState value)? loading,
    TResult? Function(LoadingMoreUpcomingTodoState value)? loadingMore,
    TResult? Function(ErrorUpcomingTodoState value)? error,
    TResult? Function(SuccessEditTodoUpcomingTodoState value)? successEditTodo,
    TResult? Function(SuccessLoadedByDateUpcomingTodoState value)?
        successLoadedByDate,
    TResult? Function(SuccessUpcomingTodoState value)? success,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IdleUpcomingTodoState value)? idle,
    TResult Function(LoadingUpcomingTodoState value)? loading,
    TResult Function(LoadingMoreUpcomingTodoState value)? loadingMore,
    TResult Function(ErrorUpcomingTodoState value)? error,
    TResult Function(SuccessEditTodoUpcomingTodoState value)? successEditTodo,
    TResult Function(SuccessLoadedByDateUpcomingTodoState value)?
        successLoadedByDate,
    TResult Function(SuccessUpcomingTodoState value)? success,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class IdleUpcomingTodoState extends UpcomingTodoState {
  const factory IdleUpcomingTodoState(
      {required final UpcomingStateData? data}) = _$IdleUpcomingTodoState;
  const IdleUpcomingTodoState._() : super._();

  UpcomingStateData? get data;
  @JsonKey(ignore: true)
  _$$IdleUpcomingTodoStateCopyWith<_$IdleUpcomingTodoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingUpcomingTodoStateCopyWith<$Res> {
  factory _$$LoadingUpcomingTodoStateCopyWith(_$LoadingUpcomingTodoState value,
          $Res Function(_$LoadingUpcomingTodoState) then) =
      __$$LoadingUpcomingTodoStateCopyWithImpl<$Res>;
  @useResult
  $Res call({UpcomingStateData? data});
}

/// @nodoc
class __$$LoadingUpcomingTodoStateCopyWithImpl<$Res>
    extends _$UpcomingTodoStateCopyWithImpl<$Res, _$LoadingUpcomingTodoState>
    implements _$$LoadingUpcomingTodoStateCopyWith<$Res> {
  __$$LoadingUpcomingTodoStateCopyWithImpl(_$LoadingUpcomingTodoState _value,
      $Res Function(_$LoadingUpcomingTodoState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$LoadingUpcomingTodoState(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as UpcomingStateData?,
    ));
  }
}

/// @nodoc

class _$LoadingUpcomingTodoState extends LoadingUpcomingTodoState {
  const _$LoadingUpcomingTodoState({required this.data}) : super._();

  @override
  final UpcomingStateData? data;

  @override
  String toString() {
    return 'UpcomingTodoState.loading(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingUpcomingTodoState &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingUpcomingTodoStateCopyWith<_$LoadingUpcomingTodoState>
      get copyWith =>
          __$$LoadingUpcomingTodoStateCopyWithImpl<_$LoadingUpcomingTodoState>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UpcomingStateData? data) idle,
    required TResult Function(UpcomingStateData? data) loading,
    required TResult Function(UpcomingStateData? data) loadingMore,
    required TResult Function(UpcomingStateData? data, TodoError error) error,
    required TResult Function(UpcomingStateData data, TodoModel editedModel)
        successEditTodo,
    required TResult Function(UpcomingStateData data, DateTime date)
        successLoadedByDate,
    required TResult Function(UpcomingStateData data) success,
  }) {
    return loading(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UpcomingStateData? data)? idle,
    TResult? Function(UpcomingStateData? data)? loading,
    TResult? Function(UpcomingStateData? data)? loadingMore,
    TResult? Function(UpcomingStateData? data, TodoError error)? error,
    TResult? Function(UpcomingStateData data, TodoModel editedModel)?
        successEditTodo,
    TResult? Function(UpcomingStateData data, DateTime date)?
        successLoadedByDate,
    TResult? Function(UpcomingStateData data)? success,
  }) {
    return loading?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UpcomingStateData? data)? idle,
    TResult Function(UpcomingStateData? data)? loading,
    TResult Function(UpcomingStateData? data)? loadingMore,
    TResult Function(UpcomingStateData? data, TodoError error)? error,
    TResult Function(UpcomingStateData data, TodoModel editedModel)?
        successEditTodo,
    TResult Function(UpcomingStateData data, DateTime date)?
        successLoadedByDate,
    TResult Function(UpcomingStateData data)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IdleUpcomingTodoState value) idle,
    required TResult Function(LoadingUpcomingTodoState value) loading,
    required TResult Function(LoadingMoreUpcomingTodoState value) loadingMore,
    required TResult Function(ErrorUpcomingTodoState value) error,
    required TResult Function(SuccessEditTodoUpcomingTodoState value)
        successEditTodo,
    required TResult Function(SuccessLoadedByDateUpcomingTodoState value)
        successLoadedByDate,
    required TResult Function(SuccessUpcomingTodoState value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IdleUpcomingTodoState value)? idle,
    TResult? Function(LoadingUpcomingTodoState value)? loading,
    TResult? Function(LoadingMoreUpcomingTodoState value)? loadingMore,
    TResult? Function(ErrorUpcomingTodoState value)? error,
    TResult? Function(SuccessEditTodoUpcomingTodoState value)? successEditTodo,
    TResult? Function(SuccessLoadedByDateUpcomingTodoState value)?
        successLoadedByDate,
    TResult? Function(SuccessUpcomingTodoState value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IdleUpcomingTodoState value)? idle,
    TResult Function(LoadingUpcomingTodoState value)? loading,
    TResult Function(LoadingMoreUpcomingTodoState value)? loadingMore,
    TResult Function(ErrorUpcomingTodoState value)? error,
    TResult Function(SuccessEditTodoUpcomingTodoState value)? successEditTodo,
    TResult Function(SuccessLoadedByDateUpcomingTodoState value)?
        successLoadedByDate,
    TResult Function(SuccessUpcomingTodoState value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingUpcomingTodoState extends UpcomingTodoState {
  const factory LoadingUpcomingTodoState(
      {required final UpcomingStateData? data}) = _$LoadingUpcomingTodoState;
  const LoadingUpcomingTodoState._() : super._();

  UpcomingStateData? get data;
  @JsonKey(ignore: true)
  _$$LoadingUpcomingTodoStateCopyWith<_$LoadingUpcomingTodoState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingMoreUpcomingTodoStateCopyWith<$Res> {
  factory _$$LoadingMoreUpcomingTodoStateCopyWith(
          _$LoadingMoreUpcomingTodoState value,
          $Res Function(_$LoadingMoreUpcomingTodoState) then) =
      __$$LoadingMoreUpcomingTodoStateCopyWithImpl<$Res>;
  @useResult
  $Res call({UpcomingStateData? data});
}

/// @nodoc
class __$$LoadingMoreUpcomingTodoStateCopyWithImpl<$Res>
    extends _$UpcomingTodoStateCopyWithImpl<$Res,
        _$LoadingMoreUpcomingTodoState>
    implements _$$LoadingMoreUpcomingTodoStateCopyWith<$Res> {
  __$$LoadingMoreUpcomingTodoStateCopyWithImpl(
      _$LoadingMoreUpcomingTodoState _value,
      $Res Function(_$LoadingMoreUpcomingTodoState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$LoadingMoreUpcomingTodoState(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as UpcomingStateData?,
    ));
  }
}

/// @nodoc

class _$LoadingMoreUpcomingTodoState extends LoadingMoreUpcomingTodoState {
  const _$LoadingMoreUpcomingTodoState({required this.data}) : super._();

  @override
  final UpcomingStateData? data;

  @override
  String toString() {
    return 'UpcomingTodoState.loadingMore(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingMoreUpcomingTodoState &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingMoreUpcomingTodoStateCopyWith<_$LoadingMoreUpcomingTodoState>
      get copyWith => __$$LoadingMoreUpcomingTodoStateCopyWithImpl<
          _$LoadingMoreUpcomingTodoState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UpcomingStateData? data) idle,
    required TResult Function(UpcomingStateData? data) loading,
    required TResult Function(UpcomingStateData? data) loadingMore,
    required TResult Function(UpcomingStateData? data, TodoError error) error,
    required TResult Function(UpcomingStateData data, TodoModel editedModel)
        successEditTodo,
    required TResult Function(UpcomingStateData data, DateTime date)
        successLoadedByDate,
    required TResult Function(UpcomingStateData data) success,
  }) {
    return loadingMore(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UpcomingStateData? data)? idle,
    TResult? Function(UpcomingStateData? data)? loading,
    TResult? Function(UpcomingStateData? data)? loadingMore,
    TResult? Function(UpcomingStateData? data, TodoError error)? error,
    TResult? Function(UpcomingStateData data, TodoModel editedModel)?
        successEditTodo,
    TResult? Function(UpcomingStateData data, DateTime date)?
        successLoadedByDate,
    TResult? Function(UpcomingStateData data)? success,
  }) {
    return loadingMore?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UpcomingStateData? data)? idle,
    TResult Function(UpcomingStateData? data)? loading,
    TResult Function(UpcomingStateData? data)? loadingMore,
    TResult Function(UpcomingStateData? data, TodoError error)? error,
    TResult Function(UpcomingStateData data, TodoModel editedModel)?
        successEditTodo,
    TResult Function(UpcomingStateData data, DateTime date)?
        successLoadedByDate,
    TResult Function(UpcomingStateData data)? success,
    required TResult orElse(),
  }) {
    if (loadingMore != null) {
      return loadingMore(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IdleUpcomingTodoState value) idle,
    required TResult Function(LoadingUpcomingTodoState value) loading,
    required TResult Function(LoadingMoreUpcomingTodoState value) loadingMore,
    required TResult Function(ErrorUpcomingTodoState value) error,
    required TResult Function(SuccessEditTodoUpcomingTodoState value)
        successEditTodo,
    required TResult Function(SuccessLoadedByDateUpcomingTodoState value)
        successLoadedByDate,
    required TResult Function(SuccessUpcomingTodoState value) success,
  }) {
    return loadingMore(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IdleUpcomingTodoState value)? idle,
    TResult? Function(LoadingUpcomingTodoState value)? loading,
    TResult? Function(LoadingMoreUpcomingTodoState value)? loadingMore,
    TResult? Function(ErrorUpcomingTodoState value)? error,
    TResult? Function(SuccessEditTodoUpcomingTodoState value)? successEditTodo,
    TResult? Function(SuccessLoadedByDateUpcomingTodoState value)?
        successLoadedByDate,
    TResult? Function(SuccessUpcomingTodoState value)? success,
  }) {
    return loadingMore?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IdleUpcomingTodoState value)? idle,
    TResult Function(LoadingUpcomingTodoState value)? loading,
    TResult Function(LoadingMoreUpcomingTodoState value)? loadingMore,
    TResult Function(ErrorUpcomingTodoState value)? error,
    TResult Function(SuccessEditTodoUpcomingTodoState value)? successEditTodo,
    TResult Function(SuccessLoadedByDateUpcomingTodoState value)?
        successLoadedByDate,
    TResult Function(SuccessUpcomingTodoState value)? success,
    required TResult orElse(),
  }) {
    if (loadingMore != null) {
      return loadingMore(this);
    }
    return orElse();
  }
}

abstract class LoadingMoreUpcomingTodoState extends UpcomingTodoState {
  const factory LoadingMoreUpcomingTodoState(
          {required final UpcomingStateData? data}) =
      _$LoadingMoreUpcomingTodoState;
  const LoadingMoreUpcomingTodoState._() : super._();

  UpcomingStateData? get data;
  @JsonKey(ignore: true)
  _$$LoadingMoreUpcomingTodoStateCopyWith<_$LoadingMoreUpcomingTodoState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorUpcomingTodoStateCopyWith<$Res> {
  factory _$$ErrorUpcomingTodoStateCopyWith(_$ErrorUpcomingTodoState value,
          $Res Function(_$ErrorUpcomingTodoState) then) =
      __$$ErrorUpcomingTodoStateCopyWithImpl<$Res>;
  @useResult
  $Res call({UpcomingStateData? data, TodoError error});

  $TodoErrorCopyWith<$Res> get error;
}

/// @nodoc
class __$$ErrorUpcomingTodoStateCopyWithImpl<$Res>
    extends _$UpcomingTodoStateCopyWithImpl<$Res, _$ErrorUpcomingTodoState>
    implements _$$ErrorUpcomingTodoStateCopyWith<$Res> {
  __$$ErrorUpcomingTodoStateCopyWithImpl(_$ErrorUpcomingTodoState _value,
      $Res Function(_$ErrorUpcomingTodoState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? error = null,
  }) {
    return _then(_$ErrorUpcomingTodoState(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as UpcomingStateData?,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as TodoError,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TodoErrorCopyWith<$Res> get error {
    return $TodoErrorCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc

class _$ErrorUpcomingTodoState extends ErrorUpcomingTodoState {
  const _$ErrorUpcomingTodoState({required this.data, required this.error})
      : super._();

  @override
  final UpcomingStateData? data;
  @override
  final TodoError error;

  @override
  String toString() {
    return 'UpcomingTodoState.error(data: $data, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorUpcomingTodoState &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorUpcomingTodoStateCopyWith<_$ErrorUpcomingTodoState> get copyWith =>
      __$$ErrorUpcomingTodoStateCopyWithImpl<_$ErrorUpcomingTodoState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UpcomingStateData? data) idle,
    required TResult Function(UpcomingStateData? data) loading,
    required TResult Function(UpcomingStateData? data) loadingMore,
    required TResult Function(UpcomingStateData? data, TodoError error) error,
    required TResult Function(UpcomingStateData data, TodoModel editedModel)
        successEditTodo,
    required TResult Function(UpcomingStateData data, DateTime date)
        successLoadedByDate,
    required TResult Function(UpcomingStateData data) success,
  }) {
    return error(data, this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UpcomingStateData? data)? idle,
    TResult? Function(UpcomingStateData? data)? loading,
    TResult? Function(UpcomingStateData? data)? loadingMore,
    TResult? Function(UpcomingStateData? data, TodoError error)? error,
    TResult? Function(UpcomingStateData data, TodoModel editedModel)?
        successEditTodo,
    TResult? Function(UpcomingStateData data, DateTime date)?
        successLoadedByDate,
    TResult? Function(UpcomingStateData data)? success,
  }) {
    return error?.call(data, this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UpcomingStateData? data)? idle,
    TResult Function(UpcomingStateData? data)? loading,
    TResult Function(UpcomingStateData? data)? loadingMore,
    TResult Function(UpcomingStateData? data, TodoError error)? error,
    TResult Function(UpcomingStateData data, TodoModel editedModel)?
        successEditTodo,
    TResult Function(UpcomingStateData data, DateTime date)?
        successLoadedByDate,
    TResult Function(UpcomingStateData data)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(data, this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IdleUpcomingTodoState value) idle,
    required TResult Function(LoadingUpcomingTodoState value) loading,
    required TResult Function(LoadingMoreUpcomingTodoState value) loadingMore,
    required TResult Function(ErrorUpcomingTodoState value) error,
    required TResult Function(SuccessEditTodoUpcomingTodoState value)
        successEditTodo,
    required TResult Function(SuccessLoadedByDateUpcomingTodoState value)
        successLoadedByDate,
    required TResult Function(SuccessUpcomingTodoState value) success,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IdleUpcomingTodoState value)? idle,
    TResult? Function(LoadingUpcomingTodoState value)? loading,
    TResult? Function(LoadingMoreUpcomingTodoState value)? loadingMore,
    TResult? Function(ErrorUpcomingTodoState value)? error,
    TResult? Function(SuccessEditTodoUpcomingTodoState value)? successEditTodo,
    TResult? Function(SuccessLoadedByDateUpcomingTodoState value)?
        successLoadedByDate,
    TResult? Function(SuccessUpcomingTodoState value)? success,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IdleUpcomingTodoState value)? idle,
    TResult Function(LoadingUpcomingTodoState value)? loading,
    TResult Function(LoadingMoreUpcomingTodoState value)? loadingMore,
    TResult Function(ErrorUpcomingTodoState value)? error,
    TResult Function(SuccessEditTodoUpcomingTodoState value)? successEditTodo,
    TResult Function(SuccessLoadedByDateUpcomingTodoState value)?
        successLoadedByDate,
    TResult Function(SuccessUpcomingTodoState value)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorUpcomingTodoState extends UpcomingTodoState {
  const factory ErrorUpcomingTodoState(
      {required final UpcomingStateData? data,
      required final TodoError error}) = _$ErrorUpcomingTodoState;
  const ErrorUpcomingTodoState._() : super._();

  UpcomingStateData? get data;
  TodoError get error;
  @JsonKey(ignore: true)
  _$$ErrorUpcomingTodoStateCopyWith<_$ErrorUpcomingTodoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessEditTodoUpcomingTodoStateCopyWith<$Res> {
  factory _$$SuccessEditTodoUpcomingTodoStateCopyWith(
          _$SuccessEditTodoUpcomingTodoState value,
          $Res Function(_$SuccessEditTodoUpcomingTodoState) then) =
      __$$SuccessEditTodoUpcomingTodoStateCopyWithImpl<$Res>;
  @useResult
  $Res call({UpcomingStateData data, TodoModel editedModel});

  $TodoModelCopyWith<$Res> get editedModel;
}

/// @nodoc
class __$$SuccessEditTodoUpcomingTodoStateCopyWithImpl<$Res>
    extends _$UpcomingTodoStateCopyWithImpl<$Res,
        _$SuccessEditTodoUpcomingTodoState>
    implements _$$SuccessEditTodoUpcomingTodoStateCopyWith<$Res> {
  __$$SuccessEditTodoUpcomingTodoStateCopyWithImpl(
      _$SuccessEditTodoUpcomingTodoState _value,
      $Res Function(_$SuccessEditTodoUpcomingTodoState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? editedModel = null,
  }) {
    return _then(_$SuccessEditTodoUpcomingTodoState(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as UpcomingStateData,
      editedModel: null == editedModel
          ? _value.editedModel
          : editedModel // ignore: cast_nullable_to_non_nullable
              as TodoModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TodoModelCopyWith<$Res> get editedModel {
    return $TodoModelCopyWith<$Res>(_value.editedModel, (value) {
      return _then(_value.copyWith(editedModel: value));
    });
  }
}

/// @nodoc

class _$SuccessEditTodoUpcomingTodoState
    extends SuccessEditTodoUpcomingTodoState {
  const _$SuccessEditTodoUpcomingTodoState(
      {required this.data, required this.editedModel})
      : super._();

  @override
  final UpcomingStateData data;
  @override
  final TodoModel editedModel;

  @override
  String toString() {
    return 'UpcomingTodoState.successEditTodo(data: $data, editedModel: $editedModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessEditTodoUpcomingTodoState &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.editedModel, editedModel) ||
                other.editedModel == editedModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, editedModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessEditTodoUpcomingTodoStateCopyWith<
          _$SuccessEditTodoUpcomingTodoState>
      get copyWith => __$$SuccessEditTodoUpcomingTodoStateCopyWithImpl<
          _$SuccessEditTodoUpcomingTodoState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UpcomingStateData? data) idle,
    required TResult Function(UpcomingStateData? data) loading,
    required TResult Function(UpcomingStateData? data) loadingMore,
    required TResult Function(UpcomingStateData? data, TodoError error) error,
    required TResult Function(UpcomingStateData data, TodoModel editedModel)
        successEditTodo,
    required TResult Function(UpcomingStateData data, DateTime date)
        successLoadedByDate,
    required TResult Function(UpcomingStateData data) success,
  }) {
    return successEditTodo(data, editedModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UpcomingStateData? data)? idle,
    TResult? Function(UpcomingStateData? data)? loading,
    TResult? Function(UpcomingStateData? data)? loadingMore,
    TResult? Function(UpcomingStateData? data, TodoError error)? error,
    TResult? Function(UpcomingStateData data, TodoModel editedModel)?
        successEditTodo,
    TResult? Function(UpcomingStateData data, DateTime date)?
        successLoadedByDate,
    TResult? Function(UpcomingStateData data)? success,
  }) {
    return successEditTodo?.call(data, editedModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UpcomingStateData? data)? idle,
    TResult Function(UpcomingStateData? data)? loading,
    TResult Function(UpcomingStateData? data)? loadingMore,
    TResult Function(UpcomingStateData? data, TodoError error)? error,
    TResult Function(UpcomingStateData data, TodoModel editedModel)?
        successEditTodo,
    TResult Function(UpcomingStateData data, DateTime date)?
        successLoadedByDate,
    TResult Function(UpcomingStateData data)? success,
    required TResult orElse(),
  }) {
    if (successEditTodo != null) {
      return successEditTodo(data, editedModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IdleUpcomingTodoState value) idle,
    required TResult Function(LoadingUpcomingTodoState value) loading,
    required TResult Function(LoadingMoreUpcomingTodoState value) loadingMore,
    required TResult Function(ErrorUpcomingTodoState value) error,
    required TResult Function(SuccessEditTodoUpcomingTodoState value)
        successEditTodo,
    required TResult Function(SuccessLoadedByDateUpcomingTodoState value)
        successLoadedByDate,
    required TResult Function(SuccessUpcomingTodoState value) success,
  }) {
    return successEditTodo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IdleUpcomingTodoState value)? idle,
    TResult? Function(LoadingUpcomingTodoState value)? loading,
    TResult? Function(LoadingMoreUpcomingTodoState value)? loadingMore,
    TResult? Function(ErrorUpcomingTodoState value)? error,
    TResult? Function(SuccessEditTodoUpcomingTodoState value)? successEditTodo,
    TResult? Function(SuccessLoadedByDateUpcomingTodoState value)?
        successLoadedByDate,
    TResult? Function(SuccessUpcomingTodoState value)? success,
  }) {
    return successEditTodo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IdleUpcomingTodoState value)? idle,
    TResult Function(LoadingUpcomingTodoState value)? loading,
    TResult Function(LoadingMoreUpcomingTodoState value)? loadingMore,
    TResult Function(ErrorUpcomingTodoState value)? error,
    TResult Function(SuccessEditTodoUpcomingTodoState value)? successEditTodo,
    TResult Function(SuccessLoadedByDateUpcomingTodoState value)?
        successLoadedByDate,
    TResult Function(SuccessUpcomingTodoState value)? success,
    required TResult orElse(),
  }) {
    if (successEditTodo != null) {
      return successEditTodo(this);
    }
    return orElse();
  }
}

abstract class SuccessEditTodoUpcomingTodoState extends UpcomingTodoState {
  const factory SuccessEditTodoUpcomingTodoState(
          {required final UpcomingStateData data,
          required final TodoModel editedModel}) =
      _$SuccessEditTodoUpcomingTodoState;
  const SuccessEditTodoUpcomingTodoState._() : super._();

  UpcomingStateData get data;
  TodoModel get editedModel;
  @JsonKey(ignore: true)
  _$$SuccessEditTodoUpcomingTodoStateCopyWith<
          _$SuccessEditTodoUpcomingTodoState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessLoadedByDateUpcomingTodoStateCopyWith<$Res> {
  factory _$$SuccessLoadedByDateUpcomingTodoStateCopyWith(
          _$SuccessLoadedByDateUpcomingTodoState value,
          $Res Function(_$SuccessLoadedByDateUpcomingTodoState) then) =
      __$$SuccessLoadedByDateUpcomingTodoStateCopyWithImpl<$Res>;
  @useResult
  $Res call({UpcomingStateData data, DateTime date});
}

/// @nodoc
class __$$SuccessLoadedByDateUpcomingTodoStateCopyWithImpl<$Res>
    extends _$UpcomingTodoStateCopyWithImpl<$Res,
        _$SuccessLoadedByDateUpcomingTodoState>
    implements _$$SuccessLoadedByDateUpcomingTodoStateCopyWith<$Res> {
  __$$SuccessLoadedByDateUpcomingTodoStateCopyWithImpl(
      _$SuccessLoadedByDateUpcomingTodoState _value,
      $Res Function(_$SuccessLoadedByDateUpcomingTodoState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? date = null,
  }) {
    return _then(_$SuccessLoadedByDateUpcomingTodoState(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as UpcomingStateData,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$SuccessLoadedByDateUpcomingTodoState
    extends SuccessLoadedByDateUpcomingTodoState {
  const _$SuccessLoadedByDateUpcomingTodoState(
      {required this.data, required this.date})
      : super._();

  @override
  final UpcomingStateData data;
  @override
  final DateTime date;

  @override
  String toString() {
    return 'UpcomingTodoState.successLoadedByDate(data: $data, date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessLoadedByDateUpcomingTodoState &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessLoadedByDateUpcomingTodoStateCopyWith<
          _$SuccessLoadedByDateUpcomingTodoState>
      get copyWith => __$$SuccessLoadedByDateUpcomingTodoStateCopyWithImpl<
          _$SuccessLoadedByDateUpcomingTodoState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UpcomingStateData? data) idle,
    required TResult Function(UpcomingStateData? data) loading,
    required TResult Function(UpcomingStateData? data) loadingMore,
    required TResult Function(UpcomingStateData? data, TodoError error) error,
    required TResult Function(UpcomingStateData data, TodoModel editedModel)
        successEditTodo,
    required TResult Function(UpcomingStateData data, DateTime date)
        successLoadedByDate,
    required TResult Function(UpcomingStateData data) success,
  }) {
    return successLoadedByDate(data, date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UpcomingStateData? data)? idle,
    TResult? Function(UpcomingStateData? data)? loading,
    TResult? Function(UpcomingStateData? data)? loadingMore,
    TResult? Function(UpcomingStateData? data, TodoError error)? error,
    TResult? Function(UpcomingStateData data, TodoModel editedModel)?
        successEditTodo,
    TResult? Function(UpcomingStateData data, DateTime date)?
        successLoadedByDate,
    TResult? Function(UpcomingStateData data)? success,
  }) {
    return successLoadedByDate?.call(data, date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UpcomingStateData? data)? idle,
    TResult Function(UpcomingStateData? data)? loading,
    TResult Function(UpcomingStateData? data)? loadingMore,
    TResult Function(UpcomingStateData? data, TodoError error)? error,
    TResult Function(UpcomingStateData data, TodoModel editedModel)?
        successEditTodo,
    TResult Function(UpcomingStateData data, DateTime date)?
        successLoadedByDate,
    TResult Function(UpcomingStateData data)? success,
    required TResult orElse(),
  }) {
    if (successLoadedByDate != null) {
      return successLoadedByDate(data, date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IdleUpcomingTodoState value) idle,
    required TResult Function(LoadingUpcomingTodoState value) loading,
    required TResult Function(LoadingMoreUpcomingTodoState value) loadingMore,
    required TResult Function(ErrorUpcomingTodoState value) error,
    required TResult Function(SuccessEditTodoUpcomingTodoState value)
        successEditTodo,
    required TResult Function(SuccessLoadedByDateUpcomingTodoState value)
        successLoadedByDate,
    required TResult Function(SuccessUpcomingTodoState value) success,
  }) {
    return successLoadedByDate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IdleUpcomingTodoState value)? idle,
    TResult? Function(LoadingUpcomingTodoState value)? loading,
    TResult? Function(LoadingMoreUpcomingTodoState value)? loadingMore,
    TResult? Function(ErrorUpcomingTodoState value)? error,
    TResult? Function(SuccessEditTodoUpcomingTodoState value)? successEditTodo,
    TResult? Function(SuccessLoadedByDateUpcomingTodoState value)?
        successLoadedByDate,
    TResult? Function(SuccessUpcomingTodoState value)? success,
  }) {
    return successLoadedByDate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IdleUpcomingTodoState value)? idle,
    TResult Function(LoadingUpcomingTodoState value)? loading,
    TResult Function(LoadingMoreUpcomingTodoState value)? loadingMore,
    TResult Function(ErrorUpcomingTodoState value)? error,
    TResult Function(SuccessEditTodoUpcomingTodoState value)? successEditTodo,
    TResult Function(SuccessLoadedByDateUpcomingTodoState value)?
        successLoadedByDate,
    TResult Function(SuccessUpcomingTodoState value)? success,
    required TResult orElse(),
  }) {
    if (successLoadedByDate != null) {
      return successLoadedByDate(this);
    }
    return orElse();
  }
}

abstract class SuccessLoadedByDateUpcomingTodoState extends UpcomingTodoState {
  const factory SuccessLoadedByDateUpcomingTodoState(
      {required final UpcomingStateData data,
      required final DateTime date}) = _$SuccessLoadedByDateUpcomingTodoState;
  const SuccessLoadedByDateUpcomingTodoState._() : super._();

  UpcomingStateData get data;
  DateTime get date;
  @JsonKey(ignore: true)
  _$$SuccessLoadedByDateUpcomingTodoStateCopyWith<
          _$SuccessLoadedByDateUpcomingTodoState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessUpcomingTodoStateCopyWith<$Res> {
  factory _$$SuccessUpcomingTodoStateCopyWith(_$SuccessUpcomingTodoState value,
          $Res Function(_$SuccessUpcomingTodoState) then) =
      __$$SuccessUpcomingTodoStateCopyWithImpl<$Res>;
  @useResult
  $Res call({UpcomingStateData data});
}

/// @nodoc
class __$$SuccessUpcomingTodoStateCopyWithImpl<$Res>
    extends _$UpcomingTodoStateCopyWithImpl<$Res, _$SuccessUpcomingTodoState>
    implements _$$SuccessUpcomingTodoStateCopyWith<$Res> {
  __$$SuccessUpcomingTodoStateCopyWithImpl(_$SuccessUpcomingTodoState _value,
      $Res Function(_$SuccessUpcomingTodoState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$SuccessUpcomingTodoState(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as UpcomingStateData,
    ));
  }
}

/// @nodoc

class _$SuccessUpcomingTodoState extends SuccessUpcomingTodoState {
  const _$SuccessUpcomingTodoState({required this.data}) : super._();

  @override
  final UpcomingStateData data;

  @override
  String toString() {
    return 'UpcomingTodoState.success(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessUpcomingTodoState &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessUpcomingTodoStateCopyWith<_$SuccessUpcomingTodoState>
      get copyWith =>
          __$$SuccessUpcomingTodoStateCopyWithImpl<_$SuccessUpcomingTodoState>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UpcomingStateData? data) idle,
    required TResult Function(UpcomingStateData? data) loading,
    required TResult Function(UpcomingStateData? data) loadingMore,
    required TResult Function(UpcomingStateData? data, TodoError error) error,
    required TResult Function(UpcomingStateData data, TodoModel editedModel)
        successEditTodo,
    required TResult Function(UpcomingStateData data, DateTime date)
        successLoadedByDate,
    required TResult Function(UpcomingStateData data) success,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UpcomingStateData? data)? idle,
    TResult? Function(UpcomingStateData? data)? loading,
    TResult? Function(UpcomingStateData? data)? loadingMore,
    TResult? Function(UpcomingStateData? data, TodoError error)? error,
    TResult? Function(UpcomingStateData data, TodoModel editedModel)?
        successEditTodo,
    TResult? Function(UpcomingStateData data, DateTime date)?
        successLoadedByDate,
    TResult? Function(UpcomingStateData data)? success,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UpcomingStateData? data)? idle,
    TResult Function(UpcomingStateData? data)? loading,
    TResult Function(UpcomingStateData? data)? loadingMore,
    TResult Function(UpcomingStateData? data, TodoError error)? error,
    TResult Function(UpcomingStateData data, TodoModel editedModel)?
        successEditTodo,
    TResult Function(UpcomingStateData data, DateTime date)?
        successLoadedByDate,
    TResult Function(UpcomingStateData data)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IdleUpcomingTodoState value) idle,
    required TResult Function(LoadingUpcomingTodoState value) loading,
    required TResult Function(LoadingMoreUpcomingTodoState value) loadingMore,
    required TResult Function(ErrorUpcomingTodoState value) error,
    required TResult Function(SuccessEditTodoUpcomingTodoState value)
        successEditTodo,
    required TResult Function(SuccessLoadedByDateUpcomingTodoState value)
        successLoadedByDate,
    required TResult Function(SuccessUpcomingTodoState value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IdleUpcomingTodoState value)? idle,
    TResult? Function(LoadingUpcomingTodoState value)? loading,
    TResult? Function(LoadingMoreUpcomingTodoState value)? loadingMore,
    TResult? Function(ErrorUpcomingTodoState value)? error,
    TResult? Function(SuccessEditTodoUpcomingTodoState value)? successEditTodo,
    TResult? Function(SuccessLoadedByDateUpcomingTodoState value)?
        successLoadedByDate,
    TResult? Function(SuccessUpcomingTodoState value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IdleUpcomingTodoState value)? idle,
    TResult Function(LoadingUpcomingTodoState value)? loading,
    TResult Function(LoadingMoreUpcomingTodoState value)? loadingMore,
    TResult Function(ErrorUpcomingTodoState value)? error,
    TResult Function(SuccessEditTodoUpcomingTodoState value)? successEditTodo,
    TResult Function(SuccessLoadedByDateUpcomingTodoState value)?
        successLoadedByDate,
    TResult Function(SuccessUpcomingTodoState value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class SuccessUpcomingTodoState extends UpcomingTodoState {
  const factory SuccessUpcomingTodoState(
      {required final UpcomingStateData data}) = _$SuccessUpcomingTodoState;
  const SuccessUpcomingTodoState._() : super._();

  UpcomingStateData get data;
  @JsonKey(ignore: true)
  _$$SuccessUpcomingTodoStateCopyWith<_$SuccessUpcomingTodoState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UpcomingTodoEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() reload,
    required TResult Function(TodoModel model) create,
    required TResult Function(TodoModel model) update,
    required TResult Function(TodoModel model) delete,
    required TResult Function(DateTime date) loadByDate,
    required TResult Function(bool showCompleted) updateFilter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? reload,
    TResult? Function(TodoModel model)? create,
    TResult? Function(TodoModel model)? update,
    TResult? Function(TodoModel model)? delete,
    TResult? Function(DateTime date)? loadByDate,
    TResult? Function(bool showCompleted)? updateFilter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? reload,
    TResult Function(TodoModel model)? create,
    TResult Function(TodoModel model)? update,
    TResult Function(TodoModel model)? delete,
    TResult Function(DateTime date)? loadByDate,
    TResult Function(bool showCompleted)? updateFilter,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Reload value) reload,
    required TResult Function(_CreateEvent value) create,
    required TResult Function(_UpdateEvent value) update,
    required TResult Function(_DeleteEvent value) delete,
    required TResult Function(_LoadByDate value) loadByDate,
    required TResult Function(_UpdateFilter value) updateFilter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Reload value)? reload,
    TResult? Function(_CreateEvent value)? create,
    TResult? Function(_UpdateEvent value)? update,
    TResult? Function(_DeleteEvent value)? delete,
    TResult? Function(_LoadByDate value)? loadByDate,
    TResult? Function(_UpdateFilter value)? updateFilter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Reload value)? reload,
    TResult Function(_CreateEvent value)? create,
    TResult Function(_UpdateEvent value)? update,
    TResult Function(_DeleteEvent value)? delete,
    TResult Function(_LoadByDate value)? loadByDate,
    TResult Function(_UpdateFilter value)? updateFilter,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpcomingTodoEventCopyWith<$Res> {
  factory $UpcomingTodoEventCopyWith(
          UpcomingTodoEvent value, $Res Function(UpcomingTodoEvent) then) =
      _$UpcomingTodoEventCopyWithImpl<$Res, UpcomingTodoEvent>;
}

/// @nodoc
class _$UpcomingTodoEventCopyWithImpl<$Res, $Val extends UpcomingTodoEvent>
    implements $UpcomingTodoEventCopyWith<$Res> {
  _$UpcomingTodoEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ReloadCopyWith<$Res> {
  factory _$$_ReloadCopyWith(_$_Reload value, $Res Function(_$_Reload) then) =
      __$$_ReloadCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ReloadCopyWithImpl<$Res>
    extends _$UpcomingTodoEventCopyWithImpl<$Res, _$_Reload>
    implements _$$_ReloadCopyWith<$Res> {
  __$$_ReloadCopyWithImpl(_$_Reload _value, $Res Function(_$_Reload) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Reload extends _Reload {
  const _$_Reload() : super._();

  @override
  String toString() {
    return 'UpcomingTodoEvent.reload()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Reload);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() reload,
    required TResult Function(TodoModel model) create,
    required TResult Function(TodoModel model) update,
    required TResult Function(TodoModel model) delete,
    required TResult Function(DateTime date) loadByDate,
    required TResult Function(bool showCompleted) updateFilter,
  }) {
    return reload();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? reload,
    TResult? Function(TodoModel model)? create,
    TResult? Function(TodoModel model)? update,
    TResult? Function(TodoModel model)? delete,
    TResult? Function(DateTime date)? loadByDate,
    TResult? Function(bool showCompleted)? updateFilter,
  }) {
    return reload?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? reload,
    TResult Function(TodoModel model)? create,
    TResult Function(TodoModel model)? update,
    TResult Function(TodoModel model)? delete,
    TResult Function(DateTime date)? loadByDate,
    TResult Function(bool showCompleted)? updateFilter,
    required TResult orElse(),
  }) {
    if (reload != null) {
      return reload();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Reload value) reload,
    required TResult Function(_CreateEvent value) create,
    required TResult Function(_UpdateEvent value) update,
    required TResult Function(_DeleteEvent value) delete,
    required TResult Function(_LoadByDate value) loadByDate,
    required TResult Function(_UpdateFilter value) updateFilter,
  }) {
    return reload(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Reload value)? reload,
    TResult? Function(_CreateEvent value)? create,
    TResult? Function(_UpdateEvent value)? update,
    TResult? Function(_DeleteEvent value)? delete,
    TResult? Function(_LoadByDate value)? loadByDate,
    TResult? Function(_UpdateFilter value)? updateFilter,
  }) {
    return reload?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Reload value)? reload,
    TResult Function(_CreateEvent value)? create,
    TResult Function(_UpdateEvent value)? update,
    TResult Function(_DeleteEvent value)? delete,
    TResult Function(_LoadByDate value)? loadByDate,
    TResult Function(_UpdateFilter value)? updateFilter,
    required TResult orElse(),
  }) {
    if (reload != null) {
      return reload(this);
    }
    return orElse();
  }
}

abstract class _Reload extends UpcomingTodoEvent {
  const factory _Reload() = _$_Reload;
  const _Reload._() : super._();
}

/// @nodoc
abstract class _$$_CreateEventCopyWith<$Res> {
  factory _$$_CreateEventCopyWith(
          _$_CreateEvent value, $Res Function(_$_CreateEvent) then) =
      __$$_CreateEventCopyWithImpl<$Res>;
  @useResult
  $Res call({TodoModel model});

  $TodoModelCopyWith<$Res> get model;
}

/// @nodoc
class __$$_CreateEventCopyWithImpl<$Res>
    extends _$UpcomingTodoEventCopyWithImpl<$Res, _$_CreateEvent>
    implements _$$_CreateEventCopyWith<$Res> {
  __$$_CreateEventCopyWithImpl(
      _$_CreateEvent _value, $Res Function(_$_CreateEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
  }) {
    return _then(_$_CreateEvent(
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as TodoModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TodoModelCopyWith<$Res> get model {
    return $TodoModelCopyWith<$Res>(_value.model, (value) {
      return _then(_value.copyWith(model: value));
    });
  }
}

/// @nodoc

class _$_CreateEvent extends _CreateEvent {
  const _$_CreateEvent({required this.model}) : super._();

  @override
  final TodoModel model;

  @override
  String toString() {
    return 'UpcomingTodoEvent.create(model: $model)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateEvent &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateEventCopyWith<_$_CreateEvent> get copyWith =>
      __$$_CreateEventCopyWithImpl<_$_CreateEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() reload,
    required TResult Function(TodoModel model) create,
    required TResult Function(TodoModel model) update,
    required TResult Function(TodoModel model) delete,
    required TResult Function(DateTime date) loadByDate,
    required TResult Function(bool showCompleted) updateFilter,
  }) {
    return create(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? reload,
    TResult? Function(TodoModel model)? create,
    TResult? Function(TodoModel model)? update,
    TResult? Function(TodoModel model)? delete,
    TResult? Function(DateTime date)? loadByDate,
    TResult? Function(bool showCompleted)? updateFilter,
  }) {
    return create?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? reload,
    TResult Function(TodoModel model)? create,
    TResult Function(TodoModel model)? update,
    TResult Function(TodoModel model)? delete,
    TResult Function(DateTime date)? loadByDate,
    TResult Function(bool showCompleted)? updateFilter,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Reload value) reload,
    required TResult Function(_CreateEvent value) create,
    required TResult Function(_UpdateEvent value) update,
    required TResult Function(_DeleteEvent value) delete,
    required TResult Function(_LoadByDate value) loadByDate,
    required TResult Function(_UpdateFilter value) updateFilter,
  }) {
    return create(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Reload value)? reload,
    TResult? Function(_CreateEvent value)? create,
    TResult? Function(_UpdateEvent value)? update,
    TResult? Function(_DeleteEvent value)? delete,
    TResult? Function(_LoadByDate value)? loadByDate,
    TResult? Function(_UpdateFilter value)? updateFilter,
  }) {
    return create?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Reload value)? reload,
    TResult Function(_CreateEvent value)? create,
    TResult Function(_UpdateEvent value)? update,
    TResult Function(_DeleteEvent value)? delete,
    TResult Function(_LoadByDate value)? loadByDate,
    TResult Function(_UpdateFilter value)? updateFilter,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(this);
    }
    return orElse();
  }
}

abstract class _CreateEvent extends UpcomingTodoEvent {
  const factory _CreateEvent({required final TodoModel model}) = _$_CreateEvent;
  const _CreateEvent._() : super._();

  TodoModel get model;
  @JsonKey(ignore: true)
  _$$_CreateEventCopyWith<_$_CreateEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdateEventCopyWith<$Res> {
  factory _$$_UpdateEventCopyWith(
          _$_UpdateEvent value, $Res Function(_$_UpdateEvent) then) =
      __$$_UpdateEventCopyWithImpl<$Res>;
  @useResult
  $Res call({TodoModel model});

  $TodoModelCopyWith<$Res> get model;
}

/// @nodoc
class __$$_UpdateEventCopyWithImpl<$Res>
    extends _$UpcomingTodoEventCopyWithImpl<$Res, _$_UpdateEvent>
    implements _$$_UpdateEventCopyWith<$Res> {
  __$$_UpdateEventCopyWithImpl(
      _$_UpdateEvent _value, $Res Function(_$_UpdateEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
  }) {
    return _then(_$_UpdateEvent(
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as TodoModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TodoModelCopyWith<$Res> get model {
    return $TodoModelCopyWith<$Res>(_value.model, (value) {
      return _then(_value.copyWith(model: value));
    });
  }
}

/// @nodoc

class _$_UpdateEvent extends _UpdateEvent {
  const _$_UpdateEvent({required this.model}) : super._();

  @override
  final TodoModel model;

  @override
  String toString() {
    return 'UpcomingTodoEvent.update(model: $model)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateEvent &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateEventCopyWith<_$_UpdateEvent> get copyWith =>
      __$$_UpdateEventCopyWithImpl<_$_UpdateEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() reload,
    required TResult Function(TodoModel model) create,
    required TResult Function(TodoModel model) update,
    required TResult Function(TodoModel model) delete,
    required TResult Function(DateTime date) loadByDate,
    required TResult Function(bool showCompleted) updateFilter,
  }) {
    return update(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? reload,
    TResult? Function(TodoModel model)? create,
    TResult? Function(TodoModel model)? update,
    TResult? Function(TodoModel model)? delete,
    TResult? Function(DateTime date)? loadByDate,
    TResult? Function(bool showCompleted)? updateFilter,
  }) {
    return update?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? reload,
    TResult Function(TodoModel model)? create,
    TResult Function(TodoModel model)? update,
    TResult Function(TodoModel model)? delete,
    TResult Function(DateTime date)? loadByDate,
    TResult Function(bool showCompleted)? updateFilter,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Reload value) reload,
    required TResult Function(_CreateEvent value) create,
    required TResult Function(_UpdateEvent value) update,
    required TResult Function(_DeleteEvent value) delete,
    required TResult Function(_LoadByDate value) loadByDate,
    required TResult Function(_UpdateFilter value) updateFilter,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Reload value)? reload,
    TResult? Function(_CreateEvent value)? create,
    TResult? Function(_UpdateEvent value)? update,
    TResult? Function(_DeleteEvent value)? delete,
    TResult? Function(_LoadByDate value)? loadByDate,
    TResult? Function(_UpdateFilter value)? updateFilter,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Reload value)? reload,
    TResult Function(_CreateEvent value)? create,
    TResult Function(_UpdateEvent value)? update,
    TResult Function(_DeleteEvent value)? delete,
    TResult Function(_LoadByDate value)? loadByDate,
    TResult Function(_UpdateFilter value)? updateFilter,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class _UpdateEvent extends UpcomingTodoEvent {
  const factory _UpdateEvent({required final TodoModel model}) = _$_UpdateEvent;
  const _UpdateEvent._() : super._();

  TodoModel get model;
  @JsonKey(ignore: true)
  _$$_UpdateEventCopyWith<_$_UpdateEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DeleteEventCopyWith<$Res> {
  factory _$$_DeleteEventCopyWith(
          _$_DeleteEvent value, $Res Function(_$_DeleteEvent) then) =
      __$$_DeleteEventCopyWithImpl<$Res>;
  @useResult
  $Res call({TodoModel model});

  $TodoModelCopyWith<$Res> get model;
}

/// @nodoc
class __$$_DeleteEventCopyWithImpl<$Res>
    extends _$UpcomingTodoEventCopyWithImpl<$Res, _$_DeleteEvent>
    implements _$$_DeleteEventCopyWith<$Res> {
  __$$_DeleteEventCopyWithImpl(
      _$_DeleteEvent _value, $Res Function(_$_DeleteEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
  }) {
    return _then(_$_DeleteEvent(
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as TodoModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TodoModelCopyWith<$Res> get model {
    return $TodoModelCopyWith<$Res>(_value.model, (value) {
      return _then(_value.copyWith(model: value));
    });
  }
}

/// @nodoc

class _$_DeleteEvent extends _DeleteEvent {
  const _$_DeleteEvent({required this.model}) : super._();

  @override
  final TodoModel model;

  @override
  String toString() {
    return 'UpcomingTodoEvent.delete(model: $model)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeleteEvent &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeleteEventCopyWith<_$_DeleteEvent> get copyWith =>
      __$$_DeleteEventCopyWithImpl<_$_DeleteEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() reload,
    required TResult Function(TodoModel model) create,
    required TResult Function(TodoModel model) update,
    required TResult Function(TodoModel model) delete,
    required TResult Function(DateTime date) loadByDate,
    required TResult Function(bool showCompleted) updateFilter,
  }) {
    return delete(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? reload,
    TResult? Function(TodoModel model)? create,
    TResult? Function(TodoModel model)? update,
    TResult? Function(TodoModel model)? delete,
    TResult? Function(DateTime date)? loadByDate,
    TResult? Function(bool showCompleted)? updateFilter,
  }) {
    return delete?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? reload,
    TResult Function(TodoModel model)? create,
    TResult Function(TodoModel model)? update,
    TResult Function(TodoModel model)? delete,
    TResult Function(DateTime date)? loadByDate,
    TResult Function(bool showCompleted)? updateFilter,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Reload value) reload,
    required TResult Function(_CreateEvent value) create,
    required TResult Function(_UpdateEvent value) update,
    required TResult Function(_DeleteEvent value) delete,
    required TResult Function(_LoadByDate value) loadByDate,
    required TResult Function(_UpdateFilter value) updateFilter,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Reload value)? reload,
    TResult? Function(_CreateEvent value)? create,
    TResult? Function(_UpdateEvent value)? update,
    TResult? Function(_DeleteEvent value)? delete,
    TResult? Function(_LoadByDate value)? loadByDate,
    TResult? Function(_UpdateFilter value)? updateFilter,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Reload value)? reload,
    TResult Function(_CreateEvent value)? create,
    TResult Function(_UpdateEvent value)? update,
    TResult Function(_DeleteEvent value)? delete,
    TResult Function(_LoadByDate value)? loadByDate,
    TResult Function(_UpdateFilter value)? updateFilter,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class _DeleteEvent extends UpcomingTodoEvent {
  const factory _DeleteEvent({required final TodoModel model}) = _$_DeleteEvent;
  const _DeleteEvent._() : super._();

  TodoModel get model;
  @JsonKey(ignore: true)
  _$$_DeleteEventCopyWith<_$_DeleteEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadByDateCopyWith<$Res> {
  factory _$$_LoadByDateCopyWith(
          _$_LoadByDate value, $Res Function(_$_LoadByDate) then) =
      __$$_LoadByDateCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime date});
}

/// @nodoc
class __$$_LoadByDateCopyWithImpl<$Res>
    extends _$UpcomingTodoEventCopyWithImpl<$Res, _$_LoadByDate>
    implements _$$_LoadByDateCopyWith<$Res> {
  __$$_LoadByDateCopyWithImpl(
      _$_LoadByDate _value, $Res Function(_$_LoadByDate) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
  }) {
    return _then(_$_LoadByDate(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_LoadByDate extends _LoadByDate {
  const _$_LoadByDate({required this.date}) : super._();

  @override
  final DateTime date;

  @override
  String toString() {
    return 'UpcomingTodoEvent.loadByDate(date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadByDate &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadByDateCopyWith<_$_LoadByDate> get copyWith =>
      __$$_LoadByDateCopyWithImpl<_$_LoadByDate>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() reload,
    required TResult Function(TodoModel model) create,
    required TResult Function(TodoModel model) update,
    required TResult Function(TodoModel model) delete,
    required TResult Function(DateTime date) loadByDate,
    required TResult Function(bool showCompleted) updateFilter,
  }) {
    return loadByDate(date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? reload,
    TResult? Function(TodoModel model)? create,
    TResult? Function(TodoModel model)? update,
    TResult? Function(TodoModel model)? delete,
    TResult? Function(DateTime date)? loadByDate,
    TResult? Function(bool showCompleted)? updateFilter,
  }) {
    return loadByDate?.call(date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? reload,
    TResult Function(TodoModel model)? create,
    TResult Function(TodoModel model)? update,
    TResult Function(TodoModel model)? delete,
    TResult Function(DateTime date)? loadByDate,
    TResult Function(bool showCompleted)? updateFilter,
    required TResult orElse(),
  }) {
    if (loadByDate != null) {
      return loadByDate(date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Reload value) reload,
    required TResult Function(_CreateEvent value) create,
    required TResult Function(_UpdateEvent value) update,
    required TResult Function(_DeleteEvent value) delete,
    required TResult Function(_LoadByDate value) loadByDate,
    required TResult Function(_UpdateFilter value) updateFilter,
  }) {
    return loadByDate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Reload value)? reload,
    TResult? Function(_CreateEvent value)? create,
    TResult? Function(_UpdateEvent value)? update,
    TResult? Function(_DeleteEvent value)? delete,
    TResult? Function(_LoadByDate value)? loadByDate,
    TResult? Function(_UpdateFilter value)? updateFilter,
  }) {
    return loadByDate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Reload value)? reload,
    TResult Function(_CreateEvent value)? create,
    TResult Function(_UpdateEvent value)? update,
    TResult Function(_DeleteEvent value)? delete,
    TResult Function(_LoadByDate value)? loadByDate,
    TResult Function(_UpdateFilter value)? updateFilter,
    required TResult orElse(),
  }) {
    if (loadByDate != null) {
      return loadByDate(this);
    }
    return orElse();
  }
}

abstract class _LoadByDate extends UpcomingTodoEvent {
  const factory _LoadByDate({required final DateTime date}) = _$_LoadByDate;
  const _LoadByDate._() : super._();

  DateTime get date;
  @JsonKey(ignore: true)
  _$$_LoadByDateCopyWith<_$_LoadByDate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdateFilterCopyWith<$Res> {
  factory _$$_UpdateFilterCopyWith(
          _$_UpdateFilter value, $Res Function(_$_UpdateFilter) then) =
      __$$_UpdateFilterCopyWithImpl<$Res>;
  @useResult
  $Res call({bool showCompleted});
}

/// @nodoc
class __$$_UpdateFilterCopyWithImpl<$Res>
    extends _$UpcomingTodoEventCopyWithImpl<$Res, _$_UpdateFilter>
    implements _$$_UpdateFilterCopyWith<$Res> {
  __$$_UpdateFilterCopyWithImpl(
      _$_UpdateFilter _value, $Res Function(_$_UpdateFilter) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showCompleted = null,
  }) {
    return _then(_$_UpdateFilter(
      showCompleted: null == showCompleted
          ? _value.showCompleted
          : showCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_UpdateFilter extends _UpdateFilter {
  const _$_UpdateFilter({required this.showCompleted}) : super._();

  @override
  final bool showCompleted;

  @override
  String toString() {
    return 'UpcomingTodoEvent.updateFilter(showCompleted: $showCompleted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateFilter &&
            (identical(other.showCompleted, showCompleted) ||
                other.showCompleted == showCompleted));
  }

  @override
  int get hashCode => Object.hash(runtimeType, showCompleted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateFilterCopyWith<_$_UpdateFilter> get copyWith =>
      __$$_UpdateFilterCopyWithImpl<_$_UpdateFilter>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() reload,
    required TResult Function(TodoModel model) create,
    required TResult Function(TodoModel model) update,
    required TResult Function(TodoModel model) delete,
    required TResult Function(DateTime date) loadByDate,
    required TResult Function(bool showCompleted) updateFilter,
  }) {
    return updateFilter(showCompleted);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? reload,
    TResult? Function(TodoModel model)? create,
    TResult? Function(TodoModel model)? update,
    TResult? Function(TodoModel model)? delete,
    TResult? Function(DateTime date)? loadByDate,
    TResult? Function(bool showCompleted)? updateFilter,
  }) {
    return updateFilter?.call(showCompleted);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? reload,
    TResult Function(TodoModel model)? create,
    TResult Function(TodoModel model)? update,
    TResult Function(TodoModel model)? delete,
    TResult Function(DateTime date)? loadByDate,
    TResult Function(bool showCompleted)? updateFilter,
    required TResult orElse(),
  }) {
    if (updateFilter != null) {
      return updateFilter(showCompleted);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Reload value) reload,
    required TResult Function(_CreateEvent value) create,
    required TResult Function(_UpdateEvent value) update,
    required TResult Function(_DeleteEvent value) delete,
    required TResult Function(_LoadByDate value) loadByDate,
    required TResult Function(_UpdateFilter value) updateFilter,
  }) {
    return updateFilter(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Reload value)? reload,
    TResult? Function(_CreateEvent value)? create,
    TResult? Function(_UpdateEvent value)? update,
    TResult? Function(_DeleteEvent value)? delete,
    TResult? Function(_LoadByDate value)? loadByDate,
    TResult? Function(_UpdateFilter value)? updateFilter,
  }) {
    return updateFilter?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Reload value)? reload,
    TResult Function(_CreateEvent value)? create,
    TResult Function(_UpdateEvent value)? update,
    TResult Function(_DeleteEvent value)? delete,
    TResult Function(_LoadByDate value)? loadByDate,
    TResult Function(_UpdateFilter value)? updateFilter,
    required TResult orElse(),
  }) {
    if (updateFilter != null) {
      return updateFilter(this);
    }
    return orElse();
  }
}

abstract class _UpdateFilter extends UpcomingTodoEvent {
  const factory _UpdateFilter({required final bool showCompleted}) =
      _$_UpdateFilter;
  const _UpdateFilter._() : super._();

  bool get showCompleted;
  @JsonKey(ignore: true)
  _$$_UpdateFilterCopyWith<_$_UpdateFilter> get copyWith =>
      throw _privateConstructorUsedError;
}
