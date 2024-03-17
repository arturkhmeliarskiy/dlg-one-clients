// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dls_notification_sprint.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DLSNotificationSprint _$DLSNotificationSprintFromJson(
    Map<String, dynamic> json) {
  return _DLSNotificationSprint.fromJson(json);
}

/// @nodoc
mixin _$DLSNotificationSprint {
  String get uuid => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  DLSNotificationObjectStatus? get status => throw _privateConstructorUsedError;
  List<DateTime>? get interval => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DLSNotificationSprintCopyWith<DLSNotificationSprint> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DLSNotificationSprintCopyWith<$Res> {
  factory $DLSNotificationSprintCopyWith(DLSNotificationSprint value,
          $Res Function(DLSNotificationSprint) then) =
      _$DLSNotificationSprintCopyWithImpl<$Res, DLSNotificationSprint>;
  @useResult
  $Res call(
      {String uuid,
      String name,
      DLSNotificationObjectStatus? status,
      List<DateTime>? interval});
}

/// @nodoc
class _$DLSNotificationSprintCopyWithImpl<$Res,
        $Val extends DLSNotificationSprint>
    implements $DLSNotificationSprintCopyWith<$Res> {
  _$DLSNotificationSprintCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? name = null,
    Object? status = freezed,
    Object? interval = freezed,
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
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DLSNotificationObjectStatus?,
      interval: freezed == interval
          ? _value.interval
          : interval // ignore: cast_nullable_to_non_nullable
              as List<DateTime>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DLSNotificationSprintCopyWith<$Res>
    implements $DLSNotificationSprintCopyWith<$Res> {
  factory _$$_DLSNotificationSprintCopyWith(_$_DLSNotificationSprint value,
          $Res Function(_$_DLSNotificationSprint) then) =
      __$$_DLSNotificationSprintCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String uuid,
      String name,
      DLSNotificationObjectStatus? status,
      List<DateTime>? interval});
}

/// @nodoc
class __$$_DLSNotificationSprintCopyWithImpl<$Res>
    extends _$DLSNotificationSprintCopyWithImpl<$Res, _$_DLSNotificationSprint>
    implements _$$_DLSNotificationSprintCopyWith<$Res> {
  __$$_DLSNotificationSprintCopyWithImpl(_$_DLSNotificationSprint _value,
      $Res Function(_$_DLSNotificationSprint) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? name = null,
    Object? status = freezed,
    Object? interval = freezed,
  }) {
    return _then(_$_DLSNotificationSprint(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DLSNotificationObjectStatus?,
      interval: freezed == interval
          ? _value._interval
          : interval // ignore: cast_nullable_to_non_nullable
              as List<DateTime>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DLSNotificationSprint extends _DLSNotificationSprint {
  _$_DLSNotificationSprint(
      {required this.uuid,
      required this.name,
      this.status,
      final List<DateTime>? interval})
      : _interval = interval,
        super._();

  factory _$_DLSNotificationSprint.fromJson(Map<String, dynamic> json) =>
      _$$_DLSNotificationSprintFromJson(json);

  @override
  final String uuid;
  @override
  final String name;
  @override
  final DLSNotificationObjectStatus? status;
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
  String toString() {
    return 'DLSNotificationSprint(uuid: $uuid, name: $name, status: $status, interval: $interval)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DLSNotificationSprint &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._interval, _interval));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, uuid, name, status,
      const DeepCollectionEquality().hash(_interval));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DLSNotificationSprintCopyWith<_$_DLSNotificationSprint> get copyWith =>
      __$$_DLSNotificationSprintCopyWithImpl<_$_DLSNotificationSprint>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DLSNotificationSprintToJson(
      this,
    );
  }
}

abstract class _DLSNotificationSprint extends DLSNotificationSprint {
  factory _DLSNotificationSprint(
      {required final String uuid,
      required final String name,
      final DLSNotificationObjectStatus? status,
      final List<DateTime>? interval}) = _$_DLSNotificationSprint;
  _DLSNotificationSprint._() : super._();

  factory _DLSNotificationSprint.fromJson(Map<String, dynamic> json) =
      _$_DLSNotificationSprint.fromJson;

  @override
  String get uuid;
  @override
  String get name;
  @override
  DLSNotificationObjectStatus? get status;
  @override
  List<DateTime>? get interval;
  @override
  @JsonKey(ignore: true)
  _$$_DLSNotificationSprintCopyWith<_$_DLSNotificationSprint> get copyWith =>
      throw _privateConstructorUsedError;
}
