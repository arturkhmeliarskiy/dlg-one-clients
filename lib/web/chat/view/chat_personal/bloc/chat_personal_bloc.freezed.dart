// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'chat_personal_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChatPersonalEvent {
  DlsChatMessageText? get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DlsChatMessageText? message)
        changeSelectedMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DlsChatMessageText? message)? changeSelectedMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DlsChatMessageText? message)? changeSelectedMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChatPersonalChangeSelectedMessage value)
        changeSelectedMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChatPersonalChangeSelectedMessage value)?
        changeSelectedMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChatPersonalChangeSelectedMessage value)?
        changeSelectedMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatPersonalEventCopyWith<ChatPersonalEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatPersonalEventCopyWith<$Res> {
  factory $ChatPersonalEventCopyWith(
          ChatPersonalEvent value, $Res Function(ChatPersonalEvent) then) =
      _$ChatPersonalEventCopyWithImpl<$Res, ChatPersonalEvent>;
  @useResult
  $Res call({DlsChatMessageText? message});
}

/// @nodoc
class _$ChatPersonalEventCopyWithImpl<$Res, $Val extends ChatPersonalEvent>
    implements $ChatPersonalEventCopyWith<$Res> {
  _$ChatPersonalEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as DlsChatMessageText?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChatPersonalChangeSelectedMessageCopyWith<$Res>
    implements $ChatPersonalEventCopyWith<$Res> {
  factory _$$_ChatPersonalChangeSelectedMessageCopyWith(
          _$_ChatPersonalChangeSelectedMessage value,
          $Res Function(_$_ChatPersonalChangeSelectedMessage) then) =
      __$$_ChatPersonalChangeSelectedMessageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DlsChatMessageText? message});
}

/// @nodoc
class __$$_ChatPersonalChangeSelectedMessageCopyWithImpl<$Res>
    extends _$ChatPersonalEventCopyWithImpl<$Res,
        _$_ChatPersonalChangeSelectedMessage>
    implements _$$_ChatPersonalChangeSelectedMessageCopyWith<$Res> {
  __$$_ChatPersonalChangeSelectedMessageCopyWithImpl(
      _$_ChatPersonalChangeSelectedMessage _value,
      $Res Function(_$_ChatPersonalChangeSelectedMessage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_ChatPersonalChangeSelectedMessage(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as DlsChatMessageText?,
    ));
  }
}

/// @nodoc

class _$_ChatPersonalChangeSelectedMessage
    implements _ChatPersonalChangeSelectedMessage {
  const _$_ChatPersonalChangeSelectedMessage({this.message});

  @override
  final DlsChatMessageText? message;

  @override
  String toString() {
    return 'ChatPersonalEvent.changeSelectedMessage(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChatPersonalChangeSelectedMessage &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChatPersonalChangeSelectedMessageCopyWith<
          _$_ChatPersonalChangeSelectedMessage>
      get copyWith => __$$_ChatPersonalChangeSelectedMessageCopyWithImpl<
          _$_ChatPersonalChangeSelectedMessage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DlsChatMessageText? message)
        changeSelectedMessage,
  }) {
    return changeSelectedMessage(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DlsChatMessageText? message)? changeSelectedMessage,
  }) {
    return changeSelectedMessage?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DlsChatMessageText? message)? changeSelectedMessage,
    required TResult orElse(),
  }) {
    if (changeSelectedMessage != null) {
      return changeSelectedMessage(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChatPersonalChangeSelectedMessage value)
        changeSelectedMessage,
  }) {
    return changeSelectedMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChatPersonalChangeSelectedMessage value)?
        changeSelectedMessage,
  }) {
    return changeSelectedMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChatPersonalChangeSelectedMessage value)?
        changeSelectedMessage,
    required TResult orElse(),
  }) {
    if (changeSelectedMessage != null) {
      return changeSelectedMessage(this);
    }
    return orElse();
  }
}

abstract class _ChatPersonalChangeSelectedMessage implements ChatPersonalEvent {
  const factory _ChatPersonalChangeSelectedMessage(
          {final DlsChatMessageText? message}) =
      _$_ChatPersonalChangeSelectedMessage;

  @override
  DlsChatMessageText? get message;
  @override
  @JsonKey(ignore: true)
  _$$_ChatPersonalChangeSelectedMessageCopyWith<
          _$_ChatPersonalChangeSelectedMessage>
      get copyWith => throw _privateConstructorUsedError;
}
