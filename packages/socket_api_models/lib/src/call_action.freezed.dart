// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'call_action.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CallAction _$CallActionFromJson(Map<String, dynamic> json) {
  switch (json['action']) {
    case 'room_list':
      return _RoomListCallAction.fromJson(json);
    case 'hangup':
      return _HangupCallAction.fromJson(json);
    case 'reject':
      return _RejectCallAction.fromJson(json);
    case 'busy':
      return _BusyCallAction.fromJson(json);
    case 'speak':
      return _SpeakCallAction.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'action', 'CallAction',
          'Invalid union type "${json['action']}"!');
  }
}

/// @nodoc
mixin _$CallAction {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() room_list,
    required TResult Function(@JsonKey(name: 'room') String number) hangup,
    required TResult Function(@JsonKey(name: 'room') String number) reject,
    required TResult Function(@JsonKey(name: 'room') String number) busy,
    required TResult Function(@JsonKey(name: 'speak') bool speak,
            @JsonKey(name: 'room') String number)
        speak,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? room_list,
    TResult? Function(@JsonKey(name: 'room') String number)? hangup,
    TResult? Function(@JsonKey(name: 'room') String number)? reject,
    TResult? Function(@JsonKey(name: 'room') String number)? busy,
    TResult? Function(@JsonKey(name: 'speak') bool speak,
            @JsonKey(name: 'room') String number)?
        speak,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? room_list,
    TResult Function(@JsonKey(name: 'room') String number)? hangup,
    TResult Function(@JsonKey(name: 'room') String number)? reject,
    TResult Function(@JsonKey(name: 'room') String number)? busy,
    TResult Function(@JsonKey(name: 'speak') bool speak,
            @JsonKey(name: 'room') String number)?
        speak,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RoomListCallAction value) room_list,
    required TResult Function(_HangupCallAction value) hangup,
    required TResult Function(_RejectCallAction value) reject,
    required TResult Function(_BusyCallAction value) busy,
    required TResult Function(_SpeakCallAction value) speak,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RoomListCallAction value)? room_list,
    TResult? Function(_HangupCallAction value)? hangup,
    TResult? Function(_RejectCallAction value)? reject,
    TResult? Function(_BusyCallAction value)? busy,
    TResult? Function(_SpeakCallAction value)? speak,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RoomListCallAction value)? room_list,
    TResult Function(_HangupCallAction value)? hangup,
    TResult Function(_RejectCallAction value)? reject,
    TResult Function(_BusyCallAction value)? busy,
    TResult Function(_SpeakCallAction value)? speak,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CallActionCopyWith<$Res> {
  factory $CallActionCopyWith(
          CallAction value, $Res Function(CallAction) then) =
      _$CallActionCopyWithImpl<$Res, CallAction>;
}

/// @nodoc
class _$CallActionCopyWithImpl<$Res, $Val extends CallAction>
    implements $CallActionCopyWith<$Res> {
  _$CallActionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_RoomListCallActionCopyWith<$Res> {
  factory _$$_RoomListCallActionCopyWith(_$_RoomListCallAction value,
          $Res Function(_$_RoomListCallAction) then) =
      __$$_RoomListCallActionCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_RoomListCallActionCopyWithImpl<$Res>
    extends _$CallActionCopyWithImpl<$Res, _$_RoomListCallAction>
    implements _$$_RoomListCallActionCopyWith<$Res> {
  __$$_RoomListCallActionCopyWithImpl(
      _$_RoomListCallAction _value, $Res Function(_$_RoomListCallAction) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$_RoomListCallAction extends _RoomListCallAction {
  _$_RoomListCallAction({final String? $type})
      : $type = $type ?? 'room_list',
        super._();

  factory _$_RoomListCallAction.fromJson(Map<String, dynamic> json) =>
      _$$_RoomListCallActionFromJson(json);

  @JsonKey(name: 'action')
  final String $type;

  @override
  String toString() {
    return 'CallAction.room_list()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_RoomListCallAction);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() room_list,
    required TResult Function(@JsonKey(name: 'room') String number) hangup,
    required TResult Function(@JsonKey(name: 'room') String number) reject,
    required TResult Function(@JsonKey(name: 'room') String number) busy,
    required TResult Function(@JsonKey(name: 'speak') bool speak,
            @JsonKey(name: 'room') String number)
        speak,
  }) {
    return room_list();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? room_list,
    TResult? Function(@JsonKey(name: 'room') String number)? hangup,
    TResult? Function(@JsonKey(name: 'room') String number)? reject,
    TResult? Function(@JsonKey(name: 'room') String number)? busy,
    TResult? Function(@JsonKey(name: 'speak') bool speak,
            @JsonKey(name: 'room') String number)?
        speak,
  }) {
    return room_list?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? room_list,
    TResult Function(@JsonKey(name: 'room') String number)? hangup,
    TResult Function(@JsonKey(name: 'room') String number)? reject,
    TResult Function(@JsonKey(name: 'room') String number)? busy,
    TResult Function(@JsonKey(name: 'speak') bool speak,
            @JsonKey(name: 'room') String number)?
        speak,
    required TResult orElse(),
  }) {
    if (room_list != null) {
      return room_list();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RoomListCallAction value) room_list,
    required TResult Function(_HangupCallAction value) hangup,
    required TResult Function(_RejectCallAction value) reject,
    required TResult Function(_BusyCallAction value) busy,
    required TResult Function(_SpeakCallAction value) speak,
  }) {
    return room_list(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RoomListCallAction value)? room_list,
    TResult? Function(_HangupCallAction value)? hangup,
    TResult? Function(_RejectCallAction value)? reject,
    TResult? Function(_BusyCallAction value)? busy,
    TResult? Function(_SpeakCallAction value)? speak,
  }) {
    return room_list?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RoomListCallAction value)? room_list,
    TResult Function(_HangupCallAction value)? hangup,
    TResult Function(_RejectCallAction value)? reject,
    TResult Function(_BusyCallAction value)? busy,
    TResult Function(_SpeakCallAction value)? speak,
    required TResult orElse(),
  }) {
    if (room_list != null) {
      return room_list(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_RoomListCallActionToJson(
      this,
    );
  }
}

abstract class _RoomListCallAction extends CallAction {
  factory _RoomListCallAction() = _$_RoomListCallAction;
  _RoomListCallAction._() : super._();

  factory _RoomListCallAction.fromJson(Map<String, dynamic> json) =
      _$_RoomListCallAction.fromJson;
}

/// @nodoc
abstract class _$$_HangupCallActionCopyWith<$Res> {
  factory _$$_HangupCallActionCopyWith(
          _$_HangupCallAction value, $Res Function(_$_HangupCallAction) then) =
      __$$_HangupCallActionCopyWithImpl<$Res>;
  @useResult
  $Res call({@JsonKey(name: 'room') String number});
}

/// @nodoc
class __$$_HangupCallActionCopyWithImpl<$Res>
    extends _$CallActionCopyWithImpl<$Res, _$_HangupCallAction>
    implements _$$_HangupCallActionCopyWith<$Res> {
  __$$_HangupCallActionCopyWithImpl(
      _$_HangupCallAction _value, $Res Function(_$_HangupCallAction) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
  }) {
    return _then(_$_HangupCallAction(
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HangupCallAction extends _HangupCallAction {
  _$_HangupCallAction(
      {@JsonKey(name: 'room') required this.number, final String? $type})
      : $type = $type ?? 'hangup',
        super._();

  factory _$_HangupCallAction.fromJson(Map<String, dynamic> json) =>
      _$$_HangupCallActionFromJson(json);

  @override
  @JsonKey(name: 'room')
  final String number;

  @JsonKey(name: 'action')
  final String $type;

  @override
  String toString() {
    return 'CallAction.hangup(number: $number)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HangupCallAction &&
            (identical(other.number, number) || other.number == number));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, number);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HangupCallActionCopyWith<_$_HangupCallAction> get copyWith =>
      __$$_HangupCallActionCopyWithImpl<_$_HangupCallAction>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() room_list,
    required TResult Function(@JsonKey(name: 'room') String number) hangup,
    required TResult Function(@JsonKey(name: 'room') String number) reject,
    required TResult Function(@JsonKey(name: 'room') String number) busy,
    required TResult Function(@JsonKey(name: 'speak') bool speak,
            @JsonKey(name: 'room') String number)
        speak,
  }) {
    return hangup(number);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? room_list,
    TResult? Function(@JsonKey(name: 'room') String number)? hangup,
    TResult? Function(@JsonKey(name: 'room') String number)? reject,
    TResult? Function(@JsonKey(name: 'room') String number)? busy,
    TResult? Function(@JsonKey(name: 'speak') bool speak,
            @JsonKey(name: 'room') String number)?
        speak,
  }) {
    return hangup?.call(number);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? room_list,
    TResult Function(@JsonKey(name: 'room') String number)? hangup,
    TResult Function(@JsonKey(name: 'room') String number)? reject,
    TResult Function(@JsonKey(name: 'room') String number)? busy,
    TResult Function(@JsonKey(name: 'speak') bool speak,
            @JsonKey(name: 'room') String number)?
        speak,
    required TResult orElse(),
  }) {
    if (hangup != null) {
      return hangup(number);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RoomListCallAction value) room_list,
    required TResult Function(_HangupCallAction value) hangup,
    required TResult Function(_RejectCallAction value) reject,
    required TResult Function(_BusyCallAction value) busy,
    required TResult Function(_SpeakCallAction value) speak,
  }) {
    return hangup(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RoomListCallAction value)? room_list,
    TResult? Function(_HangupCallAction value)? hangup,
    TResult? Function(_RejectCallAction value)? reject,
    TResult? Function(_BusyCallAction value)? busy,
    TResult? Function(_SpeakCallAction value)? speak,
  }) {
    return hangup?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RoomListCallAction value)? room_list,
    TResult Function(_HangupCallAction value)? hangup,
    TResult Function(_RejectCallAction value)? reject,
    TResult Function(_BusyCallAction value)? busy,
    TResult Function(_SpeakCallAction value)? speak,
    required TResult orElse(),
  }) {
    if (hangup != null) {
      return hangup(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_HangupCallActionToJson(
      this,
    );
  }
}

abstract class _HangupCallAction extends CallAction {
  factory _HangupCallAction(
          {@JsonKey(name: 'room') required final String number}) =
      _$_HangupCallAction;
  _HangupCallAction._() : super._();

  factory _HangupCallAction.fromJson(Map<String, dynamic> json) =
      _$_HangupCallAction.fromJson;

  @JsonKey(name: 'room')
  String get number;
  @JsonKey(ignore: true)
  _$$_HangupCallActionCopyWith<_$_HangupCallAction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RejectCallActionCopyWith<$Res> {
  factory _$$_RejectCallActionCopyWith(
          _$_RejectCallAction value, $Res Function(_$_RejectCallAction) then) =
      __$$_RejectCallActionCopyWithImpl<$Res>;
  @useResult
  $Res call({@JsonKey(name: 'room') String number});
}

/// @nodoc
class __$$_RejectCallActionCopyWithImpl<$Res>
    extends _$CallActionCopyWithImpl<$Res, _$_RejectCallAction>
    implements _$$_RejectCallActionCopyWith<$Res> {
  __$$_RejectCallActionCopyWithImpl(
      _$_RejectCallAction _value, $Res Function(_$_RejectCallAction) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
  }) {
    return _then(_$_RejectCallAction(
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RejectCallAction extends _RejectCallAction {
  _$_RejectCallAction(
      {@JsonKey(name: 'room') required this.number, final String? $type})
      : $type = $type ?? 'reject',
        super._();

  factory _$_RejectCallAction.fromJson(Map<String, dynamic> json) =>
      _$$_RejectCallActionFromJson(json);

  @override
  @JsonKey(name: 'room')
  final String number;

  @JsonKey(name: 'action')
  final String $type;

  @override
  String toString() {
    return 'CallAction.reject(number: $number)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RejectCallAction &&
            (identical(other.number, number) || other.number == number));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, number);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RejectCallActionCopyWith<_$_RejectCallAction> get copyWith =>
      __$$_RejectCallActionCopyWithImpl<_$_RejectCallAction>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() room_list,
    required TResult Function(@JsonKey(name: 'room') String number) hangup,
    required TResult Function(@JsonKey(name: 'room') String number) reject,
    required TResult Function(@JsonKey(name: 'room') String number) busy,
    required TResult Function(@JsonKey(name: 'speak') bool speak,
            @JsonKey(name: 'room') String number)
        speak,
  }) {
    return reject(number);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? room_list,
    TResult? Function(@JsonKey(name: 'room') String number)? hangup,
    TResult? Function(@JsonKey(name: 'room') String number)? reject,
    TResult? Function(@JsonKey(name: 'room') String number)? busy,
    TResult? Function(@JsonKey(name: 'speak') bool speak,
            @JsonKey(name: 'room') String number)?
        speak,
  }) {
    return reject?.call(number);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? room_list,
    TResult Function(@JsonKey(name: 'room') String number)? hangup,
    TResult Function(@JsonKey(name: 'room') String number)? reject,
    TResult Function(@JsonKey(name: 'room') String number)? busy,
    TResult Function(@JsonKey(name: 'speak') bool speak,
            @JsonKey(name: 'room') String number)?
        speak,
    required TResult orElse(),
  }) {
    if (reject != null) {
      return reject(number);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RoomListCallAction value) room_list,
    required TResult Function(_HangupCallAction value) hangup,
    required TResult Function(_RejectCallAction value) reject,
    required TResult Function(_BusyCallAction value) busy,
    required TResult Function(_SpeakCallAction value) speak,
  }) {
    return reject(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RoomListCallAction value)? room_list,
    TResult? Function(_HangupCallAction value)? hangup,
    TResult? Function(_RejectCallAction value)? reject,
    TResult? Function(_BusyCallAction value)? busy,
    TResult? Function(_SpeakCallAction value)? speak,
  }) {
    return reject?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RoomListCallAction value)? room_list,
    TResult Function(_HangupCallAction value)? hangup,
    TResult Function(_RejectCallAction value)? reject,
    TResult Function(_BusyCallAction value)? busy,
    TResult Function(_SpeakCallAction value)? speak,
    required TResult orElse(),
  }) {
    if (reject != null) {
      return reject(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_RejectCallActionToJson(
      this,
    );
  }
}

abstract class _RejectCallAction extends CallAction {
  factory _RejectCallAction(
          {@JsonKey(name: 'room') required final String number}) =
      _$_RejectCallAction;
  _RejectCallAction._() : super._();

  factory _RejectCallAction.fromJson(Map<String, dynamic> json) =
      _$_RejectCallAction.fromJson;

  @JsonKey(name: 'room')
  String get number;
  @JsonKey(ignore: true)
  _$$_RejectCallActionCopyWith<_$_RejectCallAction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_BusyCallActionCopyWith<$Res> {
  factory _$$_BusyCallActionCopyWith(
          _$_BusyCallAction value, $Res Function(_$_BusyCallAction) then) =
      __$$_BusyCallActionCopyWithImpl<$Res>;
  @useResult
  $Res call({@JsonKey(name: 'room') String number});
}

/// @nodoc
class __$$_BusyCallActionCopyWithImpl<$Res>
    extends _$CallActionCopyWithImpl<$Res, _$_BusyCallAction>
    implements _$$_BusyCallActionCopyWith<$Res> {
  __$$_BusyCallActionCopyWithImpl(
      _$_BusyCallAction _value, $Res Function(_$_BusyCallAction) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
  }) {
    return _then(_$_BusyCallAction(
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BusyCallAction extends _BusyCallAction {
  _$_BusyCallAction(
      {@JsonKey(name: 'room') required this.number, final String? $type})
      : $type = $type ?? 'busy',
        super._();

  factory _$_BusyCallAction.fromJson(Map<String, dynamic> json) =>
      _$$_BusyCallActionFromJson(json);

  @override
  @JsonKey(name: 'room')
  final String number;

  @JsonKey(name: 'action')
  final String $type;

  @override
  String toString() {
    return 'CallAction.busy(number: $number)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BusyCallAction &&
            (identical(other.number, number) || other.number == number));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, number);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BusyCallActionCopyWith<_$_BusyCallAction> get copyWith =>
      __$$_BusyCallActionCopyWithImpl<_$_BusyCallAction>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() room_list,
    required TResult Function(@JsonKey(name: 'room') String number) hangup,
    required TResult Function(@JsonKey(name: 'room') String number) reject,
    required TResult Function(@JsonKey(name: 'room') String number) busy,
    required TResult Function(@JsonKey(name: 'speak') bool speak,
            @JsonKey(name: 'room') String number)
        speak,
  }) {
    return busy(number);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? room_list,
    TResult? Function(@JsonKey(name: 'room') String number)? hangup,
    TResult? Function(@JsonKey(name: 'room') String number)? reject,
    TResult? Function(@JsonKey(name: 'room') String number)? busy,
    TResult? Function(@JsonKey(name: 'speak') bool speak,
            @JsonKey(name: 'room') String number)?
        speak,
  }) {
    return busy?.call(number);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? room_list,
    TResult Function(@JsonKey(name: 'room') String number)? hangup,
    TResult Function(@JsonKey(name: 'room') String number)? reject,
    TResult Function(@JsonKey(name: 'room') String number)? busy,
    TResult Function(@JsonKey(name: 'speak') bool speak,
            @JsonKey(name: 'room') String number)?
        speak,
    required TResult orElse(),
  }) {
    if (busy != null) {
      return busy(number);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RoomListCallAction value) room_list,
    required TResult Function(_HangupCallAction value) hangup,
    required TResult Function(_RejectCallAction value) reject,
    required TResult Function(_BusyCallAction value) busy,
    required TResult Function(_SpeakCallAction value) speak,
  }) {
    return busy(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RoomListCallAction value)? room_list,
    TResult? Function(_HangupCallAction value)? hangup,
    TResult? Function(_RejectCallAction value)? reject,
    TResult? Function(_BusyCallAction value)? busy,
    TResult? Function(_SpeakCallAction value)? speak,
  }) {
    return busy?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RoomListCallAction value)? room_list,
    TResult Function(_HangupCallAction value)? hangup,
    TResult Function(_RejectCallAction value)? reject,
    TResult Function(_BusyCallAction value)? busy,
    TResult Function(_SpeakCallAction value)? speak,
    required TResult orElse(),
  }) {
    if (busy != null) {
      return busy(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_BusyCallActionToJson(
      this,
    );
  }
}

abstract class _BusyCallAction extends CallAction {
  factory _BusyCallAction(
          {@JsonKey(name: 'room') required final String number}) =
      _$_BusyCallAction;
  _BusyCallAction._() : super._();

  factory _BusyCallAction.fromJson(Map<String, dynamic> json) =
      _$_BusyCallAction.fromJson;

  @JsonKey(name: 'room')
  String get number;
  @JsonKey(ignore: true)
  _$$_BusyCallActionCopyWith<_$_BusyCallAction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SpeakCallActionCopyWith<$Res> {
  factory _$$_SpeakCallActionCopyWith(
          _$_SpeakCallAction value, $Res Function(_$_SpeakCallAction) then) =
      __$$_SpeakCallActionCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {@JsonKey(name: 'speak') bool speak,
      @JsonKey(name: 'room') String number});
}

/// @nodoc
class __$$_SpeakCallActionCopyWithImpl<$Res>
    extends _$CallActionCopyWithImpl<$Res, _$_SpeakCallAction>
    implements _$$_SpeakCallActionCopyWith<$Res> {
  __$$_SpeakCallActionCopyWithImpl(
      _$_SpeakCallAction _value, $Res Function(_$_SpeakCallAction) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? speak = null,
    Object? number = null,
  }) {
    return _then(_$_SpeakCallAction(
      speak: null == speak
          ? _value.speak
          : speak // ignore: cast_nullable_to_non_nullable
              as bool,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SpeakCallAction extends _SpeakCallAction {
  _$_SpeakCallAction(
      {@JsonKey(name: 'speak') required this.speak,
      @JsonKey(name: 'room') required this.number,
      final String? $type})
      : $type = $type ?? 'speak',
        super._();

  factory _$_SpeakCallAction.fromJson(Map<String, dynamic> json) =>
      _$$_SpeakCallActionFromJson(json);

  @override
  @JsonKey(name: 'speak')
  final bool speak;
  @override
  @JsonKey(name: 'room')
  final String number;

  @JsonKey(name: 'action')
  final String $type;

  @override
  String toString() {
    return 'CallAction.speak(speak: $speak, number: $number)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SpeakCallAction &&
            (identical(other.speak, speak) || other.speak == speak) &&
            (identical(other.number, number) || other.number == number));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, speak, number);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SpeakCallActionCopyWith<_$_SpeakCallAction> get copyWith =>
      __$$_SpeakCallActionCopyWithImpl<_$_SpeakCallAction>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() room_list,
    required TResult Function(@JsonKey(name: 'room') String number) hangup,
    required TResult Function(@JsonKey(name: 'room') String number) reject,
    required TResult Function(@JsonKey(name: 'room') String number) busy,
    required TResult Function(@JsonKey(name: 'speak') bool speak,
            @JsonKey(name: 'room') String number)
        speak,
  }) {
    return speak(this.speak, number);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? room_list,
    TResult? Function(@JsonKey(name: 'room') String number)? hangup,
    TResult? Function(@JsonKey(name: 'room') String number)? reject,
    TResult? Function(@JsonKey(name: 'room') String number)? busy,
    TResult? Function(@JsonKey(name: 'speak') bool speak,
            @JsonKey(name: 'room') String number)?
        speak,
  }) {
    return speak?.call(this.speak, number);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? room_list,
    TResult Function(@JsonKey(name: 'room') String number)? hangup,
    TResult Function(@JsonKey(name: 'room') String number)? reject,
    TResult Function(@JsonKey(name: 'room') String number)? busy,
    TResult Function(@JsonKey(name: 'speak') bool speak,
            @JsonKey(name: 'room') String number)?
        speak,
    required TResult orElse(),
  }) {
    if (speak != null) {
      return speak(this.speak, number);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RoomListCallAction value) room_list,
    required TResult Function(_HangupCallAction value) hangup,
    required TResult Function(_RejectCallAction value) reject,
    required TResult Function(_BusyCallAction value) busy,
    required TResult Function(_SpeakCallAction value) speak,
  }) {
    return speak(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RoomListCallAction value)? room_list,
    TResult? Function(_HangupCallAction value)? hangup,
    TResult? Function(_RejectCallAction value)? reject,
    TResult? Function(_BusyCallAction value)? busy,
    TResult? Function(_SpeakCallAction value)? speak,
  }) {
    return speak?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RoomListCallAction value)? room_list,
    TResult Function(_HangupCallAction value)? hangup,
    TResult Function(_RejectCallAction value)? reject,
    TResult Function(_BusyCallAction value)? busy,
    TResult Function(_SpeakCallAction value)? speak,
    required TResult orElse(),
  }) {
    if (speak != null) {
      return speak(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_SpeakCallActionToJson(
      this,
    );
  }
}

abstract class _SpeakCallAction extends CallAction {
  factory _SpeakCallAction(
          {@JsonKey(name: 'speak') required final bool speak,
          @JsonKey(name: 'room') required final String number}) =
      _$_SpeakCallAction;
  _SpeakCallAction._() : super._();

  factory _SpeakCallAction.fromJson(Map<String, dynamic> json) =
      _$_SpeakCallAction.fromJson;

  @JsonKey(name: 'speak')
  bool get speak;
  @JsonKey(name: 'room')
  String get number;
  @JsonKey(ignore: true)
  _$$_SpeakCallActionCopyWith<_$_SpeakCallAction> get copyWith =>
      throw _privateConstructorUsedError;
}
