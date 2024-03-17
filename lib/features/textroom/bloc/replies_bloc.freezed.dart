// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'replies_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RepliesEvent _$RepliesEventFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'create':
      return _CreateRepliesEvent.fromJson(json);
    case 'read':
      return _ReadRepliesEvent.fromJson(json);
    case 'update':
      return _UpdateRepliesEvent.fromJson(json);
    case 'delete':
      return _DeleteRepliesEvent.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'RepliesEvent',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$RepliesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() create,
    required TResult Function() read,
    required TResult Function() update,
    required TResult Function() delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? create,
    TResult? Function()? read,
    TResult? Function()? update,
    TResult? Function()? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? create,
    TResult Function()? read,
    TResult Function()? update,
    TResult Function()? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateRepliesEvent value) create,
    required TResult Function(_ReadRepliesEvent value) read,
    required TResult Function(_UpdateRepliesEvent value) update,
    required TResult Function(_DeleteRepliesEvent value) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateRepliesEvent value)? create,
    TResult? Function(_ReadRepliesEvent value)? read,
    TResult? Function(_UpdateRepliesEvent value)? update,
    TResult? Function(_DeleteRepliesEvent value)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateRepliesEvent value)? create,
    TResult Function(_ReadRepliesEvent value)? read,
    TResult Function(_UpdateRepliesEvent value)? update,
    TResult Function(_DeleteRepliesEvent value)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepliesEventCopyWith<$Res> {
  factory $RepliesEventCopyWith(
          RepliesEvent value, $Res Function(RepliesEvent) then) =
      _$RepliesEventCopyWithImpl<$Res, RepliesEvent>;
}

/// @nodoc
class _$RepliesEventCopyWithImpl<$Res, $Val extends RepliesEvent>
    implements $RepliesEventCopyWith<$Res> {
  _$RepliesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_CreateRepliesEventCopyWith<$Res> {
  factory _$$_CreateRepliesEventCopyWith(_$_CreateRepliesEvent value,
          $Res Function(_$_CreateRepliesEvent) then) =
      __$$_CreateRepliesEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CreateRepliesEventCopyWithImpl<$Res>
    extends _$RepliesEventCopyWithImpl<$Res, _$_CreateRepliesEvent>
    implements _$$_CreateRepliesEventCopyWith<$Res> {
  __$$_CreateRepliesEventCopyWithImpl(
      _$_CreateRepliesEvent _value, $Res Function(_$_CreateRepliesEvent) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$_CreateRepliesEvent extends _CreateRepliesEvent {
  const _$_CreateRepliesEvent({final String? $type})
      : $type = $type ?? 'create',
        super._();

  factory _$_CreateRepliesEvent.fromJson(Map<String, dynamic> json) =>
      _$$_CreateRepliesEventFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'RepliesEvent.create()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_CreateRepliesEvent);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() create,
    required TResult Function() read,
    required TResult Function() update,
    required TResult Function() delete,
  }) {
    return create();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? create,
    TResult? Function()? read,
    TResult? Function()? update,
    TResult? Function()? delete,
  }) {
    return create?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? create,
    TResult Function()? read,
    TResult Function()? update,
    TResult Function()? delete,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateRepliesEvent value) create,
    required TResult Function(_ReadRepliesEvent value) read,
    required TResult Function(_UpdateRepliesEvent value) update,
    required TResult Function(_DeleteRepliesEvent value) delete,
  }) {
    return create(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateRepliesEvent value)? create,
    TResult? Function(_ReadRepliesEvent value)? read,
    TResult? Function(_UpdateRepliesEvent value)? update,
    TResult? Function(_DeleteRepliesEvent value)? delete,
  }) {
    return create?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateRepliesEvent value)? create,
    TResult Function(_ReadRepliesEvent value)? read,
    TResult Function(_UpdateRepliesEvent value)? update,
    TResult Function(_DeleteRepliesEvent value)? delete,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreateRepliesEventToJson(
      this,
    );
  }
}

abstract class _CreateRepliesEvent extends RepliesEvent {
  const factory _CreateRepliesEvent() = _$_CreateRepliesEvent;
  const _CreateRepliesEvent._() : super._();

  factory _CreateRepliesEvent.fromJson(Map<String, dynamic> json) =
      _$_CreateRepliesEvent.fromJson;
}

/// @nodoc
abstract class _$$_ReadRepliesEventCopyWith<$Res> {
  factory _$$_ReadRepliesEventCopyWith(
          _$_ReadRepliesEvent value, $Res Function(_$_ReadRepliesEvent) then) =
      __$$_ReadRepliesEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ReadRepliesEventCopyWithImpl<$Res>
    extends _$RepliesEventCopyWithImpl<$Res, _$_ReadRepliesEvent>
    implements _$$_ReadRepliesEventCopyWith<$Res> {
  __$$_ReadRepliesEventCopyWithImpl(
      _$_ReadRepliesEvent _value, $Res Function(_$_ReadRepliesEvent) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$_ReadRepliesEvent extends _ReadRepliesEvent {
  const _$_ReadRepliesEvent({final String? $type})
      : $type = $type ?? 'read',
        super._();

  factory _$_ReadRepliesEvent.fromJson(Map<String, dynamic> json) =>
      _$$_ReadRepliesEventFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'RepliesEvent.read()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ReadRepliesEvent);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() create,
    required TResult Function() read,
    required TResult Function() update,
    required TResult Function() delete,
  }) {
    return read();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? create,
    TResult? Function()? read,
    TResult? Function()? update,
    TResult? Function()? delete,
  }) {
    return read?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? create,
    TResult Function()? read,
    TResult Function()? update,
    TResult Function()? delete,
    required TResult orElse(),
  }) {
    if (read != null) {
      return read();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateRepliesEvent value) create,
    required TResult Function(_ReadRepliesEvent value) read,
    required TResult Function(_UpdateRepliesEvent value) update,
    required TResult Function(_DeleteRepliesEvent value) delete,
  }) {
    return read(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateRepliesEvent value)? create,
    TResult? Function(_ReadRepliesEvent value)? read,
    TResult? Function(_UpdateRepliesEvent value)? update,
    TResult? Function(_DeleteRepliesEvent value)? delete,
  }) {
    return read?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateRepliesEvent value)? create,
    TResult Function(_ReadRepliesEvent value)? read,
    TResult Function(_UpdateRepliesEvent value)? update,
    TResult Function(_DeleteRepliesEvent value)? delete,
    required TResult orElse(),
  }) {
    if (read != null) {
      return read(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReadRepliesEventToJson(
      this,
    );
  }
}

abstract class _ReadRepliesEvent extends RepliesEvent {
  const factory _ReadRepliesEvent() = _$_ReadRepliesEvent;
  const _ReadRepliesEvent._() : super._();

  factory _ReadRepliesEvent.fromJson(Map<String, dynamic> json) =
      _$_ReadRepliesEvent.fromJson;
}

/// @nodoc
abstract class _$$_UpdateRepliesEventCopyWith<$Res> {
  factory _$$_UpdateRepliesEventCopyWith(_$_UpdateRepliesEvent value,
          $Res Function(_$_UpdateRepliesEvent) then) =
      __$$_UpdateRepliesEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UpdateRepliesEventCopyWithImpl<$Res>
    extends _$RepliesEventCopyWithImpl<$Res, _$_UpdateRepliesEvent>
    implements _$$_UpdateRepliesEventCopyWith<$Res> {
  __$$_UpdateRepliesEventCopyWithImpl(
      _$_UpdateRepliesEvent _value, $Res Function(_$_UpdateRepliesEvent) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$_UpdateRepliesEvent extends _UpdateRepliesEvent {
  const _$_UpdateRepliesEvent({final String? $type})
      : $type = $type ?? 'update',
        super._();

  factory _$_UpdateRepliesEvent.fromJson(Map<String, dynamic> json) =>
      _$$_UpdateRepliesEventFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'RepliesEvent.update()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_UpdateRepliesEvent);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() create,
    required TResult Function() read,
    required TResult Function() update,
    required TResult Function() delete,
  }) {
    return update();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? create,
    TResult? Function()? read,
    TResult? Function()? update,
    TResult? Function()? delete,
  }) {
    return update?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? create,
    TResult Function()? read,
    TResult Function()? update,
    TResult Function()? delete,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateRepliesEvent value) create,
    required TResult Function(_ReadRepliesEvent value) read,
    required TResult Function(_UpdateRepliesEvent value) update,
    required TResult Function(_DeleteRepliesEvent value) delete,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateRepliesEvent value)? create,
    TResult? Function(_ReadRepliesEvent value)? read,
    TResult? Function(_UpdateRepliesEvent value)? update,
    TResult? Function(_DeleteRepliesEvent value)? delete,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateRepliesEvent value)? create,
    TResult Function(_ReadRepliesEvent value)? read,
    TResult Function(_UpdateRepliesEvent value)? update,
    TResult Function(_DeleteRepliesEvent value)? delete,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_UpdateRepliesEventToJson(
      this,
    );
  }
}

abstract class _UpdateRepliesEvent extends RepliesEvent {
  const factory _UpdateRepliesEvent() = _$_UpdateRepliesEvent;
  const _UpdateRepliesEvent._() : super._();

  factory _UpdateRepliesEvent.fromJson(Map<String, dynamic> json) =
      _$_UpdateRepliesEvent.fromJson;
}

/// @nodoc
abstract class _$$_DeleteRepliesEventCopyWith<$Res> {
  factory _$$_DeleteRepliesEventCopyWith(_$_DeleteRepliesEvent value,
          $Res Function(_$_DeleteRepliesEvent) then) =
      __$$_DeleteRepliesEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_DeleteRepliesEventCopyWithImpl<$Res>
    extends _$RepliesEventCopyWithImpl<$Res, _$_DeleteRepliesEvent>
    implements _$$_DeleteRepliesEventCopyWith<$Res> {
  __$$_DeleteRepliesEventCopyWithImpl(
      _$_DeleteRepliesEvent _value, $Res Function(_$_DeleteRepliesEvent) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$_DeleteRepliesEvent extends _DeleteRepliesEvent {
  const _$_DeleteRepliesEvent({final String? $type})
      : $type = $type ?? 'delete',
        super._();

  factory _$_DeleteRepliesEvent.fromJson(Map<String, dynamic> json) =>
      _$$_DeleteRepliesEventFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'RepliesEvent.delete()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_DeleteRepliesEvent);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() create,
    required TResult Function() read,
    required TResult Function() update,
    required TResult Function() delete,
  }) {
    return delete();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? create,
    TResult? Function()? read,
    TResult? Function()? update,
    TResult? Function()? delete,
  }) {
    return delete?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? create,
    TResult Function()? read,
    TResult Function()? update,
    TResult Function()? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateRepliesEvent value) create,
    required TResult Function(_ReadRepliesEvent value) read,
    required TResult Function(_UpdateRepliesEvent value) update,
    required TResult Function(_DeleteRepliesEvent value) delete,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateRepliesEvent value)? create,
    TResult? Function(_ReadRepliesEvent value)? read,
    TResult? Function(_UpdateRepliesEvent value)? update,
    TResult? Function(_DeleteRepliesEvent value)? delete,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateRepliesEvent value)? create,
    TResult Function(_ReadRepliesEvent value)? read,
    TResult Function(_UpdateRepliesEvent value)? update,
    TResult Function(_DeleteRepliesEvent value)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_DeleteRepliesEventToJson(
      this,
    );
  }
}

abstract class _DeleteRepliesEvent extends RepliesEvent {
  const factory _DeleteRepliesEvent() = _$_DeleteRepliesEvent;
  const _DeleteRepliesEvent._() : super._();

  factory _DeleteRepliesEvent.fromJson(Map<String, dynamic> json) =
      _$_DeleteRepliesEvent.fromJson;
}

RepliesState _$RepliesStateFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'initial':
      return _InitialRepliesState.fromJson(json);
    case 'loading':
      return _LoadingRepliesState.fromJson(json);
    case 'loaded':
      return _LoadedRepliesState.fromJson(json);
    case 'failure':
      return _FailureRepliesState.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'RepliesState',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$RepliesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<MatrixEvent> events) loaded,
    required TResult Function(String message) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<MatrixEvent> events)? loaded,
    TResult? Function(String message)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<MatrixEvent> events)? loaded,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialRepliesState value) initial,
    required TResult Function(_LoadingRepliesState value) loading,
    required TResult Function(_LoadedRepliesState value) loaded,
    required TResult Function(_FailureRepliesState value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialRepliesState value)? initial,
    TResult? Function(_LoadingRepliesState value)? loading,
    TResult? Function(_LoadedRepliesState value)? loaded,
    TResult? Function(_FailureRepliesState value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialRepliesState value)? initial,
    TResult Function(_LoadingRepliesState value)? loading,
    TResult Function(_LoadedRepliesState value)? loaded,
    TResult Function(_FailureRepliesState value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepliesStateCopyWith<$Res> {
  factory $RepliesStateCopyWith(
          RepliesState value, $Res Function(RepliesState) then) =
      _$RepliesStateCopyWithImpl<$Res, RepliesState>;
}

/// @nodoc
class _$RepliesStateCopyWithImpl<$Res, $Val extends RepliesState>
    implements $RepliesStateCopyWith<$Res> {
  _$RepliesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialRepliesStateCopyWith<$Res> {
  factory _$$_InitialRepliesStateCopyWith(_$_InitialRepliesState value,
          $Res Function(_$_InitialRepliesState) then) =
      __$$_InitialRepliesStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialRepliesStateCopyWithImpl<$Res>
    extends _$RepliesStateCopyWithImpl<$Res, _$_InitialRepliesState>
    implements _$$_InitialRepliesStateCopyWith<$Res> {
  __$$_InitialRepliesStateCopyWithImpl(_$_InitialRepliesState _value,
      $Res Function(_$_InitialRepliesState) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$_InitialRepliesState extends _InitialRepliesState {
  const _$_InitialRepliesState({final String? $type})
      : $type = $type ?? 'initial',
        super._();

  factory _$_InitialRepliesState.fromJson(Map<String, dynamic> json) =>
      _$$_InitialRepliesStateFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'RepliesState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_InitialRepliesState);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<MatrixEvent> events) loaded,
    required TResult Function(String message) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<MatrixEvent> events)? loaded,
    TResult? Function(String message)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<MatrixEvent> events)? loaded,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialRepliesState value) initial,
    required TResult Function(_LoadingRepliesState value) loading,
    required TResult Function(_LoadedRepliesState value) loaded,
    required TResult Function(_FailureRepliesState value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialRepliesState value)? initial,
    TResult? Function(_LoadingRepliesState value)? loading,
    TResult? Function(_LoadedRepliesState value)? loaded,
    TResult? Function(_FailureRepliesState value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialRepliesState value)? initial,
    TResult Function(_LoadingRepliesState value)? loading,
    TResult Function(_LoadedRepliesState value)? loaded,
    TResult Function(_FailureRepliesState value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_InitialRepliesStateToJson(
      this,
    );
  }
}

abstract class _InitialRepliesState extends RepliesState {
  const factory _InitialRepliesState() = _$_InitialRepliesState;
  const _InitialRepliesState._() : super._();

  factory _InitialRepliesState.fromJson(Map<String, dynamic> json) =
      _$_InitialRepliesState.fromJson;
}

/// @nodoc
abstract class _$$_LoadingRepliesStateCopyWith<$Res> {
  factory _$$_LoadingRepliesStateCopyWith(_$_LoadingRepliesState value,
          $Res Function(_$_LoadingRepliesState) then) =
      __$$_LoadingRepliesStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingRepliesStateCopyWithImpl<$Res>
    extends _$RepliesStateCopyWithImpl<$Res, _$_LoadingRepliesState>
    implements _$$_LoadingRepliesStateCopyWith<$Res> {
  __$$_LoadingRepliesStateCopyWithImpl(_$_LoadingRepliesState _value,
      $Res Function(_$_LoadingRepliesState) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$_LoadingRepliesState extends _LoadingRepliesState {
  const _$_LoadingRepliesState({final String? $type})
      : $type = $type ?? 'loading',
        super._();

  factory _$_LoadingRepliesState.fromJson(Map<String, dynamic> json) =>
      _$$_LoadingRepliesStateFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'RepliesState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoadingRepliesState);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<MatrixEvent> events) loaded,
    required TResult Function(String message) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<MatrixEvent> events)? loaded,
    TResult? Function(String message)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<MatrixEvent> events)? loaded,
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
    required TResult Function(_InitialRepliesState value) initial,
    required TResult Function(_LoadingRepliesState value) loading,
    required TResult Function(_LoadedRepliesState value) loaded,
    required TResult Function(_FailureRepliesState value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialRepliesState value)? initial,
    TResult? Function(_LoadingRepliesState value)? loading,
    TResult? Function(_LoadedRepliesState value)? loaded,
    TResult? Function(_FailureRepliesState value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialRepliesState value)? initial,
    TResult Function(_LoadingRepliesState value)? loading,
    TResult Function(_LoadedRepliesState value)? loaded,
    TResult Function(_FailureRepliesState value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_LoadingRepliesStateToJson(
      this,
    );
  }
}

abstract class _LoadingRepliesState extends RepliesState {
  const factory _LoadingRepliesState() = _$_LoadingRepliesState;
  const _LoadingRepliesState._() : super._();

  factory _LoadingRepliesState.fromJson(Map<String, dynamic> json) =
      _$_LoadingRepliesState.fromJson;
}

/// @nodoc
abstract class _$$_LoadedRepliesStateCopyWith<$Res> {
  factory _$$_LoadedRepliesStateCopyWith(_$_LoadedRepliesState value,
          $Res Function(_$_LoadedRepliesState) then) =
      __$$_LoadedRepliesStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<MatrixEvent> events});
}

/// @nodoc
class __$$_LoadedRepliesStateCopyWithImpl<$Res>
    extends _$RepliesStateCopyWithImpl<$Res, _$_LoadedRepliesState>
    implements _$$_LoadedRepliesStateCopyWith<$Res> {
  __$$_LoadedRepliesStateCopyWithImpl(
      _$_LoadedRepliesState _value, $Res Function(_$_LoadedRepliesState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? events = null,
  }) {
    return _then(_$_LoadedRepliesState(
      events: null == events
          ? _value._events
          : events // ignore: cast_nullable_to_non_nullable
              as List<MatrixEvent>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LoadedRepliesState extends _LoadedRepliesState {
  const _$_LoadedRepliesState(
      {required final List<MatrixEvent> events, final String? $type})
      : _events = events,
        $type = $type ?? 'loaded',
        super._();

  factory _$_LoadedRepliesState.fromJson(Map<String, dynamic> json) =>
      _$$_LoadedRepliesStateFromJson(json);

  final List<MatrixEvent> _events;
  @override
  List<MatrixEvent> get events {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_events);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'RepliesState.loaded(events: $events)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadedRepliesState &&
            const DeepCollectionEquality().equals(other._events, _events));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_events));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadedRepliesStateCopyWith<_$_LoadedRepliesState> get copyWith =>
      __$$_LoadedRepliesStateCopyWithImpl<_$_LoadedRepliesState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<MatrixEvent> events) loaded,
    required TResult Function(String message) failure,
  }) {
    return loaded(events);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<MatrixEvent> events)? loaded,
    TResult? Function(String message)? failure,
  }) {
    return loaded?.call(events);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<MatrixEvent> events)? loaded,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(events);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialRepliesState value) initial,
    required TResult Function(_LoadingRepliesState value) loading,
    required TResult Function(_LoadedRepliesState value) loaded,
    required TResult Function(_FailureRepliesState value) failure,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialRepliesState value)? initial,
    TResult? Function(_LoadingRepliesState value)? loading,
    TResult? Function(_LoadedRepliesState value)? loaded,
    TResult? Function(_FailureRepliesState value)? failure,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialRepliesState value)? initial,
    TResult Function(_LoadingRepliesState value)? loading,
    TResult Function(_LoadedRepliesState value)? loaded,
    TResult Function(_FailureRepliesState value)? failure,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_LoadedRepliesStateToJson(
      this,
    );
  }
}

abstract class _LoadedRepliesState extends RepliesState {
  const factory _LoadedRepliesState({required final List<MatrixEvent> events}) =
      _$_LoadedRepliesState;
  const _LoadedRepliesState._() : super._();

  factory _LoadedRepliesState.fromJson(Map<String, dynamic> json) =
      _$_LoadedRepliesState.fromJson;

  List<MatrixEvent> get events;
  @JsonKey(ignore: true)
  _$$_LoadedRepliesStateCopyWith<_$_LoadedRepliesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FailureRepliesStateCopyWith<$Res> {
  factory _$$_FailureRepliesStateCopyWith(_$_FailureRepliesState value,
          $Res Function(_$_FailureRepliesState) then) =
      __$$_FailureRepliesStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_FailureRepliesStateCopyWithImpl<$Res>
    extends _$RepliesStateCopyWithImpl<$Res, _$_FailureRepliesState>
    implements _$$_FailureRepliesStateCopyWith<$Res> {
  __$$_FailureRepliesStateCopyWithImpl(_$_FailureRepliesState _value,
      $Res Function(_$_FailureRepliesState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_FailureRepliesState(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FailureRepliesState extends _FailureRepliesState {
  const _$_FailureRepliesState({required this.message, final String? $type})
      : $type = $type ?? 'failure',
        super._();

  factory _$_FailureRepliesState.fromJson(Map<String, dynamic> json) =>
      _$$_FailureRepliesStateFromJson(json);

  @override
  final String message;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'RepliesState.failure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FailureRepliesState &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FailureRepliesStateCopyWith<_$_FailureRepliesState> get copyWith =>
      __$$_FailureRepliesStateCopyWithImpl<_$_FailureRepliesState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<MatrixEvent> events) loaded,
    required TResult Function(String message) failure,
  }) {
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<MatrixEvent> events)? loaded,
    TResult? Function(String message)? failure,
  }) {
    return failure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<MatrixEvent> events)? loaded,
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
    required TResult Function(_InitialRepliesState value) initial,
    required TResult Function(_LoadingRepliesState value) loading,
    required TResult Function(_LoadedRepliesState value) loaded,
    required TResult Function(_FailureRepliesState value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialRepliesState value)? initial,
    TResult? Function(_LoadingRepliesState value)? loading,
    TResult? Function(_LoadedRepliesState value)? loaded,
    TResult? Function(_FailureRepliesState value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialRepliesState value)? initial,
    TResult Function(_LoadingRepliesState value)? loading,
    TResult Function(_LoadedRepliesState value)? loaded,
    TResult Function(_FailureRepliesState value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_FailureRepliesStateToJson(
      this,
    );
  }
}

abstract class _FailureRepliesState extends RepliesState {
  const factory _FailureRepliesState({required final String message}) =
      _$_FailureRepliesState;
  const _FailureRepliesState._() : super._();

  factory _FailureRepliesState.fromJson(Map<String, dynamic> json) =
      _$_FailureRepliesState.fromJson;

  String get message;
  @JsonKey(ignore: true)
  _$$_FailureRepliesStateCopyWith<_$_FailureRepliesState> get copyWith =>
      throw _privateConstructorUsedError;
}
