// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'group_chat_information_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GroupChatInformationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() read,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? read,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? read,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ReadGroupChatInformationEvent value) read,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ReadGroupChatInformationEvent value)? read,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ReadGroupChatInformationEvent value)? read,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupChatInformationEventCopyWith<$Res> {
  factory $GroupChatInformationEventCopyWith(GroupChatInformationEvent value,
          $Res Function(GroupChatInformationEvent) then) =
      _$GroupChatInformationEventCopyWithImpl<$Res, GroupChatInformationEvent>;
}

/// @nodoc
class _$GroupChatInformationEventCopyWithImpl<$Res,
        $Val extends GroupChatInformationEvent>
    implements $GroupChatInformationEventCopyWith<$Res> {
  _$GroupChatInformationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ReadGroupChatInformationEventCopyWith<$Res> {
  factory _$$_ReadGroupChatInformationEventCopyWith(
          _$_ReadGroupChatInformationEvent value,
          $Res Function(_$_ReadGroupChatInformationEvent) then) =
      __$$_ReadGroupChatInformationEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ReadGroupChatInformationEventCopyWithImpl<$Res>
    extends _$GroupChatInformationEventCopyWithImpl<$Res,
        _$_ReadGroupChatInformationEvent>
    implements _$$_ReadGroupChatInformationEventCopyWith<$Res> {
  __$$_ReadGroupChatInformationEventCopyWithImpl(
      _$_ReadGroupChatInformationEvent _value,
      $Res Function(_$_ReadGroupChatInformationEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ReadGroupChatInformationEvent extends _ReadGroupChatInformationEvent
    with DiagnosticableTreeMixin {
  const _$_ReadGroupChatInformationEvent() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GroupChatInformationEvent.read()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'GroupChatInformationEvent.read'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReadGroupChatInformationEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() read,
  }) {
    return read();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? read,
  }) {
    return read?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? read,
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
    required TResult Function(_ReadGroupChatInformationEvent value) read,
  }) {
    return read(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ReadGroupChatInformationEvent value)? read,
  }) {
    return read?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ReadGroupChatInformationEvent value)? read,
    required TResult orElse(),
  }) {
    if (read != null) {
      return read(this);
    }
    return orElse();
  }
}

abstract class _ReadGroupChatInformationEvent
    extends GroupChatInformationEvent {
  const factory _ReadGroupChatInformationEvent() =
      _$_ReadGroupChatInformationEvent;
  const _ReadGroupChatInformationEvent._() : super._();
}

/// @nodoc
mixin _$GroupChatInformationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<DLSUser> users, List<String> adminIds,
            String owner, Room matrixRoom)
        data,
    required TResult Function(String message) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<DLSUser> users, List<String> adminIds, String owner,
            Room matrixRoom)?
        data,
    TResult? Function(String message)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<DLSUser> users, List<String> adminIds, String owner,
            Room matrixRoom)?
        data,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialGroupChatInformationState value) initial,
    required TResult Function(_LoadingGroupChatInformationState value) loading,
    required TResult Function(_DataGroupChatInformationState value) data,
    required TResult Function(_FailureGroupChatInformationState value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialGroupChatInformationState value)? initial,
    TResult? Function(_LoadingGroupChatInformationState value)? loading,
    TResult? Function(_DataGroupChatInformationState value)? data,
    TResult? Function(_FailureGroupChatInformationState value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialGroupChatInformationState value)? initial,
    TResult Function(_LoadingGroupChatInformationState value)? loading,
    TResult Function(_DataGroupChatInformationState value)? data,
    TResult Function(_FailureGroupChatInformationState value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupChatInformationStateCopyWith<$Res> {
  factory $GroupChatInformationStateCopyWith(GroupChatInformationState value,
          $Res Function(GroupChatInformationState) then) =
      _$GroupChatInformationStateCopyWithImpl<$Res, GroupChatInformationState>;
}

/// @nodoc
class _$GroupChatInformationStateCopyWithImpl<$Res,
        $Val extends GroupChatInformationState>
    implements $GroupChatInformationStateCopyWith<$Res> {
  _$GroupChatInformationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialGroupChatInformationStateCopyWith<$Res> {
  factory _$$_InitialGroupChatInformationStateCopyWith(
          _$_InitialGroupChatInformationState value,
          $Res Function(_$_InitialGroupChatInformationState) then) =
      __$$_InitialGroupChatInformationStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialGroupChatInformationStateCopyWithImpl<$Res>
    extends _$GroupChatInformationStateCopyWithImpl<$Res,
        _$_InitialGroupChatInformationState>
    implements _$$_InitialGroupChatInformationStateCopyWith<$Res> {
  __$$_InitialGroupChatInformationStateCopyWithImpl(
      _$_InitialGroupChatInformationState _value,
      $Res Function(_$_InitialGroupChatInformationState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_InitialGroupChatInformationState
    extends _InitialGroupChatInformationState with DiagnosticableTreeMixin {
  const _$_InitialGroupChatInformationState() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GroupChatInformationState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'GroupChatInformationState.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InitialGroupChatInformationState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<DLSUser> users, List<String> adminIds,
            String owner, Room matrixRoom)
        data,
    required TResult Function(String message) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<DLSUser> users, List<String> adminIds, String owner,
            Room matrixRoom)?
        data,
    TResult? Function(String message)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<DLSUser> users, List<String> adminIds, String owner,
            Room matrixRoom)?
        data,
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
    required TResult Function(_InitialGroupChatInformationState value) initial,
    required TResult Function(_LoadingGroupChatInformationState value) loading,
    required TResult Function(_DataGroupChatInformationState value) data,
    required TResult Function(_FailureGroupChatInformationState value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialGroupChatInformationState value)? initial,
    TResult? Function(_LoadingGroupChatInformationState value)? loading,
    TResult? Function(_DataGroupChatInformationState value)? data,
    TResult? Function(_FailureGroupChatInformationState value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialGroupChatInformationState value)? initial,
    TResult Function(_LoadingGroupChatInformationState value)? loading,
    TResult Function(_DataGroupChatInformationState value)? data,
    TResult Function(_FailureGroupChatInformationState value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialGroupChatInformationState
    extends GroupChatInformationState {
  const factory _InitialGroupChatInformationState() =
      _$_InitialGroupChatInformationState;
  const _InitialGroupChatInformationState._() : super._();
}

/// @nodoc
abstract class _$$_LoadingGroupChatInformationStateCopyWith<$Res> {
  factory _$$_LoadingGroupChatInformationStateCopyWith(
          _$_LoadingGroupChatInformationState value,
          $Res Function(_$_LoadingGroupChatInformationState) then) =
      __$$_LoadingGroupChatInformationStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingGroupChatInformationStateCopyWithImpl<$Res>
    extends _$GroupChatInformationStateCopyWithImpl<$Res,
        _$_LoadingGroupChatInformationState>
    implements _$$_LoadingGroupChatInformationStateCopyWith<$Res> {
  __$$_LoadingGroupChatInformationStateCopyWithImpl(
      _$_LoadingGroupChatInformationState _value,
      $Res Function(_$_LoadingGroupChatInformationState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoadingGroupChatInformationState
    extends _LoadingGroupChatInformationState with DiagnosticableTreeMixin {
  const _$_LoadingGroupChatInformationState() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GroupChatInformationState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'GroupChatInformationState.loading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadingGroupChatInformationState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<DLSUser> users, List<String> adminIds,
            String owner, Room matrixRoom)
        data,
    required TResult Function(String message) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<DLSUser> users, List<String> adminIds, String owner,
            Room matrixRoom)?
        data,
    TResult? Function(String message)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<DLSUser> users, List<String> adminIds, String owner,
            Room matrixRoom)?
        data,
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
    required TResult Function(_InitialGroupChatInformationState value) initial,
    required TResult Function(_LoadingGroupChatInformationState value) loading,
    required TResult Function(_DataGroupChatInformationState value) data,
    required TResult Function(_FailureGroupChatInformationState value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialGroupChatInformationState value)? initial,
    TResult? Function(_LoadingGroupChatInformationState value)? loading,
    TResult? Function(_DataGroupChatInformationState value)? data,
    TResult? Function(_FailureGroupChatInformationState value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialGroupChatInformationState value)? initial,
    TResult Function(_LoadingGroupChatInformationState value)? loading,
    TResult Function(_DataGroupChatInformationState value)? data,
    TResult Function(_FailureGroupChatInformationState value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingGroupChatInformationState
    extends GroupChatInformationState {
  const factory _LoadingGroupChatInformationState() =
      _$_LoadingGroupChatInformationState;
  const _LoadingGroupChatInformationState._() : super._();
}

/// @nodoc
abstract class _$$_DataGroupChatInformationStateCopyWith<$Res> {
  factory _$$_DataGroupChatInformationStateCopyWith(
          _$_DataGroupChatInformationState value,
          $Res Function(_$_DataGroupChatInformationState) then) =
      __$$_DataGroupChatInformationStateCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<DLSUser> users,
      List<String> adminIds,
      String owner,
      Room matrixRoom});
}

/// @nodoc
class __$$_DataGroupChatInformationStateCopyWithImpl<$Res>
    extends _$GroupChatInformationStateCopyWithImpl<$Res,
        _$_DataGroupChatInformationState>
    implements _$$_DataGroupChatInformationStateCopyWith<$Res> {
  __$$_DataGroupChatInformationStateCopyWithImpl(
      _$_DataGroupChatInformationState _value,
      $Res Function(_$_DataGroupChatInformationState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users = null,
    Object? adminIds = null,
    Object? owner = null,
    Object? matrixRoom = null,
  }) {
    return _then(_$_DataGroupChatInformationState(
      users: null == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<DLSUser>,
      adminIds: null == adminIds
          ? _value._adminIds
          : adminIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as String,
      matrixRoom: null == matrixRoom
          ? _value.matrixRoom
          : matrixRoom // ignore: cast_nullable_to_non_nullable
              as Room,
    ));
  }
}

/// @nodoc

class _$_DataGroupChatInformationState extends _DataGroupChatInformationState
    with DiagnosticableTreeMixin {
  const _$_DataGroupChatInformationState(
      {required final List<DLSUser> users,
      required final List<String> adminIds,
      required this.owner,
      required this.matrixRoom})
      : _users = users,
        _adminIds = adminIds,
        super._();

  final List<DLSUser> _users;
  @override
  List<DLSUser> get users {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  final List<String> _adminIds;
  @override
  List<String> get adminIds {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_adminIds);
  }

  @override
  final String owner;
  @override
  final Room matrixRoom;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GroupChatInformationState.data(users: $users, adminIds: $adminIds, owner: $owner, matrixRoom: $matrixRoom)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GroupChatInformationState.data'))
      ..add(DiagnosticsProperty('users', users))
      ..add(DiagnosticsProperty('adminIds', adminIds))
      ..add(DiagnosticsProperty('owner', owner))
      ..add(DiagnosticsProperty('matrixRoom', matrixRoom));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataGroupChatInformationState &&
            const DeepCollectionEquality().equals(other._users, _users) &&
            const DeepCollectionEquality().equals(other._adminIds, _adminIds) &&
            (identical(other.owner, owner) || other.owner == owner) &&
            (identical(other.matrixRoom, matrixRoom) ||
                other.matrixRoom == matrixRoom));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_users),
      const DeepCollectionEquality().hash(_adminIds),
      owner,
      matrixRoom);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DataGroupChatInformationStateCopyWith<_$_DataGroupChatInformationState>
      get copyWith => __$$_DataGroupChatInformationStateCopyWithImpl<
          _$_DataGroupChatInformationState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<DLSUser> users, List<String> adminIds,
            String owner, Room matrixRoom)
        data,
    required TResult Function(String message) failure,
  }) {
    return data(users, adminIds, owner, matrixRoom);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<DLSUser> users, List<String> adminIds, String owner,
            Room matrixRoom)?
        data,
    TResult? Function(String message)? failure,
  }) {
    return data?.call(users, adminIds, owner, matrixRoom);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<DLSUser> users, List<String> adminIds, String owner,
            Room matrixRoom)?
        data,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(users, adminIds, owner, matrixRoom);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialGroupChatInformationState value) initial,
    required TResult Function(_LoadingGroupChatInformationState value) loading,
    required TResult Function(_DataGroupChatInformationState value) data,
    required TResult Function(_FailureGroupChatInformationState value) failure,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialGroupChatInformationState value)? initial,
    TResult? Function(_LoadingGroupChatInformationState value)? loading,
    TResult? Function(_DataGroupChatInformationState value)? data,
    TResult? Function(_FailureGroupChatInformationState value)? failure,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialGroupChatInformationState value)? initial,
    TResult Function(_LoadingGroupChatInformationState value)? loading,
    TResult Function(_DataGroupChatInformationState value)? data,
    TResult Function(_FailureGroupChatInformationState value)? failure,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _DataGroupChatInformationState
    extends GroupChatInformationState {
  const factory _DataGroupChatInformationState(
      {required final List<DLSUser> users,
      required final List<String> adminIds,
      required final String owner,
      required final Room matrixRoom}) = _$_DataGroupChatInformationState;
  const _DataGroupChatInformationState._() : super._();

  List<DLSUser> get users;
  List<String> get adminIds;
  String get owner;
  Room get matrixRoom;
  @JsonKey(ignore: true)
  _$$_DataGroupChatInformationStateCopyWith<_$_DataGroupChatInformationState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FailureGroupChatInformationStateCopyWith<$Res> {
  factory _$$_FailureGroupChatInformationStateCopyWith(
          _$_FailureGroupChatInformationState value,
          $Res Function(_$_FailureGroupChatInformationState) then) =
      __$$_FailureGroupChatInformationStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_FailureGroupChatInformationStateCopyWithImpl<$Res>
    extends _$GroupChatInformationStateCopyWithImpl<$Res,
        _$_FailureGroupChatInformationState>
    implements _$$_FailureGroupChatInformationStateCopyWith<$Res> {
  __$$_FailureGroupChatInformationStateCopyWithImpl(
      _$_FailureGroupChatInformationState _value,
      $Res Function(_$_FailureGroupChatInformationState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_FailureGroupChatInformationState(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FailureGroupChatInformationState
    extends _FailureGroupChatInformationState with DiagnosticableTreeMixin {
  const _$_FailureGroupChatInformationState({required this.message})
      : super._();

  @override
  final String message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GroupChatInformationState.failure(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GroupChatInformationState.failure'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FailureGroupChatInformationState &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FailureGroupChatInformationStateCopyWith<
          _$_FailureGroupChatInformationState>
      get copyWith => __$$_FailureGroupChatInformationStateCopyWithImpl<
          _$_FailureGroupChatInformationState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<DLSUser> users, List<String> adminIds,
            String owner, Room matrixRoom)
        data,
    required TResult Function(String message) failure,
  }) {
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<DLSUser> users, List<String> adminIds, String owner,
            Room matrixRoom)?
        data,
    TResult? Function(String message)? failure,
  }) {
    return failure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<DLSUser> users, List<String> adminIds, String owner,
            Room matrixRoom)?
        data,
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
    required TResult Function(_InitialGroupChatInformationState value) initial,
    required TResult Function(_LoadingGroupChatInformationState value) loading,
    required TResult Function(_DataGroupChatInformationState value) data,
    required TResult Function(_FailureGroupChatInformationState value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialGroupChatInformationState value)? initial,
    TResult? Function(_LoadingGroupChatInformationState value)? loading,
    TResult? Function(_DataGroupChatInformationState value)? data,
    TResult? Function(_FailureGroupChatInformationState value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialGroupChatInformationState value)? initial,
    TResult Function(_LoadingGroupChatInformationState value)? loading,
    TResult Function(_DataGroupChatInformationState value)? data,
    TResult Function(_FailureGroupChatInformationState value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _FailureGroupChatInformationState
    extends GroupChatInformationState {
  const factory _FailureGroupChatInformationState(
      {required final String message}) = _$_FailureGroupChatInformationState;
  const _FailureGroupChatInformationState._() : super._();

  String get message;
  @JsonKey(ignore: true)
  _$$_FailureGroupChatInformationStateCopyWith<
          _$_FailureGroupChatInformationState>
      get copyWith => throw _privateConstructorUsedError;
}
