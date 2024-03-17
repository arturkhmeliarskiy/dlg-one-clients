// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'personal_chat_information_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PersonalChatInformationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() read,
    required TResult Function() update,
    required TResult Function() delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? read,
    TResult? Function()? update,
    TResult? Function()? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? read,
    TResult Function()? update,
    TResult Function()? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ReadPersonalChatInformationEvent value) read,
    required TResult Function(_UpdatePersonalChatInformationEvent value) update,
    required TResult Function(_DeletePersonalChatInformationEvent value) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ReadPersonalChatInformationEvent value)? read,
    TResult? Function(_UpdatePersonalChatInformationEvent value)? update,
    TResult? Function(_DeletePersonalChatInformationEvent value)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ReadPersonalChatInformationEvent value)? read,
    TResult Function(_UpdatePersonalChatInformationEvent value)? update,
    TResult Function(_DeletePersonalChatInformationEvent value)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonalChatInformationEventCopyWith<$Res> {
  factory $PersonalChatInformationEventCopyWith(
          PersonalChatInformationEvent value,
          $Res Function(PersonalChatInformationEvent) then) =
      _$PersonalChatInformationEventCopyWithImpl<$Res,
          PersonalChatInformationEvent>;
}

/// @nodoc
class _$PersonalChatInformationEventCopyWithImpl<$Res,
        $Val extends PersonalChatInformationEvent>
    implements $PersonalChatInformationEventCopyWith<$Res> {
  _$PersonalChatInformationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ReadPersonalChatInformationEventCopyWith<$Res> {
  factory _$$_ReadPersonalChatInformationEventCopyWith(
          _$_ReadPersonalChatInformationEvent value,
          $Res Function(_$_ReadPersonalChatInformationEvent) then) =
      __$$_ReadPersonalChatInformationEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ReadPersonalChatInformationEventCopyWithImpl<$Res>
    extends _$PersonalChatInformationEventCopyWithImpl<$Res,
        _$_ReadPersonalChatInformationEvent>
    implements _$$_ReadPersonalChatInformationEventCopyWith<$Res> {
  __$$_ReadPersonalChatInformationEventCopyWithImpl(
      _$_ReadPersonalChatInformationEvent _value,
      $Res Function(_$_ReadPersonalChatInformationEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ReadPersonalChatInformationEvent
    extends _ReadPersonalChatInformationEvent {
  const _$_ReadPersonalChatInformationEvent() : super._();

  @override
  String toString() {
    return 'PersonalChatInformationEvent.read()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReadPersonalChatInformationEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() read,
    required TResult Function() update,
    required TResult Function() delete,
  }) {
    return read();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? read,
    TResult? Function()? update,
    TResult? Function()? delete,
  }) {
    return read?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
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
    required TResult Function(_ReadPersonalChatInformationEvent value) read,
    required TResult Function(_UpdatePersonalChatInformationEvent value) update,
    required TResult Function(_DeletePersonalChatInformationEvent value) delete,
  }) {
    return read(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ReadPersonalChatInformationEvent value)? read,
    TResult? Function(_UpdatePersonalChatInformationEvent value)? update,
    TResult? Function(_DeletePersonalChatInformationEvent value)? delete,
  }) {
    return read?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ReadPersonalChatInformationEvent value)? read,
    TResult Function(_UpdatePersonalChatInformationEvent value)? update,
    TResult Function(_DeletePersonalChatInformationEvent value)? delete,
    required TResult orElse(),
  }) {
    if (read != null) {
      return read(this);
    }
    return orElse();
  }
}

abstract class _ReadPersonalChatInformationEvent
    extends PersonalChatInformationEvent {
  const factory _ReadPersonalChatInformationEvent() =
      _$_ReadPersonalChatInformationEvent;
  const _ReadPersonalChatInformationEvent._() : super._();
}

/// @nodoc
abstract class _$$_UpdatePersonalChatInformationEventCopyWith<$Res> {
  factory _$$_UpdatePersonalChatInformationEventCopyWith(
          _$_UpdatePersonalChatInformationEvent value,
          $Res Function(_$_UpdatePersonalChatInformationEvent) then) =
      __$$_UpdatePersonalChatInformationEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UpdatePersonalChatInformationEventCopyWithImpl<$Res>
    extends _$PersonalChatInformationEventCopyWithImpl<$Res,
        _$_UpdatePersonalChatInformationEvent>
    implements _$$_UpdatePersonalChatInformationEventCopyWith<$Res> {
  __$$_UpdatePersonalChatInformationEventCopyWithImpl(
      _$_UpdatePersonalChatInformationEvent _value,
      $Res Function(_$_UpdatePersonalChatInformationEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_UpdatePersonalChatInformationEvent
    extends _UpdatePersonalChatInformationEvent {
  const _$_UpdatePersonalChatInformationEvent() : super._();

  @override
  String toString() {
    return 'PersonalChatInformationEvent.update()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdatePersonalChatInformationEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() read,
    required TResult Function() update,
    required TResult Function() delete,
  }) {
    return update();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? read,
    TResult? Function()? update,
    TResult? Function()? delete,
  }) {
    return update?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
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
    required TResult Function(_ReadPersonalChatInformationEvent value) read,
    required TResult Function(_UpdatePersonalChatInformationEvent value) update,
    required TResult Function(_DeletePersonalChatInformationEvent value) delete,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ReadPersonalChatInformationEvent value)? read,
    TResult? Function(_UpdatePersonalChatInformationEvent value)? update,
    TResult? Function(_DeletePersonalChatInformationEvent value)? delete,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ReadPersonalChatInformationEvent value)? read,
    TResult Function(_UpdatePersonalChatInformationEvent value)? update,
    TResult Function(_DeletePersonalChatInformationEvent value)? delete,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class _UpdatePersonalChatInformationEvent
    extends PersonalChatInformationEvent {
  const factory _UpdatePersonalChatInformationEvent() =
      _$_UpdatePersonalChatInformationEvent;
  const _UpdatePersonalChatInformationEvent._() : super._();
}

/// @nodoc
abstract class _$$_DeletePersonalChatInformationEventCopyWith<$Res> {
  factory _$$_DeletePersonalChatInformationEventCopyWith(
          _$_DeletePersonalChatInformationEvent value,
          $Res Function(_$_DeletePersonalChatInformationEvent) then) =
      __$$_DeletePersonalChatInformationEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_DeletePersonalChatInformationEventCopyWithImpl<$Res>
    extends _$PersonalChatInformationEventCopyWithImpl<$Res,
        _$_DeletePersonalChatInformationEvent>
    implements _$$_DeletePersonalChatInformationEventCopyWith<$Res> {
  __$$_DeletePersonalChatInformationEventCopyWithImpl(
      _$_DeletePersonalChatInformationEvent _value,
      $Res Function(_$_DeletePersonalChatInformationEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_DeletePersonalChatInformationEvent
    extends _DeletePersonalChatInformationEvent {
  const _$_DeletePersonalChatInformationEvent() : super._();

  @override
  String toString() {
    return 'PersonalChatInformationEvent.delete()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeletePersonalChatInformationEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() read,
    required TResult Function() update,
    required TResult Function() delete,
  }) {
    return delete();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? read,
    TResult? Function()? update,
    TResult? Function()? delete,
  }) {
    return delete?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
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
    required TResult Function(_ReadPersonalChatInformationEvent value) read,
    required TResult Function(_UpdatePersonalChatInformationEvent value) update,
    required TResult Function(_DeletePersonalChatInformationEvent value) delete,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ReadPersonalChatInformationEvent value)? read,
    TResult? Function(_UpdatePersonalChatInformationEvent value)? update,
    TResult? Function(_DeletePersonalChatInformationEvent value)? delete,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ReadPersonalChatInformationEvent value)? read,
    TResult Function(_UpdatePersonalChatInformationEvent value)? update,
    TResult Function(_DeletePersonalChatInformationEvent value)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class _DeletePersonalChatInformationEvent
    extends PersonalChatInformationEvent {
  const factory _DeletePersonalChatInformationEvent() =
      _$_DeletePersonalChatInformationEvent;
  const _DeletePersonalChatInformationEvent._() : super._();
}

/// @nodoc
mixin _$PersonalChatInformationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(DLSUser user, Room matrixRoom) data,
    required TResult Function(String message) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(DLSUser user, Room matrixRoom)? data,
    TResult? Function(String message)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(DLSUser user, Room matrixRoom)? data,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialPersonalChatInformationState value)
        initial,
    required TResult Function(_LoadingPersonalChatInformationState value)
        loading,
    required TResult Function(_DataPersonalChatInformationState value) data,
    required TResult Function(_FailurePersonalChatInformationState value)
        failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialPersonalChatInformationState value)? initial,
    TResult? Function(_LoadingPersonalChatInformationState value)? loading,
    TResult? Function(_DataPersonalChatInformationState value)? data,
    TResult? Function(_FailurePersonalChatInformationState value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialPersonalChatInformationState value)? initial,
    TResult Function(_LoadingPersonalChatInformationState value)? loading,
    TResult Function(_DataPersonalChatInformationState value)? data,
    TResult Function(_FailurePersonalChatInformationState value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonalChatInformationStateCopyWith<$Res> {
  factory $PersonalChatInformationStateCopyWith(
          PersonalChatInformationState value,
          $Res Function(PersonalChatInformationState) then) =
      _$PersonalChatInformationStateCopyWithImpl<$Res,
          PersonalChatInformationState>;
}

/// @nodoc
class _$PersonalChatInformationStateCopyWithImpl<$Res,
        $Val extends PersonalChatInformationState>
    implements $PersonalChatInformationStateCopyWith<$Res> {
  _$PersonalChatInformationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialPersonalChatInformationStateCopyWith<$Res> {
  factory _$$_InitialPersonalChatInformationStateCopyWith(
          _$_InitialPersonalChatInformationState value,
          $Res Function(_$_InitialPersonalChatInformationState) then) =
      __$$_InitialPersonalChatInformationStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialPersonalChatInformationStateCopyWithImpl<$Res>
    extends _$PersonalChatInformationStateCopyWithImpl<$Res,
        _$_InitialPersonalChatInformationState>
    implements _$$_InitialPersonalChatInformationStateCopyWith<$Res> {
  __$$_InitialPersonalChatInformationStateCopyWithImpl(
      _$_InitialPersonalChatInformationState _value,
      $Res Function(_$_InitialPersonalChatInformationState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_InitialPersonalChatInformationState
    extends _InitialPersonalChatInformationState {
  const _$_InitialPersonalChatInformationState() : super._();

  @override
  String toString() {
    return 'PersonalChatInformationState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InitialPersonalChatInformationState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(DLSUser user, Room matrixRoom) data,
    required TResult Function(String message) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(DLSUser user, Room matrixRoom)? data,
    TResult? Function(String message)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(DLSUser user, Room matrixRoom)? data,
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
    required TResult Function(_InitialPersonalChatInformationState value)
        initial,
    required TResult Function(_LoadingPersonalChatInformationState value)
        loading,
    required TResult Function(_DataPersonalChatInformationState value) data,
    required TResult Function(_FailurePersonalChatInformationState value)
        failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialPersonalChatInformationState value)? initial,
    TResult? Function(_LoadingPersonalChatInformationState value)? loading,
    TResult? Function(_DataPersonalChatInformationState value)? data,
    TResult? Function(_FailurePersonalChatInformationState value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialPersonalChatInformationState value)? initial,
    TResult Function(_LoadingPersonalChatInformationState value)? loading,
    TResult Function(_DataPersonalChatInformationState value)? data,
    TResult Function(_FailurePersonalChatInformationState value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialPersonalChatInformationState
    extends PersonalChatInformationState {
  const factory _InitialPersonalChatInformationState() =
      _$_InitialPersonalChatInformationState;
  const _InitialPersonalChatInformationState._() : super._();
}

/// @nodoc
abstract class _$$_LoadingPersonalChatInformationStateCopyWith<$Res> {
  factory _$$_LoadingPersonalChatInformationStateCopyWith(
          _$_LoadingPersonalChatInformationState value,
          $Res Function(_$_LoadingPersonalChatInformationState) then) =
      __$$_LoadingPersonalChatInformationStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingPersonalChatInformationStateCopyWithImpl<$Res>
    extends _$PersonalChatInformationStateCopyWithImpl<$Res,
        _$_LoadingPersonalChatInformationState>
    implements _$$_LoadingPersonalChatInformationStateCopyWith<$Res> {
  __$$_LoadingPersonalChatInformationStateCopyWithImpl(
      _$_LoadingPersonalChatInformationState _value,
      $Res Function(_$_LoadingPersonalChatInformationState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoadingPersonalChatInformationState
    extends _LoadingPersonalChatInformationState {
  const _$_LoadingPersonalChatInformationState() : super._();

  @override
  String toString() {
    return 'PersonalChatInformationState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadingPersonalChatInformationState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(DLSUser user, Room matrixRoom) data,
    required TResult Function(String message) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(DLSUser user, Room matrixRoom)? data,
    TResult? Function(String message)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(DLSUser user, Room matrixRoom)? data,
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
    required TResult Function(_InitialPersonalChatInformationState value)
        initial,
    required TResult Function(_LoadingPersonalChatInformationState value)
        loading,
    required TResult Function(_DataPersonalChatInformationState value) data,
    required TResult Function(_FailurePersonalChatInformationState value)
        failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialPersonalChatInformationState value)? initial,
    TResult? Function(_LoadingPersonalChatInformationState value)? loading,
    TResult? Function(_DataPersonalChatInformationState value)? data,
    TResult? Function(_FailurePersonalChatInformationState value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialPersonalChatInformationState value)? initial,
    TResult Function(_LoadingPersonalChatInformationState value)? loading,
    TResult Function(_DataPersonalChatInformationState value)? data,
    TResult Function(_FailurePersonalChatInformationState value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingPersonalChatInformationState
    extends PersonalChatInformationState {
  const factory _LoadingPersonalChatInformationState() =
      _$_LoadingPersonalChatInformationState;
  const _LoadingPersonalChatInformationState._() : super._();
}

/// @nodoc
abstract class _$$_DataPersonalChatInformationStateCopyWith<$Res> {
  factory _$$_DataPersonalChatInformationStateCopyWith(
          _$_DataPersonalChatInformationState value,
          $Res Function(_$_DataPersonalChatInformationState) then) =
      __$$_DataPersonalChatInformationStateCopyWithImpl<$Res>;
  @useResult
  $Res call({DLSUser user, Room matrixRoom});

  $DLSUserCopyWith<$Res> get user;
}

/// @nodoc
class __$$_DataPersonalChatInformationStateCopyWithImpl<$Res>
    extends _$PersonalChatInformationStateCopyWithImpl<$Res,
        _$_DataPersonalChatInformationState>
    implements _$$_DataPersonalChatInformationStateCopyWith<$Res> {
  __$$_DataPersonalChatInformationStateCopyWithImpl(
      _$_DataPersonalChatInformationState _value,
      $Res Function(_$_DataPersonalChatInformationState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? matrixRoom = null,
  }) {
    return _then(_$_DataPersonalChatInformationState(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as DLSUser,
      matrixRoom: null == matrixRoom
          ? _value.matrixRoom
          : matrixRoom // ignore: cast_nullable_to_non_nullable
              as Room,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $DLSUserCopyWith<$Res> get user {
    return $DLSUserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$_DataPersonalChatInformationState
    extends _DataPersonalChatInformationState {
  const _$_DataPersonalChatInformationState(
      {required this.user, required this.matrixRoom})
      : super._();

  @override
  final DLSUser user;
  @override
  final Room matrixRoom;

  @override
  String toString() {
    return 'PersonalChatInformationState.data(user: $user, matrixRoom: $matrixRoom)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataPersonalChatInformationState &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.matrixRoom, matrixRoom) ||
                other.matrixRoom == matrixRoom));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, matrixRoom);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DataPersonalChatInformationStateCopyWith<
          _$_DataPersonalChatInformationState>
      get copyWith => __$$_DataPersonalChatInformationStateCopyWithImpl<
          _$_DataPersonalChatInformationState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(DLSUser user, Room matrixRoom) data,
    required TResult Function(String message) failure,
  }) {
    return data(user, matrixRoom);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(DLSUser user, Room matrixRoom)? data,
    TResult? Function(String message)? failure,
  }) {
    return data?.call(user, matrixRoom);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(DLSUser user, Room matrixRoom)? data,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(user, matrixRoom);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialPersonalChatInformationState value)
        initial,
    required TResult Function(_LoadingPersonalChatInformationState value)
        loading,
    required TResult Function(_DataPersonalChatInformationState value) data,
    required TResult Function(_FailurePersonalChatInformationState value)
        failure,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialPersonalChatInformationState value)? initial,
    TResult? Function(_LoadingPersonalChatInformationState value)? loading,
    TResult? Function(_DataPersonalChatInformationState value)? data,
    TResult? Function(_FailurePersonalChatInformationState value)? failure,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialPersonalChatInformationState value)? initial,
    TResult Function(_LoadingPersonalChatInformationState value)? loading,
    TResult Function(_DataPersonalChatInformationState value)? data,
    TResult Function(_FailurePersonalChatInformationState value)? failure,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _DataPersonalChatInformationState
    extends PersonalChatInformationState {
  const factory _DataPersonalChatInformationState(
      {required final DLSUser user,
      required final Room matrixRoom}) = _$_DataPersonalChatInformationState;
  const _DataPersonalChatInformationState._() : super._();

  DLSUser get user;
  Room get matrixRoom;
  @JsonKey(ignore: true)
  _$$_DataPersonalChatInformationStateCopyWith<
          _$_DataPersonalChatInformationState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FailurePersonalChatInformationStateCopyWith<$Res> {
  factory _$$_FailurePersonalChatInformationStateCopyWith(
          _$_FailurePersonalChatInformationState value,
          $Res Function(_$_FailurePersonalChatInformationState) then) =
      __$$_FailurePersonalChatInformationStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_FailurePersonalChatInformationStateCopyWithImpl<$Res>
    extends _$PersonalChatInformationStateCopyWithImpl<$Res,
        _$_FailurePersonalChatInformationState>
    implements _$$_FailurePersonalChatInformationStateCopyWith<$Res> {
  __$$_FailurePersonalChatInformationStateCopyWithImpl(
      _$_FailurePersonalChatInformationState _value,
      $Res Function(_$_FailurePersonalChatInformationState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_FailurePersonalChatInformationState(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FailurePersonalChatInformationState
    extends _FailurePersonalChatInformationState {
  const _$_FailurePersonalChatInformationState({required this.message})
      : super._();

  @override
  final String message;

  @override
  String toString() {
    return 'PersonalChatInformationState.failure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FailurePersonalChatInformationState &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FailurePersonalChatInformationStateCopyWith<
          _$_FailurePersonalChatInformationState>
      get copyWith => __$$_FailurePersonalChatInformationStateCopyWithImpl<
          _$_FailurePersonalChatInformationState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(DLSUser user, Room matrixRoom) data,
    required TResult Function(String message) failure,
  }) {
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(DLSUser user, Room matrixRoom)? data,
    TResult? Function(String message)? failure,
  }) {
    return failure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(DLSUser user, Room matrixRoom)? data,
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
    required TResult Function(_InitialPersonalChatInformationState value)
        initial,
    required TResult Function(_LoadingPersonalChatInformationState value)
        loading,
    required TResult Function(_DataPersonalChatInformationState value) data,
    required TResult Function(_FailurePersonalChatInformationState value)
        failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialPersonalChatInformationState value)? initial,
    TResult? Function(_LoadingPersonalChatInformationState value)? loading,
    TResult? Function(_DataPersonalChatInformationState value)? data,
    TResult? Function(_FailurePersonalChatInformationState value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialPersonalChatInformationState value)? initial,
    TResult Function(_LoadingPersonalChatInformationState value)? loading,
    TResult Function(_DataPersonalChatInformationState value)? data,
    TResult Function(_FailurePersonalChatInformationState value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _FailurePersonalChatInformationState
    extends PersonalChatInformationState {
  const factory _FailurePersonalChatInformationState(
      {required final String message}) = _$_FailurePersonalChatInformationState;
  const _FailurePersonalChatInformationState._() : super._();

  String get message;
  @JsonKey(ignore: true)
  _$$_FailurePersonalChatInformationStateCopyWith<
          _$_FailurePersonalChatInformationState>
      get copyWith => throw _privateConstructorUsedError;
}
