// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'socket_request_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SocketRequestMessage _$SocketRequestMessageFromJson(Map<String, dynamic> json) {
  return _CallSocketRequestMessage.fromJson(json);
}

/// @nodoc
mixin _$SocketRequestMessage {
  CallAction get callAction => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CallAction callAction) call,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CallAction callAction)? call,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CallAction callAction)? call,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CallSocketRequestMessage value) call,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CallSocketRequestMessage value)? call,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CallSocketRequestMessage value)? call,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SocketRequestMessageCopyWith<SocketRequestMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SocketRequestMessageCopyWith<$Res> {
  factory $SocketRequestMessageCopyWith(SocketRequestMessage value,
          $Res Function(SocketRequestMessage) then) =
      _$SocketRequestMessageCopyWithImpl<$Res, SocketRequestMessage>;
  @useResult
  $Res call({CallAction callAction});

  $CallActionCopyWith<$Res> get callAction;
}

/// @nodoc
class _$SocketRequestMessageCopyWithImpl<$Res,
        $Val extends SocketRequestMessage>
    implements $SocketRequestMessageCopyWith<$Res> {
  _$SocketRequestMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? callAction = null,
  }) {
    return _then(_value.copyWith(
      callAction: null == callAction
          ? _value.callAction
          : callAction // ignore: cast_nullable_to_non_nullable
              as CallAction,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CallActionCopyWith<$Res> get callAction {
    return $CallActionCopyWith<$Res>(_value.callAction, (value) {
      return _then(_value.copyWith(callAction: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CallSocketRequestMessageCopyWith<$Res>
    implements $SocketRequestMessageCopyWith<$Res> {
  factory _$$_CallSocketRequestMessageCopyWith(
          _$_CallSocketRequestMessage value,
          $Res Function(_$_CallSocketRequestMessage) then) =
      __$$_CallSocketRequestMessageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CallAction callAction});

  @override
  $CallActionCopyWith<$Res> get callAction;
}

/// @nodoc
class __$$_CallSocketRequestMessageCopyWithImpl<$Res>
    extends _$SocketRequestMessageCopyWithImpl<$Res,
        _$_CallSocketRequestMessage>
    implements _$$_CallSocketRequestMessageCopyWith<$Res> {
  __$$_CallSocketRequestMessageCopyWithImpl(_$_CallSocketRequestMessage _value,
      $Res Function(_$_CallSocketRequestMessage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? callAction = null,
  }) {
    return _then(_$_CallSocketRequestMessage(
      null == callAction
          ? _value.callAction
          : callAction // ignore: cast_nullable_to_non_nullable
              as CallAction,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CallSocketRequestMessage extends _CallSocketRequestMessage {
  _$_CallSocketRequestMessage(this.callAction) : super._();

  factory _$_CallSocketRequestMessage.fromJson(Map<String, dynamic> json) =>
      _$$_CallSocketRequestMessageFromJson(json);

  @override
  final CallAction callAction;

  @override
  String toString() {
    return 'SocketRequestMessage.call(callAction: $callAction)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CallSocketRequestMessage &&
            (identical(other.callAction, callAction) ||
                other.callAction == callAction));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, callAction);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CallSocketRequestMessageCopyWith<_$_CallSocketRequestMessage>
      get copyWith => __$$_CallSocketRequestMessageCopyWithImpl<
          _$_CallSocketRequestMessage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CallAction callAction) call,
  }) {
    return call(callAction);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CallAction callAction)? call,
  }) {
    return call?.call(callAction);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CallAction callAction)? call,
    required TResult orElse(),
  }) {
    if (call != null) {
      return call(callAction);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CallSocketRequestMessage value) call,
  }) {
    return call(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CallSocketRequestMessage value)? call,
  }) {
    return call?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CallSocketRequestMessage value)? call,
    required TResult orElse(),
  }) {
    if (call != null) {
      return call(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_CallSocketRequestMessageToJson(
      this,
    );
  }
}

abstract class _CallSocketRequestMessage extends SocketRequestMessage {
  factory _CallSocketRequestMessage(final CallAction callAction) =
      _$_CallSocketRequestMessage;
  _CallSocketRequestMessage._() : super._();

  factory _CallSocketRequestMessage.fromJson(Map<String, dynamic> json) =
      _$_CallSocketRequestMessage.fromJson;

  @override
  CallAction get callAction;
  @override
  @JsonKey(ignore: true)
  _$$_CallSocketRequestMessageCopyWith<_$_CallSocketRequestMessage>
      get copyWith => throw _privateConstructorUsedError;
}
