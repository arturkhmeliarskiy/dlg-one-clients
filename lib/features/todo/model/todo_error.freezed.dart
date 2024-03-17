// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'todo_error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TodoError {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fatal,
    required TResult Function() common,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fatal,
    TResult? Function()? common,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fatal,
    TResult Function()? common,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FatalTodoError value) fatal,
    required TResult Function(CommonTodoError value) common,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FatalTodoError value)? fatal,
    TResult? Function(CommonTodoError value)? common,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FatalTodoError value)? fatal,
    TResult Function(CommonTodoError value)? common,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoErrorCopyWith<$Res> {
  factory $TodoErrorCopyWith(TodoError value, $Res Function(TodoError) then) =
      _$TodoErrorCopyWithImpl<$Res, TodoError>;
}

/// @nodoc
class _$TodoErrorCopyWithImpl<$Res, $Val extends TodoError>
    implements $TodoErrorCopyWith<$Res> {
  _$TodoErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FatalTodoErrorCopyWith<$Res> {
  factory _$$FatalTodoErrorCopyWith(
          _$FatalTodoError value, $Res Function(_$FatalTodoError) then) =
      __$$FatalTodoErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FatalTodoErrorCopyWithImpl<$Res>
    extends _$TodoErrorCopyWithImpl<$Res, _$FatalTodoError>
    implements _$$FatalTodoErrorCopyWith<$Res> {
  __$$FatalTodoErrorCopyWithImpl(
      _$FatalTodoError _value, $Res Function(_$FatalTodoError) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FatalTodoError implements FatalTodoError {
  const _$FatalTodoError();

  @override
  String toString() {
    return 'TodoError.fatal()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FatalTodoError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fatal,
    required TResult Function() common,
  }) {
    return fatal();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fatal,
    TResult? Function()? common,
  }) {
    return fatal?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fatal,
    TResult Function()? common,
    required TResult orElse(),
  }) {
    if (fatal != null) {
      return fatal();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FatalTodoError value) fatal,
    required TResult Function(CommonTodoError value) common,
  }) {
    return fatal(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FatalTodoError value)? fatal,
    TResult? Function(CommonTodoError value)? common,
  }) {
    return fatal?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FatalTodoError value)? fatal,
    TResult Function(CommonTodoError value)? common,
    required TResult orElse(),
  }) {
    if (fatal != null) {
      return fatal(this);
    }
    return orElse();
  }
}

abstract class FatalTodoError implements TodoError {
  const factory FatalTodoError() = _$FatalTodoError;
}

/// @nodoc
abstract class _$$CommonTodoErrorCopyWith<$Res> {
  factory _$$CommonTodoErrorCopyWith(
          _$CommonTodoError value, $Res Function(_$CommonTodoError) then) =
      __$$CommonTodoErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CommonTodoErrorCopyWithImpl<$Res>
    extends _$TodoErrorCopyWithImpl<$Res, _$CommonTodoError>
    implements _$$CommonTodoErrorCopyWith<$Res> {
  __$$CommonTodoErrorCopyWithImpl(
      _$CommonTodoError _value, $Res Function(_$CommonTodoError) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CommonTodoError implements CommonTodoError {
  const _$CommonTodoError();

  @override
  String toString() {
    return 'TodoError.common()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CommonTodoError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fatal,
    required TResult Function() common,
  }) {
    return common();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fatal,
    TResult? Function()? common,
  }) {
    return common?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fatal,
    TResult Function()? common,
    required TResult orElse(),
  }) {
    if (common != null) {
      return common();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FatalTodoError value) fatal,
    required TResult Function(CommonTodoError value) common,
  }) {
    return common(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FatalTodoError value)? fatal,
    TResult? Function(CommonTodoError value)? common,
  }) {
    return common?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FatalTodoError value)? fatal,
    TResult Function(CommonTodoError value)? common,
    required TResult orElse(),
  }) {
    if (common != null) {
      return common(this);
    }
    return orElse();
  }
}

abstract class CommonTodoError implements TodoError {
  const factory CommonTodoError() = _$CommonTodoError;
}
