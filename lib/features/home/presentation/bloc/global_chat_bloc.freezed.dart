// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'global_chat_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GlobalChatEvent {
  List<Room>? get publicRooms => throw _privateConstructorUsedError;
  int? get publicRoomsUnreadCount => throw _privateConstructorUsedError;
  List<Room>? get privateRooms => throw _privateConstructorUsedError;
  int? get privateRoomsUnreadCount => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<Room>? publicRooms,
            int? publicRoomsUnreadCount,
            List<Room>? privateRooms,
            int? privateRoomsUnreadCount)
        changes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Room>? publicRooms, int? publicRoomsUnreadCount,
            List<Room>? privateRooms, int? privateRoomsUnreadCount)?
        changes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Room>? publicRooms, int? publicRoomsUnreadCount,
            List<Room>? privateRooms, int? privateRoomsUnreadCount)?
        changes,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GlobalChatChanges value) changes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GlobalChatChanges value)? changes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GlobalChatChanges value)? changes,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GlobalChatEventCopyWith<GlobalChatEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GlobalChatEventCopyWith<$Res> {
  factory $GlobalChatEventCopyWith(
          GlobalChatEvent value, $Res Function(GlobalChatEvent) then) =
      _$GlobalChatEventCopyWithImpl<$Res, GlobalChatEvent>;
  @useResult
  $Res call(
      {List<Room>? publicRooms,
      int? publicRoomsUnreadCount,
      List<Room>? privateRooms,
      int? privateRoomsUnreadCount});
}

/// @nodoc
class _$GlobalChatEventCopyWithImpl<$Res, $Val extends GlobalChatEvent>
    implements $GlobalChatEventCopyWith<$Res> {
  _$GlobalChatEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? publicRooms = freezed,
    Object? publicRoomsUnreadCount = freezed,
    Object? privateRooms = freezed,
    Object? privateRoomsUnreadCount = freezed,
  }) {
    return _then(_value.copyWith(
      publicRooms: freezed == publicRooms
          ? _value.publicRooms
          : publicRooms // ignore: cast_nullable_to_non_nullable
              as List<Room>?,
      publicRoomsUnreadCount: freezed == publicRoomsUnreadCount
          ? _value.publicRoomsUnreadCount
          : publicRoomsUnreadCount // ignore: cast_nullable_to_non_nullable
              as int?,
      privateRooms: freezed == privateRooms
          ? _value.privateRooms
          : privateRooms // ignore: cast_nullable_to_non_nullable
              as List<Room>?,
      privateRoomsUnreadCount: freezed == privateRoomsUnreadCount
          ? _value.privateRoomsUnreadCount
          : privateRoomsUnreadCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GlobalChatChangesCopyWith<$Res>
    implements $GlobalChatEventCopyWith<$Res> {
  factory _$$GlobalChatChangesCopyWith(
          _$GlobalChatChanges value, $Res Function(_$GlobalChatChanges) then) =
      __$$GlobalChatChangesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Room>? publicRooms,
      int? publicRoomsUnreadCount,
      List<Room>? privateRooms,
      int? privateRoomsUnreadCount});
}

/// @nodoc
class __$$GlobalChatChangesCopyWithImpl<$Res>
    extends _$GlobalChatEventCopyWithImpl<$Res, _$GlobalChatChanges>
    implements _$$GlobalChatChangesCopyWith<$Res> {
  __$$GlobalChatChangesCopyWithImpl(
      _$GlobalChatChanges _value, $Res Function(_$GlobalChatChanges) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? publicRooms = freezed,
    Object? publicRoomsUnreadCount = freezed,
    Object? privateRooms = freezed,
    Object? privateRoomsUnreadCount = freezed,
  }) {
    return _then(_$GlobalChatChanges(
      publicRooms: freezed == publicRooms
          ? _value._publicRooms
          : publicRooms // ignore: cast_nullable_to_non_nullable
              as List<Room>?,
      publicRoomsUnreadCount: freezed == publicRoomsUnreadCount
          ? _value.publicRoomsUnreadCount
          : publicRoomsUnreadCount // ignore: cast_nullable_to_non_nullable
              as int?,
      privateRooms: freezed == privateRooms
          ? _value._privateRooms
          : privateRooms // ignore: cast_nullable_to_non_nullable
              as List<Room>?,
      privateRoomsUnreadCount: freezed == privateRoomsUnreadCount
          ? _value.privateRoomsUnreadCount
          : privateRoomsUnreadCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$GlobalChatChanges implements GlobalChatChanges {
  const _$GlobalChatChanges(
      {final List<Room>? publicRooms,
      this.publicRoomsUnreadCount,
      final List<Room>? privateRooms,
      this.privateRoomsUnreadCount})
      : _publicRooms = publicRooms,
        _privateRooms = privateRooms;

  final List<Room>? _publicRooms;
  @override
  List<Room>? get publicRooms {
    final value = _publicRooms;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? publicRoomsUnreadCount;
  final List<Room>? _privateRooms;
  @override
  List<Room>? get privateRooms {
    final value = _privateRooms;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? privateRoomsUnreadCount;

  @override
  String toString() {
    return 'GlobalChatEvent.changes(publicRooms: $publicRooms, publicRoomsUnreadCount: $publicRoomsUnreadCount, privateRooms: $privateRooms, privateRoomsUnreadCount: $privateRoomsUnreadCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GlobalChatChanges &&
            const DeepCollectionEquality()
                .equals(other._publicRooms, _publicRooms) &&
            (identical(other.publicRoomsUnreadCount, publicRoomsUnreadCount) ||
                other.publicRoomsUnreadCount == publicRoomsUnreadCount) &&
            const DeepCollectionEquality()
                .equals(other._privateRooms, _privateRooms) &&
            (identical(
                    other.privateRoomsUnreadCount, privateRoomsUnreadCount) ||
                other.privateRoomsUnreadCount == privateRoomsUnreadCount));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_publicRooms),
      publicRoomsUnreadCount,
      const DeepCollectionEquality().hash(_privateRooms),
      privateRoomsUnreadCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GlobalChatChangesCopyWith<_$GlobalChatChanges> get copyWith =>
      __$$GlobalChatChangesCopyWithImpl<_$GlobalChatChanges>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<Room>? publicRooms,
            int? publicRoomsUnreadCount,
            List<Room>? privateRooms,
            int? privateRoomsUnreadCount)
        changes,
  }) {
    return changes(publicRooms, publicRoomsUnreadCount, privateRooms,
        privateRoomsUnreadCount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Room>? publicRooms, int? publicRoomsUnreadCount,
            List<Room>? privateRooms, int? privateRoomsUnreadCount)?
        changes,
  }) {
    return changes?.call(publicRooms, publicRoomsUnreadCount, privateRooms,
        privateRoomsUnreadCount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Room>? publicRooms, int? publicRoomsUnreadCount,
            List<Room>? privateRooms, int? privateRoomsUnreadCount)?
        changes,
    required TResult orElse(),
  }) {
    if (changes != null) {
      return changes(publicRooms, publicRoomsUnreadCount, privateRooms,
          privateRoomsUnreadCount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GlobalChatChanges value) changes,
  }) {
    return changes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GlobalChatChanges value)? changes,
  }) {
    return changes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GlobalChatChanges value)? changes,
    required TResult orElse(),
  }) {
    if (changes != null) {
      return changes(this);
    }
    return orElse();
  }
}

abstract class GlobalChatChanges implements GlobalChatEvent {
  const factory GlobalChatChanges(
      {final List<Room>? publicRooms,
      final int? publicRoomsUnreadCount,
      final List<Room>? privateRooms,
      final int? privateRoomsUnreadCount}) = _$GlobalChatChanges;

  @override
  List<Room>? get publicRooms;
  @override
  int? get publicRoomsUnreadCount;
  @override
  List<Room>? get privateRooms;
  @override
  int? get privateRoomsUnreadCount;
  @override
  @JsonKey(ignore: true)
  _$$GlobalChatChangesCopyWith<_$GlobalChatChanges> get copyWith =>
      throw _privateConstructorUsedError;
}
