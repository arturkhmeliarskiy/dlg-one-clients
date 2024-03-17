// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'chat_manager_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChatManagerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SimpleGroup simpleGroup) createGroup,
    required TResult Function(DLSUser user) createPrivate,
    required TResult Function(SimpleGroup newSimpleGroup) updateUsers,
    required TResult Function(String? chatId, List<String> newUsersIds)
        addUsers,
    required TResult Function(SimpleGroup newSimpleGroup) updateName,
    required TResult Function(String chatId, List<String> usersIds) kickUsers,
    required TResult Function(String chatId) leave,
    required TResult Function(SimpleGroup adminAndIdOnly) setAdmin,
    required TResult Function(SimpleGroup adminAndIdOnly) removeAdmin,
    required TResult Function(String chatId) delete,
    required TResult Function(SimpleGroup adminAndIdOnly) ownerLeave,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SimpleGroup simpleGroup)? createGroup,
    TResult? Function(DLSUser user)? createPrivate,
    TResult? Function(SimpleGroup newSimpleGroup)? updateUsers,
    TResult? Function(String? chatId, List<String> newUsersIds)? addUsers,
    TResult? Function(SimpleGroup newSimpleGroup)? updateName,
    TResult? Function(String chatId, List<String> usersIds)? kickUsers,
    TResult? Function(String chatId)? leave,
    TResult? Function(SimpleGroup adminAndIdOnly)? setAdmin,
    TResult? Function(SimpleGroup adminAndIdOnly)? removeAdmin,
    TResult? Function(String chatId)? delete,
    TResult? Function(SimpleGroup adminAndIdOnly)? ownerLeave,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SimpleGroup simpleGroup)? createGroup,
    TResult Function(DLSUser user)? createPrivate,
    TResult Function(SimpleGroup newSimpleGroup)? updateUsers,
    TResult Function(String? chatId, List<String> newUsersIds)? addUsers,
    TResult Function(SimpleGroup newSimpleGroup)? updateName,
    TResult Function(String chatId, List<String> usersIds)? kickUsers,
    TResult Function(String chatId)? leave,
    TResult Function(SimpleGroup adminAndIdOnly)? setAdmin,
    TResult Function(SimpleGroup adminAndIdOnly)? removeAdmin,
    TResult Function(String chatId)? delete,
    TResult Function(SimpleGroup adminAndIdOnly)? ownerLeave,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateGroup value) createGroup,
    required TResult Function(_CreatePrivate value) createPrivate,
    required TResult Function(_UpdateUsers value) updateUsers,
    required TResult Function(_AddUsers value) addUsers,
    required TResult Function(_UpdateName value) updateName,
    required TResult Function(_KickUsers value) kickUsers,
    required TResult Function(_Leave value) leave,
    required TResult Function(_SetAdmin value) setAdmin,
    required TResult Function(_RemoveAdmin value) removeAdmin,
    required TResult Function(_Delete value) delete,
    required TResult Function(_OwnerLeave value) ownerLeave,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateGroup value)? createGroup,
    TResult? Function(_CreatePrivate value)? createPrivate,
    TResult? Function(_UpdateUsers value)? updateUsers,
    TResult? Function(_AddUsers value)? addUsers,
    TResult? Function(_UpdateName value)? updateName,
    TResult? Function(_KickUsers value)? kickUsers,
    TResult? Function(_Leave value)? leave,
    TResult? Function(_SetAdmin value)? setAdmin,
    TResult? Function(_RemoveAdmin value)? removeAdmin,
    TResult? Function(_Delete value)? delete,
    TResult? Function(_OwnerLeave value)? ownerLeave,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateGroup value)? createGroup,
    TResult Function(_CreatePrivate value)? createPrivate,
    TResult Function(_UpdateUsers value)? updateUsers,
    TResult Function(_AddUsers value)? addUsers,
    TResult Function(_UpdateName value)? updateName,
    TResult Function(_KickUsers value)? kickUsers,
    TResult Function(_Leave value)? leave,
    TResult Function(_SetAdmin value)? setAdmin,
    TResult Function(_RemoveAdmin value)? removeAdmin,
    TResult Function(_Delete value)? delete,
    TResult Function(_OwnerLeave value)? ownerLeave,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatManagerEventCopyWith<$Res> {
  factory $ChatManagerEventCopyWith(
          ChatManagerEvent value, $Res Function(ChatManagerEvent) then) =
      _$ChatManagerEventCopyWithImpl<$Res, ChatManagerEvent>;
}

/// @nodoc
class _$ChatManagerEventCopyWithImpl<$Res, $Val extends ChatManagerEvent>
    implements $ChatManagerEventCopyWith<$Res> {
  _$ChatManagerEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_CreateGroupCopyWith<$Res> {
  factory _$$_CreateGroupCopyWith(
          _$_CreateGroup value, $Res Function(_$_CreateGroup) then) =
      __$$_CreateGroupCopyWithImpl<$Res>;
  @useResult
  $Res call({SimpleGroup simpleGroup});

  $SimpleGroupCopyWith<$Res> get simpleGroup;
}

/// @nodoc
class __$$_CreateGroupCopyWithImpl<$Res>
    extends _$ChatManagerEventCopyWithImpl<$Res, _$_CreateGroup>
    implements _$$_CreateGroupCopyWith<$Res> {
  __$$_CreateGroupCopyWithImpl(
      _$_CreateGroup _value, $Res Function(_$_CreateGroup) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? simpleGroup = null,
  }) {
    return _then(_$_CreateGroup(
      null == simpleGroup
          ? _value.simpleGroup
          : simpleGroup // ignore: cast_nullable_to_non_nullable
              as SimpleGroup,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $SimpleGroupCopyWith<$Res> get simpleGroup {
    return $SimpleGroupCopyWith<$Res>(_value.simpleGroup, (value) {
      return _then(_value.copyWith(simpleGroup: value));
    });
  }
}

/// @nodoc

class _$_CreateGroup implements _CreateGroup {
  const _$_CreateGroup(this.simpleGroup);

  @override
  final SimpleGroup simpleGroup;

  @override
  String toString() {
    return 'ChatManagerEvent.createGroup(simpleGroup: $simpleGroup)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateGroup &&
            (identical(other.simpleGroup, simpleGroup) ||
                other.simpleGroup == simpleGroup));
  }

  @override
  int get hashCode => Object.hash(runtimeType, simpleGroup);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateGroupCopyWith<_$_CreateGroup> get copyWith =>
      __$$_CreateGroupCopyWithImpl<_$_CreateGroup>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SimpleGroup simpleGroup) createGroup,
    required TResult Function(DLSUser user) createPrivate,
    required TResult Function(SimpleGroup newSimpleGroup) updateUsers,
    required TResult Function(String? chatId, List<String> newUsersIds)
        addUsers,
    required TResult Function(SimpleGroup newSimpleGroup) updateName,
    required TResult Function(String chatId, List<String> usersIds) kickUsers,
    required TResult Function(String chatId) leave,
    required TResult Function(SimpleGroup adminAndIdOnly) setAdmin,
    required TResult Function(SimpleGroup adminAndIdOnly) removeAdmin,
    required TResult Function(String chatId) delete,
    required TResult Function(SimpleGroup adminAndIdOnly) ownerLeave,
  }) {
    return createGroup(simpleGroup);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SimpleGroup simpleGroup)? createGroup,
    TResult? Function(DLSUser user)? createPrivate,
    TResult? Function(SimpleGroup newSimpleGroup)? updateUsers,
    TResult? Function(String? chatId, List<String> newUsersIds)? addUsers,
    TResult? Function(SimpleGroup newSimpleGroup)? updateName,
    TResult? Function(String chatId, List<String> usersIds)? kickUsers,
    TResult? Function(String chatId)? leave,
    TResult? Function(SimpleGroup adminAndIdOnly)? setAdmin,
    TResult? Function(SimpleGroup adminAndIdOnly)? removeAdmin,
    TResult? Function(String chatId)? delete,
    TResult? Function(SimpleGroup adminAndIdOnly)? ownerLeave,
  }) {
    return createGroup?.call(simpleGroup);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SimpleGroup simpleGroup)? createGroup,
    TResult Function(DLSUser user)? createPrivate,
    TResult Function(SimpleGroup newSimpleGroup)? updateUsers,
    TResult Function(String? chatId, List<String> newUsersIds)? addUsers,
    TResult Function(SimpleGroup newSimpleGroup)? updateName,
    TResult Function(String chatId, List<String> usersIds)? kickUsers,
    TResult Function(String chatId)? leave,
    TResult Function(SimpleGroup adminAndIdOnly)? setAdmin,
    TResult Function(SimpleGroup adminAndIdOnly)? removeAdmin,
    TResult Function(String chatId)? delete,
    TResult Function(SimpleGroup adminAndIdOnly)? ownerLeave,
    required TResult orElse(),
  }) {
    if (createGroup != null) {
      return createGroup(simpleGroup);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateGroup value) createGroup,
    required TResult Function(_CreatePrivate value) createPrivate,
    required TResult Function(_UpdateUsers value) updateUsers,
    required TResult Function(_AddUsers value) addUsers,
    required TResult Function(_UpdateName value) updateName,
    required TResult Function(_KickUsers value) kickUsers,
    required TResult Function(_Leave value) leave,
    required TResult Function(_SetAdmin value) setAdmin,
    required TResult Function(_RemoveAdmin value) removeAdmin,
    required TResult Function(_Delete value) delete,
    required TResult Function(_OwnerLeave value) ownerLeave,
  }) {
    return createGroup(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateGroup value)? createGroup,
    TResult? Function(_CreatePrivate value)? createPrivate,
    TResult? Function(_UpdateUsers value)? updateUsers,
    TResult? Function(_AddUsers value)? addUsers,
    TResult? Function(_UpdateName value)? updateName,
    TResult? Function(_KickUsers value)? kickUsers,
    TResult? Function(_Leave value)? leave,
    TResult? Function(_SetAdmin value)? setAdmin,
    TResult? Function(_RemoveAdmin value)? removeAdmin,
    TResult? Function(_Delete value)? delete,
    TResult? Function(_OwnerLeave value)? ownerLeave,
  }) {
    return createGroup?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateGroup value)? createGroup,
    TResult Function(_CreatePrivate value)? createPrivate,
    TResult Function(_UpdateUsers value)? updateUsers,
    TResult Function(_AddUsers value)? addUsers,
    TResult Function(_UpdateName value)? updateName,
    TResult Function(_KickUsers value)? kickUsers,
    TResult Function(_Leave value)? leave,
    TResult Function(_SetAdmin value)? setAdmin,
    TResult Function(_RemoveAdmin value)? removeAdmin,
    TResult Function(_Delete value)? delete,
    TResult Function(_OwnerLeave value)? ownerLeave,
    required TResult orElse(),
  }) {
    if (createGroup != null) {
      return createGroup(this);
    }
    return orElse();
  }
}

abstract class _CreateGroup implements ChatManagerEvent {
  const factory _CreateGroup(final SimpleGroup simpleGroup) = _$_CreateGroup;

  SimpleGroup get simpleGroup;
  @JsonKey(ignore: true)
  _$$_CreateGroupCopyWith<_$_CreateGroup> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CreatePrivateCopyWith<$Res> {
  factory _$$_CreatePrivateCopyWith(
          _$_CreatePrivate value, $Res Function(_$_CreatePrivate) then) =
      __$$_CreatePrivateCopyWithImpl<$Res>;
  @useResult
  $Res call({DLSUser user});

  $DLSUserCopyWith<$Res> get user;
}

/// @nodoc
class __$$_CreatePrivateCopyWithImpl<$Res>
    extends _$ChatManagerEventCopyWithImpl<$Res, _$_CreatePrivate>
    implements _$$_CreatePrivateCopyWith<$Res> {
  __$$_CreatePrivateCopyWithImpl(
      _$_CreatePrivate _value, $Res Function(_$_CreatePrivate) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$_CreatePrivate(
      null == user
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

class _$_CreatePrivate implements _CreatePrivate {
  const _$_CreatePrivate(this.user);

  @override
  final DLSUser user;

  @override
  String toString() {
    return 'ChatManagerEvent.createPrivate(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreatePrivate &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreatePrivateCopyWith<_$_CreatePrivate> get copyWith =>
      __$$_CreatePrivateCopyWithImpl<_$_CreatePrivate>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SimpleGroup simpleGroup) createGroup,
    required TResult Function(DLSUser user) createPrivate,
    required TResult Function(SimpleGroup newSimpleGroup) updateUsers,
    required TResult Function(String? chatId, List<String> newUsersIds)
        addUsers,
    required TResult Function(SimpleGroup newSimpleGroup) updateName,
    required TResult Function(String chatId, List<String> usersIds) kickUsers,
    required TResult Function(String chatId) leave,
    required TResult Function(SimpleGroup adminAndIdOnly) setAdmin,
    required TResult Function(SimpleGroup adminAndIdOnly) removeAdmin,
    required TResult Function(String chatId) delete,
    required TResult Function(SimpleGroup adminAndIdOnly) ownerLeave,
  }) {
    return createPrivate(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SimpleGroup simpleGroup)? createGroup,
    TResult? Function(DLSUser user)? createPrivate,
    TResult? Function(SimpleGroup newSimpleGroup)? updateUsers,
    TResult? Function(String? chatId, List<String> newUsersIds)? addUsers,
    TResult? Function(SimpleGroup newSimpleGroup)? updateName,
    TResult? Function(String chatId, List<String> usersIds)? kickUsers,
    TResult? Function(String chatId)? leave,
    TResult? Function(SimpleGroup adminAndIdOnly)? setAdmin,
    TResult? Function(SimpleGroup adminAndIdOnly)? removeAdmin,
    TResult? Function(String chatId)? delete,
    TResult? Function(SimpleGroup adminAndIdOnly)? ownerLeave,
  }) {
    return createPrivate?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SimpleGroup simpleGroup)? createGroup,
    TResult Function(DLSUser user)? createPrivate,
    TResult Function(SimpleGroup newSimpleGroup)? updateUsers,
    TResult Function(String? chatId, List<String> newUsersIds)? addUsers,
    TResult Function(SimpleGroup newSimpleGroup)? updateName,
    TResult Function(String chatId, List<String> usersIds)? kickUsers,
    TResult Function(String chatId)? leave,
    TResult Function(SimpleGroup adminAndIdOnly)? setAdmin,
    TResult Function(SimpleGroup adminAndIdOnly)? removeAdmin,
    TResult Function(String chatId)? delete,
    TResult Function(SimpleGroup adminAndIdOnly)? ownerLeave,
    required TResult orElse(),
  }) {
    if (createPrivate != null) {
      return createPrivate(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateGroup value) createGroup,
    required TResult Function(_CreatePrivate value) createPrivate,
    required TResult Function(_UpdateUsers value) updateUsers,
    required TResult Function(_AddUsers value) addUsers,
    required TResult Function(_UpdateName value) updateName,
    required TResult Function(_KickUsers value) kickUsers,
    required TResult Function(_Leave value) leave,
    required TResult Function(_SetAdmin value) setAdmin,
    required TResult Function(_RemoveAdmin value) removeAdmin,
    required TResult Function(_Delete value) delete,
    required TResult Function(_OwnerLeave value) ownerLeave,
  }) {
    return createPrivate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateGroup value)? createGroup,
    TResult? Function(_CreatePrivate value)? createPrivate,
    TResult? Function(_UpdateUsers value)? updateUsers,
    TResult? Function(_AddUsers value)? addUsers,
    TResult? Function(_UpdateName value)? updateName,
    TResult? Function(_KickUsers value)? kickUsers,
    TResult? Function(_Leave value)? leave,
    TResult? Function(_SetAdmin value)? setAdmin,
    TResult? Function(_RemoveAdmin value)? removeAdmin,
    TResult? Function(_Delete value)? delete,
    TResult? Function(_OwnerLeave value)? ownerLeave,
  }) {
    return createPrivate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateGroup value)? createGroup,
    TResult Function(_CreatePrivate value)? createPrivate,
    TResult Function(_UpdateUsers value)? updateUsers,
    TResult Function(_AddUsers value)? addUsers,
    TResult Function(_UpdateName value)? updateName,
    TResult Function(_KickUsers value)? kickUsers,
    TResult Function(_Leave value)? leave,
    TResult Function(_SetAdmin value)? setAdmin,
    TResult Function(_RemoveAdmin value)? removeAdmin,
    TResult Function(_Delete value)? delete,
    TResult Function(_OwnerLeave value)? ownerLeave,
    required TResult orElse(),
  }) {
    if (createPrivate != null) {
      return createPrivate(this);
    }
    return orElse();
  }
}

abstract class _CreatePrivate implements ChatManagerEvent {
  const factory _CreatePrivate(final DLSUser user) = _$_CreatePrivate;

  DLSUser get user;
  @JsonKey(ignore: true)
  _$$_CreatePrivateCopyWith<_$_CreatePrivate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdateUsersCopyWith<$Res> {
  factory _$$_UpdateUsersCopyWith(
          _$_UpdateUsers value, $Res Function(_$_UpdateUsers) then) =
      __$$_UpdateUsersCopyWithImpl<$Res>;
  @useResult
  $Res call({SimpleGroup newSimpleGroup});

  $SimpleGroupCopyWith<$Res> get newSimpleGroup;
}

/// @nodoc
class __$$_UpdateUsersCopyWithImpl<$Res>
    extends _$ChatManagerEventCopyWithImpl<$Res, _$_UpdateUsers>
    implements _$$_UpdateUsersCopyWith<$Res> {
  __$$_UpdateUsersCopyWithImpl(
      _$_UpdateUsers _value, $Res Function(_$_UpdateUsers) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newSimpleGroup = null,
  }) {
    return _then(_$_UpdateUsers(
      null == newSimpleGroup
          ? _value.newSimpleGroup
          : newSimpleGroup // ignore: cast_nullable_to_non_nullable
              as SimpleGroup,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $SimpleGroupCopyWith<$Res> get newSimpleGroup {
    return $SimpleGroupCopyWith<$Res>(_value.newSimpleGroup, (value) {
      return _then(_value.copyWith(newSimpleGroup: value));
    });
  }
}

/// @nodoc

class _$_UpdateUsers implements _UpdateUsers {
  const _$_UpdateUsers(this.newSimpleGroup);

  @override
  final SimpleGroup newSimpleGroup;

  @override
  String toString() {
    return 'ChatManagerEvent.updateUsers(newSimpleGroup: $newSimpleGroup)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateUsers &&
            (identical(other.newSimpleGroup, newSimpleGroup) ||
                other.newSimpleGroup == newSimpleGroup));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newSimpleGroup);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateUsersCopyWith<_$_UpdateUsers> get copyWith =>
      __$$_UpdateUsersCopyWithImpl<_$_UpdateUsers>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SimpleGroup simpleGroup) createGroup,
    required TResult Function(DLSUser user) createPrivate,
    required TResult Function(SimpleGroup newSimpleGroup) updateUsers,
    required TResult Function(String? chatId, List<String> newUsersIds)
        addUsers,
    required TResult Function(SimpleGroup newSimpleGroup) updateName,
    required TResult Function(String chatId, List<String> usersIds) kickUsers,
    required TResult Function(String chatId) leave,
    required TResult Function(SimpleGroup adminAndIdOnly) setAdmin,
    required TResult Function(SimpleGroup adminAndIdOnly) removeAdmin,
    required TResult Function(String chatId) delete,
    required TResult Function(SimpleGroup adminAndIdOnly) ownerLeave,
  }) {
    return updateUsers(newSimpleGroup);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SimpleGroup simpleGroup)? createGroup,
    TResult? Function(DLSUser user)? createPrivate,
    TResult? Function(SimpleGroup newSimpleGroup)? updateUsers,
    TResult? Function(String? chatId, List<String> newUsersIds)? addUsers,
    TResult? Function(SimpleGroup newSimpleGroup)? updateName,
    TResult? Function(String chatId, List<String> usersIds)? kickUsers,
    TResult? Function(String chatId)? leave,
    TResult? Function(SimpleGroup adminAndIdOnly)? setAdmin,
    TResult? Function(SimpleGroup adminAndIdOnly)? removeAdmin,
    TResult? Function(String chatId)? delete,
    TResult? Function(SimpleGroup adminAndIdOnly)? ownerLeave,
  }) {
    return updateUsers?.call(newSimpleGroup);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SimpleGroup simpleGroup)? createGroup,
    TResult Function(DLSUser user)? createPrivate,
    TResult Function(SimpleGroup newSimpleGroup)? updateUsers,
    TResult Function(String? chatId, List<String> newUsersIds)? addUsers,
    TResult Function(SimpleGroup newSimpleGroup)? updateName,
    TResult Function(String chatId, List<String> usersIds)? kickUsers,
    TResult Function(String chatId)? leave,
    TResult Function(SimpleGroup adminAndIdOnly)? setAdmin,
    TResult Function(SimpleGroup adminAndIdOnly)? removeAdmin,
    TResult Function(String chatId)? delete,
    TResult Function(SimpleGroup adminAndIdOnly)? ownerLeave,
    required TResult orElse(),
  }) {
    if (updateUsers != null) {
      return updateUsers(newSimpleGroup);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateGroup value) createGroup,
    required TResult Function(_CreatePrivate value) createPrivate,
    required TResult Function(_UpdateUsers value) updateUsers,
    required TResult Function(_AddUsers value) addUsers,
    required TResult Function(_UpdateName value) updateName,
    required TResult Function(_KickUsers value) kickUsers,
    required TResult Function(_Leave value) leave,
    required TResult Function(_SetAdmin value) setAdmin,
    required TResult Function(_RemoveAdmin value) removeAdmin,
    required TResult Function(_Delete value) delete,
    required TResult Function(_OwnerLeave value) ownerLeave,
  }) {
    return updateUsers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateGroup value)? createGroup,
    TResult? Function(_CreatePrivate value)? createPrivate,
    TResult? Function(_UpdateUsers value)? updateUsers,
    TResult? Function(_AddUsers value)? addUsers,
    TResult? Function(_UpdateName value)? updateName,
    TResult? Function(_KickUsers value)? kickUsers,
    TResult? Function(_Leave value)? leave,
    TResult? Function(_SetAdmin value)? setAdmin,
    TResult? Function(_RemoveAdmin value)? removeAdmin,
    TResult? Function(_Delete value)? delete,
    TResult? Function(_OwnerLeave value)? ownerLeave,
  }) {
    return updateUsers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateGroup value)? createGroup,
    TResult Function(_CreatePrivate value)? createPrivate,
    TResult Function(_UpdateUsers value)? updateUsers,
    TResult Function(_AddUsers value)? addUsers,
    TResult Function(_UpdateName value)? updateName,
    TResult Function(_KickUsers value)? kickUsers,
    TResult Function(_Leave value)? leave,
    TResult Function(_SetAdmin value)? setAdmin,
    TResult Function(_RemoveAdmin value)? removeAdmin,
    TResult Function(_Delete value)? delete,
    TResult Function(_OwnerLeave value)? ownerLeave,
    required TResult orElse(),
  }) {
    if (updateUsers != null) {
      return updateUsers(this);
    }
    return orElse();
  }
}

abstract class _UpdateUsers implements ChatManagerEvent {
  const factory _UpdateUsers(final SimpleGroup newSimpleGroup) = _$_UpdateUsers;

  SimpleGroup get newSimpleGroup;
  @JsonKey(ignore: true)
  _$$_UpdateUsersCopyWith<_$_UpdateUsers> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AddUsersCopyWith<$Res> {
  factory _$$_AddUsersCopyWith(
          _$_AddUsers value, $Res Function(_$_AddUsers) then) =
      __$$_AddUsersCopyWithImpl<$Res>;
  @useResult
  $Res call({String? chatId, List<String> newUsersIds});
}

/// @nodoc
class __$$_AddUsersCopyWithImpl<$Res>
    extends _$ChatManagerEventCopyWithImpl<$Res, _$_AddUsers>
    implements _$$_AddUsersCopyWith<$Res> {
  __$$_AddUsersCopyWithImpl(
      _$_AddUsers _value, $Res Function(_$_AddUsers) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatId = freezed,
    Object? newUsersIds = null,
  }) {
    return _then(_$_AddUsers(
      freezed == chatId
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as String?,
      null == newUsersIds
          ? _value._newUsersIds
          : newUsersIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_AddUsers implements _AddUsers {
  const _$_AddUsers(this.chatId, final List<String> newUsersIds)
      : _newUsersIds = newUsersIds;

  @override
  final String? chatId;
  final List<String> _newUsersIds;
  @override
  List<String> get newUsersIds {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_newUsersIds);
  }

  @override
  String toString() {
    return 'ChatManagerEvent.addUsers(chatId: $chatId, newUsersIds: $newUsersIds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddUsers &&
            (identical(other.chatId, chatId) || other.chatId == chatId) &&
            const DeepCollectionEquality()
                .equals(other._newUsersIds, _newUsersIds));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, chatId, const DeepCollectionEquality().hash(_newUsersIds));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddUsersCopyWith<_$_AddUsers> get copyWith =>
      __$$_AddUsersCopyWithImpl<_$_AddUsers>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SimpleGroup simpleGroup) createGroup,
    required TResult Function(DLSUser user) createPrivate,
    required TResult Function(SimpleGroup newSimpleGroup) updateUsers,
    required TResult Function(String? chatId, List<String> newUsersIds)
        addUsers,
    required TResult Function(SimpleGroup newSimpleGroup) updateName,
    required TResult Function(String chatId, List<String> usersIds) kickUsers,
    required TResult Function(String chatId) leave,
    required TResult Function(SimpleGroup adminAndIdOnly) setAdmin,
    required TResult Function(SimpleGroup adminAndIdOnly) removeAdmin,
    required TResult Function(String chatId) delete,
    required TResult Function(SimpleGroup adminAndIdOnly) ownerLeave,
  }) {
    return addUsers(chatId, newUsersIds);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SimpleGroup simpleGroup)? createGroup,
    TResult? Function(DLSUser user)? createPrivate,
    TResult? Function(SimpleGroup newSimpleGroup)? updateUsers,
    TResult? Function(String? chatId, List<String> newUsersIds)? addUsers,
    TResult? Function(SimpleGroup newSimpleGroup)? updateName,
    TResult? Function(String chatId, List<String> usersIds)? kickUsers,
    TResult? Function(String chatId)? leave,
    TResult? Function(SimpleGroup adminAndIdOnly)? setAdmin,
    TResult? Function(SimpleGroup adminAndIdOnly)? removeAdmin,
    TResult? Function(String chatId)? delete,
    TResult? Function(SimpleGroup adminAndIdOnly)? ownerLeave,
  }) {
    return addUsers?.call(chatId, newUsersIds);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SimpleGroup simpleGroup)? createGroup,
    TResult Function(DLSUser user)? createPrivate,
    TResult Function(SimpleGroup newSimpleGroup)? updateUsers,
    TResult Function(String? chatId, List<String> newUsersIds)? addUsers,
    TResult Function(SimpleGroup newSimpleGroup)? updateName,
    TResult Function(String chatId, List<String> usersIds)? kickUsers,
    TResult Function(String chatId)? leave,
    TResult Function(SimpleGroup adminAndIdOnly)? setAdmin,
    TResult Function(SimpleGroup adminAndIdOnly)? removeAdmin,
    TResult Function(String chatId)? delete,
    TResult Function(SimpleGroup adminAndIdOnly)? ownerLeave,
    required TResult orElse(),
  }) {
    if (addUsers != null) {
      return addUsers(chatId, newUsersIds);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateGroup value) createGroup,
    required TResult Function(_CreatePrivate value) createPrivate,
    required TResult Function(_UpdateUsers value) updateUsers,
    required TResult Function(_AddUsers value) addUsers,
    required TResult Function(_UpdateName value) updateName,
    required TResult Function(_KickUsers value) kickUsers,
    required TResult Function(_Leave value) leave,
    required TResult Function(_SetAdmin value) setAdmin,
    required TResult Function(_RemoveAdmin value) removeAdmin,
    required TResult Function(_Delete value) delete,
    required TResult Function(_OwnerLeave value) ownerLeave,
  }) {
    return addUsers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateGroup value)? createGroup,
    TResult? Function(_CreatePrivate value)? createPrivate,
    TResult? Function(_UpdateUsers value)? updateUsers,
    TResult? Function(_AddUsers value)? addUsers,
    TResult? Function(_UpdateName value)? updateName,
    TResult? Function(_KickUsers value)? kickUsers,
    TResult? Function(_Leave value)? leave,
    TResult? Function(_SetAdmin value)? setAdmin,
    TResult? Function(_RemoveAdmin value)? removeAdmin,
    TResult? Function(_Delete value)? delete,
    TResult? Function(_OwnerLeave value)? ownerLeave,
  }) {
    return addUsers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateGroup value)? createGroup,
    TResult Function(_CreatePrivate value)? createPrivate,
    TResult Function(_UpdateUsers value)? updateUsers,
    TResult Function(_AddUsers value)? addUsers,
    TResult Function(_UpdateName value)? updateName,
    TResult Function(_KickUsers value)? kickUsers,
    TResult Function(_Leave value)? leave,
    TResult Function(_SetAdmin value)? setAdmin,
    TResult Function(_RemoveAdmin value)? removeAdmin,
    TResult Function(_Delete value)? delete,
    TResult Function(_OwnerLeave value)? ownerLeave,
    required TResult orElse(),
  }) {
    if (addUsers != null) {
      return addUsers(this);
    }
    return orElse();
  }
}

abstract class _AddUsers implements ChatManagerEvent {
  const factory _AddUsers(
      final String? chatId, final List<String> newUsersIds) = _$_AddUsers;

  String? get chatId;
  List<String> get newUsersIds;
  @JsonKey(ignore: true)
  _$$_AddUsersCopyWith<_$_AddUsers> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdateNameCopyWith<$Res> {
  factory _$$_UpdateNameCopyWith(
          _$_UpdateName value, $Res Function(_$_UpdateName) then) =
      __$$_UpdateNameCopyWithImpl<$Res>;
  @useResult
  $Res call({SimpleGroup newSimpleGroup});

  $SimpleGroupCopyWith<$Res> get newSimpleGroup;
}

/// @nodoc
class __$$_UpdateNameCopyWithImpl<$Res>
    extends _$ChatManagerEventCopyWithImpl<$Res, _$_UpdateName>
    implements _$$_UpdateNameCopyWith<$Res> {
  __$$_UpdateNameCopyWithImpl(
      _$_UpdateName _value, $Res Function(_$_UpdateName) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newSimpleGroup = null,
  }) {
    return _then(_$_UpdateName(
      null == newSimpleGroup
          ? _value.newSimpleGroup
          : newSimpleGroup // ignore: cast_nullable_to_non_nullable
              as SimpleGroup,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $SimpleGroupCopyWith<$Res> get newSimpleGroup {
    return $SimpleGroupCopyWith<$Res>(_value.newSimpleGroup, (value) {
      return _then(_value.copyWith(newSimpleGroup: value));
    });
  }
}

/// @nodoc

class _$_UpdateName implements _UpdateName {
  const _$_UpdateName(this.newSimpleGroup);

  @override
  final SimpleGroup newSimpleGroup;

  @override
  String toString() {
    return 'ChatManagerEvent.updateName(newSimpleGroup: $newSimpleGroup)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateName &&
            (identical(other.newSimpleGroup, newSimpleGroup) ||
                other.newSimpleGroup == newSimpleGroup));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newSimpleGroup);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateNameCopyWith<_$_UpdateName> get copyWith =>
      __$$_UpdateNameCopyWithImpl<_$_UpdateName>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SimpleGroup simpleGroup) createGroup,
    required TResult Function(DLSUser user) createPrivate,
    required TResult Function(SimpleGroup newSimpleGroup) updateUsers,
    required TResult Function(String? chatId, List<String> newUsersIds)
        addUsers,
    required TResult Function(SimpleGroup newSimpleGroup) updateName,
    required TResult Function(String chatId, List<String> usersIds) kickUsers,
    required TResult Function(String chatId) leave,
    required TResult Function(SimpleGroup adminAndIdOnly) setAdmin,
    required TResult Function(SimpleGroup adminAndIdOnly) removeAdmin,
    required TResult Function(String chatId) delete,
    required TResult Function(SimpleGroup adminAndIdOnly) ownerLeave,
  }) {
    return updateName(newSimpleGroup);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SimpleGroup simpleGroup)? createGroup,
    TResult? Function(DLSUser user)? createPrivate,
    TResult? Function(SimpleGroup newSimpleGroup)? updateUsers,
    TResult? Function(String? chatId, List<String> newUsersIds)? addUsers,
    TResult? Function(SimpleGroup newSimpleGroup)? updateName,
    TResult? Function(String chatId, List<String> usersIds)? kickUsers,
    TResult? Function(String chatId)? leave,
    TResult? Function(SimpleGroup adminAndIdOnly)? setAdmin,
    TResult? Function(SimpleGroup adminAndIdOnly)? removeAdmin,
    TResult? Function(String chatId)? delete,
    TResult? Function(SimpleGroup adminAndIdOnly)? ownerLeave,
  }) {
    return updateName?.call(newSimpleGroup);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SimpleGroup simpleGroup)? createGroup,
    TResult Function(DLSUser user)? createPrivate,
    TResult Function(SimpleGroup newSimpleGroup)? updateUsers,
    TResult Function(String? chatId, List<String> newUsersIds)? addUsers,
    TResult Function(SimpleGroup newSimpleGroup)? updateName,
    TResult Function(String chatId, List<String> usersIds)? kickUsers,
    TResult Function(String chatId)? leave,
    TResult Function(SimpleGroup adminAndIdOnly)? setAdmin,
    TResult Function(SimpleGroup adminAndIdOnly)? removeAdmin,
    TResult Function(String chatId)? delete,
    TResult Function(SimpleGroup adminAndIdOnly)? ownerLeave,
    required TResult orElse(),
  }) {
    if (updateName != null) {
      return updateName(newSimpleGroup);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateGroup value) createGroup,
    required TResult Function(_CreatePrivate value) createPrivate,
    required TResult Function(_UpdateUsers value) updateUsers,
    required TResult Function(_AddUsers value) addUsers,
    required TResult Function(_UpdateName value) updateName,
    required TResult Function(_KickUsers value) kickUsers,
    required TResult Function(_Leave value) leave,
    required TResult Function(_SetAdmin value) setAdmin,
    required TResult Function(_RemoveAdmin value) removeAdmin,
    required TResult Function(_Delete value) delete,
    required TResult Function(_OwnerLeave value) ownerLeave,
  }) {
    return updateName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateGroup value)? createGroup,
    TResult? Function(_CreatePrivate value)? createPrivate,
    TResult? Function(_UpdateUsers value)? updateUsers,
    TResult? Function(_AddUsers value)? addUsers,
    TResult? Function(_UpdateName value)? updateName,
    TResult? Function(_KickUsers value)? kickUsers,
    TResult? Function(_Leave value)? leave,
    TResult? Function(_SetAdmin value)? setAdmin,
    TResult? Function(_RemoveAdmin value)? removeAdmin,
    TResult? Function(_Delete value)? delete,
    TResult? Function(_OwnerLeave value)? ownerLeave,
  }) {
    return updateName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateGroup value)? createGroup,
    TResult Function(_CreatePrivate value)? createPrivate,
    TResult Function(_UpdateUsers value)? updateUsers,
    TResult Function(_AddUsers value)? addUsers,
    TResult Function(_UpdateName value)? updateName,
    TResult Function(_KickUsers value)? kickUsers,
    TResult Function(_Leave value)? leave,
    TResult Function(_SetAdmin value)? setAdmin,
    TResult Function(_RemoveAdmin value)? removeAdmin,
    TResult Function(_Delete value)? delete,
    TResult Function(_OwnerLeave value)? ownerLeave,
    required TResult orElse(),
  }) {
    if (updateName != null) {
      return updateName(this);
    }
    return orElse();
  }
}

abstract class _UpdateName implements ChatManagerEvent {
  const factory _UpdateName(final SimpleGroup newSimpleGroup) = _$_UpdateName;

  SimpleGroup get newSimpleGroup;
  @JsonKey(ignore: true)
  _$$_UpdateNameCopyWith<_$_UpdateName> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_KickUsersCopyWith<$Res> {
  factory _$$_KickUsersCopyWith(
          _$_KickUsers value, $Res Function(_$_KickUsers) then) =
      __$$_KickUsersCopyWithImpl<$Res>;
  @useResult
  $Res call({String chatId, List<String> usersIds});
}

/// @nodoc
class __$$_KickUsersCopyWithImpl<$Res>
    extends _$ChatManagerEventCopyWithImpl<$Res, _$_KickUsers>
    implements _$$_KickUsersCopyWith<$Res> {
  __$$_KickUsersCopyWithImpl(
      _$_KickUsers _value, $Res Function(_$_KickUsers) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatId = null,
    Object? usersIds = null,
  }) {
    return _then(_$_KickUsers(
      null == chatId
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as String,
      null == usersIds
          ? _value._usersIds
          : usersIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_KickUsers implements _KickUsers {
  const _$_KickUsers(this.chatId, final List<String> usersIds)
      : _usersIds = usersIds;

  @override
  final String chatId;
  final List<String> _usersIds;
  @override
  List<String> get usersIds {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_usersIds);
  }

  @override
  String toString() {
    return 'ChatManagerEvent.kickUsers(chatId: $chatId, usersIds: $usersIds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_KickUsers &&
            (identical(other.chatId, chatId) || other.chatId == chatId) &&
            const DeepCollectionEquality().equals(other._usersIds, _usersIds));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, chatId, const DeepCollectionEquality().hash(_usersIds));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_KickUsersCopyWith<_$_KickUsers> get copyWith =>
      __$$_KickUsersCopyWithImpl<_$_KickUsers>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SimpleGroup simpleGroup) createGroup,
    required TResult Function(DLSUser user) createPrivate,
    required TResult Function(SimpleGroup newSimpleGroup) updateUsers,
    required TResult Function(String? chatId, List<String> newUsersIds)
        addUsers,
    required TResult Function(SimpleGroup newSimpleGroup) updateName,
    required TResult Function(String chatId, List<String> usersIds) kickUsers,
    required TResult Function(String chatId) leave,
    required TResult Function(SimpleGroup adminAndIdOnly) setAdmin,
    required TResult Function(SimpleGroup adminAndIdOnly) removeAdmin,
    required TResult Function(String chatId) delete,
    required TResult Function(SimpleGroup adminAndIdOnly) ownerLeave,
  }) {
    return kickUsers(chatId, usersIds);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SimpleGroup simpleGroup)? createGroup,
    TResult? Function(DLSUser user)? createPrivate,
    TResult? Function(SimpleGroup newSimpleGroup)? updateUsers,
    TResult? Function(String? chatId, List<String> newUsersIds)? addUsers,
    TResult? Function(SimpleGroup newSimpleGroup)? updateName,
    TResult? Function(String chatId, List<String> usersIds)? kickUsers,
    TResult? Function(String chatId)? leave,
    TResult? Function(SimpleGroup adminAndIdOnly)? setAdmin,
    TResult? Function(SimpleGroup adminAndIdOnly)? removeAdmin,
    TResult? Function(String chatId)? delete,
    TResult? Function(SimpleGroup adminAndIdOnly)? ownerLeave,
  }) {
    return kickUsers?.call(chatId, usersIds);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SimpleGroup simpleGroup)? createGroup,
    TResult Function(DLSUser user)? createPrivate,
    TResult Function(SimpleGroup newSimpleGroup)? updateUsers,
    TResult Function(String? chatId, List<String> newUsersIds)? addUsers,
    TResult Function(SimpleGroup newSimpleGroup)? updateName,
    TResult Function(String chatId, List<String> usersIds)? kickUsers,
    TResult Function(String chatId)? leave,
    TResult Function(SimpleGroup adminAndIdOnly)? setAdmin,
    TResult Function(SimpleGroup adminAndIdOnly)? removeAdmin,
    TResult Function(String chatId)? delete,
    TResult Function(SimpleGroup adminAndIdOnly)? ownerLeave,
    required TResult orElse(),
  }) {
    if (kickUsers != null) {
      return kickUsers(chatId, usersIds);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateGroup value) createGroup,
    required TResult Function(_CreatePrivate value) createPrivate,
    required TResult Function(_UpdateUsers value) updateUsers,
    required TResult Function(_AddUsers value) addUsers,
    required TResult Function(_UpdateName value) updateName,
    required TResult Function(_KickUsers value) kickUsers,
    required TResult Function(_Leave value) leave,
    required TResult Function(_SetAdmin value) setAdmin,
    required TResult Function(_RemoveAdmin value) removeAdmin,
    required TResult Function(_Delete value) delete,
    required TResult Function(_OwnerLeave value) ownerLeave,
  }) {
    return kickUsers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateGroup value)? createGroup,
    TResult? Function(_CreatePrivate value)? createPrivate,
    TResult? Function(_UpdateUsers value)? updateUsers,
    TResult? Function(_AddUsers value)? addUsers,
    TResult? Function(_UpdateName value)? updateName,
    TResult? Function(_KickUsers value)? kickUsers,
    TResult? Function(_Leave value)? leave,
    TResult? Function(_SetAdmin value)? setAdmin,
    TResult? Function(_RemoveAdmin value)? removeAdmin,
    TResult? Function(_Delete value)? delete,
    TResult? Function(_OwnerLeave value)? ownerLeave,
  }) {
    return kickUsers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateGroup value)? createGroup,
    TResult Function(_CreatePrivate value)? createPrivate,
    TResult Function(_UpdateUsers value)? updateUsers,
    TResult Function(_AddUsers value)? addUsers,
    TResult Function(_UpdateName value)? updateName,
    TResult Function(_KickUsers value)? kickUsers,
    TResult Function(_Leave value)? leave,
    TResult Function(_SetAdmin value)? setAdmin,
    TResult Function(_RemoveAdmin value)? removeAdmin,
    TResult Function(_Delete value)? delete,
    TResult Function(_OwnerLeave value)? ownerLeave,
    required TResult orElse(),
  }) {
    if (kickUsers != null) {
      return kickUsers(this);
    }
    return orElse();
  }
}

abstract class _KickUsers implements ChatManagerEvent {
  const factory _KickUsers(final String chatId, final List<String> usersIds) =
      _$_KickUsers;

  String get chatId;
  List<String> get usersIds;
  @JsonKey(ignore: true)
  _$$_KickUsersCopyWith<_$_KickUsers> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LeaveCopyWith<$Res> {
  factory _$$_LeaveCopyWith(_$_Leave value, $Res Function(_$_Leave) then) =
      __$$_LeaveCopyWithImpl<$Res>;
  @useResult
  $Res call({String chatId});
}

/// @nodoc
class __$$_LeaveCopyWithImpl<$Res>
    extends _$ChatManagerEventCopyWithImpl<$Res, _$_Leave>
    implements _$$_LeaveCopyWith<$Res> {
  __$$_LeaveCopyWithImpl(_$_Leave _value, $Res Function(_$_Leave) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatId = null,
  }) {
    return _then(_$_Leave(
      null == chatId
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Leave implements _Leave {
  const _$_Leave(this.chatId);

  @override
  final String chatId;

  @override
  String toString() {
    return 'ChatManagerEvent.leave(chatId: $chatId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Leave &&
            (identical(other.chatId, chatId) || other.chatId == chatId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, chatId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LeaveCopyWith<_$_Leave> get copyWith =>
      __$$_LeaveCopyWithImpl<_$_Leave>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SimpleGroup simpleGroup) createGroup,
    required TResult Function(DLSUser user) createPrivate,
    required TResult Function(SimpleGroup newSimpleGroup) updateUsers,
    required TResult Function(String? chatId, List<String> newUsersIds)
        addUsers,
    required TResult Function(SimpleGroup newSimpleGroup) updateName,
    required TResult Function(String chatId, List<String> usersIds) kickUsers,
    required TResult Function(String chatId) leave,
    required TResult Function(SimpleGroup adminAndIdOnly) setAdmin,
    required TResult Function(SimpleGroup adminAndIdOnly) removeAdmin,
    required TResult Function(String chatId) delete,
    required TResult Function(SimpleGroup adminAndIdOnly) ownerLeave,
  }) {
    return leave(chatId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SimpleGroup simpleGroup)? createGroup,
    TResult? Function(DLSUser user)? createPrivate,
    TResult? Function(SimpleGroup newSimpleGroup)? updateUsers,
    TResult? Function(String? chatId, List<String> newUsersIds)? addUsers,
    TResult? Function(SimpleGroup newSimpleGroup)? updateName,
    TResult? Function(String chatId, List<String> usersIds)? kickUsers,
    TResult? Function(String chatId)? leave,
    TResult? Function(SimpleGroup adminAndIdOnly)? setAdmin,
    TResult? Function(SimpleGroup adminAndIdOnly)? removeAdmin,
    TResult? Function(String chatId)? delete,
    TResult? Function(SimpleGroup adminAndIdOnly)? ownerLeave,
  }) {
    return leave?.call(chatId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SimpleGroup simpleGroup)? createGroup,
    TResult Function(DLSUser user)? createPrivate,
    TResult Function(SimpleGroup newSimpleGroup)? updateUsers,
    TResult Function(String? chatId, List<String> newUsersIds)? addUsers,
    TResult Function(SimpleGroup newSimpleGroup)? updateName,
    TResult Function(String chatId, List<String> usersIds)? kickUsers,
    TResult Function(String chatId)? leave,
    TResult Function(SimpleGroup adminAndIdOnly)? setAdmin,
    TResult Function(SimpleGroup adminAndIdOnly)? removeAdmin,
    TResult Function(String chatId)? delete,
    TResult Function(SimpleGroup adminAndIdOnly)? ownerLeave,
    required TResult orElse(),
  }) {
    if (leave != null) {
      return leave(chatId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateGroup value) createGroup,
    required TResult Function(_CreatePrivate value) createPrivate,
    required TResult Function(_UpdateUsers value) updateUsers,
    required TResult Function(_AddUsers value) addUsers,
    required TResult Function(_UpdateName value) updateName,
    required TResult Function(_KickUsers value) kickUsers,
    required TResult Function(_Leave value) leave,
    required TResult Function(_SetAdmin value) setAdmin,
    required TResult Function(_RemoveAdmin value) removeAdmin,
    required TResult Function(_Delete value) delete,
    required TResult Function(_OwnerLeave value) ownerLeave,
  }) {
    return leave(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateGroup value)? createGroup,
    TResult? Function(_CreatePrivate value)? createPrivate,
    TResult? Function(_UpdateUsers value)? updateUsers,
    TResult? Function(_AddUsers value)? addUsers,
    TResult? Function(_UpdateName value)? updateName,
    TResult? Function(_KickUsers value)? kickUsers,
    TResult? Function(_Leave value)? leave,
    TResult? Function(_SetAdmin value)? setAdmin,
    TResult? Function(_RemoveAdmin value)? removeAdmin,
    TResult? Function(_Delete value)? delete,
    TResult? Function(_OwnerLeave value)? ownerLeave,
  }) {
    return leave?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateGroup value)? createGroup,
    TResult Function(_CreatePrivate value)? createPrivate,
    TResult Function(_UpdateUsers value)? updateUsers,
    TResult Function(_AddUsers value)? addUsers,
    TResult Function(_UpdateName value)? updateName,
    TResult Function(_KickUsers value)? kickUsers,
    TResult Function(_Leave value)? leave,
    TResult Function(_SetAdmin value)? setAdmin,
    TResult Function(_RemoveAdmin value)? removeAdmin,
    TResult Function(_Delete value)? delete,
    TResult Function(_OwnerLeave value)? ownerLeave,
    required TResult orElse(),
  }) {
    if (leave != null) {
      return leave(this);
    }
    return orElse();
  }
}

abstract class _Leave implements ChatManagerEvent {
  const factory _Leave(final String chatId) = _$_Leave;

  String get chatId;
  @JsonKey(ignore: true)
  _$$_LeaveCopyWith<_$_Leave> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SetAdminCopyWith<$Res> {
  factory _$$_SetAdminCopyWith(
          _$_SetAdmin value, $Res Function(_$_SetAdmin) then) =
      __$$_SetAdminCopyWithImpl<$Res>;
  @useResult
  $Res call({SimpleGroup adminAndIdOnly});

  $SimpleGroupCopyWith<$Res> get adminAndIdOnly;
}

/// @nodoc
class __$$_SetAdminCopyWithImpl<$Res>
    extends _$ChatManagerEventCopyWithImpl<$Res, _$_SetAdmin>
    implements _$$_SetAdminCopyWith<$Res> {
  __$$_SetAdminCopyWithImpl(
      _$_SetAdmin _value, $Res Function(_$_SetAdmin) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adminAndIdOnly = null,
  }) {
    return _then(_$_SetAdmin(
      null == adminAndIdOnly
          ? _value.adminAndIdOnly
          : adminAndIdOnly // ignore: cast_nullable_to_non_nullable
              as SimpleGroup,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $SimpleGroupCopyWith<$Res> get adminAndIdOnly {
    return $SimpleGroupCopyWith<$Res>(_value.adminAndIdOnly, (value) {
      return _then(_value.copyWith(adminAndIdOnly: value));
    });
  }
}

/// @nodoc

class _$_SetAdmin implements _SetAdmin {
  const _$_SetAdmin(this.adminAndIdOnly);

  @override
  final SimpleGroup adminAndIdOnly;

  @override
  String toString() {
    return 'ChatManagerEvent.setAdmin(adminAndIdOnly: $adminAndIdOnly)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SetAdmin &&
            (identical(other.adminAndIdOnly, adminAndIdOnly) ||
                other.adminAndIdOnly == adminAndIdOnly));
  }

  @override
  int get hashCode => Object.hash(runtimeType, adminAndIdOnly);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SetAdminCopyWith<_$_SetAdmin> get copyWith =>
      __$$_SetAdminCopyWithImpl<_$_SetAdmin>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SimpleGroup simpleGroup) createGroup,
    required TResult Function(DLSUser user) createPrivate,
    required TResult Function(SimpleGroup newSimpleGroup) updateUsers,
    required TResult Function(String? chatId, List<String> newUsersIds)
        addUsers,
    required TResult Function(SimpleGroup newSimpleGroup) updateName,
    required TResult Function(String chatId, List<String> usersIds) kickUsers,
    required TResult Function(String chatId) leave,
    required TResult Function(SimpleGroup adminAndIdOnly) setAdmin,
    required TResult Function(SimpleGroup adminAndIdOnly) removeAdmin,
    required TResult Function(String chatId) delete,
    required TResult Function(SimpleGroup adminAndIdOnly) ownerLeave,
  }) {
    return setAdmin(adminAndIdOnly);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SimpleGroup simpleGroup)? createGroup,
    TResult? Function(DLSUser user)? createPrivate,
    TResult? Function(SimpleGroup newSimpleGroup)? updateUsers,
    TResult? Function(String? chatId, List<String> newUsersIds)? addUsers,
    TResult? Function(SimpleGroup newSimpleGroup)? updateName,
    TResult? Function(String chatId, List<String> usersIds)? kickUsers,
    TResult? Function(String chatId)? leave,
    TResult? Function(SimpleGroup adminAndIdOnly)? setAdmin,
    TResult? Function(SimpleGroup adminAndIdOnly)? removeAdmin,
    TResult? Function(String chatId)? delete,
    TResult? Function(SimpleGroup adminAndIdOnly)? ownerLeave,
  }) {
    return setAdmin?.call(adminAndIdOnly);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SimpleGroup simpleGroup)? createGroup,
    TResult Function(DLSUser user)? createPrivate,
    TResult Function(SimpleGroup newSimpleGroup)? updateUsers,
    TResult Function(String? chatId, List<String> newUsersIds)? addUsers,
    TResult Function(SimpleGroup newSimpleGroup)? updateName,
    TResult Function(String chatId, List<String> usersIds)? kickUsers,
    TResult Function(String chatId)? leave,
    TResult Function(SimpleGroup adminAndIdOnly)? setAdmin,
    TResult Function(SimpleGroup adminAndIdOnly)? removeAdmin,
    TResult Function(String chatId)? delete,
    TResult Function(SimpleGroup adminAndIdOnly)? ownerLeave,
    required TResult orElse(),
  }) {
    if (setAdmin != null) {
      return setAdmin(adminAndIdOnly);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateGroup value) createGroup,
    required TResult Function(_CreatePrivate value) createPrivate,
    required TResult Function(_UpdateUsers value) updateUsers,
    required TResult Function(_AddUsers value) addUsers,
    required TResult Function(_UpdateName value) updateName,
    required TResult Function(_KickUsers value) kickUsers,
    required TResult Function(_Leave value) leave,
    required TResult Function(_SetAdmin value) setAdmin,
    required TResult Function(_RemoveAdmin value) removeAdmin,
    required TResult Function(_Delete value) delete,
    required TResult Function(_OwnerLeave value) ownerLeave,
  }) {
    return setAdmin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateGroup value)? createGroup,
    TResult? Function(_CreatePrivate value)? createPrivate,
    TResult? Function(_UpdateUsers value)? updateUsers,
    TResult? Function(_AddUsers value)? addUsers,
    TResult? Function(_UpdateName value)? updateName,
    TResult? Function(_KickUsers value)? kickUsers,
    TResult? Function(_Leave value)? leave,
    TResult? Function(_SetAdmin value)? setAdmin,
    TResult? Function(_RemoveAdmin value)? removeAdmin,
    TResult? Function(_Delete value)? delete,
    TResult? Function(_OwnerLeave value)? ownerLeave,
  }) {
    return setAdmin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateGroup value)? createGroup,
    TResult Function(_CreatePrivate value)? createPrivate,
    TResult Function(_UpdateUsers value)? updateUsers,
    TResult Function(_AddUsers value)? addUsers,
    TResult Function(_UpdateName value)? updateName,
    TResult Function(_KickUsers value)? kickUsers,
    TResult Function(_Leave value)? leave,
    TResult Function(_SetAdmin value)? setAdmin,
    TResult Function(_RemoveAdmin value)? removeAdmin,
    TResult Function(_Delete value)? delete,
    TResult Function(_OwnerLeave value)? ownerLeave,
    required TResult orElse(),
  }) {
    if (setAdmin != null) {
      return setAdmin(this);
    }
    return orElse();
  }
}

abstract class _SetAdmin implements ChatManagerEvent {
  const factory _SetAdmin(final SimpleGroup adminAndIdOnly) = _$_SetAdmin;

  SimpleGroup get adminAndIdOnly;
  @JsonKey(ignore: true)
  _$$_SetAdminCopyWith<_$_SetAdmin> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RemoveAdminCopyWith<$Res> {
  factory _$$_RemoveAdminCopyWith(
          _$_RemoveAdmin value, $Res Function(_$_RemoveAdmin) then) =
      __$$_RemoveAdminCopyWithImpl<$Res>;
  @useResult
  $Res call({SimpleGroup adminAndIdOnly});

  $SimpleGroupCopyWith<$Res> get adminAndIdOnly;
}

/// @nodoc
class __$$_RemoveAdminCopyWithImpl<$Res>
    extends _$ChatManagerEventCopyWithImpl<$Res, _$_RemoveAdmin>
    implements _$$_RemoveAdminCopyWith<$Res> {
  __$$_RemoveAdminCopyWithImpl(
      _$_RemoveAdmin _value, $Res Function(_$_RemoveAdmin) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adminAndIdOnly = null,
  }) {
    return _then(_$_RemoveAdmin(
      null == adminAndIdOnly
          ? _value.adminAndIdOnly
          : adminAndIdOnly // ignore: cast_nullable_to_non_nullable
              as SimpleGroup,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $SimpleGroupCopyWith<$Res> get adminAndIdOnly {
    return $SimpleGroupCopyWith<$Res>(_value.adminAndIdOnly, (value) {
      return _then(_value.copyWith(adminAndIdOnly: value));
    });
  }
}

/// @nodoc

class _$_RemoveAdmin implements _RemoveAdmin {
  const _$_RemoveAdmin(this.adminAndIdOnly);

  @override
  final SimpleGroup adminAndIdOnly;

  @override
  String toString() {
    return 'ChatManagerEvent.removeAdmin(adminAndIdOnly: $adminAndIdOnly)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RemoveAdmin &&
            (identical(other.adminAndIdOnly, adminAndIdOnly) ||
                other.adminAndIdOnly == adminAndIdOnly));
  }

  @override
  int get hashCode => Object.hash(runtimeType, adminAndIdOnly);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RemoveAdminCopyWith<_$_RemoveAdmin> get copyWith =>
      __$$_RemoveAdminCopyWithImpl<_$_RemoveAdmin>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SimpleGroup simpleGroup) createGroup,
    required TResult Function(DLSUser user) createPrivate,
    required TResult Function(SimpleGroup newSimpleGroup) updateUsers,
    required TResult Function(String? chatId, List<String> newUsersIds)
        addUsers,
    required TResult Function(SimpleGroup newSimpleGroup) updateName,
    required TResult Function(String chatId, List<String> usersIds) kickUsers,
    required TResult Function(String chatId) leave,
    required TResult Function(SimpleGroup adminAndIdOnly) setAdmin,
    required TResult Function(SimpleGroup adminAndIdOnly) removeAdmin,
    required TResult Function(String chatId) delete,
    required TResult Function(SimpleGroup adminAndIdOnly) ownerLeave,
  }) {
    return removeAdmin(adminAndIdOnly);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SimpleGroup simpleGroup)? createGroup,
    TResult? Function(DLSUser user)? createPrivate,
    TResult? Function(SimpleGroup newSimpleGroup)? updateUsers,
    TResult? Function(String? chatId, List<String> newUsersIds)? addUsers,
    TResult? Function(SimpleGroup newSimpleGroup)? updateName,
    TResult? Function(String chatId, List<String> usersIds)? kickUsers,
    TResult? Function(String chatId)? leave,
    TResult? Function(SimpleGroup adminAndIdOnly)? setAdmin,
    TResult? Function(SimpleGroup adminAndIdOnly)? removeAdmin,
    TResult? Function(String chatId)? delete,
    TResult? Function(SimpleGroup adminAndIdOnly)? ownerLeave,
  }) {
    return removeAdmin?.call(adminAndIdOnly);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SimpleGroup simpleGroup)? createGroup,
    TResult Function(DLSUser user)? createPrivate,
    TResult Function(SimpleGroup newSimpleGroup)? updateUsers,
    TResult Function(String? chatId, List<String> newUsersIds)? addUsers,
    TResult Function(SimpleGroup newSimpleGroup)? updateName,
    TResult Function(String chatId, List<String> usersIds)? kickUsers,
    TResult Function(String chatId)? leave,
    TResult Function(SimpleGroup adminAndIdOnly)? setAdmin,
    TResult Function(SimpleGroup adminAndIdOnly)? removeAdmin,
    TResult Function(String chatId)? delete,
    TResult Function(SimpleGroup adminAndIdOnly)? ownerLeave,
    required TResult orElse(),
  }) {
    if (removeAdmin != null) {
      return removeAdmin(adminAndIdOnly);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateGroup value) createGroup,
    required TResult Function(_CreatePrivate value) createPrivate,
    required TResult Function(_UpdateUsers value) updateUsers,
    required TResult Function(_AddUsers value) addUsers,
    required TResult Function(_UpdateName value) updateName,
    required TResult Function(_KickUsers value) kickUsers,
    required TResult Function(_Leave value) leave,
    required TResult Function(_SetAdmin value) setAdmin,
    required TResult Function(_RemoveAdmin value) removeAdmin,
    required TResult Function(_Delete value) delete,
    required TResult Function(_OwnerLeave value) ownerLeave,
  }) {
    return removeAdmin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateGroup value)? createGroup,
    TResult? Function(_CreatePrivate value)? createPrivate,
    TResult? Function(_UpdateUsers value)? updateUsers,
    TResult? Function(_AddUsers value)? addUsers,
    TResult? Function(_UpdateName value)? updateName,
    TResult? Function(_KickUsers value)? kickUsers,
    TResult? Function(_Leave value)? leave,
    TResult? Function(_SetAdmin value)? setAdmin,
    TResult? Function(_RemoveAdmin value)? removeAdmin,
    TResult? Function(_Delete value)? delete,
    TResult? Function(_OwnerLeave value)? ownerLeave,
  }) {
    return removeAdmin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateGroup value)? createGroup,
    TResult Function(_CreatePrivate value)? createPrivate,
    TResult Function(_UpdateUsers value)? updateUsers,
    TResult Function(_AddUsers value)? addUsers,
    TResult Function(_UpdateName value)? updateName,
    TResult Function(_KickUsers value)? kickUsers,
    TResult Function(_Leave value)? leave,
    TResult Function(_SetAdmin value)? setAdmin,
    TResult Function(_RemoveAdmin value)? removeAdmin,
    TResult Function(_Delete value)? delete,
    TResult Function(_OwnerLeave value)? ownerLeave,
    required TResult orElse(),
  }) {
    if (removeAdmin != null) {
      return removeAdmin(this);
    }
    return orElse();
  }
}

abstract class _RemoveAdmin implements ChatManagerEvent {
  const factory _RemoveAdmin(final SimpleGroup adminAndIdOnly) = _$_RemoveAdmin;

  SimpleGroup get adminAndIdOnly;
  @JsonKey(ignore: true)
  _$$_RemoveAdminCopyWith<_$_RemoveAdmin> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DeleteCopyWith<$Res> {
  factory _$$_DeleteCopyWith(_$_Delete value, $Res Function(_$_Delete) then) =
      __$$_DeleteCopyWithImpl<$Res>;
  @useResult
  $Res call({String chatId});
}

/// @nodoc
class __$$_DeleteCopyWithImpl<$Res>
    extends _$ChatManagerEventCopyWithImpl<$Res, _$_Delete>
    implements _$$_DeleteCopyWith<$Res> {
  __$$_DeleteCopyWithImpl(_$_Delete _value, $Res Function(_$_Delete) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatId = null,
  }) {
    return _then(_$_Delete(
      null == chatId
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Delete implements _Delete {
  const _$_Delete(this.chatId);

  @override
  final String chatId;

  @override
  String toString() {
    return 'ChatManagerEvent.delete(chatId: $chatId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Delete &&
            (identical(other.chatId, chatId) || other.chatId == chatId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, chatId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeleteCopyWith<_$_Delete> get copyWith =>
      __$$_DeleteCopyWithImpl<_$_Delete>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SimpleGroup simpleGroup) createGroup,
    required TResult Function(DLSUser user) createPrivate,
    required TResult Function(SimpleGroup newSimpleGroup) updateUsers,
    required TResult Function(String? chatId, List<String> newUsersIds)
        addUsers,
    required TResult Function(SimpleGroup newSimpleGroup) updateName,
    required TResult Function(String chatId, List<String> usersIds) kickUsers,
    required TResult Function(String chatId) leave,
    required TResult Function(SimpleGroup adminAndIdOnly) setAdmin,
    required TResult Function(SimpleGroup adminAndIdOnly) removeAdmin,
    required TResult Function(String chatId) delete,
    required TResult Function(SimpleGroup adminAndIdOnly) ownerLeave,
  }) {
    return delete(chatId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SimpleGroup simpleGroup)? createGroup,
    TResult? Function(DLSUser user)? createPrivate,
    TResult? Function(SimpleGroup newSimpleGroup)? updateUsers,
    TResult? Function(String? chatId, List<String> newUsersIds)? addUsers,
    TResult? Function(SimpleGroup newSimpleGroup)? updateName,
    TResult? Function(String chatId, List<String> usersIds)? kickUsers,
    TResult? Function(String chatId)? leave,
    TResult? Function(SimpleGroup adminAndIdOnly)? setAdmin,
    TResult? Function(SimpleGroup adminAndIdOnly)? removeAdmin,
    TResult? Function(String chatId)? delete,
    TResult? Function(SimpleGroup adminAndIdOnly)? ownerLeave,
  }) {
    return delete?.call(chatId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SimpleGroup simpleGroup)? createGroup,
    TResult Function(DLSUser user)? createPrivate,
    TResult Function(SimpleGroup newSimpleGroup)? updateUsers,
    TResult Function(String? chatId, List<String> newUsersIds)? addUsers,
    TResult Function(SimpleGroup newSimpleGroup)? updateName,
    TResult Function(String chatId, List<String> usersIds)? kickUsers,
    TResult Function(String chatId)? leave,
    TResult Function(SimpleGroup adminAndIdOnly)? setAdmin,
    TResult Function(SimpleGroup adminAndIdOnly)? removeAdmin,
    TResult Function(String chatId)? delete,
    TResult Function(SimpleGroup adminAndIdOnly)? ownerLeave,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(chatId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateGroup value) createGroup,
    required TResult Function(_CreatePrivate value) createPrivate,
    required TResult Function(_UpdateUsers value) updateUsers,
    required TResult Function(_AddUsers value) addUsers,
    required TResult Function(_UpdateName value) updateName,
    required TResult Function(_KickUsers value) kickUsers,
    required TResult Function(_Leave value) leave,
    required TResult Function(_SetAdmin value) setAdmin,
    required TResult Function(_RemoveAdmin value) removeAdmin,
    required TResult Function(_Delete value) delete,
    required TResult Function(_OwnerLeave value) ownerLeave,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateGroup value)? createGroup,
    TResult? Function(_CreatePrivate value)? createPrivate,
    TResult? Function(_UpdateUsers value)? updateUsers,
    TResult? Function(_AddUsers value)? addUsers,
    TResult? Function(_UpdateName value)? updateName,
    TResult? Function(_KickUsers value)? kickUsers,
    TResult? Function(_Leave value)? leave,
    TResult? Function(_SetAdmin value)? setAdmin,
    TResult? Function(_RemoveAdmin value)? removeAdmin,
    TResult? Function(_Delete value)? delete,
    TResult? Function(_OwnerLeave value)? ownerLeave,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateGroup value)? createGroup,
    TResult Function(_CreatePrivate value)? createPrivate,
    TResult Function(_UpdateUsers value)? updateUsers,
    TResult Function(_AddUsers value)? addUsers,
    TResult Function(_UpdateName value)? updateName,
    TResult Function(_KickUsers value)? kickUsers,
    TResult Function(_Leave value)? leave,
    TResult Function(_SetAdmin value)? setAdmin,
    TResult Function(_RemoveAdmin value)? removeAdmin,
    TResult Function(_Delete value)? delete,
    TResult Function(_OwnerLeave value)? ownerLeave,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class _Delete implements ChatManagerEvent {
  const factory _Delete(final String chatId) = _$_Delete;

  String get chatId;
  @JsonKey(ignore: true)
  _$$_DeleteCopyWith<_$_Delete> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_OwnerLeaveCopyWith<$Res> {
  factory _$$_OwnerLeaveCopyWith(
          _$_OwnerLeave value, $Res Function(_$_OwnerLeave) then) =
      __$$_OwnerLeaveCopyWithImpl<$Res>;
  @useResult
  $Res call({SimpleGroup adminAndIdOnly});

  $SimpleGroupCopyWith<$Res> get adminAndIdOnly;
}

/// @nodoc
class __$$_OwnerLeaveCopyWithImpl<$Res>
    extends _$ChatManagerEventCopyWithImpl<$Res, _$_OwnerLeave>
    implements _$$_OwnerLeaveCopyWith<$Res> {
  __$$_OwnerLeaveCopyWithImpl(
      _$_OwnerLeave _value, $Res Function(_$_OwnerLeave) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adminAndIdOnly = null,
  }) {
    return _then(_$_OwnerLeave(
      null == adminAndIdOnly
          ? _value.adminAndIdOnly
          : adminAndIdOnly // ignore: cast_nullable_to_non_nullable
              as SimpleGroup,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $SimpleGroupCopyWith<$Res> get adminAndIdOnly {
    return $SimpleGroupCopyWith<$Res>(_value.adminAndIdOnly, (value) {
      return _then(_value.copyWith(adminAndIdOnly: value));
    });
  }
}

/// @nodoc

class _$_OwnerLeave implements _OwnerLeave {
  const _$_OwnerLeave(this.adminAndIdOnly);

  @override
  final SimpleGroup adminAndIdOnly;

  @override
  String toString() {
    return 'ChatManagerEvent.ownerLeave(adminAndIdOnly: $adminAndIdOnly)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OwnerLeave &&
            (identical(other.adminAndIdOnly, adminAndIdOnly) ||
                other.adminAndIdOnly == adminAndIdOnly));
  }

  @override
  int get hashCode => Object.hash(runtimeType, adminAndIdOnly);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OwnerLeaveCopyWith<_$_OwnerLeave> get copyWith =>
      __$$_OwnerLeaveCopyWithImpl<_$_OwnerLeave>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SimpleGroup simpleGroup) createGroup,
    required TResult Function(DLSUser user) createPrivate,
    required TResult Function(SimpleGroup newSimpleGroup) updateUsers,
    required TResult Function(String? chatId, List<String> newUsersIds)
        addUsers,
    required TResult Function(SimpleGroup newSimpleGroup) updateName,
    required TResult Function(String chatId, List<String> usersIds) kickUsers,
    required TResult Function(String chatId) leave,
    required TResult Function(SimpleGroup adminAndIdOnly) setAdmin,
    required TResult Function(SimpleGroup adminAndIdOnly) removeAdmin,
    required TResult Function(String chatId) delete,
    required TResult Function(SimpleGroup adminAndIdOnly) ownerLeave,
  }) {
    return ownerLeave(adminAndIdOnly);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SimpleGroup simpleGroup)? createGroup,
    TResult? Function(DLSUser user)? createPrivate,
    TResult? Function(SimpleGroup newSimpleGroup)? updateUsers,
    TResult? Function(String? chatId, List<String> newUsersIds)? addUsers,
    TResult? Function(SimpleGroup newSimpleGroup)? updateName,
    TResult? Function(String chatId, List<String> usersIds)? kickUsers,
    TResult? Function(String chatId)? leave,
    TResult? Function(SimpleGroup adminAndIdOnly)? setAdmin,
    TResult? Function(SimpleGroup adminAndIdOnly)? removeAdmin,
    TResult? Function(String chatId)? delete,
    TResult? Function(SimpleGroup adminAndIdOnly)? ownerLeave,
  }) {
    return ownerLeave?.call(adminAndIdOnly);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SimpleGroup simpleGroup)? createGroup,
    TResult Function(DLSUser user)? createPrivate,
    TResult Function(SimpleGroup newSimpleGroup)? updateUsers,
    TResult Function(String? chatId, List<String> newUsersIds)? addUsers,
    TResult Function(SimpleGroup newSimpleGroup)? updateName,
    TResult Function(String chatId, List<String> usersIds)? kickUsers,
    TResult Function(String chatId)? leave,
    TResult Function(SimpleGroup adminAndIdOnly)? setAdmin,
    TResult Function(SimpleGroup adminAndIdOnly)? removeAdmin,
    TResult Function(String chatId)? delete,
    TResult Function(SimpleGroup adminAndIdOnly)? ownerLeave,
    required TResult orElse(),
  }) {
    if (ownerLeave != null) {
      return ownerLeave(adminAndIdOnly);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateGroup value) createGroup,
    required TResult Function(_CreatePrivate value) createPrivate,
    required TResult Function(_UpdateUsers value) updateUsers,
    required TResult Function(_AddUsers value) addUsers,
    required TResult Function(_UpdateName value) updateName,
    required TResult Function(_KickUsers value) kickUsers,
    required TResult Function(_Leave value) leave,
    required TResult Function(_SetAdmin value) setAdmin,
    required TResult Function(_RemoveAdmin value) removeAdmin,
    required TResult Function(_Delete value) delete,
    required TResult Function(_OwnerLeave value) ownerLeave,
  }) {
    return ownerLeave(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateGroup value)? createGroup,
    TResult? Function(_CreatePrivate value)? createPrivate,
    TResult? Function(_UpdateUsers value)? updateUsers,
    TResult? Function(_AddUsers value)? addUsers,
    TResult? Function(_UpdateName value)? updateName,
    TResult? Function(_KickUsers value)? kickUsers,
    TResult? Function(_Leave value)? leave,
    TResult? Function(_SetAdmin value)? setAdmin,
    TResult? Function(_RemoveAdmin value)? removeAdmin,
    TResult? Function(_Delete value)? delete,
    TResult? Function(_OwnerLeave value)? ownerLeave,
  }) {
    return ownerLeave?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateGroup value)? createGroup,
    TResult Function(_CreatePrivate value)? createPrivate,
    TResult Function(_UpdateUsers value)? updateUsers,
    TResult Function(_AddUsers value)? addUsers,
    TResult Function(_UpdateName value)? updateName,
    TResult Function(_KickUsers value)? kickUsers,
    TResult Function(_Leave value)? leave,
    TResult Function(_SetAdmin value)? setAdmin,
    TResult Function(_RemoveAdmin value)? removeAdmin,
    TResult Function(_Delete value)? delete,
    TResult Function(_OwnerLeave value)? ownerLeave,
    required TResult orElse(),
  }) {
    if (ownerLeave != null) {
      return ownerLeave(this);
    }
    return orElse();
  }
}

abstract class _OwnerLeave implements ChatManagerEvent {
  const factory _OwnerLeave(final SimpleGroup adminAndIdOnly) = _$_OwnerLeave;

  SimpleGroup get adminAndIdOnly;
  @JsonKey(ignore: true)
  _$$_OwnerLeaveCopyWith<_$_OwnerLeave> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ChatManagerState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String chatId, bool isDirect) created,
    required TResult Function(String transaction) notEnoughRights,
    required TResult Function(String message) failure,
    required TResult Function(String transaction) leftChat,
    required TResult Function(String transaction) rightsChanged,
    required TResult Function(String transaction) nameUpdated,
    required TResult Function(String transaction) usersUpdated,
    required TResult Function(String message) message,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String chatId, bool isDirect)? created,
    TResult? Function(String transaction)? notEnoughRights,
    TResult? Function(String message)? failure,
    TResult? Function(String transaction)? leftChat,
    TResult? Function(String transaction)? rightsChanged,
    TResult? Function(String transaction)? nameUpdated,
    TResult? Function(String transaction)? usersUpdated,
    TResult? Function(String message)? message,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String chatId, bool isDirect)? created,
    TResult Function(String transaction)? notEnoughRights,
    TResult Function(String message)? failure,
    TResult Function(String transaction)? leftChat,
    TResult Function(String transaction)? rightsChanged,
    TResult Function(String transaction)? nameUpdated,
    TResult Function(String transaction)? usersUpdated,
    TResult Function(String message)? message,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Created value) created,
    required TResult Function(_NotEnoughRights value) notEnoughRights,
    required TResult Function(_Failure value) failure,
    required TResult Function(_LeftChat value) leftChat,
    required TResult Function(_RightsChanged value) rightsChanged,
    required TResult Function(_NameUpdated value) nameUpdated,
    required TResult Function(_UsersUpdated value) usersUpdated,
    required TResult Function(_Message value) message,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Created value)? created,
    TResult? Function(_NotEnoughRights value)? notEnoughRights,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_LeftChat value)? leftChat,
    TResult? Function(_RightsChanged value)? rightsChanged,
    TResult? Function(_NameUpdated value)? nameUpdated,
    TResult? Function(_UsersUpdated value)? usersUpdated,
    TResult? Function(_Message value)? message,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Created value)? created,
    TResult Function(_NotEnoughRights value)? notEnoughRights,
    TResult Function(_Failure value)? failure,
    TResult Function(_LeftChat value)? leftChat,
    TResult Function(_RightsChanged value)? rightsChanged,
    TResult Function(_NameUpdated value)? nameUpdated,
    TResult Function(_UsersUpdated value)? usersUpdated,
    TResult Function(_Message value)? message,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatManagerStateCopyWith<$Res> {
  factory $ChatManagerStateCopyWith(
          ChatManagerState value, $Res Function(ChatManagerState) then) =
      _$ChatManagerStateCopyWithImpl<$Res, ChatManagerState>;
}

/// @nodoc
class _$ChatManagerStateCopyWithImpl<$Res, $Val extends ChatManagerState>
    implements $ChatManagerStateCopyWith<$Res> {
  _$ChatManagerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$ChatManagerStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'ChatManagerState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String chatId, bool isDirect) created,
    required TResult Function(String transaction) notEnoughRights,
    required TResult Function(String message) failure,
    required TResult Function(String transaction) leftChat,
    required TResult Function(String transaction) rightsChanged,
    required TResult Function(String transaction) nameUpdated,
    required TResult Function(String transaction) usersUpdated,
    required TResult Function(String message) message,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String chatId, bool isDirect)? created,
    TResult? Function(String transaction)? notEnoughRights,
    TResult? Function(String message)? failure,
    TResult? Function(String transaction)? leftChat,
    TResult? Function(String transaction)? rightsChanged,
    TResult? Function(String transaction)? nameUpdated,
    TResult? Function(String transaction)? usersUpdated,
    TResult? Function(String message)? message,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String chatId, bool isDirect)? created,
    TResult Function(String transaction)? notEnoughRights,
    TResult Function(String message)? failure,
    TResult Function(String transaction)? leftChat,
    TResult Function(String transaction)? rightsChanged,
    TResult Function(String transaction)? nameUpdated,
    TResult Function(String transaction)? usersUpdated,
    TResult Function(String message)? message,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Created value) created,
    required TResult Function(_NotEnoughRights value) notEnoughRights,
    required TResult Function(_Failure value) failure,
    required TResult Function(_LeftChat value) leftChat,
    required TResult Function(_RightsChanged value) rightsChanged,
    required TResult Function(_NameUpdated value) nameUpdated,
    required TResult Function(_UsersUpdated value) usersUpdated,
    required TResult Function(_Message value) message,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Created value)? created,
    TResult? Function(_NotEnoughRights value)? notEnoughRights,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_LeftChat value)? leftChat,
    TResult? Function(_RightsChanged value)? rightsChanged,
    TResult? Function(_NameUpdated value)? nameUpdated,
    TResult? Function(_UsersUpdated value)? usersUpdated,
    TResult? Function(_Message value)? message,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Created value)? created,
    TResult Function(_NotEnoughRights value)? notEnoughRights,
    TResult Function(_Failure value)? failure,
    TResult Function(_LeftChat value)? leftChat,
    TResult Function(_RightsChanged value)? rightsChanged,
    TResult Function(_NameUpdated value)? nameUpdated,
    TResult Function(_UsersUpdated value)? usersUpdated,
    TResult Function(_Message value)? message,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ChatManagerState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_CreatedCopyWith<$Res> {
  factory _$$_CreatedCopyWith(
          _$_Created value, $Res Function(_$_Created) then) =
      __$$_CreatedCopyWithImpl<$Res>;
  @useResult
  $Res call({String chatId, bool isDirect});
}

/// @nodoc
class __$$_CreatedCopyWithImpl<$Res>
    extends _$ChatManagerStateCopyWithImpl<$Res, _$_Created>
    implements _$$_CreatedCopyWith<$Res> {
  __$$_CreatedCopyWithImpl(_$_Created _value, $Res Function(_$_Created) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatId = null,
    Object? isDirect = null,
  }) {
    return _then(_$_Created(
      null == chatId
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as String,
      null == isDirect
          ? _value.isDirect
          : isDirect // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Created implements _Created {
  const _$_Created(this.chatId, this.isDirect);

  @override
  final String chatId;
  @override
  final bool isDirect;

  @override
  String toString() {
    return 'ChatManagerState.created(chatId: $chatId, isDirect: $isDirect)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Created &&
            (identical(other.chatId, chatId) || other.chatId == chatId) &&
            (identical(other.isDirect, isDirect) ||
                other.isDirect == isDirect));
  }

  @override
  int get hashCode => Object.hash(runtimeType, chatId, isDirect);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreatedCopyWith<_$_Created> get copyWith =>
      __$$_CreatedCopyWithImpl<_$_Created>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String chatId, bool isDirect) created,
    required TResult Function(String transaction) notEnoughRights,
    required TResult Function(String message) failure,
    required TResult Function(String transaction) leftChat,
    required TResult Function(String transaction) rightsChanged,
    required TResult Function(String transaction) nameUpdated,
    required TResult Function(String transaction) usersUpdated,
    required TResult Function(String message) message,
  }) {
    return created(chatId, isDirect);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String chatId, bool isDirect)? created,
    TResult? Function(String transaction)? notEnoughRights,
    TResult? Function(String message)? failure,
    TResult? Function(String transaction)? leftChat,
    TResult? Function(String transaction)? rightsChanged,
    TResult? Function(String transaction)? nameUpdated,
    TResult? Function(String transaction)? usersUpdated,
    TResult? Function(String message)? message,
  }) {
    return created?.call(chatId, isDirect);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String chatId, bool isDirect)? created,
    TResult Function(String transaction)? notEnoughRights,
    TResult Function(String message)? failure,
    TResult Function(String transaction)? leftChat,
    TResult Function(String transaction)? rightsChanged,
    TResult Function(String transaction)? nameUpdated,
    TResult Function(String transaction)? usersUpdated,
    TResult Function(String message)? message,
    required TResult orElse(),
  }) {
    if (created != null) {
      return created(chatId, isDirect);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Created value) created,
    required TResult Function(_NotEnoughRights value) notEnoughRights,
    required TResult Function(_Failure value) failure,
    required TResult Function(_LeftChat value) leftChat,
    required TResult Function(_RightsChanged value) rightsChanged,
    required TResult Function(_NameUpdated value) nameUpdated,
    required TResult Function(_UsersUpdated value) usersUpdated,
    required TResult Function(_Message value) message,
  }) {
    return created(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Created value)? created,
    TResult? Function(_NotEnoughRights value)? notEnoughRights,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_LeftChat value)? leftChat,
    TResult? Function(_RightsChanged value)? rightsChanged,
    TResult? Function(_NameUpdated value)? nameUpdated,
    TResult? Function(_UsersUpdated value)? usersUpdated,
    TResult? Function(_Message value)? message,
  }) {
    return created?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Created value)? created,
    TResult Function(_NotEnoughRights value)? notEnoughRights,
    TResult Function(_Failure value)? failure,
    TResult Function(_LeftChat value)? leftChat,
    TResult Function(_RightsChanged value)? rightsChanged,
    TResult Function(_NameUpdated value)? nameUpdated,
    TResult Function(_UsersUpdated value)? usersUpdated,
    TResult Function(_Message value)? message,
    required TResult orElse(),
  }) {
    if (created != null) {
      return created(this);
    }
    return orElse();
  }
}

abstract class _Created implements ChatManagerState {
  const factory _Created(final String chatId, final bool isDirect) = _$_Created;

  String get chatId;
  bool get isDirect;
  @JsonKey(ignore: true)
  _$$_CreatedCopyWith<_$_Created> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_NotEnoughRightsCopyWith<$Res> {
  factory _$$_NotEnoughRightsCopyWith(
          _$_NotEnoughRights value, $Res Function(_$_NotEnoughRights) then) =
      __$$_NotEnoughRightsCopyWithImpl<$Res>;
  @useResult
  $Res call({String transaction});
}

/// @nodoc
class __$$_NotEnoughRightsCopyWithImpl<$Res>
    extends _$ChatManagerStateCopyWithImpl<$Res, _$_NotEnoughRights>
    implements _$$_NotEnoughRightsCopyWith<$Res> {
  __$$_NotEnoughRightsCopyWithImpl(
      _$_NotEnoughRights _value, $Res Function(_$_NotEnoughRights) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transaction = null,
  }) {
    return _then(_$_NotEnoughRights(
      null == transaction
          ? _value.transaction
          : transaction // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_NotEnoughRights implements _NotEnoughRights {
  const _$_NotEnoughRights(this.transaction);

  @override
  final String transaction;

  @override
  String toString() {
    return 'ChatManagerState.notEnoughRights(transaction: $transaction)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NotEnoughRights &&
            (identical(other.transaction, transaction) ||
                other.transaction == transaction));
  }

  @override
  int get hashCode => Object.hash(runtimeType, transaction);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NotEnoughRightsCopyWith<_$_NotEnoughRights> get copyWith =>
      __$$_NotEnoughRightsCopyWithImpl<_$_NotEnoughRights>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String chatId, bool isDirect) created,
    required TResult Function(String transaction) notEnoughRights,
    required TResult Function(String message) failure,
    required TResult Function(String transaction) leftChat,
    required TResult Function(String transaction) rightsChanged,
    required TResult Function(String transaction) nameUpdated,
    required TResult Function(String transaction) usersUpdated,
    required TResult Function(String message) message,
  }) {
    return notEnoughRights(transaction);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String chatId, bool isDirect)? created,
    TResult? Function(String transaction)? notEnoughRights,
    TResult? Function(String message)? failure,
    TResult? Function(String transaction)? leftChat,
    TResult? Function(String transaction)? rightsChanged,
    TResult? Function(String transaction)? nameUpdated,
    TResult? Function(String transaction)? usersUpdated,
    TResult? Function(String message)? message,
  }) {
    return notEnoughRights?.call(transaction);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String chatId, bool isDirect)? created,
    TResult Function(String transaction)? notEnoughRights,
    TResult Function(String message)? failure,
    TResult Function(String transaction)? leftChat,
    TResult Function(String transaction)? rightsChanged,
    TResult Function(String transaction)? nameUpdated,
    TResult Function(String transaction)? usersUpdated,
    TResult Function(String message)? message,
    required TResult orElse(),
  }) {
    if (notEnoughRights != null) {
      return notEnoughRights(transaction);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Created value) created,
    required TResult Function(_NotEnoughRights value) notEnoughRights,
    required TResult Function(_Failure value) failure,
    required TResult Function(_LeftChat value) leftChat,
    required TResult Function(_RightsChanged value) rightsChanged,
    required TResult Function(_NameUpdated value) nameUpdated,
    required TResult Function(_UsersUpdated value) usersUpdated,
    required TResult Function(_Message value) message,
  }) {
    return notEnoughRights(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Created value)? created,
    TResult? Function(_NotEnoughRights value)? notEnoughRights,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_LeftChat value)? leftChat,
    TResult? Function(_RightsChanged value)? rightsChanged,
    TResult? Function(_NameUpdated value)? nameUpdated,
    TResult? Function(_UsersUpdated value)? usersUpdated,
    TResult? Function(_Message value)? message,
  }) {
    return notEnoughRights?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Created value)? created,
    TResult Function(_NotEnoughRights value)? notEnoughRights,
    TResult Function(_Failure value)? failure,
    TResult Function(_LeftChat value)? leftChat,
    TResult Function(_RightsChanged value)? rightsChanged,
    TResult Function(_NameUpdated value)? nameUpdated,
    TResult Function(_UsersUpdated value)? usersUpdated,
    TResult Function(_Message value)? message,
    required TResult orElse(),
  }) {
    if (notEnoughRights != null) {
      return notEnoughRights(this);
    }
    return orElse();
  }
}

abstract class _NotEnoughRights implements ChatManagerState {
  const factory _NotEnoughRights(final String transaction) = _$_NotEnoughRights;

  String get transaction;
  @JsonKey(ignore: true)
  _$$_NotEnoughRightsCopyWith<_$_NotEnoughRights> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FailureCopyWith<$Res> {
  factory _$$_FailureCopyWith(
          _$_Failure value, $Res Function(_$_Failure) then) =
      __$$_FailureCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_FailureCopyWithImpl<$Res>
    extends _$ChatManagerStateCopyWithImpl<$Res, _$_Failure>
    implements _$$_FailureCopyWith<$Res> {
  __$$_FailureCopyWithImpl(_$_Failure _value, $Res Function(_$_Failure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_Failure(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Failure implements _Failure {
  const _$_Failure(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'ChatManagerState.failure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Failure &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FailureCopyWith<_$_Failure> get copyWith =>
      __$$_FailureCopyWithImpl<_$_Failure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String chatId, bool isDirect) created,
    required TResult Function(String transaction) notEnoughRights,
    required TResult Function(String message) failure,
    required TResult Function(String transaction) leftChat,
    required TResult Function(String transaction) rightsChanged,
    required TResult Function(String transaction) nameUpdated,
    required TResult Function(String transaction) usersUpdated,
    required TResult Function(String message) message,
  }) {
    return failure(this.message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String chatId, bool isDirect)? created,
    TResult? Function(String transaction)? notEnoughRights,
    TResult? Function(String message)? failure,
    TResult? Function(String transaction)? leftChat,
    TResult? Function(String transaction)? rightsChanged,
    TResult? Function(String transaction)? nameUpdated,
    TResult? Function(String transaction)? usersUpdated,
    TResult? Function(String message)? message,
  }) {
    return failure?.call(this.message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String chatId, bool isDirect)? created,
    TResult Function(String transaction)? notEnoughRights,
    TResult Function(String message)? failure,
    TResult Function(String transaction)? leftChat,
    TResult Function(String transaction)? rightsChanged,
    TResult Function(String transaction)? nameUpdated,
    TResult Function(String transaction)? usersUpdated,
    TResult Function(String message)? message,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this.message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Created value) created,
    required TResult Function(_NotEnoughRights value) notEnoughRights,
    required TResult Function(_Failure value) failure,
    required TResult Function(_LeftChat value) leftChat,
    required TResult Function(_RightsChanged value) rightsChanged,
    required TResult Function(_NameUpdated value) nameUpdated,
    required TResult Function(_UsersUpdated value) usersUpdated,
    required TResult Function(_Message value) message,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Created value)? created,
    TResult? Function(_NotEnoughRights value)? notEnoughRights,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_LeftChat value)? leftChat,
    TResult? Function(_RightsChanged value)? rightsChanged,
    TResult? Function(_NameUpdated value)? nameUpdated,
    TResult? Function(_UsersUpdated value)? usersUpdated,
    TResult? Function(_Message value)? message,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Created value)? created,
    TResult Function(_NotEnoughRights value)? notEnoughRights,
    TResult Function(_Failure value)? failure,
    TResult Function(_LeftChat value)? leftChat,
    TResult Function(_RightsChanged value)? rightsChanged,
    TResult Function(_NameUpdated value)? nameUpdated,
    TResult Function(_UsersUpdated value)? usersUpdated,
    TResult Function(_Message value)? message,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements ChatManagerState {
  const factory _Failure(final String message) = _$_Failure;

  String get message;
  @JsonKey(ignore: true)
  _$$_FailureCopyWith<_$_Failure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LeftChatCopyWith<$Res> {
  factory _$$_LeftChatCopyWith(
          _$_LeftChat value, $Res Function(_$_LeftChat) then) =
      __$$_LeftChatCopyWithImpl<$Res>;
  @useResult
  $Res call({String transaction});
}

/// @nodoc
class __$$_LeftChatCopyWithImpl<$Res>
    extends _$ChatManagerStateCopyWithImpl<$Res, _$_LeftChat>
    implements _$$_LeftChatCopyWith<$Res> {
  __$$_LeftChatCopyWithImpl(
      _$_LeftChat _value, $Res Function(_$_LeftChat) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transaction = null,
  }) {
    return _then(_$_LeftChat(
      null == transaction
          ? _value.transaction
          : transaction // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_LeftChat implements _LeftChat {
  const _$_LeftChat(this.transaction);

  @override
  final String transaction;

  @override
  String toString() {
    return 'ChatManagerState.leftChat(transaction: $transaction)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LeftChat &&
            (identical(other.transaction, transaction) ||
                other.transaction == transaction));
  }

  @override
  int get hashCode => Object.hash(runtimeType, transaction);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LeftChatCopyWith<_$_LeftChat> get copyWith =>
      __$$_LeftChatCopyWithImpl<_$_LeftChat>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String chatId, bool isDirect) created,
    required TResult Function(String transaction) notEnoughRights,
    required TResult Function(String message) failure,
    required TResult Function(String transaction) leftChat,
    required TResult Function(String transaction) rightsChanged,
    required TResult Function(String transaction) nameUpdated,
    required TResult Function(String transaction) usersUpdated,
    required TResult Function(String message) message,
  }) {
    return leftChat(transaction);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String chatId, bool isDirect)? created,
    TResult? Function(String transaction)? notEnoughRights,
    TResult? Function(String message)? failure,
    TResult? Function(String transaction)? leftChat,
    TResult? Function(String transaction)? rightsChanged,
    TResult? Function(String transaction)? nameUpdated,
    TResult? Function(String transaction)? usersUpdated,
    TResult? Function(String message)? message,
  }) {
    return leftChat?.call(transaction);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String chatId, bool isDirect)? created,
    TResult Function(String transaction)? notEnoughRights,
    TResult Function(String message)? failure,
    TResult Function(String transaction)? leftChat,
    TResult Function(String transaction)? rightsChanged,
    TResult Function(String transaction)? nameUpdated,
    TResult Function(String transaction)? usersUpdated,
    TResult Function(String message)? message,
    required TResult orElse(),
  }) {
    if (leftChat != null) {
      return leftChat(transaction);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Created value) created,
    required TResult Function(_NotEnoughRights value) notEnoughRights,
    required TResult Function(_Failure value) failure,
    required TResult Function(_LeftChat value) leftChat,
    required TResult Function(_RightsChanged value) rightsChanged,
    required TResult Function(_NameUpdated value) nameUpdated,
    required TResult Function(_UsersUpdated value) usersUpdated,
    required TResult Function(_Message value) message,
  }) {
    return leftChat(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Created value)? created,
    TResult? Function(_NotEnoughRights value)? notEnoughRights,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_LeftChat value)? leftChat,
    TResult? Function(_RightsChanged value)? rightsChanged,
    TResult? Function(_NameUpdated value)? nameUpdated,
    TResult? Function(_UsersUpdated value)? usersUpdated,
    TResult? Function(_Message value)? message,
  }) {
    return leftChat?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Created value)? created,
    TResult Function(_NotEnoughRights value)? notEnoughRights,
    TResult Function(_Failure value)? failure,
    TResult Function(_LeftChat value)? leftChat,
    TResult Function(_RightsChanged value)? rightsChanged,
    TResult Function(_NameUpdated value)? nameUpdated,
    TResult Function(_UsersUpdated value)? usersUpdated,
    TResult Function(_Message value)? message,
    required TResult orElse(),
  }) {
    if (leftChat != null) {
      return leftChat(this);
    }
    return orElse();
  }
}

abstract class _LeftChat implements ChatManagerState {
  const factory _LeftChat(final String transaction) = _$_LeftChat;

  String get transaction;
  @JsonKey(ignore: true)
  _$$_LeftChatCopyWith<_$_LeftChat> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RightsChangedCopyWith<$Res> {
  factory _$$_RightsChangedCopyWith(
          _$_RightsChanged value, $Res Function(_$_RightsChanged) then) =
      __$$_RightsChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String transaction});
}

/// @nodoc
class __$$_RightsChangedCopyWithImpl<$Res>
    extends _$ChatManagerStateCopyWithImpl<$Res, _$_RightsChanged>
    implements _$$_RightsChangedCopyWith<$Res> {
  __$$_RightsChangedCopyWithImpl(
      _$_RightsChanged _value, $Res Function(_$_RightsChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transaction = null,
  }) {
    return _then(_$_RightsChanged(
      null == transaction
          ? _value.transaction
          : transaction // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_RightsChanged implements _RightsChanged {
  const _$_RightsChanged(this.transaction);

  @override
  final String transaction;

  @override
  String toString() {
    return 'ChatManagerState.rightsChanged(transaction: $transaction)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RightsChanged &&
            (identical(other.transaction, transaction) ||
                other.transaction == transaction));
  }

  @override
  int get hashCode => Object.hash(runtimeType, transaction);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RightsChangedCopyWith<_$_RightsChanged> get copyWith =>
      __$$_RightsChangedCopyWithImpl<_$_RightsChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String chatId, bool isDirect) created,
    required TResult Function(String transaction) notEnoughRights,
    required TResult Function(String message) failure,
    required TResult Function(String transaction) leftChat,
    required TResult Function(String transaction) rightsChanged,
    required TResult Function(String transaction) nameUpdated,
    required TResult Function(String transaction) usersUpdated,
    required TResult Function(String message) message,
  }) {
    return rightsChanged(transaction);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String chatId, bool isDirect)? created,
    TResult? Function(String transaction)? notEnoughRights,
    TResult? Function(String message)? failure,
    TResult? Function(String transaction)? leftChat,
    TResult? Function(String transaction)? rightsChanged,
    TResult? Function(String transaction)? nameUpdated,
    TResult? Function(String transaction)? usersUpdated,
    TResult? Function(String message)? message,
  }) {
    return rightsChanged?.call(transaction);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String chatId, bool isDirect)? created,
    TResult Function(String transaction)? notEnoughRights,
    TResult Function(String message)? failure,
    TResult Function(String transaction)? leftChat,
    TResult Function(String transaction)? rightsChanged,
    TResult Function(String transaction)? nameUpdated,
    TResult Function(String transaction)? usersUpdated,
    TResult Function(String message)? message,
    required TResult orElse(),
  }) {
    if (rightsChanged != null) {
      return rightsChanged(transaction);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Created value) created,
    required TResult Function(_NotEnoughRights value) notEnoughRights,
    required TResult Function(_Failure value) failure,
    required TResult Function(_LeftChat value) leftChat,
    required TResult Function(_RightsChanged value) rightsChanged,
    required TResult Function(_NameUpdated value) nameUpdated,
    required TResult Function(_UsersUpdated value) usersUpdated,
    required TResult Function(_Message value) message,
  }) {
    return rightsChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Created value)? created,
    TResult? Function(_NotEnoughRights value)? notEnoughRights,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_LeftChat value)? leftChat,
    TResult? Function(_RightsChanged value)? rightsChanged,
    TResult? Function(_NameUpdated value)? nameUpdated,
    TResult? Function(_UsersUpdated value)? usersUpdated,
    TResult? Function(_Message value)? message,
  }) {
    return rightsChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Created value)? created,
    TResult Function(_NotEnoughRights value)? notEnoughRights,
    TResult Function(_Failure value)? failure,
    TResult Function(_LeftChat value)? leftChat,
    TResult Function(_RightsChanged value)? rightsChanged,
    TResult Function(_NameUpdated value)? nameUpdated,
    TResult Function(_UsersUpdated value)? usersUpdated,
    TResult Function(_Message value)? message,
    required TResult orElse(),
  }) {
    if (rightsChanged != null) {
      return rightsChanged(this);
    }
    return orElse();
  }
}

abstract class _RightsChanged implements ChatManagerState {
  const factory _RightsChanged(final String transaction) = _$_RightsChanged;

  String get transaction;
  @JsonKey(ignore: true)
  _$$_RightsChangedCopyWith<_$_RightsChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_NameUpdatedCopyWith<$Res> {
  factory _$$_NameUpdatedCopyWith(
          _$_NameUpdated value, $Res Function(_$_NameUpdated) then) =
      __$$_NameUpdatedCopyWithImpl<$Res>;
  @useResult
  $Res call({String transaction});
}

/// @nodoc
class __$$_NameUpdatedCopyWithImpl<$Res>
    extends _$ChatManagerStateCopyWithImpl<$Res, _$_NameUpdated>
    implements _$$_NameUpdatedCopyWith<$Res> {
  __$$_NameUpdatedCopyWithImpl(
      _$_NameUpdated _value, $Res Function(_$_NameUpdated) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transaction = null,
  }) {
    return _then(_$_NameUpdated(
      null == transaction
          ? _value.transaction
          : transaction // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_NameUpdated implements _NameUpdated {
  const _$_NameUpdated(this.transaction);

  @override
  final String transaction;

  @override
  String toString() {
    return 'ChatManagerState.nameUpdated(transaction: $transaction)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NameUpdated &&
            (identical(other.transaction, transaction) ||
                other.transaction == transaction));
  }

  @override
  int get hashCode => Object.hash(runtimeType, transaction);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NameUpdatedCopyWith<_$_NameUpdated> get copyWith =>
      __$$_NameUpdatedCopyWithImpl<_$_NameUpdated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String chatId, bool isDirect) created,
    required TResult Function(String transaction) notEnoughRights,
    required TResult Function(String message) failure,
    required TResult Function(String transaction) leftChat,
    required TResult Function(String transaction) rightsChanged,
    required TResult Function(String transaction) nameUpdated,
    required TResult Function(String transaction) usersUpdated,
    required TResult Function(String message) message,
  }) {
    return nameUpdated(transaction);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String chatId, bool isDirect)? created,
    TResult? Function(String transaction)? notEnoughRights,
    TResult? Function(String message)? failure,
    TResult? Function(String transaction)? leftChat,
    TResult? Function(String transaction)? rightsChanged,
    TResult? Function(String transaction)? nameUpdated,
    TResult? Function(String transaction)? usersUpdated,
    TResult? Function(String message)? message,
  }) {
    return nameUpdated?.call(transaction);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String chatId, bool isDirect)? created,
    TResult Function(String transaction)? notEnoughRights,
    TResult Function(String message)? failure,
    TResult Function(String transaction)? leftChat,
    TResult Function(String transaction)? rightsChanged,
    TResult Function(String transaction)? nameUpdated,
    TResult Function(String transaction)? usersUpdated,
    TResult Function(String message)? message,
    required TResult orElse(),
  }) {
    if (nameUpdated != null) {
      return nameUpdated(transaction);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Created value) created,
    required TResult Function(_NotEnoughRights value) notEnoughRights,
    required TResult Function(_Failure value) failure,
    required TResult Function(_LeftChat value) leftChat,
    required TResult Function(_RightsChanged value) rightsChanged,
    required TResult Function(_NameUpdated value) nameUpdated,
    required TResult Function(_UsersUpdated value) usersUpdated,
    required TResult Function(_Message value) message,
  }) {
    return nameUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Created value)? created,
    TResult? Function(_NotEnoughRights value)? notEnoughRights,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_LeftChat value)? leftChat,
    TResult? Function(_RightsChanged value)? rightsChanged,
    TResult? Function(_NameUpdated value)? nameUpdated,
    TResult? Function(_UsersUpdated value)? usersUpdated,
    TResult? Function(_Message value)? message,
  }) {
    return nameUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Created value)? created,
    TResult Function(_NotEnoughRights value)? notEnoughRights,
    TResult Function(_Failure value)? failure,
    TResult Function(_LeftChat value)? leftChat,
    TResult Function(_RightsChanged value)? rightsChanged,
    TResult Function(_NameUpdated value)? nameUpdated,
    TResult Function(_UsersUpdated value)? usersUpdated,
    TResult Function(_Message value)? message,
    required TResult orElse(),
  }) {
    if (nameUpdated != null) {
      return nameUpdated(this);
    }
    return orElse();
  }
}

abstract class _NameUpdated implements ChatManagerState {
  const factory _NameUpdated(final String transaction) = _$_NameUpdated;

  String get transaction;
  @JsonKey(ignore: true)
  _$$_NameUpdatedCopyWith<_$_NameUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UsersUpdatedCopyWith<$Res> {
  factory _$$_UsersUpdatedCopyWith(
          _$_UsersUpdated value, $Res Function(_$_UsersUpdated) then) =
      __$$_UsersUpdatedCopyWithImpl<$Res>;
  @useResult
  $Res call({String transaction});
}

/// @nodoc
class __$$_UsersUpdatedCopyWithImpl<$Res>
    extends _$ChatManagerStateCopyWithImpl<$Res, _$_UsersUpdated>
    implements _$$_UsersUpdatedCopyWith<$Res> {
  __$$_UsersUpdatedCopyWithImpl(
      _$_UsersUpdated _value, $Res Function(_$_UsersUpdated) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transaction = null,
  }) {
    return _then(_$_UsersUpdated(
      null == transaction
          ? _value.transaction
          : transaction // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UsersUpdated implements _UsersUpdated {
  const _$_UsersUpdated(this.transaction);

  @override
  final String transaction;

  @override
  String toString() {
    return 'ChatManagerState.usersUpdated(transaction: $transaction)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UsersUpdated &&
            (identical(other.transaction, transaction) ||
                other.transaction == transaction));
  }

  @override
  int get hashCode => Object.hash(runtimeType, transaction);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UsersUpdatedCopyWith<_$_UsersUpdated> get copyWith =>
      __$$_UsersUpdatedCopyWithImpl<_$_UsersUpdated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String chatId, bool isDirect) created,
    required TResult Function(String transaction) notEnoughRights,
    required TResult Function(String message) failure,
    required TResult Function(String transaction) leftChat,
    required TResult Function(String transaction) rightsChanged,
    required TResult Function(String transaction) nameUpdated,
    required TResult Function(String transaction) usersUpdated,
    required TResult Function(String message) message,
  }) {
    return usersUpdated(transaction);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String chatId, bool isDirect)? created,
    TResult? Function(String transaction)? notEnoughRights,
    TResult? Function(String message)? failure,
    TResult? Function(String transaction)? leftChat,
    TResult? Function(String transaction)? rightsChanged,
    TResult? Function(String transaction)? nameUpdated,
    TResult? Function(String transaction)? usersUpdated,
    TResult? Function(String message)? message,
  }) {
    return usersUpdated?.call(transaction);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String chatId, bool isDirect)? created,
    TResult Function(String transaction)? notEnoughRights,
    TResult Function(String message)? failure,
    TResult Function(String transaction)? leftChat,
    TResult Function(String transaction)? rightsChanged,
    TResult Function(String transaction)? nameUpdated,
    TResult Function(String transaction)? usersUpdated,
    TResult Function(String message)? message,
    required TResult orElse(),
  }) {
    if (usersUpdated != null) {
      return usersUpdated(transaction);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Created value) created,
    required TResult Function(_NotEnoughRights value) notEnoughRights,
    required TResult Function(_Failure value) failure,
    required TResult Function(_LeftChat value) leftChat,
    required TResult Function(_RightsChanged value) rightsChanged,
    required TResult Function(_NameUpdated value) nameUpdated,
    required TResult Function(_UsersUpdated value) usersUpdated,
    required TResult Function(_Message value) message,
  }) {
    return usersUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Created value)? created,
    TResult? Function(_NotEnoughRights value)? notEnoughRights,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_LeftChat value)? leftChat,
    TResult? Function(_RightsChanged value)? rightsChanged,
    TResult? Function(_NameUpdated value)? nameUpdated,
    TResult? Function(_UsersUpdated value)? usersUpdated,
    TResult? Function(_Message value)? message,
  }) {
    return usersUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Created value)? created,
    TResult Function(_NotEnoughRights value)? notEnoughRights,
    TResult Function(_Failure value)? failure,
    TResult Function(_LeftChat value)? leftChat,
    TResult Function(_RightsChanged value)? rightsChanged,
    TResult Function(_NameUpdated value)? nameUpdated,
    TResult Function(_UsersUpdated value)? usersUpdated,
    TResult Function(_Message value)? message,
    required TResult orElse(),
  }) {
    if (usersUpdated != null) {
      return usersUpdated(this);
    }
    return orElse();
  }
}

abstract class _UsersUpdated implements ChatManagerState {
  const factory _UsersUpdated(final String transaction) = _$_UsersUpdated;

  String get transaction;
  @JsonKey(ignore: true)
  _$$_UsersUpdatedCopyWith<_$_UsersUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_MessageCopyWith<$Res> {
  factory _$$_MessageCopyWith(
          _$_Message value, $Res Function(_$_Message) then) =
      __$$_MessageCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_MessageCopyWithImpl<$Res>
    extends _$ChatManagerStateCopyWithImpl<$Res, _$_Message>
    implements _$$_MessageCopyWith<$Res> {
  __$$_MessageCopyWithImpl(_$_Message _value, $Res Function(_$_Message) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_Message(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Message implements _Message {
  const _$_Message(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'ChatManagerState.message(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Message &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MessageCopyWith<_$_Message> get copyWith =>
      __$$_MessageCopyWithImpl<_$_Message>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String chatId, bool isDirect) created,
    required TResult Function(String transaction) notEnoughRights,
    required TResult Function(String message) failure,
    required TResult Function(String transaction) leftChat,
    required TResult Function(String transaction) rightsChanged,
    required TResult Function(String transaction) nameUpdated,
    required TResult Function(String transaction) usersUpdated,
    required TResult Function(String message) message,
  }) {
    return message(this.message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String chatId, bool isDirect)? created,
    TResult? Function(String transaction)? notEnoughRights,
    TResult? Function(String message)? failure,
    TResult? Function(String transaction)? leftChat,
    TResult? Function(String transaction)? rightsChanged,
    TResult? Function(String transaction)? nameUpdated,
    TResult? Function(String transaction)? usersUpdated,
    TResult? Function(String message)? message,
  }) {
    return message?.call(this.message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String chatId, bool isDirect)? created,
    TResult Function(String transaction)? notEnoughRights,
    TResult Function(String message)? failure,
    TResult Function(String transaction)? leftChat,
    TResult Function(String transaction)? rightsChanged,
    TResult Function(String transaction)? nameUpdated,
    TResult Function(String transaction)? usersUpdated,
    TResult Function(String message)? message,
    required TResult orElse(),
  }) {
    if (message != null) {
      return message(this.message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Created value) created,
    required TResult Function(_NotEnoughRights value) notEnoughRights,
    required TResult Function(_Failure value) failure,
    required TResult Function(_LeftChat value) leftChat,
    required TResult Function(_RightsChanged value) rightsChanged,
    required TResult Function(_NameUpdated value) nameUpdated,
    required TResult Function(_UsersUpdated value) usersUpdated,
    required TResult Function(_Message value) message,
  }) {
    return message(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Created value)? created,
    TResult? Function(_NotEnoughRights value)? notEnoughRights,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_LeftChat value)? leftChat,
    TResult? Function(_RightsChanged value)? rightsChanged,
    TResult? Function(_NameUpdated value)? nameUpdated,
    TResult? Function(_UsersUpdated value)? usersUpdated,
    TResult? Function(_Message value)? message,
  }) {
    return message?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Created value)? created,
    TResult Function(_NotEnoughRights value)? notEnoughRights,
    TResult Function(_Failure value)? failure,
    TResult Function(_LeftChat value)? leftChat,
    TResult Function(_RightsChanged value)? rightsChanged,
    TResult Function(_NameUpdated value)? nameUpdated,
    TResult Function(_UsersUpdated value)? usersUpdated,
    TResult Function(_Message value)? message,
    required TResult orElse(),
  }) {
    if (message != null) {
      return message(this);
    }
    return orElse();
  }
}

abstract class _Message implements ChatManagerState {
  const factory _Message(final String message) = _$_Message;

  String get message;
  @JsonKey(ignore: true)
  _$$_MessageCopyWith<_$_Message> get copyWith =>
      throw _privateConstructorUsedError;
}
