// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payload.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Payload _$PayloadFromJson(Map<String, dynamic> json) {
  switch (json['action']) {
    case 'room_list':
      return _RoomListPayload.fromJson(json);
    case 'hangup':
      return _HangUpPayload.fromJson(json);
    case 'reject':
      return _RejectPayload.fromJson(json);
    case 'busy':
      return _BusyPayload.fromJson(json);
    case 'speak':
      return _SpeakPayload.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json, 'action', 'Payload', 'Invalid union type "${json['action']}"!');
  }
}

/// @nodoc
mixin _$Payload {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(@JsonKey(name: 'rooms') List<CallMeta>? callsMeta)
        room_list,
    required TResult Function(@JsonKey(name: 'room') String number,
            @JsonKey(name: 'user_id') int dlsId)
        hangup,
    required TResult Function(@JsonKey(name: 'room') String number,
            @JsonKey(name: 'user_id') int dlsId)
        reject,
    required TResult Function(@JsonKey(name: 'room') String number,
            @JsonKey(name: 'user_id') int dlsId)
        busy,
    required TResult Function(@JsonKey(name: 'room') CallMeta callMeta) speak,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(@JsonKey(name: 'rooms') List<CallMeta>? callsMeta)?
        room_list,
    TResult? Function(@JsonKey(name: 'room') String number,
            @JsonKey(name: 'user_id') int dlsId)?
        hangup,
    TResult? Function(@JsonKey(name: 'room') String number,
            @JsonKey(name: 'user_id') int dlsId)?
        reject,
    TResult? Function(@JsonKey(name: 'room') String number,
            @JsonKey(name: 'user_id') int dlsId)?
        busy,
    TResult? Function(@JsonKey(name: 'room') CallMeta callMeta)? speak,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(@JsonKey(name: 'rooms') List<CallMeta>? callsMeta)?
        room_list,
    TResult Function(@JsonKey(name: 'room') String number,
            @JsonKey(name: 'user_id') int dlsId)?
        hangup,
    TResult Function(@JsonKey(name: 'room') String number,
            @JsonKey(name: 'user_id') int dlsId)?
        reject,
    TResult Function(@JsonKey(name: 'room') String number,
            @JsonKey(name: 'user_id') int dlsId)?
        busy,
    TResult Function(@JsonKey(name: 'room') CallMeta callMeta)? speak,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RoomListPayload value) room_list,
    required TResult Function(_HangUpPayload value) hangup,
    required TResult Function(_RejectPayload value) reject,
    required TResult Function(_BusyPayload value) busy,
    required TResult Function(_SpeakPayload value) speak,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RoomListPayload value)? room_list,
    TResult? Function(_HangUpPayload value)? hangup,
    TResult? Function(_RejectPayload value)? reject,
    TResult? Function(_BusyPayload value)? busy,
    TResult? Function(_SpeakPayload value)? speak,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RoomListPayload value)? room_list,
    TResult Function(_HangUpPayload value)? hangup,
    TResult Function(_RejectPayload value)? reject,
    TResult Function(_BusyPayload value)? busy,
    TResult Function(_SpeakPayload value)? speak,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PayloadCopyWith<$Res> {
  factory $PayloadCopyWith(Payload value, $Res Function(Payload) then) =
      _$PayloadCopyWithImpl<$Res, Payload>;
}

/// @nodoc
class _$PayloadCopyWithImpl<$Res, $Val extends Payload>
    implements $PayloadCopyWith<$Res> {
  _$PayloadCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_RoomListPayloadCopyWith<$Res> {
  factory _$$_RoomListPayloadCopyWith(
          _$_RoomListPayload value, $Res Function(_$_RoomListPayload) then) =
      __$$_RoomListPayloadCopyWithImpl<$Res>;
  @useResult
  $Res call({@JsonKey(name: 'rooms') List<CallMeta>? callsMeta});
}

/// @nodoc
class __$$_RoomListPayloadCopyWithImpl<$Res>
    extends _$PayloadCopyWithImpl<$Res, _$_RoomListPayload>
    implements _$$_RoomListPayloadCopyWith<$Res> {
  __$$_RoomListPayloadCopyWithImpl(
      _$_RoomListPayload _value, $Res Function(_$_RoomListPayload) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? callsMeta = freezed,
  }) {
    return _then(_$_RoomListPayload(
      callsMeta: freezed == callsMeta
          ? _value._callsMeta
          : callsMeta // ignore: cast_nullable_to_non_nullable
              as List<CallMeta>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RoomListPayload extends _RoomListPayload {
  _$_RoomListPayload(
      {@JsonKey(name: 'rooms') required final List<CallMeta>? callsMeta,
      final String? $type})
      : _callsMeta = callsMeta,
        $type = $type ?? 'room_list',
        super._();

  factory _$_RoomListPayload.fromJson(Map<String, dynamic> json) =>
      _$$_RoomListPayloadFromJson(json);

  final List<CallMeta>? _callsMeta;
  @override
  @JsonKey(name: 'rooms')
  List<CallMeta>? get callsMeta {
    final value = _callsMeta;
    if (value == null) return null;
    if (_callsMeta is EqualUnmodifiableListView) return _callsMeta;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @JsonKey(name: 'action')
  final String $type;

  @override
  String toString() {
    return 'Payload.room_list(callsMeta: $callsMeta)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RoomListPayload &&
            const DeepCollectionEquality()
                .equals(other._callsMeta, _callsMeta));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_callsMeta));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RoomListPayloadCopyWith<_$_RoomListPayload> get copyWith =>
      __$$_RoomListPayloadCopyWithImpl<_$_RoomListPayload>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(@JsonKey(name: 'rooms') List<CallMeta>? callsMeta)
        room_list,
    required TResult Function(@JsonKey(name: 'room') String number,
            @JsonKey(name: 'user_id') int dlsId)
        hangup,
    required TResult Function(@JsonKey(name: 'room') String number,
            @JsonKey(name: 'user_id') int dlsId)
        reject,
    required TResult Function(@JsonKey(name: 'room') String number,
            @JsonKey(name: 'user_id') int dlsId)
        busy,
    required TResult Function(@JsonKey(name: 'room') CallMeta callMeta) speak,
  }) {
    return room_list(callsMeta);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(@JsonKey(name: 'rooms') List<CallMeta>? callsMeta)?
        room_list,
    TResult? Function(@JsonKey(name: 'room') String number,
            @JsonKey(name: 'user_id') int dlsId)?
        hangup,
    TResult? Function(@JsonKey(name: 'room') String number,
            @JsonKey(name: 'user_id') int dlsId)?
        reject,
    TResult? Function(@JsonKey(name: 'room') String number,
            @JsonKey(name: 'user_id') int dlsId)?
        busy,
    TResult? Function(@JsonKey(name: 'room') CallMeta callMeta)? speak,
  }) {
    return room_list?.call(callsMeta);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(@JsonKey(name: 'rooms') List<CallMeta>? callsMeta)?
        room_list,
    TResult Function(@JsonKey(name: 'room') String number,
            @JsonKey(name: 'user_id') int dlsId)?
        hangup,
    TResult Function(@JsonKey(name: 'room') String number,
            @JsonKey(name: 'user_id') int dlsId)?
        reject,
    TResult Function(@JsonKey(name: 'room') String number,
            @JsonKey(name: 'user_id') int dlsId)?
        busy,
    TResult Function(@JsonKey(name: 'room') CallMeta callMeta)? speak,
    required TResult orElse(),
  }) {
    if (room_list != null) {
      return room_list(callsMeta);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RoomListPayload value) room_list,
    required TResult Function(_HangUpPayload value) hangup,
    required TResult Function(_RejectPayload value) reject,
    required TResult Function(_BusyPayload value) busy,
    required TResult Function(_SpeakPayload value) speak,
  }) {
    return room_list(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RoomListPayload value)? room_list,
    TResult? Function(_HangUpPayload value)? hangup,
    TResult? Function(_RejectPayload value)? reject,
    TResult? Function(_BusyPayload value)? busy,
    TResult? Function(_SpeakPayload value)? speak,
  }) {
    return room_list?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RoomListPayload value)? room_list,
    TResult Function(_HangUpPayload value)? hangup,
    TResult Function(_RejectPayload value)? reject,
    TResult Function(_BusyPayload value)? busy,
    TResult Function(_SpeakPayload value)? speak,
    required TResult orElse(),
  }) {
    if (room_list != null) {
      return room_list(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_RoomListPayloadToJson(
      this,
    );
  }
}

abstract class _RoomListPayload extends Payload {
  factory _RoomListPayload(
          {@JsonKey(name: 'rooms') required final List<CallMeta>? callsMeta}) =
      _$_RoomListPayload;
  _RoomListPayload._() : super._();

  factory _RoomListPayload.fromJson(Map<String, dynamic> json) =
      _$_RoomListPayload.fromJson;

  @JsonKey(name: 'rooms')
  List<CallMeta>? get callsMeta;
  @JsonKey(ignore: true)
  _$$_RoomListPayloadCopyWith<_$_RoomListPayload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_HangUpPayloadCopyWith<$Res> {
  factory _$$_HangUpPayloadCopyWith(
          _$_HangUpPayload value, $Res Function(_$_HangUpPayload) then) =
      __$$_HangUpPayloadCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {@JsonKey(name: 'room') String number,
      @JsonKey(name: 'user_id') int dlsId});
}

/// @nodoc
class __$$_HangUpPayloadCopyWithImpl<$Res>
    extends _$PayloadCopyWithImpl<$Res, _$_HangUpPayload>
    implements _$$_HangUpPayloadCopyWith<$Res> {
  __$$_HangUpPayloadCopyWithImpl(
      _$_HangUpPayload _value, $Res Function(_$_HangUpPayload) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
    Object? dlsId = null,
  }) {
    return _then(_$_HangUpPayload(
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
      dlsId: null == dlsId
          ? _value.dlsId
          : dlsId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HangUpPayload extends _HangUpPayload {
  _$_HangUpPayload(
      {@JsonKey(name: 'room') required this.number,
      @JsonKey(name: 'user_id') required this.dlsId,
      final String? $type})
      : $type = $type ?? 'hangup',
        super._();

  factory _$_HangUpPayload.fromJson(Map<String, dynamic> json) =>
      _$$_HangUpPayloadFromJson(json);

  @override
  @JsonKey(name: 'room')
  final String number;
  @override
  @JsonKey(name: 'user_id')
  final int dlsId;

  @JsonKey(name: 'action')
  final String $type;

  @override
  String toString() {
    return 'Payload.hangup(number: $number, dlsId: $dlsId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HangUpPayload &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.dlsId, dlsId) || other.dlsId == dlsId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, number, dlsId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HangUpPayloadCopyWith<_$_HangUpPayload> get copyWith =>
      __$$_HangUpPayloadCopyWithImpl<_$_HangUpPayload>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(@JsonKey(name: 'rooms') List<CallMeta>? callsMeta)
        room_list,
    required TResult Function(@JsonKey(name: 'room') String number,
            @JsonKey(name: 'user_id') int dlsId)
        hangup,
    required TResult Function(@JsonKey(name: 'room') String number,
            @JsonKey(name: 'user_id') int dlsId)
        reject,
    required TResult Function(@JsonKey(name: 'room') String number,
            @JsonKey(name: 'user_id') int dlsId)
        busy,
    required TResult Function(@JsonKey(name: 'room') CallMeta callMeta) speak,
  }) {
    return hangup(number, dlsId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(@JsonKey(name: 'rooms') List<CallMeta>? callsMeta)?
        room_list,
    TResult? Function(@JsonKey(name: 'room') String number,
            @JsonKey(name: 'user_id') int dlsId)?
        hangup,
    TResult? Function(@JsonKey(name: 'room') String number,
            @JsonKey(name: 'user_id') int dlsId)?
        reject,
    TResult? Function(@JsonKey(name: 'room') String number,
            @JsonKey(name: 'user_id') int dlsId)?
        busy,
    TResult? Function(@JsonKey(name: 'room') CallMeta callMeta)? speak,
  }) {
    return hangup?.call(number, dlsId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(@JsonKey(name: 'rooms') List<CallMeta>? callsMeta)?
        room_list,
    TResult Function(@JsonKey(name: 'room') String number,
            @JsonKey(name: 'user_id') int dlsId)?
        hangup,
    TResult Function(@JsonKey(name: 'room') String number,
            @JsonKey(name: 'user_id') int dlsId)?
        reject,
    TResult Function(@JsonKey(name: 'room') String number,
            @JsonKey(name: 'user_id') int dlsId)?
        busy,
    TResult Function(@JsonKey(name: 'room') CallMeta callMeta)? speak,
    required TResult orElse(),
  }) {
    if (hangup != null) {
      return hangup(number, dlsId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RoomListPayload value) room_list,
    required TResult Function(_HangUpPayload value) hangup,
    required TResult Function(_RejectPayload value) reject,
    required TResult Function(_BusyPayload value) busy,
    required TResult Function(_SpeakPayload value) speak,
  }) {
    return hangup(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RoomListPayload value)? room_list,
    TResult? Function(_HangUpPayload value)? hangup,
    TResult? Function(_RejectPayload value)? reject,
    TResult? Function(_BusyPayload value)? busy,
    TResult? Function(_SpeakPayload value)? speak,
  }) {
    return hangup?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RoomListPayload value)? room_list,
    TResult Function(_HangUpPayload value)? hangup,
    TResult Function(_RejectPayload value)? reject,
    TResult Function(_BusyPayload value)? busy,
    TResult Function(_SpeakPayload value)? speak,
    required TResult orElse(),
  }) {
    if (hangup != null) {
      return hangup(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_HangUpPayloadToJson(
      this,
    );
  }
}

abstract class _HangUpPayload extends Payload {
  factory _HangUpPayload(
      {@JsonKey(name: 'room') required final String number,
      @JsonKey(name: 'user_id') required final int dlsId}) = _$_HangUpPayload;
  _HangUpPayload._() : super._();

  factory _HangUpPayload.fromJson(Map<String, dynamic> json) =
      _$_HangUpPayload.fromJson;

  @JsonKey(name: 'room')
  String get number;
  @JsonKey(name: 'user_id')
  int get dlsId;
  @JsonKey(ignore: true)
  _$$_HangUpPayloadCopyWith<_$_HangUpPayload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RejectPayloadCopyWith<$Res> {
  factory _$$_RejectPayloadCopyWith(
          _$_RejectPayload value, $Res Function(_$_RejectPayload) then) =
      __$$_RejectPayloadCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {@JsonKey(name: 'room') String number,
      @JsonKey(name: 'user_id') int dlsId});
}

/// @nodoc
class __$$_RejectPayloadCopyWithImpl<$Res>
    extends _$PayloadCopyWithImpl<$Res, _$_RejectPayload>
    implements _$$_RejectPayloadCopyWith<$Res> {
  __$$_RejectPayloadCopyWithImpl(
      _$_RejectPayload _value, $Res Function(_$_RejectPayload) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
    Object? dlsId = null,
  }) {
    return _then(_$_RejectPayload(
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
      dlsId: null == dlsId
          ? _value.dlsId
          : dlsId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RejectPayload extends _RejectPayload {
  _$_RejectPayload(
      {@JsonKey(name: 'room') required this.number,
      @JsonKey(name: 'user_id') required this.dlsId,
      final String? $type})
      : $type = $type ?? 'reject',
        super._();

  factory _$_RejectPayload.fromJson(Map<String, dynamic> json) =>
      _$$_RejectPayloadFromJson(json);

  @override
  @JsonKey(name: 'room')
  final String number;
  @override
  @JsonKey(name: 'user_id')
  final int dlsId;

  @JsonKey(name: 'action')
  final String $type;

  @override
  String toString() {
    return 'Payload.reject(number: $number, dlsId: $dlsId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RejectPayload &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.dlsId, dlsId) || other.dlsId == dlsId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, number, dlsId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RejectPayloadCopyWith<_$_RejectPayload> get copyWith =>
      __$$_RejectPayloadCopyWithImpl<_$_RejectPayload>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(@JsonKey(name: 'rooms') List<CallMeta>? callsMeta)
        room_list,
    required TResult Function(@JsonKey(name: 'room') String number,
            @JsonKey(name: 'user_id') int dlsId)
        hangup,
    required TResult Function(@JsonKey(name: 'room') String number,
            @JsonKey(name: 'user_id') int dlsId)
        reject,
    required TResult Function(@JsonKey(name: 'room') String number,
            @JsonKey(name: 'user_id') int dlsId)
        busy,
    required TResult Function(@JsonKey(name: 'room') CallMeta callMeta) speak,
  }) {
    return reject(number, dlsId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(@JsonKey(name: 'rooms') List<CallMeta>? callsMeta)?
        room_list,
    TResult? Function(@JsonKey(name: 'room') String number,
            @JsonKey(name: 'user_id') int dlsId)?
        hangup,
    TResult? Function(@JsonKey(name: 'room') String number,
            @JsonKey(name: 'user_id') int dlsId)?
        reject,
    TResult? Function(@JsonKey(name: 'room') String number,
            @JsonKey(name: 'user_id') int dlsId)?
        busy,
    TResult? Function(@JsonKey(name: 'room') CallMeta callMeta)? speak,
  }) {
    return reject?.call(number, dlsId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(@JsonKey(name: 'rooms') List<CallMeta>? callsMeta)?
        room_list,
    TResult Function(@JsonKey(name: 'room') String number,
            @JsonKey(name: 'user_id') int dlsId)?
        hangup,
    TResult Function(@JsonKey(name: 'room') String number,
            @JsonKey(name: 'user_id') int dlsId)?
        reject,
    TResult Function(@JsonKey(name: 'room') String number,
            @JsonKey(name: 'user_id') int dlsId)?
        busy,
    TResult Function(@JsonKey(name: 'room') CallMeta callMeta)? speak,
    required TResult orElse(),
  }) {
    if (reject != null) {
      return reject(number, dlsId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RoomListPayload value) room_list,
    required TResult Function(_HangUpPayload value) hangup,
    required TResult Function(_RejectPayload value) reject,
    required TResult Function(_BusyPayload value) busy,
    required TResult Function(_SpeakPayload value) speak,
  }) {
    return reject(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RoomListPayload value)? room_list,
    TResult? Function(_HangUpPayload value)? hangup,
    TResult? Function(_RejectPayload value)? reject,
    TResult? Function(_BusyPayload value)? busy,
    TResult? Function(_SpeakPayload value)? speak,
  }) {
    return reject?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RoomListPayload value)? room_list,
    TResult Function(_HangUpPayload value)? hangup,
    TResult Function(_RejectPayload value)? reject,
    TResult Function(_BusyPayload value)? busy,
    TResult Function(_SpeakPayload value)? speak,
    required TResult orElse(),
  }) {
    if (reject != null) {
      return reject(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_RejectPayloadToJson(
      this,
    );
  }
}

abstract class _RejectPayload extends Payload {
  factory _RejectPayload(
      {@JsonKey(name: 'room') required final String number,
      @JsonKey(name: 'user_id') required final int dlsId}) = _$_RejectPayload;
  _RejectPayload._() : super._();

  factory _RejectPayload.fromJson(Map<String, dynamic> json) =
      _$_RejectPayload.fromJson;

  @JsonKey(name: 'room')
  String get number;
  @JsonKey(name: 'user_id')
  int get dlsId;
  @JsonKey(ignore: true)
  _$$_RejectPayloadCopyWith<_$_RejectPayload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_BusyPayloadCopyWith<$Res> {
  factory _$$_BusyPayloadCopyWith(
          _$_BusyPayload value, $Res Function(_$_BusyPayload) then) =
      __$$_BusyPayloadCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {@JsonKey(name: 'room') String number,
      @JsonKey(name: 'user_id') int dlsId});
}

/// @nodoc
class __$$_BusyPayloadCopyWithImpl<$Res>
    extends _$PayloadCopyWithImpl<$Res, _$_BusyPayload>
    implements _$$_BusyPayloadCopyWith<$Res> {
  __$$_BusyPayloadCopyWithImpl(
      _$_BusyPayload _value, $Res Function(_$_BusyPayload) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
    Object? dlsId = null,
  }) {
    return _then(_$_BusyPayload(
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
      dlsId: null == dlsId
          ? _value.dlsId
          : dlsId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BusyPayload extends _BusyPayload {
  _$_BusyPayload(
      {@JsonKey(name: 'room') required this.number,
      @JsonKey(name: 'user_id') required this.dlsId,
      final String? $type})
      : $type = $type ?? 'busy',
        super._();

  factory _$_BusyPayload.fromJson(Map<String, dynamic> json) =>
      _$$_BusyPayloadFromJson(json);

  @override
  @JsonKey(name: 'room')
  final String number;
  @override
  @JsonKey(name: 'user_id')
  final int dlsId;

  @JsonKey(name: 'action')
  final String $type;

  @override
  String toString() {
    return 'Payload.busy(number: $number, dlsId: $dlsId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BusyPayload &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.dlsId, dlsId) || other.dlsId == dlsId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, number, dlsId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BusyPayloadCopyWith<_$_BusyPayload> get copyWith =>
      __$$_BusyPayloadCopyWithImpl<_$_BusyPayload>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(@JsonKey(name: 'rooms') List<CallMeta>? callsMeta)
        room_list,
    required TResult Function(@JsonKey(name: 'room') String number,
            @JsonKey(name: 'user_id') int dlsId)
        hangup,
    required TResult Function(@JsonKey(name: 'room') String number,
            @JsonKey(name: 'user_id') int dlsId)
        reject,
    required TResult Function(@JsonKey(name: 'room') String number,
            @JsonKey(name: 'user_id') int dlsId)
        busy,
    required TResult Function(@JsonKey(name: 'room') CallMeta callMeta) speak,
  }) {
    return busy(number, dlsId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(@JsonKey(name: 'rooms') List<CallMeta>? callsMeta)?
        room_list,
    TResult? Function(@JsonKey(name: 'room') String number,
            @JsonKey(name: 'user_id') int dlsId)?
        hangup,
    TResult? Function(@JsonKey(name: 'room') String number,
            @JsonKey(name: 'user_id') int dlsId)?
        reject,
    TResult? Function(@JsonKey(name: 'room') String number,
            @JsonKey(name: 'user_id') int dlsId)?
        busy,
    TResult? Function(@JsonKey(name: 'room') CallMeta callMeta)? speak,
  }) {
    return busy?.call(number, dlsId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(@JsonKey(name: 'rooms') List<CallMeta>? callsMeta)?
        room_list,
    TResult Function(@JsonKey(name: 'room') String number,
            @JsonKey(name: 'user_id') int dlsId)?
        hangup,
    TResult Function(@JsonKey(name: 'room') String number,
            @JsonKey(name: 'user_id') int dlsId)?
        reject,
    TResult Function(@JsonKey(name: 'room') String number,
            @JsonKey(name: 'user_id') int dlsId)?
        busy,
    TResult Function(@JsonKey(name: 'room') CallMeta callMeta)? speak,
    required TResult orElse(),
  }) {
    if (busy != null) {
      return busy(number, dlsId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RoomListPayload value) room_list,
    required TResult Function(_HangUpPayload value) hangup,
    required TResult Function(_RejectPayload value) reject,
    required TResult Function(_BusyPayload value) busy,
    required TResult Function(_SpeakPayload value) speak,
  }) {
    return busy(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RoomListPayload value)? room_list,
    TResult? Function(_HangUpPayload value)? hangup,
    TResult? Function(_RejectPayload value)? reject,
    TResult? Function(_BusyPayload value)? busy,
    TResult? Function(_SpeakPayload value)? speak,
  }) {
    return busy?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RoomListPayload value)? room_list,
    TResult Function(_HangUpPayload value)? hangup,
    TResult Function(_RejectPayload value)? reject,
    TResult Function(_BusyPayload value)? busy,
    TResult Function(_SpeakPayload value)? speak,
    required TResult orElse(),
  }) {
    if (busy != null) {
      return busy(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_BusyPayloadToJson(
      this,
    );
  }
}

abstract class _BusyPayload extends Payload {
  factory _BusyPayload(
      {@JsonKey(name: 'room') required final String number,
      @JsonKey(name: 'user_id') required final int dlsId}) = _$_BusyPayload;
  _BusyPayload._() : super._();

  factory _BusyPayload.fromJson(Map<String, dynamic> json) =
      _$_BusyPayload.fromJson;

  @JsonKey(name: 'room')
  String get number;
  @JsonKey(name: 'user_id')
  int get dlsId;
  @JsonKey(ignore: true)
  _$$_BusyPayloadCopyWith<_$_BusyPayload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SpeakPayloadCopyWith<$Res> {
  factory _$$_SpeakPayloadCopyWith(
          _$_SpeakPayload value, $Res Function(_$_SpeakPayload) then) =
      __$$_SpeakPayloadCopyWithImpl<$Res>;
  @useResult
  $Res call({@JsonKey(name: 'room') CallMeta callMeta});

  $CallMetaCopyWith<$Res> get callMeta;
}

/// @nodoc
class __$$_SpeakPayloadCopyWithImpl<$Res>
    extends _$PayloadCopyWithImpl<$Res, _$_SpeakPayload>
    implements _$$_SpeakPayloadCopyWith<$Res> {
  __$$_SpeakPayloadCopyWithImpl(
      _$_SpeakPayload _value, $Res Function(_$_SpeakPayload) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? callMeta = null,
  }) {
    return _then(_$_SpeakPayload(
      callMeta: null == callMeta
          ? _value.callMeta
          : callMeta // ignore: cast_nullable_to_non_nullable
              as CallMeta,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CallMetaCopyWith<$Res> get callMeta {
    return $CallMetaCopyWith<$Res>(_value.callMeta, (value) {
      return _then(_value.copyWith(callMeta: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$_SpeakPayload extends _SpeakPayload {
  _$_SpeakPayload(
      {@JsonKey(name: 'room') required this.callMeta, final String? $type})
      : $type = $type ?? 'speak',
        super._();

  factory _$_SpeakPayload.fromJson(Map<String, dynamic> json) =>
      _$$_SpeakPayloadFromJson(json);

  @override
  @JsonKey(name: 'room')
  final CallMeta callMeta;

  @JsonKey(name: 'action')
  final String $type;

  @override
  String toString() {
    return 'Payload.speak(callMeta: $callMeta)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SpeakPayload &&
            (identical(other.callMeta, callMeta) ||
                other.callMeta == callMeta));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, callMeta);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SpeakPayloadCopyWith<_$_SpeakPayload> get copyWith =>
      __$$_SpeakPayloadCopyWithImpl<_$_SpeakPayload>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(@JsonKey(name: 'rooms') List<CallMeta>? callsMeta)
        room_list,
    required TResult Function(@JsonKey(name: 'room') String number,
            @JsonKey(name: 'user_id') int dlsId)
        hangup,
    required TResult Function(@JsonKey(name: 'room') String number,
            @JsonKey(name: 'user_id') int dlsId)
        reject,
    required TResult Function(@JsonKey(name: 'room') String number,
            @JsonKey(name: 'user_id') int dlsId)
        busy,
    required TResult Function(@JsonKey(name: 'room') CallMeta callMeta) speak,
  }) {
    return speak(callMeta);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(@JsonKey(name: 'rooms') List<CallMeta>? callsMeta)?
        room_list,
    TResult? Function(@JsonKey(name: 'room') String number,
            @JsonKey(name: 'user_id') int dlsId)?
        hangup,
    TResult? Function(@JsonKey(name: 'room') String number,
            @JsonKey(name: 'user_id') int dlsId)?
        reject,
    TResult? Function(@JsonKey(name: 'room') String number,
            @JsonKey(name: 'user_id') int dlsId)?
        busy,
    TResult? Function(@JsonKey(name: 'room') CallMeta callMeta)? speak,
  }) {
    return speak?.call(callMeta);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(@JsonKey(name: 'rooms') List<CallMeta>? callsMeta)?
        room_list,
    TResult Function(@JsonKey(name: 'room') String number,
            @JsonKey(name: 'user_id') int dlsId)?
        hangup,
    TResult Function(@JsonKey(name: 'room') String number,
            @JsonKey(name: 'user_id') int dlsId)?
        reject,
    TResult Function(@JsonKey(name: 'room') String number,
            @JsonKey(name: 'user_id') int dlsId)?
        busy,
    TResult Function(@JsonKey(name: 'room') CallMeta callMeta)? speak,
    required TResult orElse(),
  }) {
    if (speak != null) {
      return speak(callMeta);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RoomListPayload value) room_list,
    required TResult Function(_HangUpPayload value) hangup,
    required TResult Function(_RejectPayload value) reject,
    required TResult Function(_BusyPayload value) busy,
    required TResult Function(_SpeakPayload value) speak,
  }) {
    return speak(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RoomListPayload value)? room_list,
    TResult? Function(_HangUpPayload value)? hangup,
    TResult? Function(_RejectPayload value)? reject,
    TResult? Function(_BusyPayload value)? busy,
    TResult? Function(_SpeakPayload value)? speak,
  }) {
    return speak?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RoomListPayload value)? room_list,
    TResult Function(_HangUpPayload value)? hangup,
    TResult Function(_RejectPayload value)? reject,
    TResult Function(_BusyPayload value)? busy,
    TResult Function(_SpeakPayload value)? speak,
    required TResult orElse(),
  }) {
    if (speak != null) {
      return speak(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_SpeakPayloadToJson(
      this,
    );
  }
}

abstract class _SpeakPayload extends Payload {
  factory _SpeakPayload(
          {@JsonKey(name: 'room') required final CallMeta callMeta}) =
      _$_SpeakPayload;
  _SpeakPayload._() : super._();

  factory _SpeakPayload.fromJson(Map<String, dynamic> json) =
      _$_SpeakPayload.fromJson;

  @JsonKey(name: 'room')
  CallMeta get callMeta;
  @JsonKey(ignore: true)
  _$$_SpeakPayloadCopyWith<_$_SpeakPayload> get copyWith =>
      throw _privateConstructorUsedError;
}
