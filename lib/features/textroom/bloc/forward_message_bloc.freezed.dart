// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'forward_message_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ForwardMessageEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Room room, Function callback) forward,
    required TResult Function(String query) update,
    required TResult Function(
            String roomId, String eventId, List<String> dependentsIds)
        init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Room room, Function callback)? forward,
    TResult? Function(String query)? update,
    TResult? Function(
            String roomId, String eventId, List<String> dependentsIds)?
        init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Room room, Function callback)? forward,
    TResult Function(String query)? update,
    TResult Function(String roomId, String eventId, List<String> dependentsIds)?
        init,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ForwardForwardMessageEvent value) forward,
    required TResult Function(_UpdateForwardMessageEvent value) update,
    required TResult Function(_InitForwardMessageEvent value) init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ForwardForwardMessageEvent value)? forward,
    TResult? Function(_UpdateForwardMessageEvent value)? update,
    TResult? Function(_InitForwardMessageEvent value)? init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ForwardForwardMessageEvent value)? forward,
    TResult Function(_UpdateForwardMessageEvent value)? update,
    TResult Function(_InitForwardMessageEvent value)? init,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForwardMessageEventCopyWith<$Res> {
  factory $ForwardMessageEventCopyWith(
          ForwardMessageEvent value, $Res Function(ForwardMessageEvent) then) =
      _$ForwardMessageEventCopyWithImpl<$Res, ForwardMessageEvent>;
}

/// @nodoc
class _$ForwardMessageEventCopyWithImpl<$Res, $Val extends ForwardMessageEvent>
    implements $ForwardMessageEventCopyWith<$Res> {
  _$ForwardMessageEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ForwardForwardMessageEventCopyWith<$Res> {
  factory _$$_ForwardForwardMessageEventCopyWith(
          _$_ForwardForwardMessageEvent value,
          $Res Function(_$_ForwardForwardMessageEvent) then) =
      __$$_ForwardForwardMessageEventCopyWithImpl<$Res>;
  @useResult
  $Res call({Room room, Function callback});
}

/// @nodoc
class __$$_ForwardForwardMessageEventCopyWithImpl<$Res>
    extends _$ForwardMessageEventCopyWithImpl<$Res,
        _$_ForwardForwardMessageEvent>
    implements _$$_ForwardForwardMessageEventCopyWith<$Res> {
  __$$_ForwardForwardMessageEventCopyWithImpl(
      _$_ForwardForwardMessageEvent _value,
      $Res Function(_$_ForwardForwardMessageEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? room = null,
    Object? callback = null,
  }) {
    return _then(_$_ForwardForwardMessageEvent(
      null == room
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as Room,
      null == callback
          ? _value.callback
          : callback // ignore: cast_nullable_to_non_nullable
              as Function,
    ));
  }
}

/// @nodoc

class _$_ForwardForwardMessageEvent implements _ForwardForwardMessageEvent {
  const _$_ForwardForwardMessageEvent(this.room, this.callback);

  @override
  final Room room;
  @override
  final Function callback;

  @override
  String toString() {
    return 'ForwardMessageEvent.forward(room: $room, callback: $callback)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ForwardForwardMessageEvent &&
            (identical(other.room, room) || other.room == room) &&
            (identical(other.callback, callback) ||
                other.callback == callback));
  }

  @override
  int get hashCode => Object.hash(runtimeType, room, callback);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ForwardForwardMessageEventCopyWith<_$_ForwardForwardMessageEvent>
      get copyWith => __$$_ForwardForwardMessageEventCopyWithImpl<
          _$_ForwardForwardMessageEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Room room, Function callback) forward,
    required TResult Function(String query) update,
    required TResult Function(
            String roomId, String eventId, List<String> dependentsIds)
        init,
  }) {
    return forward(room, callback);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Room room, Function callback)? forward,
    TResult? Function(String query)? update,
    TResult? Function(
            String roomId, String eventId, List<String> dependentsIds)?
        init,
  }) {
    return forward?.call(room, callback);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Room room, Function callback)? forward,
    TResult Function(String query)? update,
    TResult Function(String roomId, String eventId, List<String> dependentsIds)?
        init,
    required TResult orElse(),
  }) {
    if (forward != null) {
      return forward(room, callback);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ForwardForwardMessageEvent value) forward,
    required TResult Function(_UpdateForwardMessageEvent value) update,
    required TResult Function(_InitForwardMessageEvent value) init,
  }) {
    return forward(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ForwardForwardMessageEvent value)? forward,
    TResult? Function(_UpdateForwardMessageEvent value)? update,
    TResult? Function(_InitForwardMessageEvent value)? init,
  }) {
    return forward?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ForwardForwardMessageEvent value)? forward,
    TResult Function(_UpdateForwardMessageEvent value)? update,
    TResult Function(_InitForwardMessageEvent value)? init,
    required TResult orElse(),
  }) {
    if (forward != null) {
      return forward(this);
    }
    return orElse();
  }
}

abstract class _ForwardForwardMessageEvent implements ForwardMessageEvent {
  const factory _ForwardForwardMessageEvent(
      final Room room, final Function callback) = _$_ForwardForwardMessageEvent;

  Room get room;
  Function get callback;
  @JsonKey(ignore: true)
  _$$_ForwardForwardMessageEventCopyWith<_$_ForwardForwardMessageEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdateForwardMessageEventCopyWith<$Res> {
  factory _$$_UpdateForwardMessageEventCopyWith(
          _$_UpdateForwardMessageEvent value,
          $Res Function(_$_UpdateForwardMessageEvent) then) =
      __$$_UpdateForwardMessageEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$_UpdateForwardMessageEventCopyWithImpl<$Res>
    extends _$ForwardMessageEventCopyWithImpl<$Res,
        _$_UpdateForwardMessageEvent>
    implements _$$_UpdateForwardMessageEventCopyWith<$Res> {
  __$$_UpdateForwardMessageEventCopyWithImpl(
      _$_UpdateForwardMessageEvent _value,
      $Res Function(_$_UpdateForwardMessageEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$_UpdateForwardMessageEvent(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UpdateForwardMessageEvent implements _UpdateForwardMessageEvent {
  const _$_UpdateForwardMessageEvent(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'ForwardMessageEvent.update(query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateForwardMessageEvent &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateForwardMessageEventCopyWith<_$_UpdateForwardMessageEvent>
      get copyWith => __$$_UpdateForwardMessageEventCopyWithImpl<
          _$_UpdateForwardMessageEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Room room, Function callback) forward,
    required TResult Function(String query) update,
    required TResult Function(
            String roomId, String eventId, List<String> dependentsIds)
        init,
  }) {
    return update(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Room room, Function callback)? forward,
    TResult? Function(String query)? update,
    TResult? Function(
            String roomId, String eventId, List<String> dependentsIds)?
        init,
  }) {
    return update?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Room room, Function callback)? forward,
    TResult Function(String query)? update,
    TResult Function(String roomId, String eventId, List<String> dependentsIds)?
        init,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ForwardForwardMessageEvent value) forward,
    required TResult Function(_UpdateForwardMessageEvent value) update,
    required TResult Function(_InitForwardMessageEvent value) init,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ForwardForwardMessageEvent value)? forward,
    TResult? Function(_UpdateForwardMessageEvent value)? update,
    TResult? Function(_InitForwardMessageEvent value)? init,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ForwardForwardMessageEvent value)? forward,
    TResult Function(_UpdateForwardMessageEvent value)? update,
    TResult Function(_InitForwardMessageEvent value)? init,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class _UpdateForwardMessageEvent implements ForwardMessageEvent {
  const factory _UpdateForwardMessageEvent(final String query) =
      _$_UpdateForwardMessageEvent;

  String get query;
  @JsonKey(ignore: true)
  _$$_UpdateForwardMessageEventCopyWith<_$_UpdateForwardMessageEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_InitForwardMessageEventCopyWith<$Res> {
  factory _$$_InitForwardMessageEventCopyWith(_$_InitForwardMessageEvent value,
          $Res Function(_$_InitForwardMessageEvent) then) =
      __$$_InitForwardMessageEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String roomId, String eventId, List<String> dependentsIds});
}

/// @nodoc
class __$$_InitForwardMessageEventCopyWithImpl<$Res>
    extends _$ForwardMessageEventCopyWithImpl<$Res, _$_InitForwardMessageEvent>
    implements _$$_InitForwardMessageEventCopyWith<$Res> {
  __$$_InitForwardMessageEventCopyWithImpl(_$_InitForwardMessageEvent _value,
      $Res Function(_$_InitForwardMessageEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? roomId = null,
    Object? eventId = null,
    Object? dependentsIds = null,
  }) {
    return _then(_$_InitForwardMessageEvent(
      roomId: null == roomId
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as String,
      eventId: null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
      dependentsIds: null == dependentsIds
          ? _value._dependentsIds
          : dependentsIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_InitForwardMessageEvent implements _InitForwardMessageEvent {
  const _$_InitForwardMessageEvent(
      {required this.roomId,
      required this.eventId,
      required final List<String> dependentsIds})
      : _dependentsIds = dependentsIds;

  @override
  final String roomId;
  @override
  final String eventId;
  final List<String> _dependentsIds;
  @override
  List<String> get dependentsIds {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dependentsIds);
  }

  @override
  String toString() {
    return 'ForwardMessageEvent.init(roomId: $roomId, eventId: $eventId, dependentsIds: $dependentsIds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InitForwardMessageEvent &&
            (identical(other.roomId, roomId) || other.roomId == roomId) &&
            (identical(other.eventId, eventId) || other.eventId == eventId) &&
            const DeepCollectionEquality()
                .equals(other._dependentsIds, _dependentsIds));
  }

  @override
  int get hashCode => Object.hash(runtimeType, roomId, eventId,
      const DeepCollectionEquality().hash(_dependentsIds));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitForwardMessageEventCopyWith<_$_InitForwardMessageEvent>
      get copyWith =>
          __$$_InitForwardMessageEventCopyWithImpl<_$_InitForwardMessageEvent>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Room room, Function callback) forward,
    required TResult Function(String query) update,
    required TResult Function(
            String roomId, String eventId, List<String> dependentsIds)
        init,
  }) {
    return init(roomId, eventId, dependentsIds);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Room room, Function callback)? forward,
    TResult? Function(String query)? update,
    TResult? Function(
            String roomId, String eventId, List<String> dependentsIds)?
        init,
  }) {
    return init?.call(roomId, eventId, dependentsIds);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Room room, Function callback)? forward,
    TResult Function(String query)? update,
    TResult Function(String roomId, String eventId, List<String> dependentsIds)?
        init,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(roomId, eventId, dependentsIds);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ForwardForwardMessageEvent value) forward,
    required TResult Function(_UpdateForwardMessageEvent value) update,
    required TResult Function(_InitForwardMessageEvent value) init,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ForwardForwardMessageEvent value)? forward,
    TResult? Function(_UpdateForwardMessageEvent value)? update,
    TResult? Function(_InitForwardMessageEvent value)? init,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ForwardForwardMessageEvent value)? forward,
    TResult Function(_UpdateForwardMessageEvent value)? update,
    TResult Function(_InitForwardMessageEvent value)? init,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _InitForwardMessageEvent implements ForwardMessageEvent {
  const factory _InitForwardMessageEvent(
      {required final String roomId,
      required final String eventId,
      required final List<String> dependentsIds}) = _$_InitForwardMessageEvent;

  String get roomId;
  String get eventId;
  List<String> get dependentsIds;
  @JsonKey(ignore: true)
  _$$_InitForwardMessageEventCopyWith<_$_InitForwardMessageEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ForwardMessageState {
  String get query => throw _privateConstructorUsedError;
  List<Room> get rooms => throw _privateConstructorUsedError;
  String get roomId => throw _privateConstructorUsedError;
  String get eventId => throw _privateConstructorUsedError;
  List<String> get dependentsIds => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;
  String? get failure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ForwardMessageStateCopyWith<ForwardMessageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForwardMessageStateCopyWith<$Res> {
  factory $ForwardMessageStateCopyWith(
          ForwardMessageState value, $Res Function(ForwardMessageState) then) =
      _$ForwardMessageStateCopyWithImpl<$Res, ForwardMessageState>;
  @useResult
  $Res call(
      {String query,
      List<Room> rooms,
      String roomId,
      String eventId,
      List<String> dependentsIds,
      bool loading,
      String? failure});
}

/// @nodoc
class _$ForwardMessageStateCopyWithImpl<$Res, $Val extends ForwardMessageState>
    implements $ForwardMessageStateCopyWith<$Res> {
  _$ForwardMessageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
    Object? rooms = null,
    Object? roomId = null,
    Object? eventId = null,
    Object? dependentsIds = null,
    Object? loading = null,
    Object? failure = freezed,
  }) {
    return _then(_value.copyWith(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      rooms: null == rooms
          ? _value.rooms
          : rooms // ignore: cast_nullable_to_non_nullable
              as List<Room>,
      roomId: null == roomId
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as String,
      eventId: null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
      dependentsIds: null == dependentsIds
          ? _value.dependentsIds
          : dependentsIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ForwardMessageStateCopyWith<$Res>
    implements $ForwardMessageStateCopyWith<$Res> {
  factory _$$_ForwardMessageStateCopyWith(_$_ForwardMessageState value,
          $Res Function(_$_ForwardMessageState) then) =
      __$$_ForwardMessageStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String query,
      List<Room> rooms,
      String roomId,
      String eventId,
      List<String> dependentsIds,
      bool loading,
      String? failure});
}

/// @nodoc
class __$$_ForwardMessageStateCopyWithImpl<$Res>
    extends _$ForwardMessageStateCopyWithImpl<$Res, _$_ForwardMessageState>
    implements _$$_ForwardMessageStateCopyWith<$Res> {
  __$$_ForwardMessageStateCopyWithImpl(_$_ForwardMessageState _value,
      $Res Function(_$_ForwardMessageState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
    Object? rooms = null,
    Object? roomId = null,
    Object? eventId = null,
    Object? dependentsIds = null,
    Object? loading = null,
    Object? failure = freezed,
  }) {
    return _then(_$_ForwardMessageState(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      rooms: null == rooms
          ? _value._rooms
          : rooms // ignore: cast_nullable_to_non_nullable
              as List<Room>,
      roomId: null == roomId
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as String,
      eventId: null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
      dependentsIds: null == dependentsIds
          ? _value._dependentsIds
          : dependentsIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_ForwardMessageState implements _ForwardMessageState {
  const _$_ForwardMessageState(
      {required this.query,
      required final List<Room> rooms,
      required this.roomId,
      required this.eventId,
      required final List<String> dependentsIds,
      required this.loading,
      this.failure})
      : _rooms = rooms,
        _dependentsIds = dependentsIds;

  @override
  final String query;
  final List<Room> _rooms;
  @override
  List<Room> get rooms {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rooms);
  }

  @override
  final String roomId;
  @override
  final String eventId;
  final List<String> _dependentsIds;
  @override
  List<String> get dependentsIds {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dependentsIds);
  }

  @override
  final bool loading;
  @override
  final String? failure;

  @override
  String toString() {
    return 'ForwardMessageState(query: $query, rooms: $rooms, roomId: $roomId, eventId: $eventId, dependentsIds: $dependentsIds, loading: $loading, failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ForwardMessageState &&
            (identical(other.query, query) || other.query == query) &&
            const DeepCollectionEquality().equals(other._rooms, _rooms) &&
            (identical(other.roomId, roomId) || other.roomId == roomId) &&
            (identical(other.eventId, eventId) || other.eventId == eventId) &&
            const DeepCollectionEquality()
                .equals(other._dependentsIds, _dependentsIds) &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      query,
      const DeepCollectionEquality().hash(_rooms),
      roomId,
      eventId,
      const DeepCollectionEquality().hash(_dependentsIds),
      loading,
      failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ForwardMessageStateCopyWith<_$_ForwardMessageState> get copyWith =>
      __$$_ForwardMessageStateCopyWithImpl<_$_ForwardMessageState>(
          this, _$identity);
}

abstract class _ForwardMessageState implements ForwardMessageState {
  const factory _ForwardMessageState(
      {required final String query,
      required final List<Room> rooms,
      required final String roomId,
      required final String eventId,
      required final List<String> dependentsIds,
      required final bool loading,
      final String? failure}) = _$_ForwardMessageState;

  @override
  String get query;
  @override
  List<Room> get rooms;
  @override
  String get roomId;
  @override
  String get eventId;
  @override
  List<String> get dependentsIds;
  @override
  bool get loading;
  @override
  String? get failure;
  @override
  @JsonKey(ignore: true)
  _$$_ForwardMessageStateCopyWith<_$_ForwardMessageState> get copyWith =>
      throw _privateConstructorUsedError;
}
