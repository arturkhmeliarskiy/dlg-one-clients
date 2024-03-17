// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notif_interval.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NotifInterval _$NotifIntervalFromJson(Map<String, dynamic> json) {
  return _NotifInterval.fromJson(json);
}

/// @nodoc
mixin _$NotifInterval {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @TimeOfDayConverter()
  DateTime get start => throw _privateConstructorUsedError;
  @TimeOfDayConverter()
  DateTime get end => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NotifIntervalCopyWith<NotifInterval> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotifIntervalCopyWith<$Res> {
  factory $NotifIntervalCopyWith(
          NotifInterval value, $Res Function(NotifInterval) then) =
      _$NotifIntervalCopyWithImpl<$Res, NotifInterval>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @TimeOfDayConverter() DateTime start,
      @TimeOfDayConverter() DateTime end});
}

/// @nodoc
class _$NotifIntervalCopyWithImpl<$Res, $Val extends NotifInterval>
    implements $NotifIntervalCopyWith<$Res> {
  _$NotifIntervalCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? start = null,
    Object? end = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      start: null == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime,
      end: null == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NotifIntervalCopyWith<$Res>
    implements $NotifIntervalCopyWith<$Res> {
  factory _$$_NotifIntervalCopyWith(
          _$_NotifInterval value, $Res Function(_$_NotifInterval) then) =
      __$$_NotifIntervalCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @TimeOfDayConverter() DateTime start,
      @TimeOfDayConverter() DateTime end});
}

/// @nodoc
class __$$_NotifIntervalCopyWithImpl<$Res>
    extends _$NotifIntervalCopyWithImpl<$Res, _$_NotifInterval>
    implements _$$_NotifIntervalCopyWith<$Res> {
  __$$_NotifIntervalCopyWithImpl(
      _$_NotifInterval _value, $Res Function(_$_NotifInterval) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? start = null,
    Object? end = null,
  }) {
    return _then(_$_NotifInterval(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      start: null == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime,
      end: null == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NotifInterval extends _NotifInterval {
  _$_NotifInterval(
      {@JsonKey(name: 'id') required this.id,
      @TimeOfDayConverter() required this.start,
      @TimeOfDayConverter() required this.end})
      : super._();

  factory _$_NotifInterval.fromJson(Map<String, dynamic> json) =>
      _$$_NotifIntervalFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @TimeOfDayConverter()
  final DateTime start;
  @override
  @TimeOfDayConverter()
  final DateTime end;

  @override
  String toString() {
    return 'NotifInterval(id: $id, start: $start, end: $end)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NotifInterval &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.end, end) || other.end == end));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, start, end);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NotifIntervalCopyWith<_$_NotifInterval> get copyWith =>
      __$$_NotifIntervalCopyWithImpl<_$_NotifInterval>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NotifIntervalToJson(
      this,
    );
  }
}

abstract class _NotifInterval extends NotifInterval {
  factory _NotifInterval(
      {@JsonKey(name: 'id') required final String id,
      @TimeOfDayConverter() required final DateTime start,
      @TimeOfDayConverter() required final DateTime end}) = _$_NotifInterval;
  _NotifInterval._() : super._();

  factory _NotifInterval.fromJson(Map<String, dynamic> json) =
      _$_NotifInterval.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @TimeOfDayConverter()
  DateTime get start;
  @override
  @TimeOfDayConverter()
  DateTime get end;
  @override
  @JsonKey(ignore: true)
  _$$_NotifIntervalCopyWith<_$_NotifInterval> get copyWith =>
      throw _privateConstructorUsedError;
}
