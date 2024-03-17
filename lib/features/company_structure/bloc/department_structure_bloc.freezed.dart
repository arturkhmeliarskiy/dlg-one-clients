// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'department_structure_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DepartmentStructureState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DepartmentNode? departmentNode) loading,
    required TResult Function() error,
    required TResult Function(DepartmentNode departmentNode) data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DepartmentNode? departmentNode)? loading,
    TResult? Function()? error,
    TResult? Function(DepartmentNode departmentNode)? data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DepartmentNode? departmentNode)? loading,
    TResult Function()? error,
    TResult Function(DepartmentNode departmentNode)? data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingDepartmentStructureState value) loading,
    required TResult Function(ErrorDepartmentStructureState value) error,
    required TResult Function(DataDepartmentStructureState value) data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingDepartmentStructureState value)? loading,
    TResult? Function(ErrorDepartmentStructureState value)? error,
    TResult? Function(DataDepartmentStructureState value)? data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingDepartmentStructureState value)? loading,
    TResult Function(ErrorDepartmentStructureState value)? error,
    TResult Function(DataDepartmentStructureState value)? data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DepartmentStructureStateCopyWith<$Res> {
  factory $DepartmentStructureStateCopyWith(DepartmentStructureState value,
          $Res Function(DepartmentStructureState) then) =
      _$DepartmentStructureStateCopyWithImpl<$Res, DepartmentStructureState>;
}

/// @nodoc
class _$DepartmentStructureStateCopyWithImpl<$Res,
        $Val extends DepartmentStructureState>
    implements $DepartmentStructureStateCopyWith<$Res> {
  _$DepartmentStructureStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadingDepartmentStructureStateCopyWith<$Res> {
  factory _$$LoadingDepartmentStructureStateCopyWith(
          _$LoadingDepartmentStructureState value,
          $Res Function(_$LoadingDepartmentStructureState) then) =
      __$$LoadingDepartmentStructureStateCopyWithImpl<$Res>;
  @useResult
  $Res call({DepartmentNode? departmentNode});
}

/// @nodoc
class __$$LoadingDepartmentStructureStateCopyWithImpl<$Res>
    extends _$DepartmentStructureStateCopyWithImpl<$Res,
        _$LoadingDepartmentStructureState>
    implements _$$LoadingDepartmentStructureStateCopyWith<$Res> {
  __$$LoadingDepartmentStructureStateCopyWithImpl(
      _$LoadingDepartmentStructureState _value,
      $Res Function(_$LoadingDepartmentStructureState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? departmentNode = freezed,
  }) {
    return _then(_$LoadingDepartmentStructureState(
      departmentNode: freezed == departmentNode
          ? _value.departmentNode
          : departmentNode // ignore: cast_nullable_to_non_nullable
              as DepartmentNode?,
    ));
  }
}

/// @nodoc

class _$LoadingDepartmentStructureState
    extends LoadingDepartmentStructureState {
  const _$LoadingDepartmentStructureState({this.departmentNode}) : super._();

  @override
  final DepartmentNode? departmentNode;

  @override
  String toString() {
    return 'DepartmentStructureState.loading(departmentNode: $departmentNode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingDepartmentStructureState &&
            (identical(other.departmentNode, departmentNode) ||
                other.departmentNode == departmentNode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, departmentNode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingDepartmentStructureStateCopyWith<_$LoadingDepartmentStructureState>
      get copyWith => __$$LoadingDepartmentStructureStateCopyWithImpl<
          _$LoadingDepartmentStructureState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DepartmentNode? departmentNode) loading,
    required TResult Function() error,
    required TResult Function(DepartmentNode departmentNode) data,
  }) {
    return loading(departmentNode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DepartmentNode? departmentNode)? loading,
    TResult? Function()? error,
    TResult? Function(DepartmentNode departmentNode)? data,
  }) {
    return loading?.call(departmentNode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DepartmentNode? departmentNode)? loading,
    TResult Function()? error,
    TResult Function(DepartmentNode departmentNode)? data,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(departmentNode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingDepartmentStructureState value) loading,
    required TResult Function(ErrorDepartmentStructureState value) error,
    required TResult Function(DataDepartmentStructureState value) data,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingDepartmentStructureState value)? loading,
    TResult? Function(ErrorDepartmentStructureState value)? error,
    TResult? Function(DataDepartmentStructureState value)? data,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingDepartmentStructureState value)? loading,
    TResult Function(ErrorDepartmentStructureState value)? error,
    TResult Function(DataDepartmentStructureState value)? data,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingDepartmentStructureState
    extends DepartmentStructureState {
  const factory LoadingDepartmentStructureState(
          {final DepartmentNode? departmentNode}) =
      _$LoadingDepartmentStructureState;
  const LoadingDepartmentStructureState._() : super._();

  DepartmentNode? get departmentNode;
  @JsonKey(ignore: true)
  _$$LoadingDepartmentStructureStateCopyWith<_$LoadingDepartmentStructureState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorDepartmentStructureStateCopyWith<$Res> {
  factory _$$ErrorDepartmentStructureStateCopyWith(
          _$ErrorDepartmentStructureState value,
          $Res Function(_$ErrorDepartmentStructureState) then) =
      __$$ErrorDepartmentStructureStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ErrorDepartmentStructureStateCopyWithImpl<$Res>
    extends _$DepartmentStructureStateCopyWithImpl<$Res,
        _$ErrorDepartmentStructureState>
    implements _$$ErrorDepartmentStructureStateCopyWith<$Res> {
  __$$ErrorDepartmentStructureStateCopyWithImpl(
      _$ErrorDepartmentStructureState _value,
      $Res Function(_$ErrorDepartmentStructureState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ErrorDepartmentStructureState extends ErrorDepartmentStructureState {
  const _$ErrorDepartmentStructureState() : super._();

  @override
  String toString() {
    return 'DepartmentStructureState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorDepartmentStructureState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DepartmentNode? departmentNode) loading,
    required TResult Function() error,
    required TResult Function(DepartmentNode departmentNode) data,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DepartmentNode? departmentNode)? loading,
    TResult? Function()? error,
    TResult? Function(DepartmentNode departmentNode)? data,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DepartmentNode? departmentNode)? loading,
    TResult Function()? error,
    TResult Function(DepartmentNode departmentNode)? data,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingDepartmentStructureState value) loading,
    required TResult Function(ErrorDepartmentStructureState value) error,
    required TResult Function(DataDepartmentStructureState value) data,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingDepartmentStructureState value)? loading,
    TResult? Function(ErrorDepartmentStructureState value)? error,
    TResult? Function(DataDepartmentStructureState value)? data,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingDepartmentStructureState value)? loading,
    TResult Function(ErrorDepartmentStructureState value)? error,
    TResult Function(DataDepartmentStructureState value)? data,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorDepartmentStructureState extends DepartmentStructureState {
  const factory ErrorDepartmentStructureState() =
      _$ErrorDepartmentStructureState;
  const ErrorDepartmentStructureState._() : super._();
}

/// @nodoc
abstract class _$$DataDepartmentStructureStateCopyWith<$Res> {
  factory _$$DataDepartmentStructureStateCopyWith(
          _$DataDepartmentStructureState value,
          $Res Function(_$DataDepartmentStructureState) then) =
      __$$DataDepartmentStructureStateCopyWithImpl<$Res>;
  @useResult
  $Res call({DepartmentNode departmentNode});
}

/// @nodoc
class __$$DataDepartmentStructureStateCopyWithImpl<$Res>
    extends _$DepartmentStructureStateCopyWithImpl<$Res,
        _$DataDepartmentStructureState>
    implements _$$DataDepartmentStructureStateCopyWith<$Res> {
  __$$DataDepartmentStructureStateCopyWithImpl(
      _$DataDepartmentStructureState _value,
      $Res Function(_$DataDepartmentStructureState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? departmentNode = null,
  }) {
    return _then(_$DataDepartmentStructureState(
      departmentNode: null == departmentNode
          ? _value.departmentNode
          : departmentNode // ignore: cast_nullable_to_non_nullable
              as DepartmentNode,
    ));
  }
}

/// @nodoc

class _$DataDepartmentStructureState extends DataDepartmentStructureState {
  const _$DataDepartmentStructureState({required this.departmentNode})
      : super._();

  @override
  final DepartmentNode departmentNode;

  @override
  String toString() {
    return 'DepartmentStructureState.data(departmentNode: $departmentNode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataDepartmentStructureState &&
            (identical(other.departmentNode, departmentNode) ||
                other.departmentNode == departmentNode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, departmentNode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataDepartmentStructureStateCopyWith<_$DataDepartmentStructureState>
      get copyWith => __$$DataDepartmentStructureStateCopyWithImpl<
          _$DataDepartmentStructureState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DepartmentNode? departmentNode) loading,
    required TResult Function() error,
    required TResult Function(DepartmentNode departmentNode) data,
  }) {
    return data(departmentNode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DepartmentNode? departmentNode)? loading,
    TResult? Function()? error,
    TResult? Function(DepartmentNode departmentNode)? data,
  }) {
    return data?.call(departmentNode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DepartmentNode? departmentNode)? loading,
    TResult Function()? error,
    TResult Function(DepartmentNode departmentNode)? data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(departmentNode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingDepartmentStructureState value) loading,
    required TResult Function(ErrorDepartmentStructureState value) error,
    required TResult Function(DataDepartmentStructureState value) data,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingDepartmentStructureState value)? loading,
    TResult? Function(ErrorDepartmentStructureState value)? error,
    TResult? Function(DataDepartmentStructureState value)? data,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingDepartmentStructureState value)? loading,
    TResult Function(ErrorDepartmentStructureState value)? error,
    TResult Function(DataDepartmentStructureState value)? data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class DataDepartmentStructureState extends DepartmentStructureState {
  const factory DataDepartmentStructureState(
          {required final DepartmentNode departmentNode}) =
      _$DataDepartmentStructureState;
  const DataDepartmentStructureState._() : super._();

  DepartmentNode get departmentNode;
  @JsonKey(ignore: true)
  _$$DataDepartmentStructureStateCopyWith<_$DataDepartmentStructureState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DepartmentStructureEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() refresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? refresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? refresh,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Refresh value) refresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Refresh value)? refresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Refresh value)? refresh,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DepartmentStructureEventCopyWith<$Res> {
  factory $DepartmentStructureEventCopyWith(DepartmentStructureEvent value,
          $Res Function(DepartmentStructureEvent) then) =
      _$DepartmentStructureEventCopyWithImpl<$Res, DepartmentStructureEvent>;
}

/// @nodoc
class _$DepartmentStructureEventCopyWithImpl<$Res,
        $Val extends DepartmentStructureEvent>
    implements $DepartmentStructureEventCopyWith<$Res> {
  _$DepartmentStructureEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_RefreshCopyWith<$Res> {
  factory _$$_RefreshCopyWith(
          _$_Refresh value, $Res Function(_$_Refresh) then) =
      __$$_RefreshCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_RefreshCopyWithImpl<$Res>
    extends _$DepartmentStructureEventCopyWithImpl<$Res, _$_Refresh>
    implements _$$_RefreshCopyWith<$Res> {
  __$$_RefreshCopyWithImpl(_$_Refresh _value, $Res Function(_$_Refresh) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Refresh implements _Refresh {
  const _$_Refresh();

  @override
  String toString() {
    return 'DepartmentStructureEvent.refresh()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Refresh);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() refresh,
  }) {
    return refresh();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? refresh,
  }) {
    return refresh?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? refresh,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Refresh value) refresh,
  }) {
    return refresh(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Refresh value)? refresh,
  }) {
    return refresh?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Refresh value)? refresh,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh(this);
    }
    return orElse();
  }
}

abstract class _Refresh implements DepartmentStructureEvent {
  const factory _Refresh() = _$_Refresh;
}
