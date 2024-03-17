// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'settings_notifications_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SettingsNotificationsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() save,
    required TResult Function() read,
    required TResult Function(bool enable) enableNotifications,
    required TResult Function(bool enable) enableSchedule,
    required TResult Function(NotifSchedule notifSchedule) changeSchedule,
    required TResult Function() addMuteInterval,
    required TResult Function(
            String id, TimeOfDay? startInterval, TimeOfDay? endInterval)
        updateMuteInterval,
    required TResult Function(String id) removeMuteInterval,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? save,
    TResult? Function()? read,
    TResult? Function(bool enable)? enableNotifications,
    TResult? Function(bool enable)? enableSchedule,
    TResult? Function(NotifSchedule notifSchedule)? changeSchedule,
    TResult? Function()? addMuteInterval,
    TResult? Function(
            String id, TimeOfDay? startInterval, TimeOfDay? endInterval)?
        updateMuteInterval,
    TResult? Function(String id)? removeMuteInterval,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? save,
    TResult Function()? read,
    TResult Function(bool enable)? enableNotifications,
    TResult Function(bool enable)? enableSchedule,
    TResult Function(NotifSchedule notifSchedule)? changeSchedule,
    TResult Function()? addMuteInterval,
    TResult Function(
            String id, TimeOfDay? startInterval, TimeOfDay? endInterval)?
        updateMuteInterval,
    TResult Function(String id)? removeMuteInterval,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SaveSettingsNotificationsEvent value) save,
    required TResult Function(_ReadSettingsNotificationsEvent value) read,
    required TResult Function(
            _EnableNotificationsSettingsNotificationsEvent value)
        enableNotifications,
    required TResult Function(_EnableScheduleSettingsNotificationsEvent value)
        enableSchedule,
    required TResult Function(_ChangeScheduleSettingsNotificationsEvent value)
        changeSchedule,
    required TResult Function(_AddMuteIntervalSettingsNotificationsEvent value)
        addMuteInterval,
    required TResult Function(
            _UpdateMuteIntervalSettingsNotificationsEvent value)
        updateMuteInterval,
    required TResult Function(
            _RemoveMuteIntervalSettingsNotificationsEvent value)
        removeMuteInterval,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SaveSettingsNotificationsEvent value)? save,
    TResult? Function(_ReadSettingsNotificationsEvent value)? read,
    TResult? Function(_EnableNotificationsSettingsNotificationsEvent value)?
        enableNotifications,
    TResult? Function(_EnableScheduleSettingsNotificationsEvent value)?
        enableSchedule,
    TResult? Function(_ChangeScheduleSettingsNotificationsEvent value)?
        changeSchedule,
    TResult? Function(_AddMuteIntervalSettingsNotificationsEvent value)?
        addMuteInterval,
    TResult? Function(_UpdateMuteIntervalSettingsNotificationsEvent value)?
        updateMuteInterval,
    TResult? Function(_RemoveMuteIntervalSettingsNotificationsEvent value)?
        removeMuteInterval,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SaveSettingsNotificationsEvent value)? save,
    TResult Function(_ReadSettingsNotificationsEvent value)? read,
    TResult Function(_EnableNotificationsSettingsNotificationsEvent value)?
        enableNotifications,
    TResult Function(_EnableScheduleSettingsNotificationsEvent value)?
        enableSchedule,
    TResult Function(_ChangeScheduleSettingsNotificationsEvent value)?
        changeSchedule,
    TResult Function(_AddMuteIntervalSettingsNotificationsEvent value)?
        addMuteInterval,
    TResult Function(_UpdateMuteIntervalSettingsNotificationsEvent value)?
        updateMuteInterval,
    TResult Function(_RemoveMuteIntervalSettingsNotificationsEvent value)?
        removeMuteInterval,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsNotificationsEventCopyWith<$Res> {
  factory $SettingsNotificationsEventCopyWith(SettingsNotificationsEvent value,
          $Res Function(SettingsNotificationsEvent) then) =
      _$SettingsNotificationsEventCopyWithImpl<$Res,
          SettingsNotificationsEvent>;
}

/// @nodoc
class _$SettingsNotificationsEventCopyWithImpl<$Res,
        $Val extends SettingsNotificationsEvent>
    implements $SettingsNotificationsEventCopyWith<$Res> {
  _$SettingsNotificationsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_SaveSettingsNotificationsEventCopyWith<$Res> {
  factory _$$_SaveSettingsNotificationsEventCopyWith(
          _$_SaveSettingsNotificationsEvent value,
          $Res Function(_$_SaveSettingsNotificationsEvent) then) =
      __$$_SaveSettingsNotificationsEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SaveSettingsNotificationsEventCopyWithImpl<$Res>
    extends _$SettingsNotificationsEventCopyWithImpl<$Res,
        _$_SaveSettingsNotificationsEvent>
    implements _$$_SaveSettingsNotificationsEventCopyWith<$Res> {
  __$$_SaveSettingsNotificationsEventCopyWithImpl(
      _$_SaveSettingsNotificationsEvent _value,
      $Res Function(_$_SaveSettingsNotificationsEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SaveSettingsNotificationsEvent
    extends _SaveSettingsNotificationsEvent {
  const _$_SaveSettingsNotificationsEvent() : super._();

  @override
  String toString() {
    return 'SettingsNotificationsEvent.save()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SaveSettingsNotificationsEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() save,
    required TResult Function() read,
    required TResult Function(bool enable) enableNotifications,
    required TResult Function(bool enable) enableSchedule,
    required TResult Function(NotifSchedule notifSchedule) changeSchedule,
    required TResult Function() addMuteInterval,
    required TResult Function(
            String id, TimeOfDay? startInterval, TimeOfDay? endInterval)
        updateMuteInterval,
    required TResult Function(String id) removeMuteInterval,
  }) {
    return save();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? save,
    TResult? Function()? read,
    TResult? Function(bool enable)? enableNotifications,
    TResult? Function(bool enable)? enableSchedule,
    TResult? Function(NotifSchedule notifSchedule)? changeSchedule,
    TResult? Function()? addMuteInterval,
    TResult? Function(
            String id, TimeOfDay? startInterval, TimeOfDay? endInterval)?
        updateMuteInterval,
    TResult? Function(String id)? removeMuteInterval,
  }) {
    return save?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? save,
    TResult Function()? read,
    TResult Function(bool enable)? enableNotifications,
    TResult Function(bool enable)? enableSchedule,
    TResult Function(NotifSchedule notifSchedule)? changeSchedule,
    TResult Function()? addMuteInterval,
    TResult Function(
            String id, TimeOfDay? startInterval, TimeOfDay? endInterval)?
        updateMuteInterval,
    TResult Function(String id)? removeMuteInterval,
    required TResult orElse(),
  }) {
    if (save != null) {
      return save();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SaveSettingsNotificationsEvent value) save,
    required TResult Function(_ReadSettingsNotificationsEvent value) read,
    required TResult Function(
            _EnableNotificationsSettingsNotificationsEvent value)
        enableNotifications,
    required TResult Function(_EnableScheduleSettingsNotificationsEvent value)
        enableSchedule,
    required TResult Function(_ChangeScheduleSettingsNotificationsEvent value)
        changeSchedule,
    required TResult Function(_AddMuteIntervalSettingsNotificationsEvent value)
        addMuteInterval,
    required TResult Function(
            _UpdateMuteIntervalSettingsNotificationsEvent value)
        updateMuteInterval,
    required TResult Function(
            _RemoveMuteIntervalSettingsNotificationsEvent value)
        removeMuteInterval,
  }) {
    return save(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SaveSettingsNotificationsEvent value)? save,
    TResult? Function(_ReadSettingsNotificationsEvent value)? read,
    TResult? Function(_EnableNotificationsSettingsNotificationsEvent value)?
        enableNotifications,
    TResult? Function(_EnableScheduleSettingsNotificationsEvent value)?
        enableSchedule,
    TResult? Function(_ChangeScheduleSettingsNotificationsEvent value)?
        changeSchedule,
    TResult? Function(_AddMuteIntervalSettingsNotificationsEvent value)?
        addMuteInterval,
    TResult? Function(_UpdateMuteIntervalSettingsNotificationsEvent value)?
        updateMuteInterval,
    TResult? Function(_RemoveMuteIntervalSettingsNotificationsEvent value)?
        removeMuteInterval,
  }) {
    return save?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SaveSettingsNotificationsEvent value)? save,
    TResult Function(_ReadSettingsNotificationsEvent value)? read,
    TResult Function(_EnableNotificationsSettingsNotificationsEvent value)?
        enableNotifications,
    TResult Function(_EnableScheduleSettingsNotificationsEvent value)?
        enableSchedule,
    TResult Function(_ChangeScheduleSettingsNotificationsEvent value)?
        changeSchedule,
    TResult Function(_AddMuteIntervalSettingsNotificationsEvent value)?
        addMuteInterval,
    TResult Function(_UpdateMuteIntervalSettingsNotificationsEvent value)?
        updateMuteInterval,
    TResult Function(_RemoveMuteIntervalSettingsNotificationsEvent value)?
        removeMuteInterval,
    required TResult orElse(),
  }) {
    if (save != null) {
      return save(this);
    }
    return orElse();
  }
}

abstract class _SaveSettingsNotificationsEvent
    extends SettingsNotificationsEvent {
  const factory _SaveSettingsNotificationsEvent() =
      _$_SaveSettingsNotificationsEvent;
  const _SaveSettingsNotificationsEvent._() : super._();
}

/// @nodoc
abstract class _$$_ReadSettingsNotificationsEventCopyWith<$Res> {
  factory _$$_ReadSettingsNotificationsEventCopyWith(
          _$_ReadSettingsNotificationsEvent value,
          $Res Function(_$_ReadSettingsNotificationsEvent) then) =
      __$$_ReadSettingsNotificationsEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ReadSettingsNotificationsEventCopyWithImpl<$Res>
    extends _$SettingsNotificationsEventCopyWithImpl<$Res,
        _$_ReadSettingsNotificationsEvent>
    implements _$$_ReadSettingsNotificationsEventCopyWith<$Res> {
  __$$_ReadSettingsNotificationsEventCopyWithImpl(
      _$_ReadSettingsNotificationsEvent _value,
      $Res Function(_$_ReadSettingsNotificationsEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ReadSettingsNotificationsEvent
    extends _ReadSettingsNotificationsEvent {
  const _$_ReadSettingsNotificationsEvent() : super._();

  @override
  String toString() {
    return 'SettingsNotificationsEvent.read()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReadSettingsNotificationsEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() save,
    required TResult Function() read,
    required TResult Function(bool enable) enableNotifications,
    required TResult Function(bool enable) enableSchedule,
    required TResult Function(NotifSchedule notifSchedule) changeSchedule,
    required TResult Function() addMuteInterval,
    required TResult Function(
            String id, TimeOfDay? startInterval, TimeOfDay? endInterval)
        updateMuteInterval,
    required TResult Function(String id) removeMuteInterval,
  }) {
    return read();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? save,
    TResult? Function()? read,
    TResult? Function(bool enable)? enableNotifications,
    TResult? Function(bool enable)? enableSchedule,
    TResult? Function(NotifSchedule notifSchedule)? changeSchedule,
    TResult? Function()? addMuteInterval,
    TResult? Function(
            String id, TimeOfDay? startInterval, TimeOfDay? endInterval)?
        updateMuteInterval,
    TResult? Function(String id)? removeMuteInterval,
  }) {
    return read?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? save,
    TResult Function()? read,
    TResult Function(bool enable)? enableNotifications,
    TResult Function(bool enable)? enableSchedule,
    TResult Function(NotifSchedule notifSchedule)? changeSchedule,
    TResult Function()? addMuteInterval,
    TResult Function(
            String id, TimeOfDay? startInterval, TimeOfDay? endInterval)?
        updateMuteInterval,
    TResult Function(String id)? removeMuteInterval,
    required TResult orElse(),
  }) {
    if (read != null) {
      return read();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SaveSettingsNotificationsEvent value) save,
    required TResult Function(_ReadSettingsNotificationsEvent value) read,
    required TResult Function(
            _EnableNotificationsSettingsNotificationsEvent value)
        enableNotifications,
    required TResult Function(_EnableScheduleSettingsNotificationsEvent value)
        enableSchedule,
    required TResult Function(_ChangeScheduleSettingsNotificationsEvent value)
        changeSchedule,
    required TResult Function(_AddMuteIntervalSettingsNotificationsEvent value)
        addMuteInterval,
    required TResult Function(
            _UpdateMuteIntervalSettingsNotificationsEvent value)
        updateMuteInterval,
    required TResult Function(
            _RemoveMuteIntervalSettingsNotificationsEvent value)
        removeMuteInterval,
  }) {
    return read(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SaveSettingsNotificationsEvent value)? save,
    TResult? Function(_ReadSettingsNotificationsEvent value)? read,
    TResult? Function(_EnableNotificationsSettingsNotificationsEvent value)?
        enableNotifications,
    TResult? Function(_EnableScheduleSettingsNotificationsEvent value)?
        enableSchedule,
    TResult? Function(_ChangeScheduleSettingsNotificationsEvent value)?
        changeSchedule,
    TResult? Function(_AddMuteIntervalSettingsNotificationsEvent value)?
        addMuteInterval,
    TResult? Function(_UpdateMuteIntervalSettingsNotificationsEvent value)?
        updateMuteInterval,
    TResult? Function(_RemoveMuteIntervalSettingsNotificationsEvent value)?
        removeMuteInterval,
  }) {
    return read?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SaveSettingsNotificationsEvent value)? save,
    TResult Function(_ReadSettingsNotificationsEvent value)? read,
    TResult Function(_EnableNotificationsSettingsNotificationsEvent value)?
        enableNotifications,
    TResult Function(_EnableScheduleSettingsNotificationsEvent value)?
        enableSchedule,
    TResult Function(_ChangeScheduleSettingsNotificationsEvent value)?
        changeSchedule,
    TResult Function(_AddMuteIntervalSettingsNotificationsEvent value)?
        addMuteInterval,
    TResult Function(_UpdateMuteIntervalSettingsNotificationsEvent value)?
        updateMuteInterval,
    TResult Function(_RemoveMuteIntervalSettingsNotificationsEvent value)?
        removeMuteInterval,
    required TResult orElse(),
  }) {
    if (read != null) {
      return read(this);
    }
    return orElse();
  }
}

abstract class _ReadSettingsNotificationsEvent
    extends SettingsNotificationsEvent {
  const factory _ReadSettingsNotificationsEvent() =
      _$_ReadSettingsNotificationsEvent;
  const _ReadSettingsNotificationsEvent._() : super._();
}

/// @nodoc
abstract class _$$_EnableNotificationsSettingsNotificationsEventCopyWith<$Res> {
  factory _$$_EnableNotificationsSettingsNotificationsEventCopyWith(
          _$_EnableNotificationsSettingsNotificationsEvent value,
          $Res Function(_$_EnableNotificationsSettingsNotificationsEvent)
              then) =
      __$$_EnableNotificationsSettingsNotificationsEventCopyWithImpl<$Res>;
  @useResult
  $Res call({bool enable});
}

/// @nodoc
class __$$_EnableNotificationsSettingsNotificationsEventCopyWithImpl<$Res>
    extends _$SettingsNotificationsEventCopyWithImpl<$Res,
        _$_EnableNotificationsSettingsNotificationsEvent>
    implements _$$_EnableNotificationsSettingsNotificationsEventCopyWith<$Res> {
  __$$_EnableNotificationsSettingsNotificationsEventCopyWithImpl(
      _$_EnableNotificationsSettingsNotificationsEvent _value,
      $Res Function(_$_EnableNotificationsSettingsNotificationsEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enable = null,
  }) {
    return _then(_$_EnableNotificationsSettingsNotificationsEvent(
      null == enable
          ? _value.enable
          : enable // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_EnableNotificationsSettingsNotificationsEvent
    extends _EnableNotificationsSettingsNotificationsEvent {
  const _$_EnableNotificationsSettingsNotificationsEvent(this.enable)
      : super._();

  @override
  final bool enable;

  @override
  String toString() {
    return 'SettingsNotificationsEvent.enableNotifications(enable: $enable)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EnableNotificationsSettingsNotificationsEvent &&
            (identical(other.enable, enable) || other.enable == enable));
  }

  @override
  int get hashCode => Object.hash(runtimeType, enable);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EnableNotificationsSettingsNotificationsEventCopyWith<
          _$_EnableNotificationsSettingsNotificationsEvent>
      get copyWith =>
          __$$_EnableNotificationsSettingsNotificationsEventCopyWithImpl<
                  _$_EnableNotificationsSettingsNotificationsEvent>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() save,
    required TResult Function() read,
    required TResult Function(bool enable) enableNotifications,
    required TResult Function(bool enable) enableSchedule,
    required TResult Function(NotifSchedule notifSchedule) changeSchedule,
    required TResult Function() addMuteInterval,
    required TResult Function(
            String id, TimeOfDay? startInterval, TimeOfDay? endInterval)
        updateMuteInterval,
    required TResult Function(String id) removeMuteInterval,
  }) {
    return enableNotifications(enable);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? save,
    TResult? Function()? read,
    TResult? Function(bool enable)? enableNotifications,
    TResult? Function(bool enable)? enableSchedule,
    TResult? Function(NotifSchedule notifSchedule)? changeSchedule,
    TResult? Function()? addMuteInterval,
    TResult? Function(
            String id, TimeOfDay? startInterval, TimeOfDay? endInterval)?
        updateMuteInterval,
    TResult? Function(String id)? removeMuteInterval,
  }) {
    return enableNotifications?.call(enable);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? save,
    TResult Function()? read,
    TResult Function(bool enable)? enableNotifications,
    TResult Function(bool enable)? enableSchedule,
    TResult Function(NotifSchedule notifSchedule)? changeSchedule,
    TResult Function()? addMuteInterval,
    TResult Function(
            String id, TimeOfDay? startInterval, TimeOfDay? endInterval)?
        updateMuteInterval,
    TResult Function(String id)? removeMuteInterval,
    required TResult orElse(),
  }) {
    if (enableNotifications != null) {
      return enableNotifications(enable);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SaveSettingsNotificationsEvent value) save,
    required TResult Function(_ReadSettingsNotificationsEvent value) read,
    required TResult Function(
            _EnableNotificationsSettingsNotificationsEvent value)
        enableNotifications,
    required TResult Function(_EnableScheduleSettingsNotificationsEvent value)
        enableSchedule,
    required TResult Function(_ChangeScheduleSettingsNotificationsEvent value)
        changeSchedule,
    required TResult Function(_AddMuteIntervalSettingsNotificationsEvent value)
        addMuteInterval,
    required TResult Function(
            _UpdateMuteIntervalSettingsNotificationsEvent value)
        updateMuteInterval,
    required TResult Function(
            _RemoveMuteIntervalSettingsNotificationsEvent value)
        removeMuteInterval,
  }) {
    return enableNotifications(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SaveSettingsNotificationsEvent value)? save,
    TResult? Function(_ReadSettingsNotificationsEvent value)? read,
    TResult? Function(_EnableNotificationsSettingsNotificationsEvent value)?
        enableNotifications,
    TResult? Function(_EnableScheduleSettingsNotificationsEvent value)?
        enableSchedule,
    TResult? Function(_ChangeScheduleSettingsNotificationsEvent value)?
        changeSchedule,
    TResult? Function(_AddMuteIntervalSettingsNotificationsEvent value)?
        addMuteInterval,
    TResult? Function(_UpdateMuteIntervalSettingsNotificationsEvent value)?
        updateMuteInterval,
    TResult? Function(_RemoveMuteIntervalSettingsNotificationsEvent value)?
        removeMuteInterval,
  }) {
    return enableNotifications?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SaveSettingsNotificationsEvent value)? save,
    TResult Function(_ReadSettingsNotificationsEvent value)? read,
    TResult Function(_EnableNotificationsSettingsNotificationsEvent value)?
        enableNotifications,
    TResult Function(_EnableScheduleSettingsNotificationsEvent value)?
        enableSchedule,
    TResult Function(_ChangeScheduleSettingsNotificationsEvent value)?
        changeSchedule,
    TResult Function(_AddMuteIntervalSettingsNotificationsEvent value)?
        addMuteInterval,
    TResult Function(_UpdateMuteIntervalSettingsNotificationsEvent value)?
        updateMuteInterval,
    TResult Function(_RemoveMuteIntervalSettingsNotificationsEvent value)?
        removeMuteInterval,
    required TResult orElse(),
  }) {
    if (enableNotifications != null) {
      return enableNotifications(this);
    }
    return orElse();
  }
}

abstract class _EnableNotificationsSettingsNotificationsEvent
    extends SettingsNotificationsEvent {
  const factory _EnableNotificationsSettingsNotificationsEvent(
      final bool enable) = _$_EnableNotificationsSettingsNotificationsEvent;
  const _EnableNotificationsSettingsNotificationsEvent._() : super._();

  bool get enable;
  @JsonKey(ignore: true)
  _$$_EnableNotificationsSettingsNotificationsEventCopyWith<
          _$_EnableNotificationsSettingsNotificationsEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EnableScheduleSettingsNotificationsEventCopyWith<$Res> {
  factory _$$_EnableScheduleSettingsNotificationsEventCopyWith(
          _$_EnableScheduleSettingsNotificationsEvent value,
          $Res Function(_$_EnableScheduleSettingsNotificationsEvent) then) =
      __$$_EnableScheduleSettingsNotificationsEventCopyWithImpl<$Res>;
  @useResult
  $Res call({bool enable});
}

/// @nodoc
class __$$_EnableScheduleSettingsNotificationsEventCopyWithImpl<$Res>
    extends _$SettingsNotificationsEventCopyWithImpl<$Res,
        _$_EnableScheduleSettingsNotificationsEvent>
    implements _$$_EnableScheduleSettingsNotificationsEventCopyWith<$Res> {
  __$$_EnableScheduleSettingsNotificationsEventCopyWithImpl(
      _$_EnableScheduleSettingsNotificationsEvent _value,
      $Res Function(_$_EnableScheduleSettingsNotificationsEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enable = null,
  }) {
    return _then(_$_EnableScheduleSettingsNotificationsEvent(
      null == enable
          ? _value.enable
          : enable // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_EnableScheduleSettingsNotificationsEvent
    extends _EnableScheduleSettingsNotificationsEvent {
  const _$_EnableScheduleSettingsNotificationsEvent(this.enable) : super._();

  @override
  final bool enable;

  @override
  String toString() {
    return 'SettingsNotificationsEvent.enableSchedule(enable: $enable)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EnableScheduleSettingsNotificationsEvent &&
            (identical(other.enable, enable) || other.enable == enable));
  }

  @override
  int get hashCode => Object.hash(runtimeType, enable);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EnableScheduleSettingsNotificationsEventCopyWith<
          _$_EnableScheduleSettingsNotificationsEvent>
      get copyWith => __$$_EnableScheduleSettingsNotificationsEventCopyWithImpl<
          _$_EnableScheduleSettingsNotificationsEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() save,
    required TResult Function() read,
    required TResult Function(bool enable) enableNotifications,
    required TResult Function(bool enable) enableSchedule,
    required TResult Function(NotifSchedule notifSchedule) changeSchedule,
    required TResult Function() addMuteInterval,
    required TResult Function(
            String id, TimeOfDay? startInterval, TimeOfDay? endInterval)
        updateMuteInterval,
    required TResult Function(String id) removeMuteInterval,
  }) {
    return enableSchedule(enable);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? save,
    TResult? Function()? read,
    TResult? Function(bool enable)? enableNotifications,
    TResult? Function(bool enable)? enableSchedule,
    TResult? Function(NotifSchedule notifSchedule)? changeSchedule,
    TResult? Function()? addMuteInterval,
    TResult? Function(
            String id, TimeOfDay? startInterval, TimeOfDay? endInterval)?
        updateMuteInterval,
    TResult? Function(String id)? removeMuteInterval,
  }) {
    return enableSchedule?.call(enable);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? save,
    TResult Function()? read,
    TResult Function(bool enable)? enableNotifications,
    TResult Function(bool enable)? enableSchedule,
    TResult Function(NotifSchedule notifSchedule)? changeSchedule,
    TResult Function()? addMuteInterval,
    TResult Function(
            String id, TimeOfDay? startInterval, TimeOfDay? endInterval)?
        updateMuteInterval,
    TResult Function(String id)? removeMuteInterval,
    required TResult orElse(),
  }) {
    if (enableSchedule != null) {
      return enableSchedule(enable);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SaveSettingsNotificationsEvent value) save,
    required TResult Function(_ReadSettingsNotificationsEvent value) read,
    required TResult Function(
            _EnableNotificationsSettingsNotificationsEvent value)
        enableNotifications,
    required TResult Function(_EnableScheduleSettingsNotificationsEvent value)
        enableSchedule,
    required TResult Function(_ChangeScheduleSettingsNotificationsEvent value)
        changeSchedule,
    required TResult Function(_AddMuteIntervalSettingsNotificationsEvent value)
        addMuteInterval,
    required TResult Function(
            _UpdateMuteIntervalSettingsNotificationsEvent value)
        updateMuteInterval,
    required TResult Function(
            _RemoveMuteIntervalSettingsNotificationsEvent value)
        removeMuteInterval,
  }) {
    return enableSchedule(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SaveSettingsNotificationsEvent value)? save,
    TResult? Function(_ReadSettingsNotificationsEvent value)? read,
    TResult? Function(_EnableNotificationsSettingsNotificationsEvent value)?
        enableNotifications,
    TResult? Function(_EnableScheduleSettingsNotificationsEvent value)?
        enableSchedule,
    TResult? Function(_ChangeScheduleSettingsNotificationsEvent value)?
        changeSchedule,
    TResult? Function(_AddMuteIntervalSettingsNotificationsEvent value)?
        addMuteInterval,
    TResult? Function(_UpdateMuteIntervalSettingsNotificationsEvent value)?
        updateMuteInterval,
    TResult? Function(_RemoveMuteIntervalSettingsNotificationsEvent value)?
        removeMuteInterval,
  }) {
    return enableSchedule?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SaveSettingsNotificationsEvent value)? save,
    TResult Function(_ReadSettingsNotificationsEvent value)? read,
    TResult Function(_EnableNotificationsSettingsNotificationsEvent value)?
        enableNotifications,
    TResult Function(_EnableScheduleSettingsNotificationsEvent value)?
        enableSchedule,
    TResult Function(_ChangeScheduleSettingsNotificationsEvent value)?
        changeSchedule,
    TResult Function(_AddMuteIntervalSettingsNotificationsEvent value)?
        addMuteInterval,
    TResult Function(_UpdateMuteIntervalSettingsNotificationsEvent value)?
        updateMuteInterval,
    TResult Function(_RemoveMuteIntervalSettingsNotificationsEvent value)?
        removeMuteInterval,
    required TResult orElse(),
  }) {
    if (enableSchedule != null) {
      return enableSchedule(this);
    }
    return orElse();
  }
}

abstract class _EnableScheduleSettingsNotificationsEvent
    extends SettingsNotificationsEvent {
  const factory _EnableScheduleSettingsNotificationsEvent(final bool enable) =
      _$_EnableScheduleSettingsNotificationsEvent;
  const _EnableScheduleSettingsNotificationsEvent._() : super._();

  bool get enable;
  @JsonKey(ignore: true)
  _$$_EnableScheduleSettingsNotificationsEventCopyWith<
          _$_EnableScheduleSettingsNotificationsEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ChangeScheduleSettingsNotificationsEventCopyWith<$Res> {
  factory _$$_ChangeScheduleSettingsNotificationsEventCopyWith(
          _$_ChangeScheduleSettingsNotificationsEvent value,
          $Res Function(_$_ChangeScheduleSettingsNotificationsEvent) then) =
      __$$_ChangeScheduleSettingsNotificationsEventCopyWithImpl<$Res>;
  @useResult
  $Res call({NotifSchedule notifSchedule});

  $NotifScheduleCopyWith<$Res> get notifSchedule;
}

/// @nodoc
class __$$_ChangeScheduleSettingsNotificationsEventCopyWithImpl<$Res>
    extends _$SettingsNotificationsEventCopyWithImpl<$Res,
        _$_ChangeScheduleSettingsNotificationsEvent>
    implements _$$_ChangeScheduleSettingsNotificationsEventCopyWith<$Res> {
  __$$_ChangeScheduleSettingsNotificationsEventCopyWithImpl(
      _$_ChangeScheduleSettingsNotificationsEvent _value,
      $Res Function(_$_ChangeScheduleSettingsNotificationsEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notifSchedule = null,
  }) {
    return _then(_$_ChangeScheduleSettingsNotificationsEvent(
      null == notifSchedule
          ? _value.notifSchedule
          : notifSchedule // ignore: cast_nullable_to_non_nullable
              as NotifSchedule,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $NotifScheduleCopyWith<$Res> get notifSchedule {
    return $NotifScheduleCopyWith<$Res>(_value.notifSchedule, (value) {
      return _then(_value.copyWith(notifSchedule: value));
    });
  }
}

/// @nodoc

class _$_ChangeScheduleSettingsNotificationsEvent
    extends _ChangeScheduleSettingsNotificationsEvent {
  const _$_ChangeScheduleSettingsNotificationsEvent(this.notifSchedule)
      : super._();

  @override
  final NotifSchedule notifSchedule;

  @override
  String toString() {
    return 'SettingsNotificationsEvent.changeSchedule(notifSchedule: $notifSchedule)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeScheduleSettingsNotificationsEvent &&
            (identical(other.notifSchedule, notifSchedule) ||
                other.notifSchedule == notifSchedule));
  }

  @override
  int get hashCode => Object.hash(runtimeType, notifSchedule);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangeScheduleSettingsNotificationsEventCopyWith<
          _$_ChangeScheduleSettingsNotificationsEvent>
      get copyWith => __$$_ChangeScheduleSettingsNotificationsEventCopyWithImpl<
          _$_ChangeScheduleSettingsNotificationsEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() save,
    required TResult Function() read,
    required TResult Function(bool enable) enableNotifications,
    required TResult Function(bool enable) enableSchedule,
    required TResult Function(NotifSchedule notifSchedule) changeSchedule,
    required TResult Function() addMuteInterval,
    required TResult Function(
            String id, TimeOfDay? startInterval, TimeOfDay? endInterval)
        updateMuteInterval,
    required TResult Function(String id) removeMuteInterval,
  }) {
    return changeSchedule(notifSchedule);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? save,
    TResult? Function()? read,
    TResult? Function(bool enable)? enableNotifications,
    TResult? Function(bool enable)? enableSchedule,
    TResult? Function(NotifSchedule notifSchedule)? changeSchedule,
    TResult? Function()? addMuteInterval,
    TResult? Function(
            String id, TimeOfDay? startInterval, TimeOfDay? endInterval)?
        updateMuteInterval,
    TResult? Function(String id)? removeMuteInterval,
  }) {
    return changeSchedule?.call(notifSchedule);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? save,
    TResult Function()? read,
    TResult Function(bool enable)? enableNotifications,
    TResult Function(bool enable)? enableSchedule,
    TResult Function(NotifSchedule notifSchedule)? changeSchedule,
    TResult Function()? addMuteInterval,
    TResult Function(
            String id, TimeOfDay? startInterval, TimeOfDay? endInterval)?
        updateMuteInterval,
    TResult Function(String id)? removeMuteInterval,
    required TResult orElse(),
  }) {
    if (changeSchedule != null) {
      return changeSchedule(notifSchedule);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SaveSettingsNotificationsEvent value) save,
    required TResult Function(_ReadSettingsNotificationsEvent value) read,
    required TResult Function(
            _EnableNotificationsSettingsNotificationsEvent value)
        enableNotifications,
    required TResult Function(_EnableScheduleSettingsNotificationsEvent value)
        enableSchedule,
    required TResult Function(_ChangeScheduleSettingsNotificationsEvent value)
        changeSchedule,
    required TResult Function(_AddMuteIntervalSettingsNotificationsEvent value)
        addMuteInterval,
    required TResult Function(
            _UpdateMuteIntervalSettingsNotificationsEvent value)
        updateMuteInterval,
    required TResult Function(
            _RemoveMuteIntervalSettingsNotificationsEvent value)
        removeMuteInterval,
  }) {
    return changeSchedule(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SaveSettingsNotificationsEvent value)? save,
    TResult? Function(_ReadSettingsNotificationsEvent value)? read,
    TResult? Function(_EnableNotificationsSettingsNotificationsEvent value)?
        enableNotifications,
    TResult? Function(_EnableScheduleSettingsNotificationsEvent value)?
        enableSchedule,
    TResult? Function(_ChangeScheduleSettingsNotificationsEvent value)?
        changeSchedule,
    TResult? Function(_AddMuteIntervalSettingsNotificationsEvent value)?
        addMuteInterval,
    TResult? Function(_UpdateMuteIntervalSettingsNotificationsEvent value)?
        updateMuteInterval,
    TResult? Function(_RemoveMuteIntervalSettingsNotificationsEvent value)?
        removeMuteInterval,
  }) {
    return changeSchedule?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SaveSettingsNotificationsEvent value)? save,
    TResult Function(_ReadSettingsNotificationsEvent value)? read,
    TResult Function(_EnableNotificationsSettingsNotificationsEvent value)?
        enableNotifications,
    TResult Function(_EnableScheduleSettingsNotificationsEvent value)?
        enableSchedule,
    TResult Function(_ChangeScheduleSettingsNotificationsEvent value)?
        changeSchedule,
    TResult Function(_AddMuteIntervalSettingsNotificationsEvent value)?
        addMuteInterval,
    TResult Function(_UpdateMuteIntervalSettingsNotificationsEvent value)?
        updateMuteInterval,
    TResult Function(_RemoveMuteIntervalSettingsNotificationsEvent value)?
        removeMuteInterval,
    required TResult orElse(),
  }) {
    if (changeSchedule != null) {
      return changeSchedule(this);
    }
    return orElse();
  }
}

abstract class _ChangeScheduleSettingsNotificationsEvent
    extends SettingsNotificationsEvent {
  const factory _ChangeScheduleSettingsNotificationsEvent(
          final NotifSchedule notifSchedule) =
      _$_ChangeScheduleSettingsNotificationsEvent;
  const _ChangeScheduleSettingsNotificationsEvent._() : super._();

  NotifSchedule get notifSchedule;
  @JsonKey(ignore: true)
  _$$_ChangeScheduleSettingsNotificationsEventCopyWith<
          _$_ChangeScheduleSettingsNotificationsEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AddMuteIntervalSettingsNotificationsEventCopyWith<$Res> {
  factory _$$_AddMuteIntervalSettingsNotificationsEventCopyWith(
          _$_AddMuteIntervalSettingsNotificationsEvent value,
          $Res Function(_$_AddMuteIntervalSettingsNotificationsEvent) then) =
      __$$_AddMuteIntervalSettingsNotificationsEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AddMuteIntervalSettingsNotificationsEventCopyWithImpl<$Res>
    extends _$SettingsNotificationsEventCopyWithImpl<$Res,
        _$_AddMuteIntervalSettingsNotificationsEvent>
    implements _$$_AddMuteIntervalSettingsNotificationsEventCopyWith<$Res> {
  __$$_AddMuteIntervalSettingsNotificationsEventCopyWithImpl(
      _$_AddMuteIntervalSettingsNotificationsEvent _value,
      $Res Function(_$_AddMuteIntervalSettingsNotificationsEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AddMuteIntervalSettingsNotificationsEvent
    extends _AddMuteIntervalSettingsNotificationsEvent {
  const _$_AddMuteIntervalSettingsNotificationsEvent() : super._();

  @override
  String toString() {
    return 'SettingsNotificationsEvent.addMuteInterval()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddMuteIntervalSettingsNotificationsEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() save,
    required TResult Function() read,
    required TResult Function(bool enable) enableNotifications,
    required TResult Function(bool enable) enableSchedule,
    required TResult Function(NotifSchedule notifSchedule) changeSchedule,
    required TResult Function() addMuteInterval,
    required TResult Function(
            String id, TimeOfDay? startInterval, TimeOfDay? endInterval)
        updateMuteInterval,
    required TResult Function(String id) removeMuteInterval,
  }) {
    return addMuteInterval();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? save,
    TResult? Function()? read,
    TResult? Function(bool enable)? enableNotifications,
    TResult? Function(bool enable)? enableSchedule,
    TResult? Function(NotifSchedule notifSchedule)? changeSchedule,
    TResult? Function()? addMuteInterval,
    TResult? Function(
            String id, TimeOfDay? startInterval, TimeOfDay? endInterval)?
        updateMuteInterval,
    TResult? Function(String id)? removeMuteInterval,
  }) {
    return addMuteInterval?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? save,
    TResult Function()? read,
    TResult Function(bool enable)? enableNotifications,
    TResult Function(bool enable)? enableSchedule,
    TResult Function(NotifSchedule notifSchedule)? changeSchedule,
    TResult Function()? addMuteInterval,
    TResult Function(
            String id, TimeOfDay? startInterval, TimeOfDay? endInterval)?
        updateMuteInterval,
    TResult Function(String id)? removeMuteInterval,
    required TResult orElse(),
  }) {
    if (addMuteInterval != null) {
      return addMuteInterval();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SaveSettingsNotificationsEvent value) save,
    required TResult Function(_ReadSettingsNotificationsEvent value) read,
    required TResult Function(
            _EnableNotificationsSettingsNotificationsEvent value)
        enableNotifications,
    required TResult Function(_EnableScheduleSettingsNotificationsEvent value)
        enableSchedule,
    required TResult Function(_ChangeScheduleSettingsNotificationsEvent value)
        changeSchedule,
    required TResult Function(_AddMuteIntervalSettingsNotificationsEvent value)
        addMuteInterval,
    required TResult Function(
            _UpdateMuteIntervalSettingsNotificationsEvent value)
        updateMuteInterval,
    required TResult Function(
            _RemoveMuteIntervalSettingsNotificationsEvent value)
        removeMuteInterval,
  }) {
    return addMuteInterval(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SaveSettingsNotificationsEvent value)? save,
    TResult? Function(_ReadSettingsNotificationsEvent value)? read,
    TResult? Function(_EnableNotificationsSettingsNotificationsEvent value)?
        enableNotifications,
    TResult? Function(_EnableScheduleSettingsNotificationsEvent value)?
        enableSchedule,
    TResult? Function(_ChangeScheduleSettingsNotificationsEvent value)?
        changeSchedule,
    TResult? Function(_AddMuteIntervalSettingsNotificationsEvent value)?
        addMuteInterval,
    TResult? Function(_UpdateMuteIntervalSettingsNotificationsEvent value)?
        updateMuteInterval,
    TResult? Function(_RemoveMuteIntervalSettingsNotificationsEvent value)?
        removeMuteInterval,
  }) {
    return addMuteInterval?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SaveSettingsNotificationsEvent value)? save,
    TResult Function(_ReadSettingsNotificationsEvent value)? read,
    TResult Function(_EnableNotificationsSettingsNotificationsEvent value)?
        enableNotifications,
    TResult Function(_EnableScheduleSettingsNotificationsEvent value)?
        enableSchedule,
    TResult Function(_ChangeScheduleSettingsNotificationsEvent value)?
        changeSchedule,
    TResult Function(_AddMuteIntervalSettingsNotificationsEvent value)?
        addMuteInterval,
    TResult Function(_UpdateMuteIntervalSettingsNotificationsEvent value)?
        updateMuteInterval,
    TResult Function(_RemoveMuteIntervalSettingsNotificationsEvent value)?
        removeMuteInterval,
    required TResult orElse(),
  }) {
    if (addMuteInterval != null) {
      return addMuteInterval(this);
    }
    return orElse();
  }
}

abstract class _AddMuteIntervalSettingsNotificationsEvent
    extends SettingsNotificationsEvent {
  const factory _AddMuteIntervalSettingsNotificationsEvent() =
      _$_AddMuteIntervalSettingsNotificationsEvent;
  const _AddMuteIntervalSettingsNotificationsEvent._() : super._();
}

/// @nodoc
abstract class _$$_UpdateMuteIntervalSettingsNotificationsEventCopyWith<$Res> {
  factory _$$_UpdateMuteIntervalSettingsNotificationsEventCopyWith(
          _$_UpdateMuteIntervalSettingsNotificationsEvent value,
          $Res Function(_$_UpdateMuteIntervalSettingsNotificationsEvent) then) =
      __$$_UpdateMuteIntervalSettingsNotificationsEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String id, TimeOfDay? startInterval, TimeOfDay? endInterval});
}

/// @nodoc
class __$$_UpdateMuteIntervalSettingsNotificationsEventCopyWithImpl<$Res>
    extends _$SettingsNotificationsEventCopyWithImpl<$Res,
        _$_UpdateMuteIntervalSettingsNotificationsEvent>
    implements _$$_UpdateMuteIntervalSettingsNotificationsEventCopyWith<$Res> {
  __$$_UpdateMuteIntervalSettingsNotificationsEventCopyWithImpl(
      _$_UpdateMuteIntervalSettingsNotificationsEvent _value,
      $Res Function(_$_UpdateMuteIntervalSettingsNotificationsEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? startInterval = freezed,
    Object? endInterval = freezed,
  }) {
    return _then(_$_UpdateMuteIntervalSettingsNotificationsEvent(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      startInterval: freezed == startInterval
          ? _value.startInterval
          : startInterval // ignore: cast_nullable_to_non_nullable
              as TimeOfDay?,
      endInterval: freezed == endInterval
          ? _value.endInterval
          : endInterval // ignore: cast_nullable_to_non_nullable
              as TimeOfDay?,
    ));
  }
}

/// @nodoc

class _$_UpdateMuteIntervalSettingsNotificationsEvent
    extends _UpdateMuteIntervalSettingsNotificationsEvent {
  const _$_UpdateMuteIntervalSettingsNotificationsEvent(
      {required this.id, this.startInterval, this.endInterval})
      : super._();

  @override
  final String id;
  @override
  final TimeOfDay? startInterval;
  @override
  final TimeOfDay? endInterval;

  @override
  String toString() {
    return 'SettingsNotificationsEvent.updateMuteInterval(id: $id, startInterval: $startInterval, endInterval: $endInterval)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateMuteIntervalSettingsNotificationsEvent &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.startInterval, startInterval) ||
                other.startInterval == startInterval) &&
            (identical(other.endInterval, endInterval) ||
                other.endInterval == endInterval));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, startInterval, endInterval);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateMuteIntervalSettingsNotificationsEventCopyWith<
          _$_UpdateMuteIntervalSettingsNotificationsEvent>
      get copyWith =>
          __$$_UpdateMuteIntervalSettingsNotificationsEventCopyWithImpl<
                  _$_UpdateMuteIntervalSettingsNotificationsEvent>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() save,
    required TResult Function() read,
    required TResult Function(bool enable) enableNotifications,
    required TResult Function(bool enable) enableSchedule,
    required TResult Function(NotifSchedule notifSchedule) changeSchedule,
    required TResult Function() addMuteInterval,
    required TResult Function(
            String id, TimeOfDay? startInterval, TimeOfDay? endInterval)
        updateMuteInterval,
    required TResult Function(String id) removeMuteInterval,
  }) {
    return updateMuteInterval(id, startInterval, endInterval);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? save,
    TResult? Function()? read,
    TResult? Function(bool enable)? enableNotifications,
    TResult? Function(bool enable)? enableSchedule,
    TResult? Function(NotifSchedule notifSchedule)? changeSchedule,
    TResult? Function()? addMuteInterval,
    TResult? Function(
            String id, TimeOfDay? startInterval, TimeOfDay? endInterval)?
        updateMuteInterval,
    TResult? Function(String id)? removeMuteInterval,
  }) {
    return updateMuteInterval?.call(id, startInterval, endInterval);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? save,
    TResult Function()? read,
    TResult Function(bool enable)? enableNotifications,
    TResult Function(bool enable)? enableSchedule,
    TResult Function(NotifSchedule notifSchedule)? changeSchedule,
    TResult Function()? addMuteInterval,
    TResult Function(
            String id, TimeOfDay? startInterval, TimeOfDay? endInterval)?
        updateMuteInterval,
    TResult Function(String id)? removeMuteInterval,
    required TResult orElse(),
  }) {
    if (updateMuteInterval != null) {
      return updateMuteInterval(id, startInterval, endInterval);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SaveSettingsNotificationsEvent value) save,
    required TResult Function(_ReadSettingsNotificationsEvent value) read,
    required TResult Function(
            _EnableNotificationsSettingsNotificationsEvent value)
        enableNotifications,
    required TResult Function(_EnableScheduleSettingsNotificationsEvent value)
        enableSchedule,
    required TResult Function(_ChangeScheduleSettingsNotificationsEvent value)
        changeSchedule,
    required TResult Function(_AddMuteIntervalSettingsNotificationsEvent value)
        addMuteInterval,
    required TResult Function(
            _UpdateMuteIntervalSettingsNotificationsEvent value)
        updateMuteInterval,
    required TResult Function(
            _RemoveMuteIntervalSettingsNotificationsEvent value)
        removeMuteInterval,
  }) {
    return updateMuteInterval(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SaveSettingsNotificationsEvent value)? save,
    TResult? Function(_ReadSettingsNotificationsEvent value)? read,
    TResult? Function(_EnableNotificationsSettingsNotificationsEvent value)?
        enableNotifications,
    TResult? Function(_EnableScheduleSettingsNotificationsEvent value)?
        enableSchedule,
    TResult? Function(_ChangeScheduleSettingsNotificationsEvent value)?
        changeSchedule,
    TResult? Function(_AddMuteIntervalSettingsNotificationsEvent value)?
        addMuteInterval,
    TResult? Function(_UpdateMuteIntervalSettingsNotificationsEvent value)?
        updateMuteInterval,
    TResult? Function(_RemoveMuteIntervalSettingsNotificationsEvent value)?
        removeMuteInterval,
  }) {
    return updateMuteInterval?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SaveSettingsNotificationsEvent value)? save,
    TResult Function(_ReadSettingsNotificationsEvent value)? read,
    TResult Function(_EnableNotificationsSettingsNotificationsEvent value)?
        enableNotifications,
    TResult Function(_EnableScheduleSettingsNotificationsEvent value)?
        enableSchedule,
    TResult Function(_ChangeScheduleSettingsNotificationsEvent value)?
        changeSchedule,
    TResult Function(_AddMuteIntervalSettingsNotificationsEvent value)?
        addMuteInterval,
    TResult Function(_UpdateMuteIntervalSettingsNotificationsEvent value)?
        updateMuteInterval,
    TResult Function(_RemoveMuteIntervalSettingsNotificationsEvent value)?
        removeMuteInterval,
    required TResult orElse(),
  }) {
    if (updateMuteInterval != null) {
      return updateMuteInterval(this);
    }
    return orElse();
  }
}

abstract class _UpdateMuteIntervalSettingsNotificationsEvent
    extends SettingsNotificationsEvent {
  const factory _UpdateMuteIntervalSettingsNotificationsEvent(
          {required final String id,
          final TimeOfDay? startInterval,
          final TimeOfDay? endInterval}) =
      _$_UpdateMuteIntervalSettingsNotificationsEvent;
  const _UpdateMuteIntervalSettingsNotificationsEvent._() : super._();

  String get id;
  TimeOfDay? get startInterval;
  TimeOfDay? get endInterval;
  @JsonKey(ignore: true)
  _$$_UpdateMuteIntervalSettingsNotificationsEventCopyWith<
          _$_UpdateMuteIntervalSettingsNotificationsEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RemoveMuteIntervalSettingsNotificationsEventCopyWith<$Res> {
  factory _$$_RemoveMuteIntervalSettingsNotificationsEventCopyWith(
          _$_RemoveMuteIntervalSettingsNotificationsEvent value,
          $Res Function(_$_RemoveMuteIntervalSettingsNotificationsEvent) then) =
      __$$_RemoveMuteIntervalSettingsNotificationsEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$_RemoveMuteIntervalSettingsNotificationsEventCopyWithImpl<$Res>
    extends _$SettingsNotificationsEventCopyWithImpl<$Res,
        _$_RemoveMuteIntervalSettingsNotificationsEvent>
    implements _$$_RemoveMuteIntervalSettingsNotificationsEventCopyWith<$Res> {
  __$$_RemoveMuteIntervalSettingsNotificationsEventCopyWithImpl(
      _$_RemoveMuteIntervalSettingsNotificationsEvent _value,
      $Res Function(_$_RemoveMuteIntervalSettingsNotificationsEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_RemoveMuteIntervalSettingsNotificationsEvent(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_RemoveMuteIntervalSettingsNotificationsEvent
    extends _RemoveMuteIntervalSettingsNotificationsEvent {
  const _$_RemoveMuteIntervalSettingsNotificationsEvent(this.id) : super._();

  @override
  final String id;

  @override
  String toString() {
    return 'SettingsNotificationsEvent.removeMuteInterval(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RemoveMuteIntervalSettingsNotificationsEvent &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RemoveMuteIntervalSettingsNotificationsEventCopyWith<
          _$_RemoveMuteIntervalSettingsNotificationsEvent>
      get copyWith =>
          __$$_RemoveMuteIntervalSettingsNotificationsEventCopyWithImpl<
                  _$_RemoveMuteIntervalSettingsNotificationsEvent>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() save,
    required TResult Function() read,
    required TResult Function(bool enable) enableNotifications,
    required TResult Function(bool enable) enableSchedule,
    required TResult Function(NotifSchedule notifSchedule) changeSchedule,
    required TResult Function() addMuteInterval,
    required TResult Function(
            String id, TimeOfDay? startInterval, TimeOfDay? endInterval)
        updateMuteInterval,
    required TResult Function(String id) removeMuteInterval,
  }) {
    return removeMuteInterval(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? save,
    TResult? Function()? read,
    TResult? Function(bool enable)? enableNotifications,
    TResult? Function(bool enable)? enableSchedule,
    TResult? Function(NotifSchedule notifSchedule)? changeSchedule,
    TResult? Function()? addMuteInterval,
    TResult? Function(
            String id, TimeOfDay? startInterval, TimeOfDay? endInterval)?
        updateMuteInterval,
    TResult? Function(String id)? removeMuteInterval,
  }) {
    return removeMuteInterval?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? save,
    TResult Function()? read,
    TResult Function(bool enable)? enableNotifications,
    TResult Function(bool enable)? enableSchedule,
    TResult Function(NotifSchedule notifSchedule)? changeSchedule,
    TResult Function()? addMuteInterval,
    TResult Function(
            String id, TimeOfDay? startInterval, TimeOfDay? endInterval)?
        updateMuteInterval,
    TResult Function(String id)? removeMuteInterval,
    required TResult orElse(),
  }) {
    if (removeMuteInterval != null) {
      return removeMuteInterval(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SaveSettingsNotificationsEvent value) save,
    required TResult Function(_ReadSettingsNotificationsEvent value) read,
    required TResult Function(
            _EnableNotificationsSettingsNotificationsEvent value)
        enableNotifications,
    required TResult Function(_EnableScheduleSettingsNotificationsEvent value)
        enableSchedule,
    required TResult Function(_ChangeScheduleSettingsNotificationsEvent value)
        changeSchedule,
    required TResult Function(_AddMuteIntervalSettingsNotificationsEvent value)
        addMuteInterval,
    required TResult Function(
            _UpdateMuteIntervalSettingsNotificationsEvent value)
        updateMuteInterval,
    required TResult Function(
            _RemoveMuteIntervalSettingsNotificationsEvent value)
        removeMuteInterval,
  }) {
    return removeMuteInterval(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SaveSettingsNotificationsEvent value)? save,
    TResult? Function(_ReadSettingsNotificationsEvent value)? read,
    TResult? Function(_EnableNotificationsSettingsNotificationsEvent value)?
        enableNotifications,
    TResult? Function(_EnableScheduleSettingsNotificationsEvent value)?
        enableSchedule,
    TResult? Function(_ChangeScheduleSettingsNotificationsEvent value)?
        changeSchedule,
    TResult? Function(_AddMuteIntervalSettingsNotificationsEvent value)?
        addMuteInterval,
    TResult? Function(_UpdateMuteIntervalSettingsNotificationsEvent value)?
        updateMuteInterval,
    TResult? Function(_RemoveMuteIntervalSettingsNotificationsEvent value)?
        removeMuteInterval,
  }) {
    return removeMuteInterval?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SaveSettingsNotificationsEvent value)? save,
    TResult Function(_ReadSettingsNotificationsEvent value)? read,
    TResult Function(_EnableNotificationsSettingsNotificationsEvent value)?
        enableNotifications,
    TResult Function(_EnableScheduleSettingsNotificationsEvent value)?
        enableSchedule,
    TResult Function(_ChangeScheduleSettingsNotificationsEvent value)?
        changeSchedule,
    TResult Function(_AddMuteIntervalSettingsNotificationsEvent value)?
        addMuteInterval,
    TResult Function(_UpdateMuteIntervalSettingsNotificationsEvent value)?
        updateMuteInterval,
    TResult Function(_RemoveMuteIntervalSettingsNotificationsEvent value)?
        removeMuteInterval,
    required TResult orElse(),
  }) {
    if (removeMuteInterval != null) {
      return removeMuteInterval(this);
    }
    return orElse();
  }
}

abstract class _RemoveMuteIntervalSettingsNotificationsEvent
    extends SettingsNotificationsEvent {
  const factory _RemoveMuteIntervalSettingsNotificationsEvent(final String id) =
      _$_RemoveMuteIntervalSettingsNotificationsEvent;
  const _RemoveMuteIntervalSettingsNotificationsEvent._() : super._();

  String get id;
  @JsonKey(ignore: true)
  _$$_RemoveMuteIntervalSettingsNotificationsEventCopyWith<
          _$_RemoveMuteIntervalSettingsNotificationsEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SettingsNotificationsState {
  Settings get settings => throw _privateConstructorUsedError;
  bool get changed => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Settings settings, bool changed) payload,
    required TResult Function(Settings settings, bool changed) loading,
    required TResult Function(Settings settings, bool changed, String message)
        failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Settings settings, bool changed)? payload,
    TResult? Function(Settings settings, bool changed)? loading,
    TResult? Function(Settings settings, bool changed, String message)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Settings settings, bool changed)? payload,
    TResult Function(Settings settings, bool changed)? loading,
    TResult Function(Settings settings, bool changed, String message)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PayloadSettingsNotificationsState value) payload,
    required TResult Function(_LoadingSettingsNotificationsState value) loading,
    required TResult Function(_FailureSettingsNotificationsState value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PayloadSettingsNotificationsState value)? payload,
    TResult? Function(_LoadingSettingsNotificationsState value)? loading,
    TResult? Function(_FailureSettingsNotificationsState value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PayloadSettingsNotificationsState value)? payload,
    TResult Function(_LoadingSettingsNotificationsState value)? loading,
    TResult Function(_FailureSettingsNotificationsState value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SettingsNotificationsStateCopyWith<SettingsNotificationsState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsNotificationsStateCopyWith<$Res> {
  factory $SettingsNotificationsStateCopyWith(SettingsNotificationsState value,
          $Res Function(SettingsNotificationsState) then) =
      _$SettingsNotificationsStateCopyWithImpl<$Res,
          SettingsNotificationsState>;
  @useResult
  $Res call({Settings settings, bool changed});

  $SettingsCopyWith<$Res> get settings;
}

/// @nodoc
class _$SettingsNotificationsStateCopyWithImpl<$Res,
        $Val extends SettingsNotificationsState>
    implements $SettingsNotificationsStateCopyWith<$Res> {
  _$SettingsNotificationsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? settings = null,
    Object? changed = null,
  }) {
    return _then(_value.copyWith(
      settings: null == settings
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as Settings,
      changed: null == changed
          ? _value.changed
          : changed // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SettingsCopyWith<$Res> get settings {
    return $SettingsCopyWith<$Res>(_value.settings, (value) {
      return _then(_value.copyWith(settings: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PayloadSettingsNotificationsStateCopyWith<$Res>
    implements $SettingsNotificationsStateCopyWith<$Res> {
  factory _$$_PayloadSettingsNotificationsStateCopyWith(
          _$_PayloadSettingsNotificationsState value,
          $Res Function(_$_PayloadSettingsNotificationsState) then) =
      __$$_PayloadSettingsNotificationsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Settings settings, bool changed});

  @override
  $SettingsCopyWith<$Res> get settings;
}

/// @nodoc
class __$$_PayloadSettingsNotificationsStateCopyWithImpl<$Res>
    extends _$SettingsNotificationsStateCopyWithImpl<$Res,
        _$_PayloadSettingsNotificationsState>
    implements _$$_PayloadSettingsNotificationsStateCopyWith<$Res> {
  __$$_PayloadSettingsNotificationsStateCopyWithImpl(
      _$_PayloadSettingsNotificationsState _value,
      $Res Function(_$_PayloadSettingsNotificationsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? settings = null,
    Object? changed = null,
  }) {
    return _then(_$_PayloadSettingsNotificationsState(
      settings: null == settings
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as Settings,
      changed: null == changed
          ? _value.changed
          : changed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_PayloadSettingsNotificationsState
    extends _PayloadSettingsNotificationsState {
  const _$_PayloadSettingsNotificationsState(
      {required this.settings, required this.changed})
      : super._();

  @override
  final Settings settings;
  @override
  final bool changed;

  @override
  String toString() {
    return 'SettingsNotificationsState.payload(settings: $settings, changed: $changed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PayloadSettingsNotificationsState &&
            (identical(other.settings, settings) ||
                other.settings == settings) &&
            (identical(other.changed, changed) || other.changed == changed));
  }

  @override
  int get hashCode => Object.hash(runtimeType, settings, changed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PayloadSettingsNotificationsStateCopyWith<
          _$_PayloadSettingsNotificationsState>
      get copyWith => __$$_PayloadSettingsNotificationsStateCopyWithImpl<
          _$_PayloadSettingsNotificationsState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Settings settings, bool changed) payload,
    required TResult Function(Settings settings, bool changed) loading,
    required TResult Function(Settings settings, bool changed, String message)
        failure,
  }) {
    return payload(settings, changed);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Settings settings, bool changed)? payload,
    TResult? Function(Settings settings, bool changed)? loading,
    TResult? Function(Settings settings, bool changed, String message)? failure,
  }) {
    return payload?.call(settings, changed);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Settings settings, bool changed)? payload,
    TResult Function(Settings settings, bool changed)? loading,
    TResult Function(Settings settings, bool changed, String message)? failure,
    required TResult orElse(),
  }) {
    if (payload != null) {
      return payload(settings, changed);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PayloadSettingsNotificationsState value) payload,
    required TResult Function(_LoadingSettingsNotificationsState value) loading,
    required TResult Function(_FailureSettingsNotificationsState value) failure,
  }) {
    return payload(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PayloadSettingsNotificationsState value)? payload,
    TResult? Function(_LoadingSettingsNotificationsState value)? loading,
    TResult? Function(_FailureSettingsNotificationsState value)? failure,
  }) {
    return payload?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PayloadSettingsNotificationsState value)? payload,
    TResult Function(_LoadingSettingsNotificationsState value)? loading,
    TResult Function(_FailureSettingsNotificationsState value)? failure,
    required TResult orElse(),
  }) {
    if (payload != null) {
      return payload(this);
    }
    return orElse();
  }
}

abstract class _PayloadSettingsNotificationsState
    extends SettingsNotificationsState {
  const factory _PayloadSettingsNotificationsState(
      {required final Settings settings,
      required final bool changed}) = _$_PayloadSettingsNotificationsState;
  const _PayloadSettingsNotificationsState._() : super._();

  @override
  Settings get settings;
  @override
  bool get changed;
  @override
  @JsonKey(ignore: true)
  _$$_PayloadSettingsNotificationsStateCopyWith<
          _$_PayloadSettingsNotificationsState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadingSettingsNotificationsStateCopyWith<$Res>
    implements $SettingsNotificationsStateCopyWith<$Res> {
  factory _$$_LoadingSettingsNotificationsStateCopyWith(
          _$_LoadingSettingsNotificationsState value,
          $Res Function(_$_LoadingSettingsNotificationsState) then) =
      __$$_LoadingSettingsNotificationsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Settings settings, bool changed});

  @override
  $SettingsCopyWith<$Res> get settings;
}

/// @nodoc
class __$$_LoadingSettingsNotificationsStateCopyWithImpl<$Res>
    extends _$SettingsNotificationsStateCopyWithImpl<$Res,
        _$_LoadingSettingsNotificationsState>
    implements _$$_LoadingSettingsNotificationsStateCopyWith<$Res> {
  __$$_LoadingSettingsNotificationsStateCopyWithImpl(
      _$_LoadingSettingsNotificationsState _value,
      $Res Function(_$_LoadingSettingsNotificationsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? settings = null,
    Object? changed = null,
  }) {
    return _then(_$_LoadingSettingsNotificationsState(
      settings: null == settings
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as Settings,
      changed: null == changed
          ? _value.changed
          : changed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_LoadingSettingsNotificationsState
    extends _LoadingSettingsNotificationsState {
  const _$_LoadingSettingsNotificationsState(
      {required this.settings, required this.changed})
      : super._();

  @override
  final Settings settings;
  @override
  final bool changed;

  @override
  String toString() {
    return 'SettingsNotificationsState.loading(settings: $settings, changed: $changed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadingSettingsNotificationsState &&
            (identical(other.settings, settings) ||
                other.settings == settings) &&
            (identical(other.changed, changed) || other.changed == changed));
  }

  @override
  int get hashCode => Object.hash(runtimeType, settings, changed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadingSettingsNotificationsStateCopyWith<
          _$_LoadingSettingsNotificationsState>
      get copyWith => __$$_LoadingSettingsNotificationsStateCopyWithImpl<
          _$_LoadingSettingsNotificationsState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Settings settings, bool changed) payload,
    required TResult Function(Settings settings, bool changed) loading,
    required TResult Function(Settings settings, bool changed, String message)
        failure,
  }) {
    return loading(settings, changed);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Settings settings, bool changed)? payload,
    TResult? Function(Settings settings, bool changed)? loading,
    TResult? Function(Settings settings, bool changed, String message)? failure,
  }) {
    return loading?.call(settings, changed);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Settings settings, bool changed)? payload,
    TResult Function(Settings settings, bool changed)? loading,
    TResult Function(Settings settings, bool changed, String message)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(settings, changed);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PayloadSettingsNotificationsState value) payload,
    required TResult Function(_LoadingSettingsNotificationsState value) loading,
    required TResult Function(_FailureSettingsNotificationsState value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PayloadSettingsNotificationsState value)? payload,
    TResult? Function(_LoadingSettingsNotificationsState value)? loading,
    TResult? Function(_FailureSettingsNotificationsState value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PayloadSettingsNotificationsState value)? payload,
    TResult Function(_LoadingSettingsNotificationsState value)? loading,
    TResult Function(_FailureSettingsNotificationsState value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingSettingsNotificationsState
    extends SettingsNotificationsState {
  const factory _LoadingSettingsNotificationsState(
      {required final Settings settings,
      required final bool changed}) = _$_LoadingSettingsNotificationsState;
  const _LoadingSettingsNotificationsState._() : super._();

  @override
  Settings get settings;
  @override
  bool get changed;
  @override
  @JsonKey(ignore: true)
  _$$_LoadingSettingsNotificationsStateCopyWith<
          _$_LoadingSettingsNotificationsState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FailureSettingsNotificationsStateCopyWith<$Res>
    implements $SettingsNotificationsStateCopyWith<$Res> {
  factory _$$_FailureSettingsNotificationsStateCopyWith(
          _$_FailureSettingsNotificationsState value,
          $Res Function(_$_FailureSettingsNotificationsState) then) =
      __$$_FailureSettingsNotificationsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Settings settings, bool changed, String message});

  @override
  $SettingsCopyWith<$Res> get settings;
}

/// @nodoc
class __$$_FailureSettingsNotificationsStateCopyWithImpl<$Res>
    extends _$SettingsNotificationsStateCopyWithImpl<$Res,
        _$_FailureSettingsNotificationsState>
    implements _$$_FailureSettingsNotificationsStateCopyWith<$Res> {
  __$$_FailureSettingsNotificationsStateCopyWithImpl(
      _$_FailureSettingsNotificationsState _value,
      $Res Function(_$_FailureSettingsNotificationsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? settings = null,
    Object? changed = null,
    Object? message = null,
  }) {
    return _then(_$_FailureSettingsNotificationsState(
      settings: null == settings
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as Settings,
      changed: null == changed
          ? _value.changed
          : changed // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FailureSettingsNotificationsState
    extends _FailureSettingsNotificationsState {
  const _$_FailureSettingsNotificationsState(
      {required this.settings, required this.changed, required this.message})
      : super._();

  @override
  final Settings settings;
  @override
  final bool changed;
  @override
  final String message;

  @override
  String toString() {
    return 'SettingsNotificationsState.failure(settings: $settings, changed: $changed, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FailureSettingsNotificationsState &&
            (identical(other.settings, settings) ||
                other.settings == settings) &&
            (identical(other.changed, changed) || other.changed == changed) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, settings, changed, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FailureSettingsNotificationsStateCopyWith<
          _$_FailureSettingsNotificationsState>
      get copyWith => __$$_FailureSettingsNotificationsStateCopyWithImpl<
          _$_FailureSettingsNotificationsState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Settings settings, bool changed) payload,
    required TResult Function(Settings settings, bool changed) loading,
    required TResult Function(Settings settings, bool changed, String message)
        failure,
  }) {
    return failure(settings, changed, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Settings settings, bool changed)? payload,
    TResult? Function(Settings settings, bool changed)? loading,
    TResult? Function(Settings settings, bool changed, String message)? failure,
  }) {
    return failure?.call(settings, changed, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Settings settings, bool changed)? payload,
    TResult Function(Settings settings, bool changed)? loading,
    TResult Function(Settings settings, bool changed, String message)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(settings, changed, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PayloadSettingsNotificationsState value) payload,
    required TResult Function(_LoadingSettingsNotificationsState value) loading,
    required TResult Function(_FailureSettingsNotificationsState value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PayloadSettingsNotificationsState value)? payload,
    TResult? Function(_LoadingSettingsNotificationsState value)? loading,
    TResult? Function(_FailureSettingsNotificationsState value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PayloadSettingsNotificationsState value)? payload,
    TResult Function(_LoadingSettingsNotificationsState value)? loading,
    TResult Function(_FailureSettingsNotificationsState value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _FailureSettingsNotificationsState
    extends SettingsNotificationsState {
  const factory _FailureSettingsNotificationsState(
      {required final Settings settings,
      required final bool changed,
      required final String message}) = _$_FailureSettingsNotificationsState;
  const _FailureSettingsNotificationsState._() : super._();

  @override
  Settings get settings;
  @override
  bool get changed;
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_FailureSettingsNotificationsStateCopyWith<
          _$_FailureSettingsNotificationsState>
      get copyWith => throw _privateConstructorUsedError;
}
