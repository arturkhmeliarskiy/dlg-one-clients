// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notifications_settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NotificationsSettings _$NotificationsSettingsFromJson(
    Map<String, dynamic> json) {
  return _NotificationsSettings.fromJson(json);
}

/// @nodoc
mixin _$NotificationsSettings {
  /// по умолчанию включено
  @JsonKey(name: 'enabled')
  bool? get enabled => throw _privateConstructorUsedError;

  /// по умолчанию вЫключено
  @JsonKey(name: 'schedule_enabled')
  bool? get scheduleEnabled => throw _privateConstructorUsedError;
  @JsonKey(name: 'schedule')
  NotifSchedule? get schedule => throw _privateConstructorUsedError;
  @JsonKey(name: 'intervals')
  List<NotifInterval>? get intervals => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NotificationsSettingsCopyWith<NotificationsSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationsSettingsCopyWith<$Res> {
  factory $NotificationsSettingsCopyWith(NotificationsSettings value,
          $Res Function(NotificationsSettings) then) =
      _$NotificationsSettingsCopyWithImpl<$Res, NotificationsSettings>;
  @useResult
  $Res call(
      {@JsonKey(name: 'enabled') bool? enabled,
      @JsonKey(name: 'schedule_enabled') bool? scheduleEnabled,
      @JsonKey(name: 'schedule') NotifSchedule? schedule,
      @JsonKey(name: 'intervals') List<NotifInterval>? intervals});

  $NotifScheduleCopyWith<$Res>? get schedule;
}

/// @nodoc
class _$NotificationsSettingsCopyWithImpl<$Res,
        $Val extends NotificationsSettings>
    implements $NotificationsSettingsCopyWith<$Res> {
  _$NotificationsSettingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enabled = freezed,
    Object? scheduleEnabled = freezed,
    Object? schedule = freezed,
    Object? intervals = freezed,
  }) {
    return _then(_value.copyWith(
      enabled: freezed == enabled
          ? _value.enabled
          : enabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      scheduleEnabled: freezed == scheduleEnabled
          ? _value.scheduleEnabled
          : scheduleEnabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      schedule: freezed == schedule
          ? _value.schedule
          : schedule // ignore: cast_nullable_to_non_nullable
              as NotifSchedule?,
      intervals: freezed == intervals
          ? _value.intervals
          : intervals // ignore: cast_nullable_to_non_nullable
              as List<NotifInterval>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NotifScheduleCopyWith<$Res>? get schedule {
    if (_value.schedule == null) {
      return null;
    }

    return $NotifScheduleCopyWith<$Res>(_value.schedule!, (value) {
      return _then(_value.copyWith(schedule: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_NotificationsSettingsCopyWith<$Res>
    implements $NotificationsSettingsCopyWith<$Res> {
  factory _$$_NotificationsSettingsCopyWith(_$_NotificationsSettings value,
          $Res Function(_$_NotificationsSettings) then) =
      __$$_NotificationsSettingsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'enabled') bool? enabled,
      @JsonKey(name: 'schedule_enabled') bool? scheduleEnabled,
      @JsonKey(name: 'schedule') NotifSchedule? schedule,
      @JsonKey(name: 'intervals') List<NotifInterval>? intervals});

  @override
  $NotifScheduleCopyWith<$Res>? get schedule;
}

/// @nodoc
class __$$_NotificationsSettingsCopyWithImpl<$Res>
    extends _$NotificationsSettingsCopyWithImpl<$Res, _$_NotificationsSettings>
    implements _$$_NotificationsSettingsCopyWith<$Res> {
  __$$_NotificationsSettingsCopyWithImpl(_$_NotificationsSettings _value,
      $Res Function(_$_NotificationsSettings) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enabled = freezed,
    Object? scheduleEnabled = freezed,
    Object? schedule = freezed,
    Object? intervals = freezed,
  }) {
    return _then(_$_NotificationsSettings(
      enabled: freezed == enabled
          ? _value.enabled
          : enabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      scheduleEnabled: freezed == scheduleEnabled
          ? _value.scheduleEnabled
          : scheduleEnabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      schedule: freezed == schedule
          ? _value.schedule
          : schedule // ignore: cast_nullable_to_non_nullable
              as NotifSchedule?,
      intervals: freezed == intervals
          ? _value._intervals
          : intervals // ignore: cast_nullable_to_non_nullable
              as List<NotifInterval>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NotificationsSettings extends _NotificationsSettings {
  _$_NotificationsSettings(
      {@JsonKey(name: 'enabled') this.enabled,
      @JsonKey(name: 'schedule_enabled') this.scheduleEnabled,
      @JsonKey(name: 'schedule') this.schedule,
      @JsonKey(name: 'intervals') final List<NotifInterval>? intervals})
      : _intervals = intervals,
        super._();

  factory _$_NotificationsSettings.fromJson(Map<String, dynamic> json) =>
      _$$_NotificationsSettingsFromJson(json);

  /// по умолчанию включено
  @override
  @JsonKey(name: 'enabled')
  final bool? enabled;

  /// по умолчанию вЫключено
  @override
  @JsonKey(name: 'schedule_enabled')
  final bool? scheduleEnabled;
  @override
  @JsonKey(name: 'schedule')
  final NotifSchedule? schedule;
  final List<NotifInterval>? _intervals;
  @override
  @JsonKey(name: 'intervals')
  List<NotifInterval>? get intervals {
    final value = _intervals;
    if (value == null) return null;
    if (_intervals is EqualUnmodifiableListView) return _intervals;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'NotificationsSettings(enabled: $enabled, scheduleEnabled: $scheduleEnabled, schedule: $schedule, intervals: $intervals)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NotificationsSettings &&
            (identical(other.enabled, enabled) || other.enabled == enabled) &&
            (identical(other.scheduleEnabled, scheduleEnabled) ||
                other.scheduleEnabled == scheduleEnabled) &&
            (identical(other.schedule, schedule) ||
                other.schedule == schedule) &&
            const DeepCollectionEquality()
                .equals(other._intervals, _intervals));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, enabled, scheduleEnabled,
      schedule, const DeepCollectionEquality().hash(_intervals));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NotificationsSettingsCopyWith<_$_NotificationsSettings> get copyWith =>
      __$$_NotificationsSettingsCopyWithImpl<_$_NotificationsSettings>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NotificationsSettingsToJson(
      this,
    );
  }
}

abstract class _NotificationsSettings extends NotificationsSettings {
  factory _NotificationsSettings(
          {@JsonKey(name: 'enabled') final bool? enabled,
          @JsonKey(name: 'schedule_enabled') final bool? scheduleEnabled,
          @JsonKey(name: 'schedule') final NotifSchedule? schedule,
          @JsonKey(name: 'intervals') final List<NotifInterval>? intervals}) =
      _$_NotificationsSettings;
  _NotificationsSettings._() : super._();

  factory _NotificationsSettings.fromJson(Map<String, dynamic> json) =
      _$_NotificationsSettings.fromJson;

  @override

  /// по умолчанию включено
  @JsonKey(name: 'enabled')
  bool? get enabled;
  @override

  /// по умолчанию вЫключено
  @JsonKey(name: 'schedule_enabled')
  bool? get scheduleEnabled;
  @override
  @JsonKey(name: 'schedule')
  NotifSchedule? get schedule;
  @override
  @JsonKey(name: 'intervals')
  List<NotifInterval>? get intervals;
  @override
  @JsonKey(ignore: true)
  _$$_NotificationsSettingsCopyWith<_$_NotificationsSettings> get copyWith =>
      throw _privateConstructorUsedError;
}
