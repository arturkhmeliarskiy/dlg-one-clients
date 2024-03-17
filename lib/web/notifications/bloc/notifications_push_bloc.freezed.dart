// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'notifications_push_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NotificationsPushEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(DLSNotification notification) showPush,
    required TResult Function(DLSNotification notification) hidePush,
    required TResult Function() clearPushes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(DLSNotification notification)? showPush,
    TResult? Function(DLSNotification notification)? hidePush,
    TResult? Function()? clearPushes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(DLSNotification notification)? showPush,
    TResult Function(DLSNotification notification)? hidePush,
    TResult Function()? clearPushes,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitEvent value) init,
    required TResult Function(_ShowPushEvent value) showPush,
    required TResult Function(_HidePushEvent value) hidePush,
    required TResult Function(_ClearPushesEvent value) clearPushes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitEvent value)? init,
    TResult? Function(_ShowPushEvent value)? showPush,
    TResult? Function(_HidePushEvent value)? hidePush,
    TResult? Function(_ClearPushesEvent value)? clearPushes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitEvent value)? init,
    TResult Function(_ShowPushEvent value)? showPush,
    TResult Function(_HidePushEvent value)? hidePush,
    TResult Function(_ClearPushesEvent value)? clearPushes,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationsPushEventCopyWith<$Res> {
  factory $NotificationsPushEventCopyWith(NotificationsPushEvent value,
          $Res Function(NotificationsPushEvent) then) =
      _$NotificationsPushEventCopyWithImpl<$Res, NotificationsPushEvent>;
}

/// @nodoc
class _$NotificationsPushEventCopyWithImpl<$Res,
        $Val extends NotificationsPushEvent>
    implements $NotificationsPushEventCopyWith<$Res> {
  _$NotificationsPushEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitEventCopyWith<$Res> {
  factory _$$_InitEventCopyWith(
          _$_InitEvent value, $Res Function(_$_InitEvent) then) =
      __$$_InitEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitEventCopyWithImpl<$Res>
    extends _$NotificationsPushEventCopyWithImpl<$Res, _$_InitEvent>
    implements _$$_InitEventCopyWith<$Res> {
  __$$_InitEventCopyWithImpl(
      _$_InitEvent _value, $Res Function(_$_InitEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_InitEvent implements _InitEvent {
  const _$_InitEvent();

  @override
  String toString() {
    return 'NotificationsPushEvent.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_InitEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(DLSNotification notification) showPush,
    required TResult Function(DLSNotification notification) hidePush,
    required TResult Function() clearPushes,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(DLSNotification notification)? showPush,
    TResult? Function(DLSNotification notification)? hidePush,
    TResult? Function()? clearPushes,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(DLSNotification notification)? showPush,
    TResult Function(DLSNotification notification)? hidePush,
    TResult Function()? clearPushes,
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
    required TResult Function(_InitEvent value) init,
    required TResult Function(_ShowPushEvent value) showPush,
    required TResult Function(_HidePushEvent value) hidePush,
    required TResult Function(_ClearPushesEvent value) clearPushes,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitEvent value)? init,
    TResult? Function(_ShowPushEvent value)? showPush,
    TResult? Function(_HidePushEvent value)? hidePush,
    TResult? Function(_ClearPushesEvent value)? clearPushes,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitEvent value)? init,
    TResult Function(_ShowPushEvent value)? showPush,
    TResult Function(_HidePushEvent value)? hidePush,
    TResult Function(_ClearPushesEvent value)? clearPushes,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _InitEvent implements NotificationsPushEvent {
  const factory _InitEvent() = _$_InitEvent;
}

/// @nodoc
abstract class _$$_ShowPushEventCopyWith<$Res> {
  factory _$$_ShowPushEventCopyWith(
          _$_ShowPushEvent value, $Res Function(_$_ShowPushEvent) then) =
      __$$_ShowPushEventCopyWithImpl<$Res>;
  @useResult
  $Res call({DLSNotification notification});

  $DLSNotificationCopyWith<$Res> get notification;
}

/// @nodoc
class __$$_ShowPushEventCopyWithImpl<$Res>
    extends _$NotificationsPushEventCopyWithImpl<$Res, _$_ShowPushEvent>
    implements _$$_ShowPushEventCopyWith<$Res> {
  __$$_ShowPushEventCopyWithImpl(
      _$_ShowPushEvent _value, $Res Function(_$_ShowPushEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notification = null,
  }) {
    return _then(_$_ShowPushEvent(
      null == notification
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

class _$_ShowPushEvent implements _ShowPushEvent {
  const _$_ShowPushEvent(this.notification);

  @override
  final DLSNotification notification;

  @override
  String toString() {
    return 'NotificationsPushEvent.showPush(notification: $notification)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShowPushEvent &&
            (identical(other.notification, notification) ||
                other.notification == notification));
  }

  @override
  int get hashCode => Object.hash(runtimeType, notification);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ShowPushEventCopyWith<_$_ShowPushEvent> get copyWith =>
      __$$_ShowPushEventCopyWithImpl<_$_ShowPushEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(DLSNotification notification) showPush,
    required TResult Function(DLSNotification notification) hidePush,
    required TResult Function() clearPushes,
  }) {
    return showPush(notification);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(DLSNotification notification)? showPush,
    TResult? Function(DLSNotification notification)? hidePush,
    TResult? Function()? clearPushes,
  }) {
    return showPush?.call(notification);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(DLSNotification notification)? showPush,
    TResult Function(DLSNotification notification)? hidePush,
    TResult Function()? clearPushes,
    required TResult orElse(),
  }) {
    if (showPush != null) {
      return showPush(notification);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitEvent value) init,
    required TResult Function(_ShowPushEvent value) showPush,
    required TResult Function(_HidePushEvent value) hidePush,
    required TResult Function(_ClearPushesEvent value) clearPushes,
  }) {
    return showPush(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitEvent value)? init,
    TResult? Function(_ShowPushEvent value)? showPush,
    TResult? Function(_HidePushEvent value)? hidePush,
    TResult? Function(_ClearPushesEvent value)? clearPushes,
  }) {
    return showPush?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitEvent value)? init,
    TResult Function(_ShowPushEvent value)? showPush,
    TResult Function(_HidePushEvent value)? hidePush,
    TResult Function(_ClearPushesEvent value)? clearPushes,
    required TResult orElse(),
  }) {
    if (showPush != null) {
      return showPush(this);
    }
    return orElse();
  }
}

abstract class _ShowPushEvent implements NotificationsPushEvent {
  const factory _ShowPushEvent(final DLSNotification notification) =
      _$_ShowPushEvent;

  DLSNotification get notification;
  @JsonKey(ignore: true)
  _$$_ShowPushEventCopyWith<_$_ShowPushEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_HidePushEventCopyWith<$Res> {
  factory _$$_HidePushEventCopyWith(
          _$_HidePushEvent value, $Res Function(_$_HidePushEvent) then) =
      __$$_HidePushEventCopyWithImpl<$Res>;
  @useResult
  $Res call({DLSNotification notification});

  $DLSNotificationCopyWith<$Res> get notification;
}

/// @nodoc
class __$$_HidePushEventCopyWithImpl<$Res>
    extends _$NotificationsPushEventCopyWithImpl<$Res, _$_HidePushEvent>
    implements _$$_HidePushEventCopyWith<$Res> {
  __$$_HidePushEventCopyWithImpl(
      _$_HidePushEvent _value, $Res Function(_$_HidePushEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notification = null,
  }) {
    return _then(_$_HidePushEvent(
      null == notification
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

class _$_HidePushEvent implements _HidePushEvent {
  const _$_HidePushEvent(this.notification);

  @override
  final DLSNotification notification;

  @override
  String toString() {
    return 'NotificationsPushEvent.hidePush(notification: $notification)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HidePushEvent &&
            (identical(other.notification, notification) ||
                other.notification == notification));
  }

  @override
  int get hashCode => Object.hash(runtimeType, notification);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HidePushEventCopyWith<_$_HidePushEvent> get copyWith =>
      __$$_HidePushEventCopyWithImpl<_$_HidePushEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(DLSNotification notification) showPush,
    required TResult Function(DLSNotification notification) hidePush,
    required TResult Function() clearPushes,
  }) {
    return hidePush(notification);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(DLSNotification notification)? showPush,
    TResult? Function(DLSNotification notification)? hidePush,
    TResult? Function()? clearPushes,
  }) {
    return hidePush?.call(notification);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(DLSNotification notification)? showPush,
    TResult Function(DLSNotification notification)? hidePush,
    TResult Function()? clearPushes,
    required TResult orElse(),
  }) {
    if (hidePush != null) {
      return hidePush(notification);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitEvent value) init,
    required TResult Function(_ShowPushEvent value) showPush,
    required TResult Function(_HidePushEvent value) hidePush,
    required TResult Function(_ClearPushesEvent value) clearPushes,
  }) {
    return hidePush(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitEvent value)? init,
    TResult? Function(_ShowPushEvent value)? showPush,
    TResult? Function(_HidePushEvent value)? hidePush,
    TResult? Function(_ClearPushesEvent value)? clearPushes,
  }) {
    return hidePush?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitEvent value)? init,
    TResult Function(_ShowPushEvent value)? showPush,
    TResult Function(_HidePushEvent value)? hidePush,
    TResult Function(_ClearPushesEvent value)? clearPushes,
    required TResult orElse(),
  }) {
    if (hidePush != null) {
      return hidePush(this);
    }
    return orElse();
  }
}

abstract class _HidePushEvent implements NotificationsPushEvent {
  const factory _HidePushEvent(final DLSNotification notification) =
      _$_HidePushEvent;

  DLSNotification get notification;
  @JsonKey(ignore: true)
  _$$_HidePushEventCopyWith<_$_HidePushEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ClearPushesEventCopyWith<$Res> {
  factory _$$_ClearPushesEventCopyWith(
          _$_ClearPushesEvent value, $Res Function(_$_ClearPushesEvent) then) =
      __$$_ClearPushesEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ClearPushesEventCopyWithImpl<$Res>
    extends _$NotificationsPushEventCopyWithImpl<$Res, _$_ClearPushesEvent>
    implements _$$_ClearPushesEventCopyWith<$Res> {
  __$$_ClearPushesEventCopyWithImpl(
      _$_ClearPushesEvent _value, $Res Function(_$_ClearPushesEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ClearPushesEvent implements _ClearPushesEvent {
  const _$_ClearPushesEvent();

  @override
  String toString() {
    return 'NotificationsPushEvent.clearPushes()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ClearPushesEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(DLSNotification notification) showPush,
    required TResult Function(DLSNotification notification) hidePush,
    required TResult Function() clearPushes,
  }) {
    return clearPushes();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(DLSNotification notification)? showPush,
    TResult? Function(DLSNotification notification)? hidePush,
    TResult? Function()? clearPushes,
  }) {
    return clearPushes?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(DLSNotification notification)? showPush,
    TResult Function(DLSNotification notification)? hidePush,
    TResult Function()? clearPushes,
    required TResult orElse(),
  }) {
    if (clearPushes != null) {
      return clearPushes();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitEvent value) init,
    required TResult Function(_ShowPushEvent value) showPush,
    required TResult Function(_HidePushEvent value) hidePush,
    required TResult Function(_ClearPushesEvent value) clearPushes,
  }) {
    return clearPushes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitEvent value)? init,
    TResult? Function(_ShowPushEvent value)? showPush,
    TResult? Function(_HidePushEvent value)? hidePush,
    TResult? Function(_ClearPushesEvent value)? clearPushes,
  }) {
    return clearPushes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitEvent value)? init,
    TResult Function(_ShowPushEvent value)? showPush,
    TResult Function(_HidePushEvent value)? hidePush,
    TResult Function(_ClearPushesEvent value)? clearPushes,
    required TResult orElse(),
  }) {
    if (clearPushes != null) {
      return clearPushes(this);
    }
    return orElse();
  }
}

abstract class _ClearPushesEvent implements NotificationsPushEvent {
  const factory _ClearPushesEvent() = _$_ClearPushesEvent;
}

/// @nodoc
mixin _$NotificationsPushState {
  List<DLSNotification> get notifications => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<DLSNotification> notifications) started,
    required TResult Function(List<DLSNotification> notifications) initializing,
    required TResult Function(List<DLSNotification> notifications) ok,
    required TResult Function(
            List<DLSNotification> notifications, String message)
        failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<DLSNotification> notifications)? started,
    TResult? Function(List<DLSNotification> notifications)? initializing,
    TResult? Function(List<DLSNotification> notifications)? ok,
    TResult? Function(List<DLSNotification> notifications, String message)?
        failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<DLSNotification> notifications)? started,
    TResult Function(List<DLSNotification> notifications)? initializing,
    TResult Function(List<DLSNotification> notifications)? ok,
    TResult Function(List<DLSNotification> notifications, String message)?
        failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Initializing value) initializing,
    required TResult Function(_Ok value) ok,
    required TResult Function(_Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Initializing value)? initializing,
    TResult? Function(_Ok value)? ok,
    TResult? Function(_Failure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Initializing value)? initializing,
    TResult Function(_Ok value)? ok,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NotificationsPushStateCopyWith<NotificationsPushState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationsPushStateCopyWith<$Res> {
  factory $NotificationsPushStateCopyWith(NotificationsPushState value,
          $Res Function(NotificationsPushState) then) =
      _$NotificationsPushStateCopyWithImpl<$Res, NotificationsPushState>;
  @useResult
  $Res call({List<DLSNotification> notifications});
}

/// @nodoc
class _$NotificationsPushStateCopyWithImpl<$Res,
        $Val extends NotificationsPushState>
    implements $NotificationsPushStateCopyWith<$Res> {
  _$NotificationsPushStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notifications = null,
  }) {
    return _then(_value.copyWith(
      notifications: null == notifications
          ? _value.notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as List<DLSNotification>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res>
    implements $NotificationsPushStateCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<DLSNotification> notifications});
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$NotificationsPushStateCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notifications = null,
  }) {
    return _then(_$_Started(
      notifications: null == notifications
          ? _value._notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as List<DLSNotification>,
    ));
  }
}

/// @nodoc

class _$_Started extends _Started {
  const _$_Started({final List<DLSNotification> notifications = const []})
      : _notifications = notifications,
        super._();

  final List<DLSNotification> _notifications;
  @override
  @JsonKey()
  List<DLSNotification> get notifications {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_notifications);
  }

  @override
  String toString() {
    return 'NotificationsPushState.started(notifications: $notifications)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Started &&
            const DeepCollectionEquality()
                .equals(other._notifications, _notifications));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_notifications));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StartedCopyWith<_$_Started> get copyWith =>
      __$$_StartedCopyWithImpl<_$_Started>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<DLSNotification> notifications) started,
    required TResult Function(List<DLSNotification> notifications) initializing,
    required TResult Function(List<DLSNotification> notifications) ok,
    required TResult Function(
            List<DLSNotification> notifications, String message)
        failure,
  }) {
    return started(notifications);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<DLSNotification> notifications)? started,
    TResult? Function(List<DLSNotification> notifications)? initializing,
    TResult? Function(List<DLSNotification> notifications)? ok,
    TResult? Function(List<DLSNotification> notifications, String message)?
        failure,
  }) {
    return started?.call(notifications);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<DLSNotification> notifications)? started,
    TResult Function(List<DLSNotification> notifications)? initializing,
    TResult Function(List<DLSNotification> notifications)? ok,
    TResult Function(List<DLSNotification> notifications, String message)?
        failure,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(notifications);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Initializing value) initializing,
    required TResult Function(_Ok value) ok,
    required TResult Function(_Failure value) failure,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Initializing value)? initializing,
    TResult? Function(_Ok value)? ok,
    TResult? Function(_Failure value)? failure,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Initializing value)? initializing,
    TResult Function(_Ok value)? ok,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started extends NotificationsPushState {
  const factory _Started({final List<DLSNotification> notifications}) =
      _$_Started;
  const _Started._() : super._();

  @override
  List<DLSNotification> get notifications;
  @override
  @JsonKey(ignore: true)
  _$$_StartedCopyWith<_$_Started> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_InitializingCopyWith<$Res>
    implements $NotificationsPushStateCopyWith<$Res> {
  factory _$$_InitializingCopyWith(
          _$_Initializing value, $Res Function(_$_Initializing) then) =
      __$$_InitializingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<DLSNotification> notifications});
}

/// @nodoc
class __$$_InitializingCopyWithImpl<$Res>
    extends _$NotificationsPushStateCopyWithImpl<$Res, _$_Initializing>
    implements _$$_InitializingCopyWith<$Res> {
  __$$_InitializingCopyWithImpl(
      _$_Initializing _value, $Res Function(_$_Initializing) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notifications = null,
  }) {
    return _then(_$_Initializing(
      notifications: null == notifications
          ? _value._notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as List<DLSNotification>,
    ));
  }
}

/// @nodoc

class _$_Initializing extends _Initializing {
  const _$_Initializing({final List<DLSNotification> notifications = const []})
      : _notifications = notifications,
        super._();

  final List<DLSNotification> _notifications;
  @override
  @JsonKey()
  List<DLSNotification> get notifications {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_notifications);
  }

  @override
  String toString() {
    return 'NotificationsPushState.initializing(notifications: $notifications)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initializing &&
            const DeepCollectionEquality()
                .equals(other._notifications, _notifications));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_notifications));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitializingCopyWith<_$_Initializing> get copyWith =>
      __$$_InitializingCopyWithImpl<_$_Initializing>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<DLSNotification> notifications) started,
    required TResult Function(List<DLSNotification> notifications) initializing,
    required TResult Function(List<DLSNotification> notifications) ok,
    required TResult Function(
            List<DLSNotification> notifications, String message)
        failure,
  }) {
    return initializing(notifications);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<DLSNotification> notifications)? started,
    TResult? Function(List<DLSNotification> notifications)? initializing,
    TResult? Function(List<DLSNotification> notifications)? ok,
    TResult? Function(List<DLSNotification> notifications, String message)?
        failure,
  }) {
    return initializing?.call(notifications);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<DLSNotification> notifications)? started,
    TResult Function(List<DLSNotification> notifications)? initializing,
    TResult Function(List<DLSNotification> notifications)? ok,
    TResult Function(List<DLSNotification> notifications, String message)?
        failure,
    required TResult orElse(),
  }) {
    if (initializing != null) {
      return initializing(notifications);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Initializing value) initializing,
    required TResult Function(_Ok value) ok,
    required TResult Function(_Failure value) failure,
  }) {
    return initializing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Initializing value)? initializing,
    TResult? Function(_Ok value)? ok,
    TResult? Function(_Failure value)? failure,
  }) {
    return initializing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Initializing value)? initializing,
    TResult Function(_Ok value)? ok,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (initializing != null) {
      return initializing(this);
    }
    return orElse();
  }
}

abstract class _Initializing extends NotificationsPushState {
  const factory _Initializing({final List<DLSNotification> notifications}) =
      _$_Initializing;
  const _Initializing._() : super._();

  @override
  List<DLSNotification> get notifications;
  @override
  @JsonKey(ignore: true)
  _$$_InitializingCopyWith<_$_Initializing> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_OkCopyWith<$Res>
    implements $NotificationsPushStateCopyWith<$Res> {
  factory _$$_OkCopyWith(_$_Ok value, $Res Function(_$_Ok) then) =
      __$$_OkCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<DLSNotification> notifications});
}

/// @nodoc
class __$$_OkCopyWithImpl<$Res>
    extends _$NotificationsPushStateCopyWithImpl<$Res, _$_Ok>
    implements _$$_OkCopyWith<$Res> {
  __$$_OkCopyWithImpl(_$_Ok _value, $Res Function(_$_Ok) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notifications = null,
  }) {
    return _then(_$_Ok(
      notifications: null == notifications
          ? _value._notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as List<DLSNotification>,
    ));
  }
}

/// @nodoc

class _$_Ok extends _Ok {
  const _$_Ok({required final List<DLSNotification> notifications})
      : _notifications = notifications,
        super._();

  final List<DLSNotification> _notifications;
  @override
  List<DLSNotification> get notifications {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_notifications);
  }

  @override
  String toString() {
    return 'NotificationsPushState.ok(notifications: $notifications)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Ok &&
            const DeepCollectionEquality()
                .equals(other._notifications, _notifications));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_notifications));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OkCopyWith<_$_Ok> get copyWith =>
      __$$_OkCopyWithImpl<_$_Ok>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<DLSNotification> notifications) started,
    required TResult Function(List<DLSNotification> notifications) initializing,
    required TResult Function(List<DLSNotification> notifications) ok,
    required TResult Function(
            List<DLSNotification> notifications, String message)
        failure,
  }) {
    return ok(notifications);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<DLSNotification> notifications)? started,
    TResult? Function(List<DLSNotification> notifications)? initializing,
    TResult? Function(List<DLSNotification> notifications)? ok,
    TResult? Function(List<DLSNotification> notifications, String message)?
        failure,
  }) {
    return ok?.call(notifications);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<DLSNotification> notifications)? started,
    TResult Function(List<DLSNotification> notifications)? initializing,
    TResult Function(List<DLSNotification> notifications)? ok,
    TResult Function(List<DLSNotification> notifications, String message)?
        failure,
    required TResult orElse(),
  }) {
    if (ok != null) {
      return ok(notifications);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Initializing value) initializing,
    required TResult Function(_Ok value) ok,
    required TResult Function(_Failure value) failure,
  }) {
    return ok(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Initializing value)? initializing,
    TResult? Function(_Ok value)? ok,
    TResult? Function(_Failure value)? failure,
  }) {
    return ok?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Initializing value)? initializing,
    TResult Function(_Ok value)? ok,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (ok != null) {
      return ok(this);
    }
    return orElse();
  }
}

abstract class _Ok extends NotificationsPushState {
  const factory _Ok({required final List<DLSNotification> notifications}) =
      _$_Ok;
  const _Ok._() : super._();

  @override
  List<DLSNotification> get notifications;
  @override
  @JsonKey(ignore: true)
  _$$_OkCopyWith<_$_Ok> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FailureCopyWith<$Res>
    implements $NotificationsPushStateCopyWith<$Res> {
  factory _$$_FailureCopyWith(
          _$_Failure value, $Res Function(_$_Failure) then) =
      __$$_FailureCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<DLSNotification> notifications, String message});
}

/// @nodoc
class __$$_FailureCopyWithImpl<$Res>
    extends _$NotificationsPushStateCopyWithImpl<$Res, _$_Failure>
    implements _$$_FailureCopyWith<$Res> {
  __$$_FailureCopyWithImpl(_$_Failure _value, $Res Function(_$_Failure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notifications = null,
    Object? message = null,
  }) {
    return _then(_$_Failure(
      notifications: null == notifications
          ? _value._notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as List<DLSNotification>,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Failure extends _Failure {
  const _$_Failure(
      {final List<DLSNotification> notifications = const [],
      this.message = 'Ошибка'})
      : _notifications = notifications,
        super._();

  final List<DLSNotification> _notifications;
  @override
  @JsonKey()
  List<DLSNotification> get notifications {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_notifications);
  }

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'NotificationsPushState.failure(notifications: $notifications, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Failure &&
            const DeepCollectionEquality()
                .equals(other._notifications, _notifications) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_notifications), message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FailureCopyWith<_$_Failure> get copyWith =>
      __$$_FailureCopyWithImpl<_$_Failure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<DLSNotification> notifications) started,
    required TResult Function(List<DLSNotification> notifications) initializing,
    required TResult Function(List<DLSNotification> notifications) ok,
    required TResult Function(
            List<DLSNotification> notifications, String message)
        failure,
  }) {
    return failure(notifications, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<DLSNotification> notifications)? started,
    TResult? Function(List<DLSNotification> notifications)? initializing,
    TResult? Function(List<DLSNotification> notifications)? ok,
    TResult? Function(List<DLSNotification> notifications, String message)?
        failure,
  }) {
    return failure?.call(notifications, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<DLSNotification> notifications)? started,
    TResult Function(List<DLSNotification> notifications)? initializing,
    TResult Function(List<DLSNotification> notifications)? ok,
    TResult Function(List<DLSNotification> notifications, String message)?
        failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(notifications, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Initializing value) initializing,
    required TResult Function(_Ok value) ok,
    required TResult Function(_Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Initializing value)? initializing,
    TResult? Function(_Ok value)? ok,
    TResult? Function(_Failure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Initializing value)? initializing,
    TResult Function(_Ok value)? ok,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure extends NotificationsPushState {
  const factory _Failure(
      {final List<DLSNotification> notifications,
      final String message}) = _$_Failure;
  const _Failure._() : super._();

  @override
  List<DLSNotification> get notifications;
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_FailureCopyWith<_$_Failure> get copyWith =>
      throw _privateConstructorUsedError;
}
