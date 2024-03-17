// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'users_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UsersEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<String> usersIds, VoidCallback? onFinishLoad)
        read,
    required TResult Function(DLSUser user) justAdd,
    required TResult Function(String userId) delete,
    required TResult Function(String roomId, VoidCallback? onFinishLoad)
        readRoom,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<String> usersIds, VoidCallback? onFinishLoad)? read,
    TResult? Function(DLSUser user)? justAdd,
    TResult? Function(String userId)? delete,
    TResult? Function(String roomId, VoidCallback? onFinishLoad)? readRoom,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String> usersIds, VoidCallback? onFinishLoad)? read,
    TResult Function(DLSUser user)? justAdd,
    TResult Function(String userId)? delete,
    TResult Function(String roomId, VoidCallback? onFinishLoad)? readRoom,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ReadUsersEvent value) read,
    required TResult Function(_JustAddUsersEvent value) justAdd,
    required TResult Function(_DeleteUsersEvent value) delete,
    required TResult Function(_ReadRoomUsersEvent value) readRoom,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ReadUsersEvent value)? read,
    TResult? Function(_JustAddUsersEvent value)? justAdd,
    TResult? Function(_DeleteUsersEvent value)? delete,
    TResult? Function(_ReadRoomUsersEvent value)? readRoom,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ReadUsersEvent value)? read,
    TResult Function(_JustAddUsersEvent value)? justAdd,
    TResult Function(_DeleteUsersEvent value)? delete,
    TResult Function(_ReadRoomUsersEvent value)? readRoom,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsersEventCopyWith<$Res> {
  factory $UsersEventCopyWith(
          UsersEvent value, $Res Function(UsersEvent) then) =
      _$UsersEventCopyWithImpl<$Res, UsersEvent>;
}

/// @nodoc
class _$UsersEventCopyWithImpl<$Res, $Val extends UsersEvent>
    implements $UsersEventCopyWith<$Res> {
  _$UsersEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ReadUsersEventCopyWith<$Res> {
  factory _$$_ReadUsersEventCopyWith(
          _$_ReadUsersEvent value, $Res Function(_$_ReadUsersEvent) then) =
      __$$_ReadUsersEventCopyWithImpl<$Res>;
  @useResult
  $Res call({List<String> usersIds, VoidCallback? onFinishLoad});
}

/// @nodoc
class __$$_ReadUsersEventCopyWithImpl<$Res>
    extends _$UsersEventCopyWithImpl<$Res, _$_ReadUsersEvent>
    implements _$$_ReadUsersEventCopyWith<$Res> {
  __$$_ReadUsersEventCopyWithImpl(
      _$_ReadUsersEvent _value, $Res Function(_$_ReadUsersEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? usersIds = null,
    Object? onFinishLoad = freezed,
  }) {
    return _then(_$_ReadUsersEvent(
      usersIds: null == usersIds
          ? _value._usersIds
          : usersIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      onFinishLoad: freezed == onFinishLoad
          ? _value.onFinishLoad
          : onFinishLoad // ignore: cast_nullable_to_non_nullable
              as VoidCallback?,
    ));
  }
}

/// @nodoc

class _$_ReadUsersEvent implements _ReadUsersEvent {
  const _$_ReadUsersEvent(
      {required final List<String> usersIds, this.onFinishLoad})
      : _usersIds = usersIds;

  /// пользователи, данные которых надо получить
  final List<String> _usersIds;

  /// пользователи, данные которых надо получить
  @override
  List<String> get usersIds {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_usersIds);
  }

  @override
  final VoidCallback? onFinishLoad;

  @override
  String toString() {
    return 'UsersEvent.read(usersIds: $usersIds, onFinishLoad: $onFinishLoad)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReadUsersEvent &&
            const DeepCollectionEquality().equals(other._usersIds, _usersIds) &&
            (identical(other.onFinishLoad, onFinishLoad) ||
                other.onFinishLoad == onFinishLoad));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_usersIds), onFinishLoad);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReadUsersEventCopyWith<_$_ReadUsersEvent> get copyWith =>
      __$$_ReadUsersEventCopyWithImpl<_$_ReadUsersEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<String> usersIds, VoidCallback? onFinishLoad)
        read,
    required TResult Function(DLSUser user) justAdd,
    required TResult Function(String userId) delete,
    required TResult Function(String roomId, VoidCallback? onFinishLoad)
        readRoom,
  }) {
    return read(usersIds, onFinishLoad);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<String> usersIds, VoidCallback? onFinishLoad)? read,
    TResult? Function(DLSUser user)? justAdd,
    TResult? Function(String userId)? delete,
    TResult? Function(String roomId, VoidCallback? onFinishLoad)? readRoom,
  }) {
    return read?.call(usersIds, onFinishLoad);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String> usersIds, VoidCallback? onFinishLoad)? read,
    TResult Function(DLSUser user)? justAdd,
    TResult Function(String userId)? delete,
    TResult Function(String roomId, VoidCallback? onFinishLoad)? readRoom,
    required TResult orElse(),
  }) {
    if (read != null) {
      return read(usersIds, onFinishLoad);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ReadUsersEvent value) read,
    required TResult Function(_JustAddUsersEvent value) justAdd,
    required TResult Function(_DeleteUsersEvent value) delete,
    required TResult Function(_ReadRoomUsersEvent value) readRoom,
  }) {
    return read(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ReadUsersEvent value)? read,
    TResult? Function(_JustAddUsersEvent value)? justAdd,
    TResult? Function(_DeleteUsersEvent value)? delete,
    TResult? Function(_ReadRoomUsersEvent value)? readRoom,
  }) {
    return read?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ReadUsersEvent value)? read,
    TResult Function(_JustAddUsersEvent value)? justAdd,
    TResult Function(_DeleteUsersEvent value)? delete,
    TResult Function(_ReadRoomUsersEvent value)? readRoom,
    required TResult orElse(),
  }) {
    if (read != null) {
      return read(this);
    }
    return orElse();
  }
}

abstract class _ReadUsersEvent implements UsersEvent {
  const factory _ReadUsersEvent(
      {required final List<String> usersIds,
      final VoidCallback? onFinishLoad}) = _$_ReadUsersEvent;

  /// пользователи, данные которых надо получить
  List<String> get usersIds;
  VoidCallback? get onFinishLoad;
  @JsonKey(ignore: true)
  _$$_ReadUsersEventCopyWith<_$_ReadUsersEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_JustAddUsersEventCopyWith<$Res> {
  factory _$$_JustAddUsersEventCopyWith(_$_JustAddUsersEvent value,
          $Res Function(_$_JustAddUsersEvent) then) =
      __$$_JustAddUsersEventCopyWithImpl<$Res>;
  @useResult
  $Res call({DLSUser user});

  $DLSUserCopyWith<$Res> get user;
}

/// @nodoc
class __$$_JustAddUsersEventCopyWithImpl<$Res>
    extends _$UsersEventCopyWithImpl<$Res, _$_JustAddUsersEvent>
    implements _$$_JustAddUsersEventCopyWith<$Res> {
  __$$_JustAddUsersEventCopyWithImpl(
      _$_JustAddUsersEvent _value, $Res Function(_$_JustAddUsersEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$_JustAddUsersEvent(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as DLSUser,
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

class _$_JustAddUsersEvent implements _JustAddUsersEvent {
  const _$_JustAddUsersEvent({required this.user});

  /// пользователь
  @override
  final DLSUser user;

  @override
  String toString() {
    return 'UsersEvent.justAdd(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_JustAddUsersEvent &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_JustAddUsersEventCopyWith<_$_JustAddUsersEvent> get copyWith =>
      __$$_JustAddUsersEventCopyWithImpl<_$_JustAddUsersEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<String> usersIds, VoidCallback? onFinishLoad)
        read,
    required TResult Function(DLSUser user) justAdd,
    required TResult Function(String userId) delete,
    required TResult Function(String roomId, VoidCallback? onFinishLoad)
        readRoom,
  }) {
    return justAdd(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<String> usersIds, VoidCallback? onFinishLoad)? read,
    TResult? Function(DLSUser user)? justAdd,
    TResult? Function(String userId)? delete,
    TResult? Function(String roomId, VoidCallback? onFinishLoad)? readRoom,
  }) {
    return justAdd?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String> usersIds, VoidCallback? onFinishLoad)? read,
    TResult Function(DLSUser user)? justAdd,
    TResult Function(String userId)? delete,
    TResult Function(String roomId, VoidCallback? onFinishLoad)? readRoom,
    required TResult orElse(),
  }) {
    if (justAdd != null) {
      return justAdd(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ReadUsersEvent value) read,
    required TResult Function(_JustAddUsersEvent value) justAdd,
    required TResult Function(_DeleteUsersEvent value) delete,
    required TResult Function(_ReadRoomUsersEvent value) readRoom,
  }) {
    return justAdd(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ReadUsersEvent value)? read,
    TResult? Function(_JustAddUsersEvent value)? justAdd,
    TResult? Function(_DeleteUsersEvent value)? delete,
    TResult? Function(_ReadRoomUsersEvent value)? readRoom,
  }) {
    return justAdd?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ReadUsersEvent value)? read,
    TResult Function(_JustAddUsersEvent value)? justAdd,
    TResult Function(_DeleteUsersEvent value)? delete,
    TResult Function(_ReadRoomUsersEvent value)? readRoom,
    required TResult orElse(),
  }) {
    if (justAdd != null) {
      return justAdd(this);
    }
    return orElse();
  }
}

abstract class _JustAddUsersEvent implements UsersEvent {
  const factory _JustAddUsersEvent({required final DLSUser user}) =
      _$_JustAddUsersEvent;

  /// пользователь
  DLSUser get user;
  @JsonKey(ignore: true)
  _$$_JustAddUsersEventCopyWith<_$_JustAddUsersEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DeleteUsersEventCopyWith<$Res> {
  factory _$$_DeleteUsersEventCopyWith(
          _$_DeleteUsersEvent value, $Res Function(_$_DeleteUsersEvent) then) =
      __$$_DeleteUsersEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String userId});
}

/// @nodoc
class __$$_DeleteUsersEventCopyWithImpl<$Res>
    extends _$UsersEventCopyWithImpl<$Res, _$_DeleteUsersEvent>
    implements _$$_DeleteUsersEventCopyWith<$Res> {
  __$$_DeleteUsersEventCopyWithImpl(
      _$_DeleteUsersEvent _value, $Res Function(_$_DeleteUsersEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_$_DeleteUsersEvent(
      null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_DeleteUsersEvent implements _DeleteUsersEvent {
  const _$_DeleteUsersEvent(this.userId);

  @override
  final String userId;

  @override
  String toString() {
    return 'UsersEvent.delete(userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeleteUsersEvent &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeleteUsersEventCopyWith<_$_DeleteUsersEvent> get copyWith =>
      __$$_DeleteUsersEventCopyWithImpl<_$_DeleteUsersEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<String> usersIds, VoidCallback? onFinishLoad)
        read,
    required TResult Function(DLSUser user) justAdd,
    required TResult Function(String userId) delete,
    required TResult Function(String roomId, VoidCallback? onFinishLoad)
        readRoom,
  }) {
    return delete(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<String> usersIds, VoidCallback? onFinishLoad)? read,
    TResult? Function(DLSUser user)? justAdd,
    TResult? Function(String userId)? delete,
    TResult? Function(String roomId, VoidCallback? onFinishLoad)? readRoom,
  }) {
    return delete?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String> usersIds, VoidCallback? onFinishLoad)? read,
    TResult Function(DLSUser user)? justAdd,
    TResult Function(String userId)? delete,
    TResult Function(String roomId, VoidCallback? onFinishLoad)? readRoom,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ReadUsersEvent value) read,
    required TResult Function(_JustAddUsersEvent value) justAdd,
    required TResult Function(_DeleteUsersEvent value) delete,
    required TResult Function(_ReadRoomUsersEvent value) readRoom,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ReadUsersEvent value)? read,
    TResult? Function(_JustAddUsersEvent value)? justAdd,
    TResult? Function(_DeleteUsersEvent value)? delete,
    TResult? Function(_ReadRoomUsersEvent value)? readRoom,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ReadUsersEvent value)? read,
    TResult Function(_JustAddUsersEvent value)? justAdd,
    TResult Function(_DeleteUsersEvent value)? delete,
    TResult Function(_ReadRoomUsersEvent value)? readRoom,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class _DeleteUsersEvent implements UsersEvent {
  const factory _DeleteUsersEvent(final String userId) = _$_DeleteUsersEvent;

  String get userId;
  @JsonKey(ignore: true)
  _$$_DeleteUsersEventCopyWith<_$_DeleteUsersEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ReadRoomUsersEventCopyWith<$Res> {
  factory _$$_ReadRoomUsersEventCopyWith(_$_ReadRoomUsersEvent value,
          $Res Function(_$_ReadRoomUsersEvent) then) =
      __$$_ReadRoomUsersEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String roomId, VoidCallback? onFinishLoad});
}

/// @nodoc
class __$$_ReadRoomUsersEventCopyWithImpl<$Res>
    extends _$UsersEventCopyWithImpl<$Res, _$_ReadRoomUsersEvent>
    implements _$$_ReadRoomUsersEventCopyWith<$Res> {
  __$$_ReadRoomUsersEventCopyWithImpl(
      _$_ReadRoomUsersEvent _value, $Res Function(_$_ReadRoomUsersEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? roomId = null,
    Object? onFinishLoad = freezed,
  }) {
    return _then(_$_ReadRoomUsersEvent(
      roomId: null == roomId
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as String,
      onFinishLoad: freezed == onFinishLoad
          ? _value.onFinishLoad
          : onFinishLoad // ignore: cast_nullable_to_non_nullable
              as VoidCallback?,
    ));
  }
}

/// @nodoc

class _$_ReadRoomUsersEvent implements _ReadRoomUsersEvent {
  const _$_ReadRoomUsersEvent({required this.roomId, this.onFinishLoad});

  @override
  final String roomId;
  @override
  final VoidCallback? onFinishLoad;

  @override
  String toString() {
    return 'UsersEvent.readRoom(roomId: $roomId, onFinishLoad: $onFinishLoad)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReadRoomUsersEvent &&
            (identical(other.roomId, roomId) || other.roomId == roomId) &&
            (identical(other.onFinishLoad, onFinishLoad) ||
                other.onFinishLoad == onFinishLoad));
  }

  @override
  int get hashCode => Object.hash(runtimeType, roomId, onFinishLoad);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReadRoomUsersEventCopyWith<_$_ReadRoomUsersEvent> get copyWith =>
      __$$_ReadRoomUsersEventCopyWithImpl<_$_ReadRoomUsersEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<String> usersIds, VoidCallback? onFinishLoad)
        read,
    required TResult Function(DLSUser user) justAdd,
    required TResult Function(String userId) delete,
    required TResult Function(String roomId, VoidCallback? onFinishLoad)
        readRoom,
  }) {
    return readRoom(roomId, onFinishLoad);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<String> usersIds, VoidCallback? onFinishLoad)? read,
    TResult? Function(DLSUser user)? justAdd,
    TResult? Function(String userId)? delete,
    TResult? Function(String roomId, VoidCallback? onFinishLoad)? readRoom,
  }) {
    return readRoom?.call(roomId, onFinishLoad);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String> usersIds, VoidCallback? onFinishLoad)? read,
    TResult Function(DLSUser user)? justAdd,
    TResult Function(String userId)? delete,
    TResult Function(String roomId, VoidCallback? onFinishLoad)? readRoom,
    required TResult orElse(),
  }) {
    if (readRoom != null) {
      return readRoom(roomId, onFinishLoad);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ReadUsersEvent value) read,
    required TResult Function(_JustAddUsersEvent value) justAdd,
    required TResult Function(_DeleteUsersEvent value) delete,
    required TResult Function(_ReadRoomUsersEvent value) readRoom,
  }) {
    return readRoom(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ReadUsersEvent value)? read,
    TResult? Function(_JustAddUsersEvent value)? justAdd,
    TResult? Function(_DeleteUsersEvent value)? delete,
    TResult? Function(_ReadRoomUsersEvent value)? readRoom,
  }) {
    return readRoom?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ReadUsersEvent value)? read,
    TResult Function(_JustAddUsersEvent value)? justAdd,
    TResult Function(_DeleteUsersEvent value)? delete,
    TResult Function(_ReadRoomUsersEvent value)? readRoom,
    required TResult orElse(),
  }) {
    if (readRoom != null) {
      return readRoom(this);
    }
    return orElse();
  }
}

abstract class _ReadRoomUsersEvent implements UsersEvent {
  const factory _ReadRoomUsersEvent(
      {required final String roomId,
      final VoidCallback? onFinishLoad}) = _$_ReadRoomUsersEvent;

  String get roomId;
  VoidCallback? get onFinishLoad;
  @JsonKey(ignore: true)
  _$$_ReadRoomUsersEventCopyWith<_$_ReadRoomUsersEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UsersState {
  /// uuid транзакции
  String? get transaction => throw _privateConstructorUsedError;

  /// пользователи
  Map<String, DLSUser> get store => throw _privateConstructorUsedError;

  /// пользователь
  DLSUser? get currentUser => throw _privateConstructorUsedError;

  /// загрузка
  bool? get loading => throw _privateConstructorUsedError;

  /// текст ошибки
  String? get failure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UsersStateCopyWith<UsersState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsersStateCopyWith<$Res> {
  factory $UsersStateCopyWith(
          UsersState value, $Res Function(UsersState) then) =
      _$UsersStateCopyWithImpl<$Res, UsersState>;
  @useResult
  $Res call(
      {String? transaction,
      Map<String, DLSUser> store,
      DLSUser? currentUser,
      bool? loading,
      String? failure});

  $DLSUserCopyWith<$Res>? get currentUser;
}

/// @nodoc
class _$UsersStateCopyWithImpl<$Res, $Val extends UsersState>
    implements $UsersStateCopyWith<$Res> {
  _$UsersStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transaction = freezed,
    Object? store = null,
    Object? currentUser = freezed,
    Object? loading = freezed,
    Object? failure = freezed,
  }) {
    return _then(_value.copyWith(
      transaction: freezed == transaction
          ? _value.transaction
          : transaction // ignore: cast_nullable_to_non_nullable
              as String?,
      store: null == store
          ? _value.store
          : store // ignore: cast_nullable_to_non_nullable
              as Map<String, DLSUser>,
      currentUser: freezed == currentUser
          ? _value.currentUser
          : currentUser // ignore: cast_nullable_to_non_nullable
              as DLSUser?,
      loading: freezed == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool?,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DLSUserCopyWith<$Res>? get currentUser {
    if (_value.currentUser == null) {
      return null;
    }

    return $DLSUserCopyWith<$Res>(_value.currentUser!, (value) {
      return _then(_value.copyWith(currentUser: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_UsersStateCopyWith<$Res>
    implements $UsersStateCopyWith<$Res> {
  factory _$$_UsersStateCopyWith(
          _$_UsersState value, $Res Function(_$_UsersState) then) =
      __$$_UsersStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? transaction,
      Map<String, DLSUser> store,
      DLSUser? currentUser,
      bool? loading,
      String? failure});

  @override
  $DLSUserCopyWith<$Res>? get currentUser;
}

/// @nodoc
class __$$_UsersStateCopyWithImpl<$Res>
    extends _$UsersStateCopyWithImpl<$Res, _$_UsersState>
    implements _$$_UsersStateCopyWith<$Res> {
  __$$_UsersStateCopyWithImpl(
      _$_UsersState _value, $Res Function(_$_UsersState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transaction = freezed,
    Object? store = null,
    Object? currentUser = freezed,
    Object? loading = freezed,
    Object? failure = freezed,
  }) {
    return _then(_$_UsersState(
      transaction: freezed == transaction
          ? _value.transaction
          : transaction // ignore: cast_nullable_to_non_nullable
              as String?,
      store: null == store
          ? _value._store
          : store // ignore: cast_nullable_to_non_nullable
              as Map<String, DLSUser>,
      currentUser: freezed == currentUser
          ? _value.currentUser
          : currentUser // ignore: cast_nullable_to_non_nullable
              as DLSUser?,
      loading: freezed == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool?,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_UsersState extends _UsersState {
  _$_UsersState(
      {required this.transaction,
      required final Map<String, DLSUser> store,
      required this.currentUser,
      this.loading,
      this.failure})
      : _store = store,
        super._();

  /// uuid транзакции
  @override
  final String? transaction;

  /// пользователи
  final Map<String, DLSUser> _store;

  /// пользователи
  @override
  Map<String, DLSUser> get store {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_store);
  }

  /// пользователь
  @override
  final DLSUser? currentUser;

  /// загрузка
  @override
  final bool? loading;

  /// текст ошибки
  @override
  final String? failure;

  @override
  String toString() {
    return 'UsersState(transaction: $transaction, store: $store, currentUser: $currentUser, loading: $loading, failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UsersState &&
            (identical(other.transaction, transaction) ||
                other.transaction == transaction) &&
            const DeepCollectionEquality().equals(other._store, _store) &&
            (identical(other.currentUser, currentUser) ||
                other.currentUser == currentUser) &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      transaction,
      const DeepCollectionEquality().hash(_store),
      currentUser,
      loading,
      failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UsersStateCopyWith<_$_UsersState> get copyWith =>
      __$$_UsersStateCopyWithImpl<_$_UsersState>(this, _$identity);
}

abstract class _UsersState extends UsersState {
  factory _UsersState(
      {required final String? transaction,
      required final Map<String, DLSUser> store,
      required final DLSUser? currentUser,
      final bool? loading,
      final String? failure}) = _$_UsersState;
  _UsersState._() : super._();

  @override

  /// uuid транзакции
  String? get transaction;
  @override

  /// пользователи
  Map<String, DLSUser> get store;
  @override

  /// пользователь
  DLSUser? get currentUser;
  @override

  /// загрузка
  bool? get loading;
  @override

  /// текст ошибки
  String? get failure;
  @override
  @JsonKey(ignore: true)
  _$$_UsersStateCopyWith<_$_UsersState> get copyWith =>
      throw _privateConstructorUsedError;
}
