// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'room_list_item_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RoomListItemEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(
            String? opponentUserId,
            String? displayName,
            bool? isMuted,
            DateTime? lastUpdateTime,
            String? lastMessage,
            int? unreadCount)
        changes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(
            String? opponentUserId,
            String? displayName,
            bool? isMuted,
            DateTime? lastUpdateTime,
            String? lastMessage,
            int? unreadCount)?
        changes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String? opponentUserId, String? displayName, bool? isMuted,
            DateTime? lastUpdateTime, String? lastMessage, int? unreadCount)?
        changes,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RoomListItemInit value) init,
    required TResult Function(_RoomListItemChanges value) changes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RoomListItemInit value)? init,
    TResult? Function(_RoomListItemChanges value)? changes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RoomListItemInit value)? init,
    TResult Function(_RoomListItemChanges value)? changes,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomListItemEventCopyWith<$Res> {
  factory $RoomListItemEventCopyWith(
          RoomListItemEvent value, $Res Function(RoomListItemEvent) then) =
      _$RoomListItemEventCopyWithImpl<$Res, RoomListItemEvent>;
}

/// @nodoc
class _$RoomListItemEventCopyWithImpl<$Res, $Val extends RoomListItemEvent>
    implements $RoomListItemEventCopyWith<$Res> {
  _$RoomListItemEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_RoomListItemInitCopyWith<$Res> {
  factory _$$_RoomListItemInitCopyWith(
          _$_RoomListItemInit value, $Res Function(_$_RoomListItemInit) then) =
      __$$_RoomListItemInitCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_RoomListItemInitCopyWithImpl<$Res>
    extends _$RoomListItemEventCopyWithImpl<$Res, _$_RoomListItemInit>
    implements _$$_RoomListItemInitCopyWith<$Res> {
  __$$_RoomListItemInitCopyWithImpl(
      _$_RoomListItemInit _value, $Res Function(_$_RoomListItemInit) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_RoomListItemInit implements _RoomListItemInit {
  const _$_RoomListItemInit();

  @override
  String toString() {
    return 'RoomListItemEvent.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_RoomListItemInit);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(
            String? opponentUserId,
            String? displayName,
            bool? isMuted,
            DateTime? lastUpdateTime,
            String? lastMessage,
            int? unreadCount)
        changes,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(
            String? opponentUserId,
            String? displayName,
            bool? isMuted,
            DateTime? lastUpdateTime,
            String? lastMessage,
            int? unreadCount)?
        changes,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String? opponentUserId, String? displayName, bool? isMuted,
            DateTime? lastUpdateTime, String? lastMessage, int? unreadCount)?
        changes,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RoomListItemInit value) init,
    required TResult Function(_RoomListItemChanges value) changes,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RoomListItemInit value)? init,
    TResult? Function(_RoomListItemChanges value)? changes,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RoomListItemInit value)? init,
    TResult Function(_RoomListItemChanges value)? changes,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _RoomListItemInit implements RoomListItemEvent {
  const factory _RoomListItemInit() = _$_RoomListItemInit;
}

/// @nodoc
abstract class _$$_RoomListItemChangesCopyWith<$Res> {
  factory _$$_RoomListItemChangesCopyWith(_$_RoomListItemChanges value,
          $Res Function(_$_RoomListItemChanges) then) =
      __$$_RoomListItemChangesCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String? opponentUserId,
      String? displayName,
      bool? isMuted,
      DateTime? lastUpdateTime,
      String? lastMessage,
      int? unreadCount});
}

/// @nodoc
class __$$_RoomListItemChangesCopyWithImpl<$Res>
    extends _$RoomListItemEventCopyWithImpl<$Res, _$_RoomListItemChanges>
    implements _$$_RoomListItemChangesCopyWith<$Res> {
  __$$_RoomListItemChangesCopyWithImpl(_$_RoomListItemChanges _value,
      $Res Function(_$_RoomListItemChanges) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? opponentUserId = freezed,
    Object? displayName = freezed,
    Object? isMuted = freezed,
    Object? lastUpdateTime = freezed,
    Object? lastMessage = freezed,
    Object? unreadCount = freezed,
  }) {
    return _then(_$_RoomListItemChanges(
      opponentUserId: freezed == opponentUserId
          ? _value.opponentUserId
          : opponentUserId // ignore: cast_nullable_to_non_nullable
              as String?,
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      isMuted: freezed == isMuted
          ? _value.isMuted
          : isMuted // ignore: cast_nullable_to_non_nullable
              as bool?,
      lastUpdateTime: freezed == lastUpdateTime
          ? _value.lastUpdateTime
          : lastUpdateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastMessage: freezed == lastMessage
          ? _value.lastMessage
          : lastMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      unreadCount: freezed == unreadCount
          ? _value.unreadCount
          : unreadCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_RoomListItemChanges implements _RoomListItemChanges {
  const _$_RoomListItemChanges(
      {this.opponentUserId,
      this.displayName,
      this.isMuted,
      this.lastUpdateTime,
      this.lastMessage,
      this.unreadCount});

  @override
  final String? opponentUserId;
  @override
  final String? displayName;
  @override
  final bool? isMuted;
  @override
  final DateTime? lastUpdateTime;
  @override
  final String? lastMessage;
  @override
  final int? unreadCount;

  @override
  String toString() {
    return 'RoomListItemEvent.changes(opponentUserId: $opponentUserId, displayName: $displayName, isMuted: $isMuted, lastUpdateTime: $lastUpdateTime, lastMessage: $lastMessage, unreadCount: $unreadCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RoomListItemChanges &&
            (identical(other.opponentUserId, opponentUserId) ||
                other.opponentUserId == opponentUserId) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.isMuted, isMuted) || other.isMuted == isMuted) &&
            (identical(other.lastUpdateTime, lastUpdateTime) ||
                other.lastUpdateTime == lastUpdateTime) &&
            (identical(other.lastMessage, lastMessage) ||
                other.lastMessage == lastMessage) &&
            (identical(other.unreadCount, unreadCount) ||
                other.unreadCount == unreadCount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, opponentUserId, displayName,
      isMuted, lastUpdateTime, lastMessage, unreadCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RoomListItemChangesCopyWith<_$_RoomListItemChanges> get copyWith =>
      __$$_RoomListItemChangesCopyWithImpl<_$_RoomListItemChanges>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(
            String? opponentUserId,
            String? displayName,
            bool? isMuted,
            DateTime? lastUpdateTime,
            String? lastMessage,
            int? unreadCount)
        changes,
  }) {
    return changes(opponentUserId, displayName, isMuted, lastUpdateTime,
        lastMessage, unreadCount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(
            String? opponentUserId,
            String? displayName,
            bool? isMuted,
            DateTime? lastUpdateTime,
            String? lastMessage,
            int? unreadCount)?
        changes,
  }) {
    return changes?.call(opponentUserId, displayName, isMuted, lastUpdateTime,
        lastMessage, unreadCount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String? opponentUserId, String? displayName, bool? isMuted,
            DateTime? lastUpdateTime, String? lastMessage, int? unreadCount)?
        changes,
    required TResult orElse(),
  }) {
    if (changes != null) {
      return changes(opponentUserId, displayName, isMuted, lastUpdateTime,
          lastMessage, unreadCount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RoomListItemInit value) init,
    required TResult Function(_RoomListItemChanges value) changes,
  }) {
    return changes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RoomListItemInit value)? init,
    TResult? Function(_RoomListItemChanges value)? changes,
  }) {
    return changes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RoomListItemInit value)? init,
    TResult Function(_RoomListItemChanges value)? changes,
    required TResult orElse(),
  }) {
    if (changes != null) {
      return changes(this);
    }
    return orElse();
  }
}

abstract class _RoomListItemChanges implements RoomListItemEvent {
  const factory _RoomListItemChanges(
      {final String? opponentUserId,
      final String? displayName,
      final bool? isMuted,
      final DateTime? lastUpdateTime,
      final String? lastMessage,
      final int? unreadCount}) = _$_RoomListItemChanges;

  String? get opponentUserId;
  String? get displayName;
  bool? get isMuted;
  DateTime? get lastUpdateTime;
  String? get lastMessage;
  int? get unreadCount;
  @JsonKey(ignore: true)
  _$$_RoomListItemChangesCopyWith<_$_RoomListItemChanges> get copyWith =>
      throw _privateConstructorUsedError;
}
