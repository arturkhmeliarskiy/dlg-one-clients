// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'termless_todo_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TermlessTodoState {
  bool get showCompleted => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PagesData<TodoModel>? data, bool showCompleted)
        idle,
    required TResult Function(PagesData<TodoModel>? data, bool showCompleted)
        loading,
    required TResult Function(PagesData<TodoModel>? data, bool showCompleted)
        loadingMore,
    required TResult Function(
            PagesData<TodoModel>? data, bool showCompleted, TodoError error)
        error,
    required TResult Function(PagesData<TodoModel> data, bool showCompleted,
            TodoModel editedModel)
        successEditTodo,
    required TResult Function(PagesData<TodoModel> data, bool showCompleted)
        success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PagesData<TodoModel>? data, bool showCompleted)? idle,
    TResult? Function(PagesData<TodoModel>? data, bool showCompleted)? loading,
    TResult? Function(PagesData<TodoModel>? data, bool showCompleted)?
        loadingMore,
    TResult? Function(
            PagesData<TodoModel>? data, bool showCompleted, TodoError error)?
        error,
    TResult? Function(PagesData<TodoModel> data, bool showCompleted,
            TodoModel editedModel)?
        successEditTodo,
    TResult? Function(PagesData<TodoModel> data, bool showCompleted)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PagesData<TodoModel>? data, bool showCompleted)? idle,
    TResult Function(PagesData<TodoModel>? data, bool showCompleted)? loading,
    TResult Function(PagesData<TodoModel>? data, bool showCompleted)?
        loadingMore,
    TResult Function(
            PagesData<TodoModel>? data, bool showCompleted, TodoError error)?
        error,
    TResult Function(PagesData<TodoModel> data, bool showCompleted,
            TodoModel editedModel)?
        successEditTodo,
    TResult Function(PagesData<TodoModel> data, bool showCompleted)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IdleTermlessTodoState value) idle,
    required TResult Function(LoadingTermlessTodoState value) loading,
    required TResult Function(LoadingMoreTermlessTodoState value) loadingMore,
    required TResult Function(ErrorTermlessTodoState value) error,
    required TResult Function(SuccessEditTodoTermlessTodoState value)
        successEditTodo,
    required TResult Function(SuccessTermlessTodoState value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IdleTermlessTodoState value)? idle,
    TResult? Function(LoadingTermlessTodoState value)? loading,
    TResult? Function(LoadingMoreTermlessTodoState value)? loadingMore,
    TResult? Function(ErrorTermlessTodoState value)? error,
    TResult? Function(SuccessEditTodoTermlessTodoState value)? successEditTodo,
    TResult? Function(SuccessTermlessTodoState value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IdleTermlessTodoState value)? idle,
    TResult Function(LoadingTermlessTodoState value)? loading,
    TResult Function(LoadingMoreTermlessTodoState value)? loadingMore,
    TResult Function(ErrorTermlessTodoState value)? error,
    TResult Function(SuccessEditTodoTermlessTodoState value)? successEditTodo,
    TResult Function(SuccessTermlessTodoState value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TermlessTodoStateCopyWith<TermlessTodoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TermlessTodoStateCopyWith<$Res> {
  factory $TermlessTodoStateCopyWith(
          TermlessTodoState value, $Res Function(TermlessTodoState) then) =
      _$TermlessTodoStateCopyWithImpl<$Res, TermlessTodoState>;
  @useResult
  $Res call({bool showCompleted});
}

/// @nodoc
class _$TermlessTodoStateCopyWithImpl<$Res, $Val extends TermlessTodoState>
    implements $TermlessTodoStateCopyWith<$Res> {
  _$TermlessTodoStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showCompleted = null,
  }) {
    return _then(_value.copyWith(
      showCompleted: null == showCompleted
          ? _value.showCompleted
          : showCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IdleTermlessTodoStateCopyWith<$Res>
    implements $TermlessTodoStateCopyWith<$Res> {
  factory _$$IdleTermlessTodoStateCopyWith(_$IdleTermlessTodoState value,
          $Res Function(_$IdleTermlessTodoState) then) =
      __$$IdleTermlessTodoStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PagesData<TodoModel>? data, bool showCompleted});
}

/// @nodoc
class __$$IdleTermlessTodoStateCopyWithImpl<$Res>
    extends _$TermlessTodoStateCopyWithImpl<$Res, _$IdleTermlessTodoState>
    implements _$$IdleTermlessTodoStateCopyWith<$Res> {
  __$$IdleTermlessTodoStateCopyWithImpl(_$IdleTermlessTodoState _value,
      $Res Function(_$IdleTermlessTodoState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? showCompleted = null,
  }) {
    return _then(_$IdleTermlessTodoState(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as PagesData<TodoModel>?,
      showCompleted: null == showCompleted
          ? _value.showCompleted
          : showCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$IdleTermlessTodoState extends IdleTermlessTodoState {
  const _$IdleTermlessTodoState(
      {required this.data, required this.showCompleted})
      : super._();

  @override
  final PagesData<TodoModel>? data;
  @override
  final bool showCompleted;

  @override
  String toString() {
    return 'TermlessTodoState.idle(data: $data, showCompleted: $showCompleted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IdleTermlessTodoState &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.showCompleted, showCompleted) ||
                other.showCompleted == showCompleted));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, showCompleted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IdleTermlessTodoStateCopyWith<_$IdleTermlessTodoState> get copyWith =>
      __$$IdleTermlessTodoStateCopyWithImpl<_$IdleTermlessTodoState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PagesData<TodoModel>? data, bool showCompleted)
        idle,
    required TResult Function(PagesData<TodoModel>? data, bool showCompleted)
        loading,
    required TResult Function(PagesData<TodoModel>? data, bool showCompleted)
        loadingMore,
    required TResult Function(
            PagesData<TodoModel>? data, bool showCompleted, TodoError error)
        error,
    required TResult Function(PagesData<TodoModel> data, bool showCompleted,
            TodoModel editedModel)
        successEditTodo,
    required TResult Function(PagesData<TodoModel> data, bool showCompleted)
        success,
  }) {
    return idle(data, showCompleted);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PagesData<TodoModel>? data, bool showCompleted)? idle,
    TResult? Function(PagesData<TodoModel>? data, bool showCompleted)? loading,
    TResult? Function(PagesData<TodoModel>? data, bool showCompleted)?
        loadingMore,
    TResult? Function(
            PagesData<TodoModel>? data, bool showCompleted, TodoError error)?
        error,
    TResult? Function(PagesData<TodoModel> data, bool showCompleted,
            TodoModel editedModel)?
        successEditTodo,
    TResult? Function(PagesData<TodoModel> data, bool showCompleted)? success,
  }) {
    return idle?.call(data, showCompleted);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PagesData<TodoModel>? data, bool showCompleted)? idle,
    TResult Function(PagesData<TodoModel>? data, bool showCompleted)? loading,
    TResult Function(PagesData<TodoModel>? data, bool showCompleted)?
        loadingMore,
    TResult Function(
            PagesData<TodoModel>? data, bool showCompleted, TodoError error)?
        error,
    TResult Function(PagesData<TodoModel> data, bool showCompleted,
            TodoModel editedModel)?
        successEditTodo,
    TResult Function(PagesData<TodoModel> data, bool showCompleted)? success,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(data, showCompleted);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IdleTermlessTodoState value) idle,
    required TResult Function(LoadingTermlessTodoState value) loading,
    required TResult Function(LoadingMoreTermlessTodoState value) loadingMore,
    required TResult Function(ErrorTermlessTodoState value) error,
    required TResult Function(SuccessEditTodoTermlessTodoState value)
        successEditTodo,
    required TResult Function(SuccessTermlessTodoState value) success,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IdleTermlessTodoState value)? idle,
    TResult? Function(LoadingTermlessTodoState value)? loading,
    TResult? Function(LoadingMoreTermlessTodoState value)? loadingMore,
    TResult? Function(ErrorTermlessTodoState value)? error,
    TResult? Function(SuccessEditTodoTermlessTodoState value)? successEditTodo,
    TResult? Function(SuccessTermlessTodoState value)? success,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IdleTermlessTodoState value)? idle,
    TResult Function(LoadingTermlessTodoState value)? loading,
    TResult Function(LoadingMoreTermlessTodoState value)? loadingMore,
    TResult Function(ErrorTermlessTodoState value)? error,
    TResult Function(SuccessEditTodoTermlessTodoState value)? successEditTodo,
    TResult Function(SuccessTermlessTodoState value)? success,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class IdleTermlessTodoState extends TermlessTodoState {
  const factory IdleTermlessTodoState(
      {required final PagesData<TodoModel>? data,
      required final bool showCompleted}) = _$IdleTermlessTodoState;
  const IdleTermlessTodoState._() : super._();

  PagesData<TodoModel>? get data;
  @override
  bool get showCompleted;
  @override
  @JsonKey(ignore: true)
  _$$IdleTermlessTodoStateCopyWith<_$IdleTermlessTodoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingTermlessTodoStateCopyWith<$Res>
    implements $TermlessTodoStateCopyWith<$Res> {
  factory _$$LoadingTermlessTodoStateCopyWith(_$LoadingTermlessTodoState value,
          $Res Function(_$LoadingTermlessTodoState) then) =
      __$$LoadingTermlessTodoStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PagesData<TodoModel>? data, bool showCompleted});
}

/// @nodoc
class __$$LoadingTermlessTodoStateCopyWithImpl<$Res>
    extends _$TermlessTodoStateCopyWithImpl<$Res, _$LoadingTermlessTodoState>
    implements _$$LoadingTermlessTodoStateCopyWith<$Res> {
  __$$LoadingTermlessTodoStateCopyWithImpl(_$LoadingTermlessTodoState _value,
      $Res Function(_$LoadingTermlessTodoState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? showCompleted = null,
  }) {
    return _then(_$LoadingTermlessTodoState(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as PagesData<TodoModel>?,
      showCompleted: null == showCompleted
          ? _value.showCompleted
          : showCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LoadingTermlessTodoState extends LoadingTermlessTodoState {
  const _$LoadingTermlessTodoState(
      {required this.data, required this.showCompleted})
      : super._();

  @override
  final PagesData<TodoModel>? data;
  @override
  final bool showCompleted;

  @override
  String toString() {
    return 'TermlessTodoState.loading(data: $data, showCompleted: $showCompleted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingTermlessTodoState &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.showCompleted, showCompleted) ||
                other.showCompleted == showCompleted));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, showCompleted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingTermlessTodoStateCopyWith<_$LoadingTermlessTodoState>
      get copyWith =>
          __$$LoadingTermlessTodoStateCopyWithImpl<_$LoadingTermlessTodoState>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PagesData<TodoModel>? data, bool showCompleted)
        idle,
    required TResult Function(PagesData<TodoModel>? data, bool showCompleted)
        loading,
    required TResult Function(PagesData<TodoModel>? data, bool showCompleted)
        loadingMore,
    required TResult Function(
            PagesData<TodoModel>? data, bool showCompleted, TodoError error)
        error,
    required TResult Function(PagesData<TodoModel> data, bool showCompleted,
            TodoModel editedModel)
        successEditTodo,
    required TResult Function(PagesData<TodoModel> data, bool showCompleted)
        success,
  }) {
    return loading(data, showCompleted);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PagesData<TodoModel>? data, bool showCompleted)? idle,
    TResult? Function(PagesData<TodoModel>? data, bool showCompleted)? loading,
    TResult? Function(PagesData<TodoModel>? data, bool showCompleted)?
        loadingMore,
    TResult? Function(
            PagesData<TodoModel>? data, bool showCompleted, TodoError error)?
        error,
    TResult? Function(PagesData<TodoModel> data, bool showCompleted,
            TodoModel editedModel)?
        successEditTodo,
    TResult? Function(PagesData<TodoModel> data, bool showCompleted)? success,
  }) {
    return loading?.call(data, showCompleted);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PagesData<TodoModel>? data, bool showCompleted)? idle,
    TResult Function(PagesData<TodoModel>? data, bool showCompleted)? loading,
    TResult Function(PagesData<TodoModel>? data, bool showCompleted)?
        loadingMore,
    TResult Function(
            PagesData<TodoModel>? data, bool showCompleted, TodoError error)?
        error,
    TResult Function(PagesData<TodoModel> data, bool showCompleted,
            TodoModel editedModel)?
        successEditTodo,
    TResult Function(PagesData<TodoModel> data, bool showCompleted)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(data, showCompleted);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IdleTermlessTodoState value) idle,
    required TResult Function(LoadingTermlessTodoState value) loading,
    required TResult Function(LoadingMoreTermlessTodoState value) loadingMore,
    required TResult Function(ErrorTermlessTodoState value) error,
    required TResult Function(SuccessEditTodoTermlessTodoState value)
        successEditTodo,
    required TResult Function(SuccessTermlessTodoState value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IdleTermlessTodoState value)? idle,
    TResult? Function(LoadingTermlessTodoState value)? loading,
    TResult? Function(LoadingMoreTermlessTodoState value)? loadingMore,
    TResult? Function(ErrorTermlessTodoState value)? error,
    TResult? Function(SuccessEditTodoTermlessTodoState value)? successEditTodo,
    TResult? Function(SuccessTermlessTodoState value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IdleTermlessTodoState value)? idle,
    TResult Function(LoadingTermlessTodoState value)? loading,
    TResult Function(LoadingMoreTermlessTodoState value)? loadingMore,
    TResult Function(ErrorTermlessTodoState value)? error,
    TResult Function(SuccessEditTodoTermlessTodoState value)? successEditTodo,
    TResult Function(SuccessTermlessTodoState value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingTermlessTodoState extends TermlessTodoState {
  const factory LoadingTermlessTodoState(
      {required final PagesData<TodoModel>? data,
      required final bool showCompleted}) = _$LoadingTermlessTodoState;
  const LoadingTermlessTodoState._() : super._();

  PagesData<TodoModel>? get data;
  @override
  bool get showCompleted;
  @override
  @JsonKey(ignore: true)
  _$$LoadingTermlessTodoStateCopyWith<_$LoadingTermlessTodoState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingMoreTermlessTodoStateCopyWith<$Res>
    implements $TermlessTodoStateCopyWith<$Res> {
  factory _$$LoadingMoreTermlessTodoStateCopyWith(
          _$LoadingMoreTermlessTodoState value,
          $Res Function(_$LoadingMoreTermlessTodoState) then) =
      __$$LoadingMoreTermlessTodoStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PagesData<TodoModel>? data, bool showCompleted});
}

/// @nodoc
class __$$LoadingMoreTermlessTodoStateCopyWithImpl<$Res>
    extends _$TermlessTodoStateCopyWithImpl<$Res,
        _$LoadingMoreTermlessTodoState>
    implements _$$LoadingMoreTermlessTodoStateCopyWith<$Res> {
  __$$LoadingMoreTermlessTodoStateCopyWithImpl(
      _$LoadingMoreTermlessTodoState _value,
      $Res Function(_$LoadingMoreTermlessTodoState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? showCompleted = null,
  }) {
    return _then(_$LoadingMoreTermlessTodoState(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as PagesData<TodoModel>?,
      showCompleted: null == showCompleted
          ? _value.showCompleted
          : showCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LoadingMoreTermlessTodoState extends LoadingMoreTermlessTodoState {
  const _$LoadingMoreTermlessTodoState(
      {required this.data, required this.showCompleted})
      : super._();

  @override
  final PagesData<TodoModel>? data;
  @override
  final bool showCompleted;

  @override
  String toString() {
    return 'TermlessTodoState.loadingMore(data: $data, showCompleted: $showCompleted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingMoreTermlessTodoState &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.showCompleted, showCompleted) ||
                other.showCompleted == showCompleted));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, showCompleted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingMoreTermlessTodoStateCopyWith<_$LoadingMoreTermlessTodoState>
      get copyWith => __$$LoadingMoreTermlessTodoStateCopyWithImpl<
          _$LoadingMoreTermlessTodoState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PagesData<TodoModel>? data, bool showCompleted)
        idle,
    required TResult Function(PagesData<TodoModel>? data, bool showCompleted)
        loading,
    required TResult Function(PagesData<TodoModel>? data, bool showCompleted)
        loadingMore,
    required TResult Function(
            PagesData<TodoModel>? data, bool showCompleted, TodoError error)
        error,
    required TResult Function(PagesData<TodoModel> data, bool showCompleted,
            TodoModel editedModel)
        successEditTodo,
    required TResult Function(PagesData<TodoModel> data, bool showCompleted)
        success,
  }) {
    return loadingMore(data, showCompleted);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PagesData<TodoModel>? data, bool showCompleted)? idle,
    TResult? Function(PagesData<TodoModel>? data, bool showCompleted)? loading,
    TResult? Function(PagesData<TodoModel>? data, bool showCompleted)?
        loadingMore,
    TResult? Function(
            PagesData<TodoModel>? data, bool showCompleted, TodoError error)?
        error,
    TResult? Function(PagesData<TodoModel> data, bool showCompleted,
            TodoModel editedModel)?
        successEditTodo,
    TResult? Function(PagesData<TodoModel> data, bool showCompleted)? success,
  }) {
    return loadingMore?.call(data, showCompleted);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PagesData<TodoModel>? data, bool showCompleted)? idle,
    TResult Function(PagesData<TodoModel>? data, bool showCompleted)? loading,
    TResult Function(PagesData<TodoModel>? data, bool showCompleted)?
        loadingMore,
    TResult Function(
            PagesData<TodoModel>? data, bool showCompleted, TodoError error)?
        error,
    TResult Function(PagesData<TodoModel> data, bool showCompleted,
            TodoModel editedModel)?
        successEditTodo,
    TResult Function(PagesData<TodoModel> data, bool showCompleted)? success,
    required TResult orElse(),
  }) {
    if (loadingMore != null) {
      return loadingMore(data, showCompleted);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IdleTermlessTodoState value) idle,
    required TResult Function(LoadingTermlessTodoState value) loading,
    required TResult Function(LoadingMoreTermlessTodoState value) loadingMore,
    required TResult Function(ErrorTermlessTodoState value) error,
    required TResult Function(SuccessEditTodoTermlessTodoState value)
        successEditTodo,
    required TResult Function(SuccessTermlessTodoState value) success,
  }) {
    return loadingMore(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IdleTermlessTodoState value)? idle,
    TResult? Function(LoadingTermlessTodoState value)? loading,
    TResult? Function(LoadingMoreTermlessTodoState value)? loadingMore,
    TResult? Function(ErrorTermlessTodoState value)? error,
    TResult? Function(SuccessEditTodoTermlessTodoState value)? successEditTodo,
    TResult? Function(SuccessTermlessTodoState value)? success,
  }) {
    return loadingMore?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IdleTermlessTodoState value)? idle,
    TResult Function(LoadingTermlessTodoState value)? loading,
    TResult Function(LoadingMoreTermlessTodoState value)? loadingMore,
    TResult Function(ErrorTermlessTodoState value)? error,
    TResult Function(SuccessEditTodoTermlessTodoState value)? successEditTodo,
    TResult Function(SuccessTermlessTodoState value)? success,
    required TResult orElse(),
  }) {
    if (loadingMore != null) {
      return loadingMore(this);
    }
    return orElse();
  }
}

abstract class LoadingMoreTermlessTodoState extends TermlessTodoState {
  const factory LoadingMoreTermlessTodoState(
      {required final PagesData<TodoModel>? data,
      required final bool showCompleted}) = _$LoadingMoreTermlessTodoState;
  const LoadingMoreTermlessTodoState._() : super._();

  PagesData<TodoModel>? get data;
  @override
  bool get showCompleted;
  @override
  @JsonKey(ignore: true)
  _$$LoadingMoreTermlessTodoStateCopyWith<_$LoadingMoreTermlessTodoState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorTermlessTodoStateCopyWith<$Res>
    implements $TermlessTodoStateCopyWith<$Res> {
  factory _$$ErrorTermlessTodoStateCopyWith(_$ErrorTermlessTodoState value,
          $Res Function(_$ErrorTermlessTodoState) then) =
      __$$ErrorTermlessTodoStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PagesData<TodoModel>? data, bool showCompleted, TodoError error});

  $TodoErrorCopyWith<$Res> get error;
}

/// @nodoc
class __$$ErrorTermlessTodoStateCopyWithImpl<$Res>
    extends _$TermlessTodoStateCopyWithImpl<$Res, _$ErrorTermlessTodoState>
    implements _$$ErrorTermlessTodoStateCopyWith<$Res> {
  __$$ErrorTermlessTodoStateCopyWithImpl(_$ErrorTermlessTodoState _value,
      $Res Function(_$ErrorTermlessTodoState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? showCompleted = null,
    Object? error = null,
  }) {
    return _then(_$ErrorTermlessTodoState(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as PagesData<TodoModel>?,
      showCompleted: null == showCompleted
          ? _value.showCompleted
          : showCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
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

class _$ErrorTermlessTodoState extends ErrorTermlessTodoState {
  const _$ErrorTermlessTodoState(
      {required this.data, required this.showCompleted, required this.error})
      : super._();

  @override
  final PagesData<TodoModel>? data;
  @override
  final bool showCompleted;
  @override
  final TodoError error;

  @override
  String toString() {
    return 'TermlessTodoState.error(data: $data, showCompleted: $showCompleted, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorTermlessTodoState &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.showCompleted, showCompleted) ||
                other.showCompleted == showCompleted) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, showCompleted, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorTermlessTodoStateCopyWith<_$ErrorTermlessTodoState> get copyWith =>
      __$$ErrorTermlessTodoStateCopyWithImpl<_$ErrorTermlessTodoState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PagesData<TodoModel>? data, bool showCompleted)
        idle,
    required TResult Function(PagesData<TodoModel>? data, bool showCompleted)
        loading,
    required TResult Function(PagesData<TodoModel>? data, bool showCompleted)
        loadingMore,
    required TResult Function(
            PagesData<TodoModel>? data, bool showCompleted, TodoError error)
        error,
    required TResult Function(PagesData<TodoModel> data, bool showCompleted,
            TodoModel editedModel)
        successEditTodo,
    required TResult Function(PagesData<TodoModel> data, bool showCompleted)
        success,
  }) {
    return error(data, showCompleted, this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PagesData<TodoModel>? data, bool showCompleted)? idle,
    TResult? Function(PagesData<TodoModel>? data, bool showCompleted)? loading,
    TResult? Function(PagesData<TodoModel>? data, bool showCompleted)?
        loadingMore,
    TResult? Function(
            PagesData<TodoModel>? data, bool showCompleted, TodoError error)?
        error,
    TResult? Function(PagesData<TodoModel> data, bool showCompleted,
            TodoModel editedModel)?
        successEditTodo,
    TResult? Function(PagesData<TodoModel> data, bool showCompleted)? success,
  }) {
    return error?.call(data, showCompleted, this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PagesData<TodoModel>? data, bool showCompleted)? idle,
    TResult Function(PagesData<TodoModel>? data, bool showCompleted)? loading,
    TResult Function(PagesData<TodoModel>? data, bool showCompleted)?
        loadingMore,
    TResult Function(
            PagesData<TodoModel>? data, bool showCompleted, TodoError error)?
        error,
    TResult Function(PagesData<TodoModel> data, bool showCompleted,
            TodoModel editedModel)?
        successEditTodo,
    TResult Function(PagesData<TodoModel> data, bool showCompleted)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(data, showCompleted, this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IdleTermlessTodoState value) idle,
    required TResult Function(LoadingTermlessTodoState value) loading,
    required TResult Function(LoadingMoreTermlessTodoState value) loadingMore,
    required TResult Function(ErrorTermlessTodoState value) error,
    required TResult Function(SuccessEditTodoTermlessTodoState value)
        successEditTodo,
    required TResult Function(SuccessTermlessTodoState value) success,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IdleTermlessTodoState value)? idle,
    TResult? Function(LoadingTermlessTodoState value)? loading,
    TResult? Function(LoadingMoreTermlessTodoState value)? loadingMore,
    TResult? Function(ErrorTermlessTodoState value)? error,
    TResult? Function(SuccessEditTodoTermlessTodoState value)? successEditTodo,
    TResult? Function(SuccessTermlessTodoState value)? success,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IdleTermlessTodoState value)? idle,
    TResult Function(LoadingTermlessTodoState value)? loading,
    TResult Function(LoadingMoreTermlessTodoState value)? loadingMore,
    TResult Function(ErrorTermlessTodoState value)? error,
    TResult Function(SuccessEditTodoTermlessTodoState value)? successEditTodo,
    TResult Function(SuccessTermlessTodoState value)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorTermlessTodoState extends TermlessTodoState {
  const factory ErrorTermlessTodoState(
      {required final PagesData<TodoModel>? data,
      required final bool showCompleted,
      required final TodoError error}) = _$ErrorTermlessTodoState;
  const ErrorTermlessTodoState._() : super._();

  PagesData<TodoModel>? get data;
  @override
  bool get showCompleted;
  TodoError get error;
  @override
  @JsonKey(ignore: true)
  _$$ErrorTermlessTodoStateCopyWith<_$ErrorTermlessTodoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessEditTodoTermlessTodoStateCopyWith<$Res>
    implements $TermlessTodoStateCopyWith<$Res> {
  factory _$$SuccessEditTodoTermlessTodoStateCopyWith(
          _$SuccessEditTodoTermlessTodoState value,
          $Res Function(_$SuccessEditTodoTermlessTodoState) then) =
      __$$SuccessEditTodoTermlessTodoStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PagesData<TodoModel> data, bool showCompleted, TodoModel editedModel});

  $TodoModelCopyWith<$Res> get editedModel;
}

/// @nodoc
class __$$SuccessEditTodoTermlessTodoStateCopyWithImpl<$Res>
    extends _$TermlessTodoStateCopyWithImpl<$Res,
        _$SuccessEditTodoTermlessTodoState>
    implements _$$SuccessEditTodoTermlessTodoStateCopyWith<$Res> {
  __$$SuccessEditTodoTermlessTodoStateCopyWithImpl(
      _$SuccessEditTodoTermlessTodoState _value,
      $Res Function(_$SuccessEditTodoTermlessTodoState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? showCompleted = null,
    Object? editedModel = null,
  }) {
    return _then(_$SuccessEditTodoTermlessTodoState(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as PagesData<TodoModel>,
      showCompleted: null == showCompleted
          ? _value.showCompleted
          : showCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
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

class _$SuccessEditTodoTermlessTodoState
    extends SuccessEditTodoTermlessTodoState {
  const _$SuccessEditTodoTermlessTodoState(
      {required this.data,
      required this.showCompleted,
      required this.editedModel})
      : super._();

  @override
  final PagesData<TodoModel> data;
  @override
  final bool showCompleted;
  @override
  final TodoModel editedModel;

  @override
  String toString() {
    return 'TermlessTodoState.successEditTodo(data: $data, showCompleted: $showCompleted, editedModel: $editedModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessEditTodoTermlessTodoState &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.showCompleted, showCompleted) ||
                other.showCompleted == showCompleted) &&
            (identical(other.editedModel, editedModel) ||
                other.editedModel == editedModel));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, data, showCompleted, editedModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessEditTodoTermlessTodoStateCopyWith<
          _$SuccessEditTodoTermlessTodoState>
      get copyWith => __$$SuccessEditTodoTermlessTodoStateCopyWithImpl<
          _$SuccessEditTodoTermlessTodoState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PagesData<TodoModel>? data, bool showCompleted)
        idle,
    required TResult Function(PagesData<TodoModel>? data, bool showCompleted)
        loading,
    required TResult Function(PagesData<TodoModel>? data, bool showCompleted)
        loadingMore,
    required TResult Function(
            PagesData<TodoModel>? data, bool showCompleted, TodoError error)
        error,
    required TResult Function(PagesData<TodoModel> data, bool showCompleted,
            TodoModel editedModel)
        successEditTodo,
    required TResult Function(PagesData<TodoModel> data, bool showCompleted)
        success,
  }) {
    return successEditTodo(data, showCompleted, editedModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PagesData<TodoModel>? data, bool showCompleted)? idle,
    TResult? Function(PagesData<TodoModel>? data, bool showCompleted)? loading,
    TResult? Function(PagesData<TodoModel>? data, bool showCompleted)?
        loadingMore,
    TResult? Function(
            PagesData<TodoModel>? data, bool showCompleted, TodoError error)?
        error,
    TResult? Function(PagesData<TodoModel> data, bool showCompleted,
            TodoModel editedModel)?
        successEditTodo,
    TResult? Function(PagesData<TodoModel> data, bool showCompleted)? success,
  }) {
    return successEditTodo?.call(data, showCompleted, editedModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PagesData<TodoModel>? data, bool showCompleted)? idle,
    TResult Function(PagesData<TodoModel>? data, bool showCompleted)? loading,
    TResult Function(PagesData<TodoModel>? data, bool showCompleted)?
        loadingMore,
    TResult Function(
            PagesData<TodoModel>? data, bool showCompleted, TodoError error)?
        error,
    TResult Function(PagesData<TodoModel> data, bool showCompleted,
            TodoModel editedModel)?
        successEditTodo,
    TResult Function(PagesData<TodoModel> data, bool showCompleted)? success,
    required TResult orElse(),
  }) {
    if (successEditTodo != null) {
      return successEditTodo(data, showCompleted, editedModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IdleTermlessTodoState value) idle,
    required TResult Function(LoadingTermlessTodoState value) loading,
    required TResult Function(LoadingMoreTermlessTodoState value) loadingMore,
    required TResult Function(ErrorTermlessTodoState value) error,
    required TResult Function(SuccessEditTodoTermlessTodoState value)
        successEditTodo,
    required TResult Function(SuccessTermlessTodoState value) success,
  }) {
    return successEditTodo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IdleTermlessTodoState value)? idle,
    TResult? Function(LoadingTermlessTodoState value)? loading,
    TResult? Function(LoadingMoreTermlessTodoState value)? loadingMore,
    TResult? Function(ErrorTermlessTodoState value)? error,
    TResult? Function(SuccessEditTodoTermlessTodoState value)? successEditTodo,
    TResult? Function(SuccessTermlessTodoState value)? success,
  }) {
    return successEditTodo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IdleTermlessTodoState value)? idle,
    TResult Function(LoadingTermlessTodoState value)? loading,
    TResult Function(LoadingMoreTermlessTodoState value)? loadingMore,
    TResult Function(ErrorTermlessTodoState value)? error,
    TResult Function(SuccessEditTodoTermlessTodoState value)? successEditTodo,
    TResult Function(SuccessTermlessTodoState value)? success,
    required TResult orElse(),
  }) {
    if (successEditTodo != null) {
      return successEditTodo(this);
    }
    return orElse();
  }
}

abstract class SuccessEditTodoTermlessTodoState extends TermlessTodoState {
  const factory SuccessEditTodoTermlessTodoState(
          {required final PagesData<TodoModel> data,
          required final bool showCompleted,
          required final TodoModel editedModel}) =
      _$SuccessEditTodoTermlessTodoState;
  const SuccessEditTodoTermlessTodoState._() : super._();

  PagesData<TodoModel> get data;
  @override
  bool get showCompleted;
  TodoModel get editedModel;
  @override
  @JsonKey(ignore: true)
  _$$SuccessEditTodoTermlessTodoStateCopyWith<
          _$SuccessEditTodoTermlessTodoState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessTermlessTodoStateCopyWith<$Res>
    implements $TermlessTodoStateCopyWith<$Res> {
  factory _$$SuccessTermlessTodoStateCopyWith(_$SuccessTermlessTodoState value,
          $Res Function(_$SuccessTermlessTodoState) then) =
      __$$SuccessTermlessTodoStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PagesData<TodoModel> data, bool showCompleted});
}

/// @nodoc
class __$$SuccessTermlessTodoStateCopyWithImpl<$Res>
    extends _$TermlessTodoStateCopyWithImpl<$Res, _$SuccessTermlessTodoState>
    implements _$$SuccessTermlessTodoStateCopyWith<$Res> {
  __$$SuccessTermlessTodoStateCopyWithImpl(_$SuccessTermlessTodoState _value,
      $Res Function(_$SuccessTermlessTodoState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? showCompleted = null,
  }) {
    return _then(_$SuccessTermlessTodoState(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as PagesData<TodoModel>,
      showCompleted: null == showCompleted
          ? _value.showCompleted
          : showCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SuccessTermlessTodoState extends SuccessTermlessTodoState {
  const _$SuccessTermlessTodoState(
      {required this.data, required this.showCompleted})
      : super._();

  @override
  final PagesData<TodoModel> data;
  @override
  final bool showCompleted;

  @override
  String toString() {
    return 'TermlessTodoState.success(data: $data, showCompleted: $showCompleted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessTermlessTodoState &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.showCompleted, showCompleted) ||
                other.showCompleted == showCompleted));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, showCompleted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessTermlessTodoStateCopyWith<_$SuccessTermlessTodoState>
      get copyWith =>
          __$$SuccessTermlessTodoStateCopyWithImpl<_$SuccessTermlessTodoState>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PagesData<TodoModel>? data, bool showCompleted)
        idle,
    required TResult Function(PagesData<TodoModel>? data, bool showCompleted)
        loading,
    required TResult Function(PagesData<TodoModel>? data, bool showCompleted)
        loadingMore,
    required TResult Function(
            PagesData<TodoModel>? data, bool showCompleted, TodoError error)
        error,
    required TResult Function(PagesData<TodoModel> data, bool showCompleted,
            TodoModel editedModel)
        successEditTodo,
    required TResult Function(PagesData<TodoModel> data, bool showCompleted)
        success,
  }) {
    return success(data, showCompleted);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PagesData<TodoModel>? data, bool showCompleted)? idle,
    TResult? Function(PagesData<TodoModel>? data, bool showCompleted)? loading,
    TResult? Function(PagesData<TodoModel>? data, bool showCompleted)?
        loadingMore,
    TResult? Function(
            PagesData<TodoModel>? data, bool showCompleted, TodoError error)?
        error,
    TResult? Function(PagesData<TodoModel> data, bool showCompleted,
            TodoModel editedModel)?
        successEditTodo,
    TResult? Function(PagesData<TodoModel> data, bool showCompleted)? success,
  }) {
    return success?.call(data, showCompleted);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PagesData<TodoModel>? data, bool showCompleted)? idle,
    TResult Function(PagesData<TodoModel>? data, bool showCompleted)? loading,
    TResult Function(PagesData<TodoModel>? data, bool showCompleted)?
        loadingMore,
    TResult Function(
            PagesData<TodoModel>? data, bool showCompleted, TodoError error)?
        error,
    TResult Function(PagesData<TodoModel> data, bool showCompleted,
            TodoModel editedModel)?
        successEditTodo,
    TResult Function(PagesData<TodoModel> data, bool showCompleted)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data, showCompleted);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IdleTermlessTodoState value) idle,
    required TResult Function(LoadingTermlessTodoState value) loading,
    required TResult Function(LoadingMoreTermlessTodoState value) loadingMore,
    required TResult Function(ErrorTermlessTodoState value) error,
    required TResult Function(SuccessEditTodoTermlessTodoState value)
        successEditTodo,
    required TResult Function(SuccessTermlessTodoState value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IdleTermlessTodoState value)? idle,
    TResult? Function(LoadingTermlessTodoState value)? loading,
    TResult? Function(LoadingMoreTermlessTodoState value)? loadingMore,
    TResult? Function(ErrorTermlessTodoState value)? error,
    TResult? Function(SuccessEditTodoTermlessTodoState value)? successEditTodo,
    TResult? Function(SuccessTermlessTodoState value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IdleTermlessTodoState value)? idle,
    TResult Function(LoadingTermlessTodoState value)? loading,
    TResult Function(LoadingMoreTermlessTodoState value)? loadingMore,
    TResult Function(ErrorTermlessTodoState value)? error,
    TResult Function(SuccessEditTodoTermlessTodoState value)? successEditTodo,
    TResult Function(SuccessTermlessTodoState value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class SuccessTermlessTodoState extends TermlessTodoState {
  const factory SuccessTermlessTodoState(
      {required final PagesData<TodoModel> data,
      required final bool showCompleted}) = _$SuccessTermlessTodoState;
  const SuccessTermlessTodoState._() : super._();

  PagesData<TodoModel> get data;
  @override
  bool get showCompleted;
  @override
  @JsonKey(ignore: true)
  _$$SuccessTermlessTodoStateCopyWith<_$SuccessTermlessTodoState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TermlessTodoEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadNextPage,
    required TResult Function() reload,
    required TResult Function(TodoModel model) create,
    required TResult Function(TodoModel model) update,
    required TResult Function(TodoModel model) delete,
    required TResult Function(bool showCompleted) updateFilter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadNextPage,
    TResult? Function()? reload,
    TResult? Function(TodoModel model)? create,
    TResult? Function(TodoModel model)? update,
    TResult? Function(TodoModel model)? delete,
    TResult? Function(bool showCompleted)? updateFilter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadNextPage,
    TResult Function()? reload,
    TResult Function(TodoModel model)? create,
    TResult Function(TodoModel model)? update,
    TResult Function(TodoModel model)? delete,
    TResult Function(bool showCompleted)? updateFilter,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadNextPage value) loadNextPage,
    required TResult Function(_Reload value) reload,
    required TResult Function(_CreateEvent value) create,
    required TResult Function(_UpdateEvent value) update,
    required TResult Function(_DeleteEvent value) delete,
    required TResult Function(_UpdateFilter value) updateFilter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadNextPage value)? loadNextPage,
    TResult? Function(_Reload value)? reload,
    TResult? Function(_CreateEvent value)? create,
    TResult? Function(_UpdateEvent value)? update,
    TResult? Function(_DeleteEvent value)? delete,
    TResult? Function(_UpdateFilter value)? updateFilter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadNextPage value)? loadNextPage,
    TResult Function(_Reload value)? reload,
    TResult Function(_CreateEvent value)? create,
    TResult Function(_UpdateEvent value)? update,
    TResult Function(_DeleteEvent value)? delete,
    TResult Function(_UpdateFilter value)? updateFilter,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TermlessTodoEventCopyWith<$Res> {
  factory $TermlessTodoEventCopyWith(
          TermlessTodoEvent value, $Res Function(TermlessTodoEvent) then) =
      _$TermlessTodoEventCopyWithImpl<$Res, TermlessTodoEvent>;
}

/// @nodoc
class _$TermlessTodoEventCopyWithImpl<$Res, $Val extends TermlessTodoEvent>
    implements $TermlessTodoEventCopyWith<$Res> {
  _$TermlessTodoEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_LoadNextPageCopyWith<$Res> {
  factory _$$_LoadNextPageCopyWith(
          _$_LoadNextPage value, $Res Function(_$_LoadNextPage) then) =
      __$$_LoadNextPageCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadNextPageCopyWithImpl<$Res>
    extends _$TermlessTodoEventCopyWithImpl<$Res, _$_LoadNextPage>
    implements _$$_LoadNextPageCopyWith<$Res> {
  __$$_LoadNextPageCopyWithImpl(
      _$_LoadNextPage _value, $Res Function(_$_LoadNextPage) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoadNextPage extends _LoadNextPage {
  const _$_LoadNextPage() : super._();

  @override
  String toString() {
    return 'TermlessTodoEvent.loadNextPage()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoadNextPage);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadNextPage,
    required TResult Function() reload,
    required TResult Function(TodoModel model) create,
    required TResult Function(TodoModel model) update,
    required TResult Function(TodoModel model) delete,
    required TResult Function(bool showCompleted) updateFilter,
  }) {
    return loadNextPage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadNextPage,
    TResult? Function()? reload,
    TResult? Function(TodoModel model)? create,
    TResult? Function(TodoModel model)? update,
    TResult? Function(TodoModel model)? delete,
    TResult? Function(bool showCompleted)? updateFilter,
  }) {
    return loadNextPage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadNextPage,
    TResult Function()? reload,
    TResult Function(TodoModel model)? create,
    TResult Function(TodoModel model)? update,
    TResult Function(TodoModel model)? delete,
    TResult Function(bool showCompleted)? updateFilter,
    required TResult orElse(),
  }) {
    if (loadNextPage != null) {
      return loadNextPage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadNextPage value) loadNextPage,
    required TResult Function(_Reload value) reload,
    required TResult Function(_CreateEvent value) create,
    required TResult Function(_UpdateEvent value) update,
    required TResult Function(_DeleteEvent value) delete,
    required TResult Function(_UpdateFilter value) updateFilter,
  }) {
    return loadNextPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadNextPage value)? loadNextPage,
    TResult? Function(_Reload value)? reload,
    TResult? Function(_CreateEvent value)? create,
    TResult? Function(_UpdateEvent value)? update,
    TResult? Function(_DeleteEvent value)? delete,
    TResult? Function(_UpdateFilter value)? updateFilter,
  }) {
    return loadNextPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadNextPage value)? loadNextPage,
    TResult Function(_Reload value)? reload,
    TResult Function(_CreateEvent value)? create,
    TResult Function(_UpdateEvent value)? update,
    TResult Function(_DeleteEvent value)? delete,
    TResult Function(_UpdateFilter value)? updateFilter,
    required TResult orElse(),
  }) {
    if (loadNextPage != null) {
      return loadNextPage(this);
    }
    return orElse();
  }
}

abstract class _LoadNextPage extends TermlessTodoEvent {
  const factory _LoadNextPage() = _$_LoadNextPage;
  const _LoadNextPage._() : super._();
}

/// @nodoc
abstract class _$$_ReloadCopyWith<$Res> {
  factory _$$_ReloadCopyWith(_$_Reload value, $Res Function(_$_Reload) then) =
      __$$_ReloadCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ReloadCopyWithImpl<$Res>
    extends _$TermlessTodoEventCopyWithImpl<$Res, _$_Reload>
    implements _$$_ReloadCopyWith<$Res> {
  __$$_ReloadCopyWithImpl(_$_Reload _value, $Res Function(_$_Reload) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Reload extends _Reload {
  const _$_Reload() : super._();

  @override
  String toString() {
    return 'TermlessTodoEvent.reload()';
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
    required TResult Function() loadNextPage,
    required TResult Function() reload,
    required TResult Function(TodoModel model) create,
    required TResult Function(TodoModel model) update,
    required TResult Function(TodoModel model) delete,
    required TResult Function(bool showCompleted) updateFilter,
  }) {
    return reload();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadNextPage,
    TResult? Function()? reload,
    TResult? Function(TodoModel model)? create,
    TResult? Function(TodoModel model)? update,
    TResult? Function(TodoModel model)? delete,
    TResult? Function(bool showCompleted)? updateFilter,
  }) {
    return reload?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadNextPage,
    TResult Function()? reload,
    TResult Function(TodoModel model)? create,
    TResult Function(TodoModel model)? update,
    TResult Function(TodoModel model)? delete,
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
    required TResult Function(_LoadNextPage value) loadNextPage,
    required TResult Function(_Reload value) reload,
    required TResult Function(_CreateEvent value) create,
    required TResult Function(_UpdateEvent value) update,
    required TResult Function(_DeleteEvent value) delete,
    required TResult Function(_UpdateFilter value) updateFilter,
  }) {
    return reload(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadNextPage value)? loadNextPage,
    TResult? Function(_Reload value)? reload,
    TResult? Function(_CreateEvent value)? create,
    TResult? Function(_UpdateEvent value)? update,
    TResult? Function(_DeleteEvent value)? delete,
    TResult? Function(_UpdateFilter value)? updateFilter,
  }) {
    return reload?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadNextPage value)? loadNextPage,
    TResult Function(_Reload value)? reload,
    TResult Function(_CreateEvent value)? create,
    TResult Function(_UpdateEvent value)? update,
    TResult Function(_DeleteEvent value)? delete,
    TResult Function(_UpdateFilter value)? updateFilter,
    required TResult orElse(),
  }) {
    if (reload != null) {
      return reload(this);
    }
    return orElse();
  }
}

abstract class _Reload extends TermlessTodoEvent {
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
    extends _$TermlessTodoEventCopyWithImpl<$Res, _$_CreateEvent>
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
    return 'TermlessTodoEvent.create(model: $model)';
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
    required TResult Function() loadNextPage,
    required TResult Function() reload,
    required TResult Function(TodoModel model) create,
    required TResult Function(TodoModel model) update,
    required TResult Function(TodoModel model) delete,
    required TResult Function(bool showCompleted) updateFilter,
  }) {
    return create(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadNextPage,
    TResult? Function()? reload,
    TResult? Function(TodoModel model)? create,
    TResult? Function(TodoModel model)? update,
    TResult? Function(TodoModel model)? delete,
    TResult? Function(bool showCompleted)? updateFilter,
  }) {
    return create?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadNextPage,
    TResult Function()? reload,
    TResult Function(TodoModel model)? create,
    TResult Function(TodoModel model)? update,
    TResult Function(TodoModel model)? delete,
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
    required TResult Function(_LoadNextPage value) loadNextPage,
    required TResult Function(_Reload value) reload,
    required TResult Function(_CreateEvent value) create,
    required TResult Function(_UpdateEvent value) update,
    required TResult Function(_DeleteEvent value) delete,
    required TResult Function(_UpdateFilter value) updateFilter,
  }) {
    return create(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadNextPage value)? loadNextPage,
    TResult? Function(_Reload value)? reload,
    TResult? Function(_CreateEvent value)? create,
    TResult? Function(_UpdateEvent value)? update,
    TResult? Function(_DeleteEvent value)? delete,
    TResult? Function(_UpdateFilter value)? updateFilter,
  }) {
    return create?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadNextPage value)? loadNextPage,
    TResult Function(_Reload value)? reload,
    TResult Function(_CreateEvent value)? create,
    TResult Function(_UpdateEvent value)? update,
    TResult Function(_DeleteEvent value)? delete,
    TResult Function(_UpdateFilter value)? updateFilter,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(this);
    }
    return orElse();
  }
}

abstract class _CreateEvent extends TermlessTodoEvent {
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
    extends _$TermlessTodoEventCopyWithImpl<$Res, _$_UpdateEvent>
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
    return 'TermlessTodoEvent.update(model: $model)';
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
    required TResult Function() loadNextPage,
    required TResult Function() reload,
    required TResult Function(TodoModel model) create,
    required TResult Function(TodoModel model) update,
    required TResult Function(TodoModel model) delete,
    required TResult Function(bool showCompleted) updateFilter,
  }) {
    return update(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadNextPage,
    TResult? Function()? reload,
    TResult? Function(TodoModel model)? create,
    TResult? Function(TodoModel model)? update,
    TResult? Function(TodoModel model)? delete,
    TResult? Function(bool showCompleted)? updateFilter,
  }) {
    return update?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadNextPage,
    TResult Function()? reload,
    TResult Function(TodoModel model)? create,
    TResult Function(TodoModel model)? update,
    TResult Function(TodoModel model)? delete,
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
    required TResult Function(_LoadNextPage value) loadNextPage,
    required TResult Function(_Reload value) reload,
    required TResult Function(_CreateEvent value) create,
    required TResult Function(_UpdateEvent value) update,
    required TResult Function(_DeleteEvent value) delete,
    required TResult Function(_UpdateFilter value) updateFilter,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadNextPage value)? loadNextPage,
    TResult? Function(_Reload value)? reload,
    TResult? Function(_CreateEvent value)? create,
    TResult? Function(_UpdateEvent value)? update,
    TResult? Function(_DeleteEvent value)? delete,
    TResult? Function(_UpdateFilter value)? updateFilter,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadNextPage value)? loadNextPage,
    TResult Function(_Reload value)? reload,
    TResult Function(_CreateEvent value)? create,
    TResult Function(_UpdateEvent value)? update,
    TResult Function(_DeleteEvent value)? delete,
    TResult Function(_UpdateFilter value)? updateFilter,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class _UpdateEvent extends TermlessTodoEvent {
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
    extends _$TermlessTodoEventCopyWithImpl<$Res, _$_DeleteEvent>
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
    return 'TermlessTodoEvent.delete(model: $model)';
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
    required TResult Function() loadNextPage,
    required TResult Function() reload,
    required TResult Function(TodoModel model) create,
    required TResult Function(TodoModel model) update,
    required TResult Function(TodoModel model) delete,
    required TResult Function(bool showCompleted) updateFilter,
  }) {
    return delete(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadNextPage,
    TResult? Function()? reload,
    TResult? Function(TodoModel model)? create,
    TResult? Function(TodoModel model)? update,
    TResult? Function(TodoModel model)? delete,
    TResult? Function(bool showCompleted)? updateFilter,
  }) {
    return delete?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadNextPage,
    TResult Function()? reload,
    TResult Function(TodoModel model)? create,
    TResult Function(TodoModel model)? update,
    TResult Function(TodoModel model)? delete,
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
    required TResult Function(_LoadNextPage value) loadNextPage,
    required TResult Function(_Reload value) reload,
    required TResult Function(_CreateEvent value) create,
    required TResult Function(_UpdateEvent value) update,
    required TResult Function(_DeleteEvent value) delete,
    required TResult Function(_UpdateFilter value) updateFilter,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadNextPage value)? loadNextPage,
    TResult? Function(_Reload value)? reload,
    TResult? Function(_CreateEvent value)? create,
    TResult? Function(_UpdateEvent value)? update,
    TResult? Function(_DeleteEvent value)? delete,
    TResult? Function(_UpdateFilter value)? updateFilter,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadNextPage value)? loadNextPage,
    TResult Function(_Reload value)? reload,
    TResult Function(_CreateEvent value)? create,
    TResult Function(_UpdateEvent value)? update,
    TResult Function(_DeleteEvent value)? delete,
    TResult Function(_UpdateFilter value)? updateFilter,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class _DeleteEvent extends TermlessTodoEvent {
  const factory _DeleteEvent({required final TodoModel model}) = _$_DeleteEvent;
  const _DeleteEvent._() : super._();

  TodoModel get model;
  @JsonKey(ignore: true)
  _$$_DeleteEventCopyWith<_$_DeleteEvent> get copyWith =>
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
    extends _$TermlessTodoEventCopyWithImpl<$Res, _$_UpdateFilter>
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
    return 'TermlessTodoEvent.updateFilter(showCompleted: $showCompleted)';
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
    required TResult Function() loadNextPage,
    required TResult Function() reload,
    required TResult Function(TodoModel model) create,
    required TResult Function(TodoModel model) update,
    required TResult Function(TodoModel model) delete,
    required TResult Function(bool showCompleted) updateFilter,
  }) {
    return updateFilter(showCompleted);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadNextPage,
    TResult? Function()? reload,
    TResult? Function(TodoModel model)? create,
    TResult? Function(TodoModel model)? update,
    TResult? Function(TodoModel model)? delete,
    TResult? Function(bool showCompleted)? updateFilter,
  }) {
    return updateFilter?.call(showCompleted);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadNextPage,
    TResult Function()? reload,
    TResult Function(TodoModel model)? create,
    TResult Function(TodoModel model)? update,
    TResult Function(TodoModel model)? delete,
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
    required TResult Function(_LoadNextPage value) loadNextPage,
    required TResult Function(_Reload value) reload,
    required TResult Function(_CreateEvent value) create,
    required TResult Function(_UpdateEvent value) update,
    required TResult Function(_DeleteEvent value) delete,
    required TResult Function(_UpdateFilter value) updateFilter,
  }) {
    return updateFilter(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadNextPage value)? loadNextPage,
    TResult? Function(_Reload value)? reload,
    TResult? Function(_CreateEvent value)? create,
    TResult? Function(_UpdateEvent value)? update,
    TResult? Function(_DeleteEvent value)? delete,
    TResult? Function(_UpdateFilter value)? updateFilter,
  }) {
    return updateFilter?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadNextPage value)? loadNextPage,
    TResult Function(_Reload value)? reload,
    TResult Function(_CreateEvent value)? create,
    TResult Function(_UpdateEvent value)? update,
    TResult Function(_DeleteEvent value)? delete,
    TResult Function(_UpdateFilter value)? updateFilter,
    required TResult orElse(),
  }) {
    if (updateFilter != null) {
      return updateFilter(this);
    }
    return orElse();
  }
}

abstract class _UpdateFilter extends TermlessTodoEvent {
  const factory _UpdateFilter({required final bool showCompleted}) =
      _$_UpdateFilter;
  const _UpdateFilter._() : super._();

  bool get showCompleted;
  @JsonKey(ignore: true)
  _$$_UpdateFilterCopyWith<_$_UpdateFilter> get copyWith =>
      throw _privateConstructorUsedError;
}
