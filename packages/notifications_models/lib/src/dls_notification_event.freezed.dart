// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dls_notification_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DLSNotificationEvent _$DLSNotificationEventFromJson(Map<String, dynamic> json) {
  return _DLSNotificationEvent.fromJson(json);
}

/// @nodoc
mixin _$DLSNotificationEvent {
  String get uuid => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  DateTime get timestamp => throw _privateConstructorUsedError;
  String? get place => throw _privateConstructorUsedError;
  DateTime? get date => throw _privateConstructorUsedError;
  List<DateTime>? get interval => throw _privateConstructorUsedError;
  DLSNotificationEventFormat? get format => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DLSNotificationEventCopyWith<DLSNotificationEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DLSNotificationEventCopyWith<$Res> {
  factory $DLSNotificationEventCopyWith(DLSNotificationEvent value,
          $Res Function(DLSNotificationEvent) then) =
      _$DLSNotificationEventCopyWithImpl<$Res, DLSNotificationEvent>;
  @useResult
  $Res call(
      {String uuid,
      String name,
      DateTime timestamp,
      String? place,
      DateTime? date,
      List<DateTime>? interval,
      DLSNotificationEventFormat? format});
}

/// @nodoc
class _$DLSNotificationEventCopyWithImpl<$Res,
        $Val extends DLSNotificationEvent>
    implements $DLSNotificationEventCopyWith<$Res> {
  _$DLSNotificationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? name = null,
    Object? timestamp = null,
    Object? place = freezed,
    Object? date = freezed,
    Object? interval = freezed,
    Object? format = freezed,
  }) {
    return _then(_value.copyWith(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      place: freezed == place
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      interval: freezed == interval
          ? _value.interval
          : interval // ignore: cast_nullable_to_non_nullable
              as List<DateTime>?,
      format: freezed == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as DLSNotificationEventFormat?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DLSNotificationEventCopyWith<$Res>
    implements $DLSNotificationEventCopyWith<$Res> {
  factory _$$_DLSNotificationEventCopyWith(_$_DLSNotificationEvent value,
          $Res Function(_$_DLSNotificationEvent) then) =
      __$$_DLSNotificationEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String uuid,
      String name,
      DateTime timestamp,
      String? place,
      DateTime? date,
      List<DateTime>? interval,
      DLSNotificationEventFormat? format});
}

/// @nodoc
class __$$_DLSNotificationEventCopyWithImpl<$Res>
    extends _$DLSNotificationEventCopyWithImpl<$Res, _$_DLSNotificationEvent>
    implements _$$_DLSNotificationEventCopyWith<$Res> {
  __$$_DLSNotificationEventCopyWithImpl(_$_DLSNotificationEvent _value,
      $Res Function(_$_DLSNotificationEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? name = null,
    Object? timestamp = null,
    Object? place = freezed,
    Object? date = freezed,
    Object? interval = freezed,
    Object? format = freezed,
  }) {
    return _then(_$_DLSNotificationEvent(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      place: freezed == place
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      interval: freezed == interval
          ? _value._interval
          : interval // ignore: cast_nullable_to_non_nullable
              as List<DateTime>?,
      format: freezed == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as DLSNotificationEventFormat?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DLSNotificationEvent extends _DLSNotificationEvent {
  _$_DLSNotificationEvent(
      {required this.uuid,
      required this.name,
      required this.timestamp,
      this.place,
      this.date,
      final List<DateTime>? interval,
      this.format})
      : _interval = interval,
        super._();

  factory _$_DLSNotificationEvent.fromJson(Map<String, dynamic> json) =>
      _$$_DLSNotificationEventFromJson(json);

  @override
  final String uuid;
  @override
  final String name;
  @override
  final DateTime timestamp;
  @override
  final String? place;
  @override
  final DateTime? date;
  final List<DateTime>? _interval;
  @override
  List<DateTime>? get interval {
    final value = _interval;
    if (value == null) return null;
    if (_interval is EqualUnmodifiableListView) return _interval;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final DLSNotificationEventFormat? format;

  @override
  String toString() {
    return 'DLSNotificationEvent(uuid: $uuid, name: $name, timestamp: $timestamp, place: $place, date: $date, interval: $interval, format: $format)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DLSNotificationEvent &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.place, place) || other.place == place) &&
            (identical(other.date, date) || other.date == date) &&
            const DeepCollectionEquality().equals(other._interval, _interval) &&
            (identical(other.format, format) || other.format == format));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, uuid, name, timestamp, place,
      date, const DeepCollectionEquality().hash(_interval), format);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DLSNotificationEventCopyWith<_$_DLSNotificationEvent> get copyWith =>
      __$$_DLSNotificationEventCopyWithImpl<_$_DLSNotificationEvent>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DLSNotificationEventToJson(
      this,
    );
  }
}

abstract class _DLSNotificationEvent extends DLSNotificationEvent {
  factory _DLSNotificationEvent(
      {required final String uuid,
      required final String name,
      required final DateTime timestamp,
      final String? place,
      final DateTime? date,
      final List<DateTime>? interval,
      final DLSNotificationEventFormat? format}) = _$_DLSNotificationEvent;
  _DLSNotificationEvent._() : super._();

  factory _DLSNotificationEvent.fromJson(Map<String, dynamic> json) =
      _$_DLSNotificationEvent.fromJson;

  @override
  String get uuid;
  @override
  String get name;
  @override
  DateTime get timestamp;
  @override
  String? get place;
  @override
  DateTime? get date;
  @override
  List<DateTime>? get interval;
  @override
  DLSNotificationEventFormat? get format;
  @override
  @JsonKey(ignore: true)
  _$$_DLSNotificationEventCopyWith<_$_DLSNotificationEvent> get copyWith =>
      throw _privateConstructorUsedError;
}
