// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'event_repeat_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EventRepeatModel {
  EventRepeatType get type => throw _privateConstructorUsedError;
  List<int> get repeatDays => throw _privateConstructorUsedError;
  int get weekNumber => throw _privateConstructorUsedError;
  int get weekDay => throw _privateConstructorUsedError;
  DateTime? get repeatTill => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EventRepeatModelCopyWith<EventRepeatModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventRepeatModelCopyWith<$Res> {
  factory $EventRepeatModelCopyWith(
          EventRepeatModel value, $Res Function(EventRepeatModel) then) =
      _$EventRepeatModelCopyWithImpl<$Res, EventRepeatModel>;
  @useResult
  $Res call(
      {EventRepeatType type,
      List<int> repeatDays,
      int weekNumber,
      int weekDay,
      DateTime? repeatTill});
}

/// @nodoc
class _$EventRepeatModelCopyWithImpl<$Res, $Val extends EventRepeatModel>
    implements $EventRepeatModelCopyWith<$Res> {
  _$EventRepeatModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? repeatDays = null,
    Object? weekNumber = null,
    Object? weekDay = null,
    Object? repeatTill = freezed,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as EventRepeatType,
      repeatDays: null == repeatDays
          ? _value.repeatDays
          : repeatDays // ignore: cast_nullable_to_non_nullable
              as List<int>,
      weekNumber: null == weekNumber
          ? _value.weekNumber
          : weekNumber // ignore: cast_nullable_to_non_nullable
              as int,
      weekDay: null == weekDay
          ? _value.weekDay
          : weekDay // ignore: cast_nullable_to_non_nullable
              as int,
      repeatTill: freezed == repeatTill
          ? _value.repeatTill
          : repeatTill // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EventRepeatModelCopyWith<$Res>
    implements $EventRepeatModelCopyWith<$Res> {
  factory _$$_EventRepeatModelCopyWith(
          _$_EventRepeatModel value, $Res Function(_$_EventRepeatModel) then) =
      __$$_EventRepeatModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {EventRepeatType type,
      List<int> repeatDays,
      int weekNumber,
      int weekDay,
      DateTime? repeatTill});
}

/// @nodoc
class __$$_EventRepeatModelCopyWithImpl<$Res>
    extends _$EventRepeatModelCopyWithImpl<$Res, _$_EventRepeatModel>
    implements _$$_EventRepeatModelCopyWith<$Res> {
  __$$_EventRepeatModelCopyWithImpl(
      _$_EventRepeatModel _value, $Res Function(_$_EventRepeatModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? repeatDays = null,
    Object? weekNumber = null,
    Object? weekDay = null,
    Object? repeatTill = freezed,
  }) {
    return _then(_$_EventRepeatModel(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as EventRepeatType,
      repeatDays: null == repeatDays
          ? _value._repeatDays
          : repeatDays // ignore: cast_nullable_to_non_nullable
              as List<int>,
      weekNumber: null == weekNumber
          ? _value.weekNumber
          : weekNumber // ignore: cast_nullable_to_non_nullable
              as int,
      weekDay: null == weekDay
          ? _value.weekDay
          : weekDay // ignore: cast_nullable_to_non_nullable
              as int,
      repeatTill: freezed == repeatTill
          ? _value.repeatTill
          : repeatTill // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$_EventRepeatModel implements _EventRepeatModel {
  const _$_EventRepeatModel(
      {required this.type,
      final List<int> repeatDays = const [],
      this.weekNumber = 1,
      this.weekDay = 1,
      this.repeatTill})
      : _repeatDays = repeatDays;

  @override
  final EventRepeatType type;
  final List<int> _repeatDays;
  @override
  @JsonKey()
  List<int> get repeatDays {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_repeatDays);
  }

  @override
  @JsonKey()
  final int weekNumber;
  @override
  @JsonKey()
  final int weekDay;
  @override
  final DateTime? repeatTill;

  @override
  String toString() {
    return 'EventRepeatModel(type: $type, repeatDays: $repeatDays, weekNumber: $weekNumber, weekDay: $weekDay, repeatTill: $repeatTill)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventRepeatModel &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality()
                .equals(other._repeatDays, _repeatDays) &&
            (identical(other.weekNumber, weekNumber) ||
                other.weekNumber == weekNumber) &&
            (identical(other.weekDay, weekDay) || other.weekDay == weekDay) &&
            (identical(other.repeatTill, repeatTill) ||
                other.repeatTill == repeatTill));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      type,
      const DeepCollectionEquality().hash(_repeatDays),
      weekNumber,
      weekDay,
      repeatTill);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EventRepeatModelCopyWith<_$_EventRepeatModel> get copyWith =>
      __$$_EventRepeatModelCopyWithImpl<_$_EventRepeatModel>(this, _$identity);
}

abstract class _EventRepeatModel implements EventRepeatModel {
  const factory _EventRepeatModel(
      {required final EventRepeatType type,
      final List<int> repeatDays,
      final int weekNumber,
      final int weekDay,
      final DateTime? repeatTill}) = _$_EventRepeatModel;

  @override
  EventRepeatType get type;
  @override
  List<int> get repeatDays;
  @override
  int get weekNumber;
  @override
  int get weekDay;
  @override
  DateTime? get repeatTill;
  @override
  @JsonKey(ignore: true)
  _$$_EventRepeatModelCopyWith<_$_EventRepeatModel> get copyWith =>
      throw _privateConstructorUsedError;
}
