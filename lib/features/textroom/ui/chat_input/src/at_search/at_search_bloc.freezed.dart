// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'at_search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AtSearchEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) search,
    required TResult Function() reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? search,
    TResult? Function()? reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? search,
    TResult Function()? reset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchAtSearchEvent value) search,
    required TResult Function(_ResetAtSearchEvent value) reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchAtSearchEvent value)? search,
    TResult? Function(_ResetAtSearchEvent value)? reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchAtSearchEvent value)? search,
    TResult Function(_ResetAtSearchEvent value)? reset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AtSearchEventCopyWith<$Res> {
  factory $AtSearchEventCopyWith(
          AtSearchEvent value, $Res Function(AtSearchEvent) then) =
      _$AtSearchEventCopyWithImpl<$Res, AtSearchEvent>;
}

/// @nodoc
class _$AtSearchEventCopyWithImpl<$Res, $Val extends AtSearchEvent>
    implements $AtSearchEventCopyWith<$Res> {
  _$AtSearchEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_SearchAtSearchEventCopyWith<$Res> {
  factory _$$_SearchAtSearchEventCopyWith(_$_SearchAtSearchEvent value,
          $Res Function(_$_SearchAtSearchEvent) then) =
      __$$_SearchAtSearchEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$_SearchAtSearchEventCopyWithImpl<$Res>
    extends _$AtSearchEventCopyWithImpl<$Res, _$_SearchAtSearchEvent>
    implements _$$_SearchAtSearchEventCopyWith<$Res> {
  __$$_SearchAtSearchEventCopyWithImpl(_$_SearchAtSearchEvent _value,
      $Res Function(_$_SearchAtSearchEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$_SearchAtSearchEvent(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SearchAtSearchEvent extends _SearchAtSearchEvent {
  const _$_SearchAtSearchEvent(this.query) : super._();

  @override
  final String query;

  @override
  String toString() {
    return 'AtSearchEvent.search(query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchAtSearchEvent &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchAtSearchEventCopyWith<_$_SearchAtSearchEvent> get copyWith =>
      __$$_SearchAtSearchEventCopyWithImpl<_$_SearchAtSearchEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) search,
    required TResult Function() reset,
  }) {
    return search(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? search,
    TResult? Function()? reset,
  }) {
    return search?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? search,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchAtSearchEvent value) search,
    required TResult Function(_ResetAtSearchEvent value) reset,
  }) {
    return search(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchAtSearchEvent value)? search,
    TResult? Function(_ResetAtSearchEvent value)? reset,
  }) {
    return search?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchAtSearchEvent value)? search,
    TResult Function(_ResetAtSearchEvent value)? reset,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(this);
    }
    return orElse();
  }
}

abstract class _SearchAtSearchEvent extends AtSearchEvent {
  const factory _SearchAtSearchEvent(final String query) =
      _$_SearchAtSearchEvent;
  const _SearchAtSearchEvent._() : super._();

  String get query;
  @JsonKey(ignore: true)
  _$$_SearchAtSearchEventCopyWith<_$_SearchAtSearchEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ResetAtSearchEventCopyWith<$Res> {
  factory _$$_ResetAtSearchEventCopyWith(_$_ResetAtSearchEvent value,
          $Res Function(_$_ResetAtSearchEvent) then) =
      __$$_ResetAtSearchEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ResetAtSearchEventCopyWithImpl<$Res>
    extends _$AtSearchEventCopyWithImpl<$Res, _$_ResetAtSearchEvent>
    implements _$$_ResetAtSearchEventCopyWith<$Res> {
  __$$_ResetAtSearchEventCopyWithImpl(
      _$_ResetAtSearchEvent _value, $Res Function(_$_ResetAtSearchEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ResetAtSearchEvent extends _ResetAtSearchEvent {
  const _$_ResetAtSearchEvent() : super._();

  @override
  String toString() {
    return 'AtSearchEvent.reset()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ResetAtSearchEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) search,
    required TResult Function() reset,
  }) {
    return reset();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? search,
    TResult? Function()? reset,
  }) {
    return reset?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? search,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchAtSearchEvent value) search,
    required TResult Function(_ResetAtSearchEvent value) reset,
  }) {
    return reset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchAtSearchEvent value)? search,
    TResult? Function(_ResetAtSearchEvent value)? reset,
  }) {
    return reset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchAtSearchEvent value)? search,
    TResult Function(_ResetAtSearchEvent value)? reset,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset(this);
    }
    return orElse();
  }
}

abstract class _ResetAtSearchEvent extends AtSearchEvent {
  const factory _ResetAtSearchEvent() = _$_ResetAtSearchEvent;
  const _ResetAtSearchEvent._() : super._();
}

/// @nodoc
mixin _$AtSearchState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<DLSUser> result, String query) loaded,
    required TResult Function(String message) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<DLSUser> result, String query)? loaded,
    TResult? Function(String message)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<DLSUser> result, String query)? loaded,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingAtSearchState value) loading,
    required TResult Function(_LoadedAtSearchState value) loaded,
    required TResult Function(_FailureAtSearchState value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadingAtSearchState value)? loading,
    TResult? Function(_LoadedAtSearchState value)? loaded,
    TResult? Function(_FailureAtSearchState value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingAtSearchState value)? loading,
    TResult Function(_LoadedAtSearchState value)? loaded,
    TResult Function(_FailureAtSearchState value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AtSearchStateCopyWith<$Res> {
  factory $AtSearchStateCopyWith(
          AtSearchState value, $Res Function(AtSearchState) then) =
      _$AtSearchStateCopyWithImpl<$Res, AtSearchState>;
}

/// @nodoc
class _$AtSearchStateCopyWithImpl<$Res, $Val extends AtSearchState>
    implements $AtSearchStateCopyWith<$Res> {
  _$AtSearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_LoadingAtSearchStateCopyWith<$Res> {
  factory _$$_LoadingAtSearchStateCopyWith(_$_LoadingAtSearchState value,
          $Res Function(_$_LoadingAtSearchState) then) =
      __$$_LoadingAtSearchStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingAtSearchStateCopyWithImpl<$Res>
    extends _$AtSearchStateCopyWithImpl<$Res, _$_LoadingAtSearchState>
    implements _$$_LoadingAtSearchStateCopyWith<$Res> {
  __$$_LoadingAtSearchStateCopyWithImpl(_$_LoadingAtSearchState _value,
      $Res Function(_$_LoadingAtSearchState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoadingAtSearchState implements _LoadingAtSearchState {
  const _$_LoadingAtSearchState();

  @override
  String toString() {
    return 'AtSearchState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoadingAtSearchState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<DLSUser> result, String query) loaded,
    required TResult Function(String message) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<DLSUser> result, String query)? loaded,
    TResult? Function(String message)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<DLSUser> result, String query)? loaded,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingAtSearchState value) loading,
    required TResult Function(_LoadedAtSearchState value) loaded,
    required TResult Function(_FailureAtSearchState value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadingAtSearchState value)? loading,
    TResult? Function(_LoadedAtSearchState value)? loaded,
    TResult? Function(_FailureAtSearchState value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingAtSearchState value)? loading,
    TResult Function(_LoadedAtSearchState value)? loaded,
    TResult Function(_FailureAtSearchState value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingAtSearchState implements AtSearchState {
  const factory _LoadingAtSearchState() = _$_LoadingAtSearchState;
}

/// @nodoc
abstract class _$$_LoadedAtSearchStateCopyWith<$Res> {
  factory _$$_LoadedAtSearchStateCopyWith(_$_LoadedAtSearchState value,
          $Res Function(_$_LoadedAtSearchState) then) =
      __$$_LoadedAtSearchStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<DLSUser> result, String query});
}

/// @nodoc
class __$$_LoadedAtSearchStateCopyWithImpl<$Res>
    extends _$AtSearchStateCopyWithImpl<$Res, _$_LoadedAtSearchState>
    implements _$$_LoadedAtSearchStateCopyWith<$Res> {
  __$$_LoadedAtSearchStateCopyWithImpl(_$_LoadedAtSearchState _value,
      $Res Function(_$_LoadedAtSearchState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
    Object? query = null,
  }) {
    return _then(_$_LoadedAtSearchState(
      result: null == result
          ? _value._result
          : result // ignore: cast_nullable_to_non_nullable
              as List<DLSUser>,
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_LoadedAtSearchState implements _LoadedAtSearchState {
  const _$_LoadedAtSearchState(
      {required final List<DLSUser> result, required this.query})
      : _result = result;

  final List<DLSUser> _result;
  @override
  List<DLSUser> get result {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_result);
  }

  @override
  final String query;

  @override
  String toString() {
    return 'AtSearchState.loaded(result: $result, query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadedAtSearchState &&
            const DeepCollectionEquality().equals(other._result, _result) &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_result), query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadedAtSearchStateCopyWith<_$_LoadedAtSearchState> get copyWith =>
      __$$_LoadedAtSearchStateCopyWithImpl<_$_LoadedAtSearchState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<DLSUser> result, String query) loaded,
    required TResult Function(String message) failure,
  }) {
    return loaded(result, query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<DLSUser> result, String query)? loaded,
    TResult? Function(String message)? failure,
  }) {
    return loaded?.call(result, query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<DLSUser> result, String query)? loaded,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(result, query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingAtSearchState value) loading,
    required TResult Function(_LoadedAtSearchState value) loaded,
    required TResult Function(_FailureAtSearchState value) failure,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadingAtSearchState value)? loading,
    TResult? Function(_LoadedAtSearchState value)? loaded,
    TResult? Function(_FailureAtSearchState value)? failure,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingAtSearchState value)? loading,
    TResult Function(_LoadedAtSearchState value)? loaded,
    TResult Function(_FailureAtSearchState value)? failure,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _LoadedAtSearchState implements AtSearchState {
  const factory _LoadedAtSearchState(
      {required final List<DLSUser> result,
      required final String query}) = _$_LoadedAtSearchState;

  List<DLSUser> get result;
  String get query;
  @JsonKey(ignore: true)
  _$$_LoadedAtSearchStateCopyWith<_$_LoadedAtSearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FailureAtSearchStateCopyWith<$Res> {
  factory _$$_FailureAtSearchStateCopyWith(_$_FailureAtSearchState value,
          $Res Function(_$_FailureAtSearchState) then) =
      __$$_FailureAtSearchStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_FailureAtSearchStateCopyWithImpl<$Res>
    extends _$AtSearchStateCopyWithImpl<$Res, _$_FailureAtSearchState>
    implements _$$_FailureAtSearchStateCopyWith<$Res> {
  __$$_FailureAtSearchStateCopyWithImpl(_$_FailureAtSearchState _value,
      $Res Function(_$_FailureAtSearchState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_FailureAtSearchState(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FailureAtSearchState implements _FailureAtSearchState {
  const _$_FailureAtSearchState({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'AtSearchState.failure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FailureAtSearchState &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FailureAtSearchStateCopyWith<_$_FailureAtSearchState> get copyWith =>
      __$$_FailureAtSearchStateCopyWithImpl<_$_FailureAtSearchState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<DLSUser> result, String query) loaded,
    required TResult Function(String message) failure,
  }) {
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<DLSUser> result, String query)? loaded,
    TResult? Function(String message)? failure,
  }) {
    return failure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<DLSUser> result, String query)? loaded,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingAtSearchState value) loading,
    required TResult Function(_LoadedAtSearchState value) loaded,
    required TResult Function(_FailureAtSearchState value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadingAtSearchState value)? loading,
    TResult? Function(_LoadedAtSearchState value)? loaded,
    TResult? Function(_FailureAtSearchState value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingAtSearchState value)? loading,
    TResult Function(_LoadedAtSearchState value)? loaded,
    TResult Function(_FailureAtSearchState value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _FailureAtSearchState implements AtSearchState {
  const factory _FailureAtSearchState({required final String message}) =
      _$_FailureAtSearchState;

  String get message;
  @JsonKey(ignore: true)
  _$$_FailureAtSearchStateCopyWith<_$_FailureAtSearchState> get copyWith =>
      throw _privateConstructorUsedError;
}
