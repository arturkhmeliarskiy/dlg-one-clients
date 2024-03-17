// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'socket_response_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SocketResponseMessage _$SocketResponseMessageFromJson(
    Map<String, dynamic> json) {
  switch (json['state']) {
    case 'call':
      return _CallSocketResponseMessage.fromJson(json);
    case 'notification':
      return _NotificationSocketResponseMessage.fromJson(json);
    case 'open':
      return _OpenSocketResponseMessage.fromJson(json);
    case 'invalid':
      return _InvalidSocketResponseMessage.fromJson(json);
    case 'auth_required':
      return _AuthRequestSocketResponseMessage.fromJson(json);
    case 'authorized':
      return _AuthorizedSocketResponseMessage.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'state', 'SocketResponseMessage',
          'Invalid union type "${json['state']}"!');
  }
}

/// @nodoc
mixin _$SocketResponseMessage {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(@JsonKey(name: 'payload') Payload payload) call,
    required TResult Function(
            @JsonKey(name: 'dls_notification_payload')
                DLSNotification notification)
        notification,
    required TResult Function() open,
    required TResult Function() invalid,
    required TResult Function() auth_required,
    required TResult Function() authorized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(@JsonKey(name: 'payload') Payload payload)? call,
    TResult? Function(
            @JsonKey(name: 'dls_notification_payload')
                DLSNotification notification)?
        notification,
    TResult? Function()? open,
    TResult? Function()? invalid,
    TResult? Function()? auth_required,
    TResult? Function()? authorized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(@JsonKey(name: 'payload') Payload payload)? call,
    TResult Function(
            @JsonKey(name: 'dls_notification_payload')
                DLSNotification notification)?
        notification,
    TResult Function()? open,
    TResult Function()? invalid,
    TResult Function()? auth_required,
    TResult Function()? authorized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CallSocketResponseMessage value) call,
    required TResult Function(_NotificationSocketResponseMessage value)
        notification,
    required TResult Function(_OpenSocketResponseMessage value) open,
    required TResult Function(_InvalidSocketResponseMessage value) invalid,
    required TResult Function(_AuthRequestSocketResponseMessage value)
        auth_required,
    required TResult Function(_AuthorizedSocketResponseMessage value)
        authorized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CallSocketResponseMessage value)? call,
    TResult? Function(_NotificationSocketResponseMessage value)? notification,
    TResult? Function(_OpenSocketResponseMessage value)? open,
    TResult? Function(_InvalidSocketResponseMessage value)? invalid,
    TResult? Function(_AuthRequestSocketResponseMessage value)? auth_required,
    TResult? Function(_AuthorizedSocketResponseMessage value)? authorized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CallSocketResponseMessage value)? call,
    TResult Function(_NotificationSocketResponseMessage value)? notification,
    TResult Function(_OpenSocketResponseMessage value)? open,
    TResult Function(_InvalidSocketResponseMessage value)? invalid,
    TResult Function(_AuthRequestSocketResponseMessage value)? auth_required,
    TResult Function(_AuthorizedSocketResponseMessage value)? authorized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SocketResponseMessageCopyWith<$Res> {
  factory $SocketResponseMessageCopyWith(SocketResponseMessage value,
          $Res Function(SocketResponseMessage) then) =
      _$SocketResponseMessageCopyWithImpl<$Res, SocketResponseMessage>;
}

/// @nodoc
class _$SocketResponseMessageCopyWithImpl<$Res,
        $Val extends SocketResponseMessage>
    implements $SocketResponseMessageCopyWith<$Res> {
  _$SocketResponseMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_CallSocketResponseMessageCopyWith<$Res> {
  factory _$$_CallSocketResponseMessageCopyWith(
          _$_CallSocketResponseMessage value,
          $Res Function(_$_CallSocketResponseMessage) then) =
      __$$_CallSocketResponseMessageCopyWithImpl<$Res>;
  @useResult
  $Res call({@JsonKey(name: 'payload') Payload payload});

  $PayloadCopyWith<$Res> get payload;
}

/// @nodoc
class __$$_CallSocketResponseMessageCopyWithImpl<$Res>
    extends _$SocketResponseMessageCopyWithImpl<$Res,
        _$_CallSocketResponseMessage>
    implements _$$_CallSocketResponseMessageCopyWith<$Res> {
  __$$_CallSocketResponseMessageCopyWithImpl(
      _$_CallSocketResponseMessage _value,
      $Res Function(_$_CallSocketResponseMessage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payload = null,
  }) {
    return _then(_$_CallSocketResponseMessage(
      payload: null == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as Payload,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $PayloadCopyWith<$Res> get payload {
    return $PayloadCopyWith<$Res>(_value.payload, (value) {
      return _then(_value.copyWith(payload: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$_CallSocketResponseMessage extends _CallSocketResponseMessage {
  _$_CallSocketResponseMessage(
      {@JsonKey(name: 'payload') required this.payload, final String? $type})
      : $type = $type ?? 'call',
        super._();

  factory _$_CallSocketResponseMessage.fromJson(Map<String, dynamic> json) =>
      _$$_CallSocketResponseMessageFromJson(json);

// ignore: invalid_annotation_target
  @override
  @JsonKey(name: 'payload')
  final Payload payload;

  @JsonKey(name: 'state')
  final String $type;

  @override
  String toString() {
    return 'SocketResponseMessage.call(payload: $payload)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CallSocketResponseMessage &&
            (identical(other.payload, payload) || other.payload == payload));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, payload);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CallSocketResponseMessageCopyWith<_$_CallSocketResponseMessage>
      get copyWith => __$$_CallSocketResponseMessageCopyWithImpl<
          _$_CallSocketResponseMessage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(@JsonKey(name: 'payload') Payload payload) call,
    required TResult Function(
            @JsonKey(name: 'dls_notification_payload')
                DLSNotification notification)
        notification,
    required TResult Function() open,
    required TResult Function() invalid,
    required TResult Function() auth_required,
    required TResult Function() authorized,
  }) {
    return call(payload);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(@JsonKey(name: 'payload') Payload payload)? call,
    TResult? Function(
            @JsonKey(name: 'dls_notification_payload')
                DLSNotification notification)?
        notification,
    TResult? Function()? open,
    TResult? Function()? invalid,
    TResult? Function()? auth_required,
    TResult? Function()? authorized,
  }) {
    return call?.call(payload);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(@JsonKey(name: 'payload') Payload payload)? call,
    TResult Function(
            @JsonKey(name: 'dls_notification_payload')
                DLSNotification notification)?
        notification,
    TResult Function()? open,
    TResult Function()? invalid,
    TResult Function()? auth_required,
    TResult Function()? authorized,
    required TResult orElse(),
  }) {
    if (call != null) {
      return call(payload);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CallSocketResponseMessage value) call,
    required TResult Function(_NotificationSocketResponseMessage value)
        notification,
    required TResult Function(_OpenSocketResponseMessage value) open,
    required TResult Function(_InvalidSocketResponseMessage value) invalid,
    required TResult Function(_AuthRequestSocketResponseMessage value)
        auth_required,
    required TResult Function(_AuthorizedSocketResponseMessage value)
        authorized,
  }) {
    return call(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CallSocketResponseMessage value)? call,
    TResult? Function(_NotificationSocketResponseMessage value)? notification,
    TResult? Function(_OpenSocketResponseMessage value)? open,
    TResult? Function(_InvalidSocketResponseMessage value)? invalid,
    TResult? Function(_AuthRequestSocketResponseMessage value)? auth_required,
    TResult? Function(_AuthorizedSocketResponseMessage value)? authorized,
  }) {
    return call?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CallSocketResponseMessage value)? call,
    TResult Function(_NotificationSocketResponseMessage value)? notification,
    TResult Function(_OpenSocketResponseMessage value)? open,
    TResult Function(_InvalidSocketResponseMessage value)? invalid,
    TResult Function(_AuthRequestSocketResponseMessage value)? auth_required,
    TResult Function(_AuthorizedSocketResponseMessage value)? authorized,
    required TResult orElse(),
  }) {
    if (call != null) {
      return call(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_CallSocketResponseMessageToJson(
      this,
    );
  }
}

abstract class _CallSocketResponseMessage extends SocketResponseMessage {
  factory _CallSocketResponseMessage(
          {@JsonKey(name: 'payload') required final Payload payload}) =
      _$_CallSocketResponseMessage;
  _CallSocketResponseMessage._() : super._();

  factory _CallSocketResponseMessage.fromJson(Map<String, dynamic> json) =
      _$_CallSocketResponseMessage.fromJson;

// ignore: invalid_annotation_target
  @JsonKey(name: 'payload')
  Payload get payload;
  @JsonKey(ignore: true)
  _$$_CallSocketResponseMessageCopyWith<_$_CallSocketResponseMessage>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_NotificationSocketResponseMessageCopyWith<$Res> {
  factory _$$_NotificationSocketResponseMessageCopyWith(
          _$_NotificationSocketResponseMessage value,
          $Res Function(_$_NotificationSocketResponseMessage) then) =
      __$$_NotificationSocketResponseMessageCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {@JsonKey(name: 'dls_notification_payload')
          DLSNotification notification});

  $DLSNotificationCopyWith<$Res> get notification;
}

/// @nodoc
class __$$_NotificationSocketResponseMessageCopyWithImpl<$Res>
    extends _$SocketResponseMessageCopyWithImpl<$Res,
        _$_NotificationSocketResponseMessage>
    implements _$$_NotificationSocketResponseMessageCopyWith<$Res> {
  __$$_NotificationSocketResponseMessageCopyWithImpl(
      _$_NotificationSocketResponseMessage _value,
      $Res Function(_$_NotificationSocketResponseMessage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notification = null,
  }) {
    return _then(_$_NotificationSocketResponseMessage(
      notification: null == notification
          ? _value.notification
          : notification // ignore: cast_nullable_to_non_nullable
              as DLSNotification,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $DLSNotificationCopyWith<$Res> get notification {
    return $DLSNotificationCopyWith<$Res>(_value.notification, (value) {
      return _then(_value.copyWith(notification: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$_NotificationSocketResponseMessage
    extends _NotificationSocketResponseMessage {
  _$_NotificationSocketResponseMessage(
      {@JsonKey(name: 'dls_notification_payload') required this.notification,
      final String? $type})
      : $type = $type ?? 'notification',
        super._();

  factory _$_NotificationSocketResponseMessage.fromJson(
          Map<String, dynamic> json) =>
      _$$_NotificationSocketResponseMessageFromJson(json);

// ignore: invalid_annotation_target
  @override
  @JsonKey(name: 'dls_notification_payload')
  final DLSNotification notification;

  @JsonKey(name: 'state')
  final String $type;

  @override
  String toString() {
    return 'SocketResponseMessage.notification(notification: $notification)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NotificationSocketResponseMessage &&
            (identical(other.notification, notification) ||
                other.notification == notification));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, notification);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NotificationSocketResponseMessageCopyWith<
          _$_NotificationSocketResponseMessage>
      get copyWith => __$$_NotificationSocketResponseMessageCopyWithImpl<
          _$_NotificationSocketResponseMessage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(@JsonKey(name: 'payload') Payload payload) call,
    required TResult Function(
            @JsonKey(name: 'dls_notification_payload')
                DLSNotification notification)
        notification,
    required TResult Function() open,
    required TResult Function() invalid,
    required TResult Function() auth_required,
    required TResult Function() authorized,
  }) {
    return notification(this.notification);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(@JsonKey(name: 'payload') Payload payload)? call,
    TResult? Function(
            @JsonKey(name: 'dls_notification_payload')
                DLSNotification notification)?
        notification,
    TResult? Function()? open,
    TResult? Function()? invalid,
    TResult? Function()? auth_required,
    TResult? Function()? authorized,
  }) {
    return notification?.call(this.notification);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(@JsonKey(name: 'payload') Payload payload)? call,
    TResult Function(
            @JsonKey(name: 'dls_notification_payload')
                DLSNotification notification)?
        notification,
    TResult Function()? open,
    TResult Function()? invalid,
    TResult Function()? auth_required,
    TResult Function()? authorized,
    required TResult orElse(),
  }) {
    if (notification != null) {
      return notification(this.notification);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CallSocketResponseMessage value) call,
    required TResult Function(_NotificationSocketResponseMessage value)
        notification,
    required TResult Function(_OpenSocketResponseMessage value) open,
    required TResult Function(_InvalidSocketResponseMessage value) invalid,
    required TResult Function(_AuthRequestSocketResponseMessage value)
        auth_required,
    required TResult Function(_AuthorizedSocketResponseMessage value)
        authorized,
  }) {
    return notification(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CallSocketResponseMessage value)? call,
    TResult? Function(_NotificationSocketResponseMessage value)? notification,
    TResult? Function(_OpenSocketResponseMessage value)? open,
    TResult? Function(_InvalidSocketResponseMessage value)? invalid,
    TResult? Function(_AuthRequestSocketResponseMessage value)? auth_required,
    TResult? Function(_AuthorizedSocketResponseMessage value)? authorized,
  }) {
    return notification?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CallSocketResponseMessage value)? call,
    TResult Function(_NotificationSocketResponseMessage value)? notification,
    TResult Function(_OpenSocketResponseMessage value)? open,
    TResult Function(_InvalidSocketResponseMessage value)? invalid,
    TResult Function(_AuthRequestSocketResponseMessage value)? auth_required,
    TResult Function(_AuthorizedSocketResponseMessage value)? authorized,
    required TResult orElse(),
  }) {
    if (notification != null) {
      return notification(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_NotificationSocketResponseMessageToJson(
      this,
    );
  }
}

abstract class _NotificationSocketResponseMessage
    extends SocketResponseMessage {
  factory _NotificationSocketResponseMessage(
          {@JsonKey(name: 'dls_notification_payload')
              required final DLSNotification notification}) =
      _$_NotificationSocketResponseMessage;
  _NotificationSocketResponseMessage._() : super._();

  factory _NotificationSocketResponseMessage.fromJson(
          Map<String, dynamic> json) =
      _$_NotificationSocketResponseMessage.fromJson;

// ignore: invalid_annotation_target
  @JsonKey(name: 'dls_notification_payload')
  DLSNotification get notification;
  @JsonKey(ignore: true)
  _$$_NotificationSocketResponseMessageCopyWith<
          _$_NotificationSocketResponseMessage>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_OpenSocketResponseMessageCopyWith<$Res> {
  factory _$$_OpenSocketResponseMessageCopyWith(
          _$_OpenSocketResponseMessage value,
          $Res Function(_$_OpenSocketResponseMessage) then) =
      __$$_OpenSocketResponseMessageCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_OpenSocketResponseMessageCopyWithImpl<$Res>
    extends _$SocketResponseMessageCopyWithImpl<$Res,
        _$_OpenSocketResponseMessage>
    implements _$$_OpenSocketResponseMessageCopyWith<$Res> {
  __$$_OpenSocketResponseMessageCopyWithImpl(
      _$_OpenSocketResponseMessage _value,
      $Res Function(_$_OpenSocketResponseMessage) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$_OpenSocketResponseMessage extends _OpenSocketResponseMessage {
  _$_OpenSocketResponseMessage({final String? $type})
      : $type = $type ?? 'open',
        super._();

  factory _$_OpenSocketResponseMessage.fromJson(Map<String, dynamic> json) =>
      _$$_OpenSocketResponseMessageFromJson(json);

  @JsonKey(name: 'state')
  final String $type;

  @override
  String toString() {
    return 'SocketResponseMessage.open()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OpenSocketResponseMessage);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(@JsonKey(name: 'payload') Payload payload) call,
    required TResult Function(
            @JsonKey(name: 'dls_notification_payload')
                DLSNotification notification)
        notification,
    required TResult Function() open,
    required TResult Function() invalid,
    required TResult Function() auth_required,
    required TResult Function() authorized,
  }) {
    return open();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(@JsonKey(name: 'payload') Payload payload)? call,
    TResult? Function(
            @JsonKey(name: 'dls_notification_payload')
                DLSNotification notification)?
        notification,
    TResult? Function()? open,
    TResult? Function()? invalid,
    TResult? Function()? auth_required,
    TResult? Function()? authorized,
  }) {
    return open?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(@JsonKey(name: 'payload') Payload payload)? call,
    TResult Function(
            @JsonKey(name: 'dls_notification_payload')
                DLSNotification notification)?
        notification,
    TResult Function()? open,
    TResult Function()? invalid,
    TResult Function()? auth_required,
    TResult Function()? authorized,
    required TResult orElse(),
  }) {
    if (open != null) {
      return open();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CallSocketResponseMessage value) call,
    required TResult Function(_NotificationSocketResponseMessage value)
        notification,
    required TResult Function(_OpenSocketResponseMessage value) open,
    required TResult Function(_InvalidSocketResponseMessage value) invalid,
    required TResult Function(_AuthRequestSocketResponseMessage value)
        auth_required,
    required TResult Function(_AuthorizedSocketResponseMessage value)
        authorized,
  }) {
    return open(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CallSocketResponseMessage value)? call,
    TResult? Function(_NotificationSocketResponseMessage value)? notification,
    TResult? Function(_OpenSocketResponseMessage value)? open,
    TResult? Function(_InvalidSocketResponseMessage value)? invalid,
    TResult? Function(_AuthRequestSocketResponseMessage value)? auth_required,
    TResult? Function(_AuthorizedSocketResponseMessage value)? authorized,
  }) {
    return open?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CallSocketResponseMessage value)? call,
    TResult Function(_NotificationSocketResponseMessage value)? notification,
    TResult Function(_OpenSocketResponseMessage value)? open,
    TResult Function(_InvalidSocketResponseMessage value)? invalid,
    TResult Function(_AuthRequestSocketResponseMessage value)? auth_required,
    TResult Function(_AuthorizedSocketResponseMessage value)? authorized,
    required TResult orElse(),
  }) {
    if (open != null) {
      return open(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_OpenSocketResponseMessageToJson(
      this,
    );
  }
}

abstract class _OpenSocketResponseMessage extends SocketResponseMessage {
  factory _OpenSocketResponseMessage() = _$_OpenSocketResponseMessage;
  _OpenSocketResponseMessage._() : super._();

  factory _OpenSocketResponseMessage.fromJson(Map<String, dynamic> json) =
      _$_OpenSocketResponseMessage.fromJson;
}

/// @nodoc
abstract class _$$_InvalidSocketResponseMessageCopyWith<$Res> {
  factory _$$_InvalidSocketResponseMessageCopyWith(
          _$_InvalidSocketResponseMessage value,
          $Res Function(_$_InvalidSocketResponseMessage) then) =
      __$$_InvalidSocketResponseMessageCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InvalidSocketResponseMessageCopyWithImpl<$Res>
    extends _$SocketResponseMessageCopyWithImpl<$Res,
        _$_InvalidSocketResponseMessage>
    implements _$$_InvalidSocketResponseMessageCopyWith<$Res> {
  __$$_InvalidSocketResponseMessageCopyWithImpl(
      _$_InvalidSocketResponseMessage _value,
      $Res Function(_$_InvalidSocketResponseMessage) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$_InvalidSocketResponseMessage extends _InvalidSocketResponseMessage {
  _$_InvalidSocketResponseMessage({final String? $type})
      : $type = $type ?? 'invalid',
        super._();

  factory _$_InvalidSocketResponseMessage.fromJson(Map<String, dynamic> json) =>
      _$$_InvalidSocketResponseMessageFromJson(json);

  @JsonKey(name: 'state')
  final String $type;

  @override
  String toString() {
    return 'SocketResponseMessage.invalid()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InvalidSocketResponseMessage);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(@JsonKey(name: 'payload') Payload payload) call,
    required TResult Function(
            @JsonKey(name: 'dls_notification_payload')
                DLSNotification notification)
        notification,
    required TResult Function() open,
    required TResult Function() invalid,
    required TResult Function() auth_required,
    required TResult Function() authorized,
  }) {
    return invalid();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(@JsonKey(name: 'payload') Payload payload)? call,
    TResult? Function(
            @JsonKey(name: 'dls_notification_payload')
                DLSNotification notification)?
        notification,
    TResult? Function()? open,
    TResult? Function()? invalid,
    TResult? Function()? auth_required,
    TResult? Function()? authorized,
  }) {
    return invalid?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(@JsonKey(name: 'payload') Payload payload)? call,
    TResult Function(
            @JsonKey(name: 'dls_notification_payload')
                DLSNotification notification)?
        notification,
    TResult Function()? open,
    TResult Function()? invalid,
    TResult Function()? auth_required,
    TResult Function()? authorized,
    required TResult orElse(),
  }) {
    if (invalid != null) {
      return invalid();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CallSocketResponseMessage value) call,
    required TResult Function(_NotificationSocketResponseMessage value)
        notification,
    required TResult Function(_OpenSocketResponseMessage value) open,
    required TResult Function(_InvalidSocketResponseMessage value) invalid,
    required TResult Function(_AuthRequestSocketResponseMessage value)
        auth_required,
    required TResult Function(_AuthorizedSocketResponseMessage value)
        authorized,
  }) {
    return invalid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CallSocketResponseMessage value)? call,
    TResult? Function(_NotificationSocketResponseMessage value)? notification,
    TResult? Function(_OpenSocketResponseMessage value)? open,
    TResult? Function(_InvalidSocketResponseMessage value)? invalid,
    TResult? Function(_AuthRequestSocketResponseMessage value)? auth_required,
    TResult? Function(_AuthorizedSocketResponseMessage value)? authorized,
  }) {
    return invalid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CallSocketResponseMessage value)? call,
    TResult Function(_NotificationSocketResponseMessage value)? notification,
    TResult Function(_OpenSocketResponseMessage value)? open,
    TResult Function(_InvalidSocketResponseMessage value)? invalid,
    TResult Function(_AuthRequestSocketResponseMessage value)? auth_required,
    TResult Function(_AuthorizedSocketResponseMessage value)? authorized,
    required TResult orElse(),
  }) {
    if (invalid != null) {
      return invalid(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_InvalidSocketResponseMessageToJson(
      this,
    );
  }
}

abstract class _InvalidSocketResponseMessage extends SocketResponseMessage {
  factory _InvalidSocketResponseMessage() = _$_InvalidSocketResponseMessage;
  _InvalidSocketResponseMessage._() : super._();

  factory _InvalidSocketResponseMessage.fromJson(Map<String, dynamic> json) =
      _$_InvalidSocketResponseMessage.fromJson;
}

/// @nodoc
abstract class _$$_AuthRequestSocketResponseMessageCopyWith<$Res> {
  factory _$$_AuthRequestSocketResponseMessageCopyWith(
          _$_AuthRequestSocketResponseMessage value,
          $Res Function(_$_AuthRequestSocketResponseMessage) then) =
      __$$_AuthRequestSocketResponseMessageCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AuthRequestSocketResponseMessageCopyWithImpl<$Res>
    extends _$SocketResponseMessageCopyWithImpl<$Res,
        _$_AuthRequestSocketResponseMessage>
    implements _$$_AuthRequestSocketResponseMessageCopyWith<$Res> {
  __$$_AuthRequestSocketResponseMessageCopyWithImpl(
      _$_AuthRequestSocketResponseMessage _value,
      $Res Function(_$_AuthRequestSocketResponseMessage) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$_AuthRequestSocketResponseMessage
    extends _AuthRequestSocketResponseMessage {
  _$_AuthRequestSocketResponseMessage({final String? $type})
      : $type = $type ?? 'auth_required',
        super._();

  factory _$_AuthRequestSocketResponseMessage.fromJson(
          Map<String, dynamic> json) =>
      _$$_AuthRequestSocketResponseMessageFromJson(json);

  @JsonKey(name: 'state')
  final String $type;

  @override
  String toString() {
    return 'SocketResponseMessage.auth_required()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthRequestSocketResponseMessage);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(@JsonKey(name: 'payload') Payload payload) call,
    required TResult Function(
            @JsonKey(name: 'dls_notification_payload')
                DLSNotification notification)
        notification,
    required TResult Function() open,
    required TResult Function() invalid,
    required TResult Function() auth_required,
    required TResult Function() authorized,
  }) {
    return auth_required();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(@JsonKey(name: 'payload') Payload payload)? call,
    TResult? Function(
            @JsonKey(name: 'dls_notification_payload')
                DLSNotification notification)?
        notification,
    TResult? Function()? open,
    TResult? Function()? invalid,
    TResult? Function()? auth_required,
    TResult? Function()? authorized,
  }) {
    return auth_required?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(@JsonKey(name: 'payload') Payload payload)? call,
    TResult Function(
            @JsonKey(name: 'dls_notification_payload')
                DLSNotification notification)?
        notification,
    TResult Function()? open,
    TResult Function()? invalid,
    TResult Function()? auth_required,
    TResult Function()? authorized,
    required TResult orElse(),
  }) {
    if (auth_required != null) {
      return auth_required();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CallSocketResponseMessage value) call,
    required TResult Function(_NotificationSocketResponseMessage value)
        notification,
    required TResult Function(_OpenSocketResponseMessage value) open,
    required TResult Function(_InvalidSocketResponseMessage value) invalid,
    required TResult Function(_AuthRequestSocketResponseMessage value)
        auth_required,
    required TResult Function(_AuthorizedSocketResponseMessage value)
        authorized,
  }) {
    return auth_required(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CallSocketResponseMessage value)? call,
    TResult? Function(_NotificationSocketResponseMessage value)? notification,
    TResult? Function(_OpenSocketResponseMessage value)? open,
    TResult? Function(_InvalidSocketResponseMessage value)? invalid,
    TResult? Function(_AuthRequestSocketResponseMessage value)? auth_required,
    TResult? Function(_AuthorizedSocketResponseMessage value)? authorized,
  }) {
    return auth_required?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CallSocketResponseMessage value)? call,
    TResult Function(_NotificationSocketResponseMessage value)? notification,
    TResult Function(_OpenSocketResponseMessage value)? open,
    TResult Function(_InvalidSocketResponseMessage value)? invalid,
    TResult Function(_AuthRequestSocketResponseMessage value)? auth_required,
    TResult Function(_AuthorizedSocketResponseMessage value)? authorized,
    required TResult orElse(),
  }) {
    if (auth_required != null) {
      return auth_required(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthRequestSocketResponseMessageToJson(
      this,
    );
  }
}

abstract class _AuthRequestSocketResponseMessage extends SocketResponseMessage {
  factory _AuthRequestSocketResponseMessage() =
      _$_AuthRequestSocketResponseMessage;
  _AuthRequestSocketResponseMessage._() : super._();

  factory _AuthRequestSocketResponseMessage.fromJson(
      Map<String, dynamic> json) = _$_AuthRequestSocketResponseMessage.fromJson;
}

/// @nodoc
abstract class _$$_AuthorizedSocketResponseMessageCopyWith<$Res> {
  factory _$$_AuthorizedSocketResponseMessageCopyWith(
          _$_AuthorizedSocketResponseMessage value,
          $Res Function(_$_AuthorizedSocketResponseMessage) then) =
      __$$_AuthorizedSocketResponseMessageCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AuthorizedSocketResponseMessageCopyWithImpl<$Res>
    extends _$SocketResponseMessageCopyWithImpl<$Res,
        _$_AuthorizedSocketResponseMessage>
    implements _$$_AuthorizedSocketResponseMessageCopyWith<$Res> {
  __$$_AuthorizedSocketResponseMessageCopyWithImpl(
      _$_AuthorizedSocketResponseMessage _value,
      $Res Function(_$_AuthorizedSocketResponseMessage) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$_AuthorizedSocketResponseMessage
    extends _AuthorizedSocketResponseMessage {
  _$_AuthorizedSocketResponseMessage({final String? $type})
      : $type = $type ?? 'authorized',
        super._();

  factory _$_AuthorizedSocketResponseMessage.fromJson(
          Map<String, dynamic> json) =>
      _$$_AuthorizedSocketResponseMessageFromJson(json);

  @JsonKey(name: 'state')
  final String $type;

  @override
  String toString() {
    return 'SocketResponseMessage.authorized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthorizedSocketResponseMessage);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(@JsonKey(name: 'payload') Payload payload) call,
    required TResult Function(
            @JsonKey(name: 'dls_notification_payload')
                DLSNotification notification)
        notification,
    required TResult Function() open,
    required TResult Function() invalid,
    required TResult Function() auth_required,
    required TResult Function() authorized,
  }) {
    return authorized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(@JsonKey(name: 'payload') Payload payload)? call,
    TResult? Function(
            @JsonKey(name: 'dls_notification_payload')
                DLSNotification notification)?
        notification,
    TResult? Function()? open,
    TResult? Function()? invalid,
    TResult? Function()? auth_required,
    TResult? Function()? authorized,
  }) {
    return authorized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(@JsonKey(name: 'payload') Payload payload)? call,
    TResult Function(
            @JsonKey(name: 'dls_notification_payload')
                DLSNotification notification)?
        notification,
    TResult Function()? open,
    TResult Function()? invalid,
    TResult Function()? auth_required,
    TResult Function()? authorized,
    required TResult orElse(),
  }) {
    if (authorized != null) {
      return authorized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CallSocketResponseMessage value) call,
    required TResult Function(_NotificationSocketResponseMessage value)
        notification,
    required TResult Function(_OpenSocketResponseMessage value) open,
    required TResult Function(_InvalidSocketResponseMessage value) invalid,
    required TResult Function(_AuthRequestSocketResponseMessage value)
        auth_required,
    required TResult Function(_AuthorizedSocketResponseMessage value)
        authorized,
  }) {
    return authorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CallSocketResponseMessage value)? call,
    TResult? Function(_NotificationSocketResponseMessage value)? notification,
    TResult? Function(_OpenSocketResponseMessage value)? open,
    TResult? Function(_InvalidSocketResponseMessage value)? invalid,
    TResult? Function(_AuthRequestSocketResponseMessage value)? auth_required,
    TResult? Function(_AuthorizedSocketResponseMessage value)? authorized,
  }) {
    return authorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CallSocketResponseMessage value)? call,
    TResult Function(_NotificationSocketResponseMessage value)? notification,
    TResult Function(_OpenSocketResponseMessage value)? open,
    TResult Function(_InvalidSocketResponseMessage value)? invalid,
    TResult Function(_AuthRequestSocketResponseMessage value)? auth_required,
    TResult Function(_AuthorizedSocketResponseMessage value)? authorized,
    required TResult orElse(),
  }) {
    if (authorized != null) {
      return authorized(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthorizedSocketResponseMessageToJson(
      this,
    );
  }
}

abstract class _AuthorizedSocketResponseMessage extends SocketResponseMessage {
  factory _AuthorizedSocketResponseMessage() =
      _$_AuthorizedSocketResponseMessage;
  _AuthorizedSocketResponseMessage._() : super._();

  factory _AuthorizedSocketResponseMessage.fromJson(Map<String, dynamic> json) =
      _$_AuthorizedSocketResponseMessage.fromJson;
}
