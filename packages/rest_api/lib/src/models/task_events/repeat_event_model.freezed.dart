// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'repeat_event_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RepeatEventModel _$RepeatEventModelFromJson(Map<String, dynamic> json) {
  return _RepeatEventModel.fromJson(json);
}

/// @nodoc
mixin _$RepeatEventModel {
  @JsonKey(name: 'repeat_type', unknownEnumValue: EventRepeatType.unknown)
  EventRepeatType get repeatType => throw _privateConstructorUsedError;
  @JsonKey(name: 'calendar_id')
  int? get calendarId => throw _privateConstructorUsedError;
  @DateTimeConverter()
  @JsonKey(name: 'repeat_till')
  DateTime? get repeatTill => throw _privateConstructorUsedError;
  List<int>? get days => throw _privateConstructorUsedError;
  @JsonKey(name: 'week_of_month')
  int? get weekOfMonth => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RepeatEventModelCopyWith<RepeatEventModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepeatEventModelCopyWith<$Res> {
  factory $RepeatEventModelCopyWith(
          RepeatEventModel value, $Res Function(RepeatEventModel) then) =
      _$RepeatEventModelCopyWithImpl<$Res, RepeatEventModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'repeat_type', unknownEnumValue: EventRepeatType.unknown)
          EventRepeatType repeatType,
      @JsonKey(name: 'calendar_id')
          int? calendarId,
      @DateTimeConverter()
      @JsonKey(name: 'repeat_till')
          DateTime? repeatTill,
      List<int>? days,
      @JsonKey(name: 'week_of_month')
          int? weekOfMonth});
}

/// @nodoc
class _$RepeatEventModelCopyWithImpl<$Res, $Val extends RepeatEventModel>
    implements $RepeatEventModelCopyWith<$Res> {
  _$RepeatEventModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? repeatType = null,
    Object? calendarId = freezed,
    Object? repeatTill = freezed,
    Object? days = freezed,
    Object? weekOfMonth = freezed,
  }) {
    return _then(_value.copyWith(
      repeatType: null == repeatType
          ? _value.repeatType
          : repeatType // ignore: cast_nullable_to_non_nullable
              as EventRepeatType,
      calendarId: freezed == calendarId
          ? _value.calendarId
          : calendarId // ignore: cast_nullable_to_non_nullable
              as int?,
      repeatTill: freezed == repeatTill
          ? _value.repeatTill
          : repeatTill // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      days: freezed == days
          ? _value.days
          : days // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      weekOfMonth: freezed == weekOfMonth
          ? _value.weekOfMonth
          : weekOfMonth // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RepeatEventModelCopyWith<$Res>
    implements $RepeatEventModelCopyWith<$Res> {
  factory _$$_RepeatEventModelCopyWith(
          _$_RepeatEventModel value, $Res Function(_$_RepeatEventModel) then) =
      __$$_RepeatEventModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'repeat_type', unknownEnumValue: EventRepeatType.unknown)
          EventRepeatType repeatType,
      @JsonKey(name: 'calendar_id')
          int? calendarId,
      @DateTimeConverter()
      @JsonKey(name: 'repeat_till')
          DateTime? repeatTill,
      List<int>? days,
      @JsonKey(name: 'week_of_month')
          int? weekOfMonth});
}

/// @nodoc
class __$$_RepeatEventModelCopyWithImpl<$Res>
    extends _$RepeatEventModelCopyWithImpl<$Res, _$_RepeatEventModel>
    implements _$$_RepeatEventModelCopyWith<$Res> {
  __$$_RepeatEventModelCopyWithImpl(
      _$_RepeatEventModel _value, $Res Function(_$_RepeatEventModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? repeatType = null,
    Object? calendarId = freezed,
    Object? repeatTill = freezed,
    Object? days = freezed,
    Object? weekOfMonth = freezed,
  }) {
    return _then(_$_RepeatEventModel(
      repeatType: null == repeatType
          ? _value.repeatType
          : repeatType // ignore: cast_nullable_to_non_nullable
              as EventRepeatType,
      calendarId: freezed == calendarId
          ? _value.calendarId
          : calendarId // ignore: cast_nullable_to_non_nullable
              as int?,
      repeatTill: freezed == repeatTill
          ? _value.repeatTill
          : repeatTill // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      days: freezed == days
          ? _value._days
          : days // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      weekOfMonth: freezed == weekOfMonth
          ? _value.weekOfMonth
          : weekOfMonth // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$_RepeatEventModel implements _RepeatEventModel {
  const _$_RepeatEventModel(
      {@JsonKey(name: 'repeat_type', unknownEnumValue: EventRepeatType.unknown)
          required this.repeatType,
      @JsonKey(name: 'calendar_id')
          this.calendarId,
      @DateTimeConverter()
      @JsonKey(name: 'repeat_till')
          this.repeatTill,
      final List<int>? days,
      @JsonKey(name: 'week_of_month')
          this.weekOfMonth})
      : _days = days;

  factory _$_RepeatEventModel.fromJson(Map<String, dynamic> json) =>
      _$$_RepeatEventModelFromJson(json);

  @override
  @JsonKey(name: 'repeat_type', unknownEnumValue: EventRepeatType.unknown)
  final EventRepeatType repeatType;
  @override
  @JsonKey(name: 'calendar_id')
  final int? calendarId;
  @override
  @DateTimeConverter()
  @JsonKey(name: 'repeat_till')
  final DateTime? repeatTill;
  final List<int>? _days;
  @override
  List<int>? get days {
    final value = _days;
    if (value == null) return null;
    if (_days is EqualUnmodifiableListView) return _days;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'week_of_month')
  final int? weekOfMonth;

  @override
  String toString() {
    return 'RepeatEventModel(repeatType: $repeatType, calendarId: $calendarId, repeatTill: $repeatTill, days: $days, weekOfMonth: $weekOfMonth)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RepeatEventModel &&
            (identical(other.repeatType, repeatType) ||
                other.repeatType == repeatType) &&
            (identical(other.calendarId, calendarId) ||
                other.calendarId == calendarId) &&
            (identical(other.repeatTill, repeatTill) ||
                other.repeatTill == repeatTill) &&
            const DeepCollectionEquality().equals(other._days, _days) &&
            (identical(other.weekOfMonth, weekOfMonth) ||
                other.weekOfMonth == weekOfMonth));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, repeatType, calendarId,
      repeatTill, const DeepCollectionEquality().hash(_days), weekOfMonth);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RepeatEventModelCopyWith<_$_RepeatEventModel> get copyWith =>
      __$$_RepeatEventModelCopyWithImpl<_$_RepeatEventModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RepeatEventModelToJson(
      this,
    );
  }
}

abstract class _RepeatEventModel implements RepeatEventModel {
  const factory _RepeatEventModel(
      {@JsonKey(name: 'repeat_type', unknownEnumValue: EventRepeatType.unknown)
          required final EventRepeatType repeatType,
      @JsonKey(name: 'calendar_id')
          final int? calendarId,
      @DateTimeConverter()
      @JsonKey(name: 'repeat_till')
          final DateTime? repeatTill,
      final List<int>? days,
      @JsonKey(name: 'week_of_month')
          final int? weekOfMonth}) = _$_RepeatEventModel;

  factory _RepeatEventModel.fromJson(Map<String, dynamic> json) =
      _$_RepeatEventModel.fromJson;

  @override
  @JsonKey(name: 'repeat_type', unknownEnumValue: EventRepeatType.unknown)
  EventRepeatType get repeatType;
  @override
  @JsonKey(name: 'calendar_id')
  int? get calendarId;
  @override
  @DateTimeConverter()
  @JsonKey(name: 'repeat_till')
  DateTime? get repeatTill;
  @override
  List<int>? get days;
  @override
  @JsonKey(name: 'week_of_month')
  int? get weekOfMonth;
  @override
  @JsonKey(ignore: true)
  _$$_RepeatEventModelCopyWith<_$_RepeatEventModel> get copyWith =>
      throw _privateConstructorUsedError;
}
