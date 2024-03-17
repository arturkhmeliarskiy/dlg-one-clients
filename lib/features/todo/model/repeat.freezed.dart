// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'repeat.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Repeat {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() daily,
    required TResult Function(List<int> dayNumbers) weekly,
    required TResult Function(int weekNumber, int dayNumber) monthly,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? daily,
    TResult? Function(List<int> dayNumbers)? weekly,
    TResult? Function(int weekNumber, int dayNumber)? monthly,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? daily,
    TResult Function(List<int> dayNumbers)? weekly,
    TResult Function(int weekNumber, int dayNumber)? monthly,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DailyRepeat value) daily,
    required TResult Function(WeeklyRepeat value) weekly,
    required TResult Function(MonthlyRepeat value) monthly,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DailyRepeat value)? daily,
    TResult? Function(WeeklyRepeat value)? weekly,
    TResult? Function(MonthlyRepeat value)? monthly,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DailyRepeat value)? daily,
    TResult Function(WeeklyRepeat value)? weekly,
    TResult Function(MonthlyRepeat value)? monthly,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepeatCopyWith<$Res> {
  factory $RepeatCopyWith(Repeat value, $Res Function(Repeat) then) =
      _$RepeatCopyWithImpl<$Res, Repeat>;
}

/// @nodoc
class _$RepeatCopyWithImpl<$Res, $Val extends Repeat>
    implements $RepeatCopyWith<$Res> {
  _$RepeatCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$DailyRepeatCopyWith<$Res> {
  factory _$$DailyRepeatCopyWith(
          _$DailyRepeat value, $Res Function(_$DailyRepeat) then) =
      __$$DailyRepeatCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DailyRepeatCopyWithImpl<$Res>
    extends _$RepeatCopyWithImpl<$Res, _$DailyRepeat>
    implements _$$DailyRepeatCopyWith<$Res> {
  __$$DailyRepeatCopyWithImpl(
      _$DailyRepeat _value, $Res Function(_$DailyRepeat) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DailyRepeat extends DailyRepeat {
  const _$DailyRepeat() : super._();

  @override
  String toString() {
    return 'Repeat.daily()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DailyRepeat);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() daily,
    required TResult Function(List<int> dayNumbers) weekly,
    required TResult Function(int weekNumber, int dayNumber) monthly,
  }) {
    return daily();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? daily,
    TResult? Function(List<int> dayNumbers)? weekly,
    TResult? Function(int weekNumber, int dayNumber)? monthly,
  }) {
    return daily?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? daily,
    TResult Function(List<int> dayNumbers)? weekly,
    TResult Function(int weekNumber, int dayNumber)? monthly,
    required TResult orElse(),
  }) {
    if (daily != null) {
      return daily();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DailyRepeat value) daily,
    required TResult Function(WeeklyRepeat value) weekly,
    required TResult Function(MonthlyRepeat value) monthly,
  }) {
    return daily(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DailyRepeat value)? daily,
    TResult? Function(WeeklyRepeat value)? weekly,
    TResult? Function(MonthlyRepeat value)? monthly,
  }) {
    return daily?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DailyRepeat value)? daily,
    TResult Function(WeeklyRepeat value)? weekly,
    TResult Function(MonthlyRepeat value)? monthly,
    required TResult orElse(),
  }) {
    if (daily != null) {
      return daily(this);
    }
    return orElse();
  }
}

abstract class DailyRepeat extends Repeat {
  const factory DailyRepeat() = _$DailyRepeat;
  const DailyRepeat._() : super._();
}

/// @nodoc
abstract class _$$WeeklyRepeatCopyWith<$Res> {
  factory _$$WeeklyRepeatCopyWith(
          _$WeeklyRepeat value, $Res Function(_$WeeklyRepeat) then) =
      __$$WeeklyRepeatCopyWithImpl<$Res>;
  @useResult
  $Res call({List<int> dayNumbers});
}

/// @nodoc
class __$$WeeklyRepeatCopyWithImpl<$Res>
    extends _$RepeatCopyWithImpl<$Res, _$WeeklyRepeat>
    implements _$$WeeklyRepeatCopyWith<$Res> {
  __$$WeeklyRepeatCopyWithImpl(
      _$WeeklyRepeat _value, $Res Function(_$WeeklyRepeat) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dayNumbers = null,
  }) {
    return _then(_$WeeklyRepeat(
      dayNumbers: null == dayNumbers
          ? _value._dayNumbers
          : dayNumbers // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc

class _$WeeklyRepeat extends WeeklyRepeat {
  const _$WeeklyRepeat({required final List<int> dayNumbers})
      : _dayNumbers = dayNumbers,
        super._();

  final List<int> _dayNumbers;
  @override
  List<int> get dayNumbers {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dayNumbers);
  }

  @override
  String toString() {
    return 'Repeat.weekly(dayNumbers: $dayNumbers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeeklyRepeat &&
            const DeepCollectionEquality()
                .equals(other._dayNumbers, _dayNumbers));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_dayNumbers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeeklyRepeatCopyWith<_$WeeklyRepeat> get copyWith =>
      __$$WeeklyRepeatCopyWithImpl<_$WeeklyRepeat>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() daily,
    required TResult Function(List<int> dayNumbers) weekly,
    required TResult Function(int weekNumber, int dayNumber) monthly,
  }) {
    return weekly(dayNumbers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? daily,
    TResult? Function(List<int> dayNumbers)? weekly,
    TResult? Function(int weekNumber, int dayNumber)? monthly,
  }) {
    return weekly?.call(dayNumbers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? daily,
    TResult Function(List<int> dayNumbers)? weekly,
    TResult Function(int weekNumber, int dayNumber)? monthly,
    required TResult orElse(),
  }) {
    if (weekly != null) {
      return weekly(dayNumbers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DailyRepeat value) daily,
    required TResult Function(WeeklyRepeat value) weekly,
    required TResult Function(MonthlyRepeat value) monthly,
  }) {
    return weekly(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DailyRepeat value)? daily,
    TResult? Function(WeeklyRepeat value)? weekly,
    TResult? Function(MonthlyRepeat value)? monthly,
  }) {
    return weekly?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DailyRepeat value)? daily,
    TResult Function(WeeklyRepeat value)? weekly,
    TResult Function(MonthlyRepeat value)? monthly,
    required TResult orElse(),
  }) {
    if (weekly != null) {
      return weekly(this);
    }
    return orElse();
  }
}

abstract class WeeklyRepeat extends Repeat {
  const factory WeeklyRepeat({required final List<int> dayNumbers}) =
      _$WeeklyRepeat;
  const WeeklyRepeat._() : super._();

  List<int> get dayNumbers;
  @JsonKey(ignore: true)
  _$$WeeklyRepeatCopyWith<_$WeeklyRepeat> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MonthlyRepeatCopyWith<$Res> {
  factory _$$MonthlyRepeatCopyWith(
          _$MonthlyRepeat value, $Res Function(_$MonthlyRepeat) then) =
      __$$MonthlyRepeatCopyWithImpl<$Res>;
  @useResult
  $Res call({int weekNumber, int dayNumber});
}

/// @nodoc
class __$$MonthlyRepeatCopyWithImpl<$Res>
    extends _$RepeatCopyWithImpl<$Res, _$MonthlyRepeat>
    implements _$$MonthlyRepeatCopyWith<$Res> {
  __$$MonthlyRepeatCopyWithImpl(
      _$MonthlyRepeat _value, $Res Function(_$MonthlyRepeat) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weekNumber = null,
    Object? dayNumber = null,
  }) {
    return _then(_$MonthlyRepeat(
      weekNumber: null == weekNumber
          ? _value.weekNumber
          : weekNumber // ignore: cast_nullable_to_non_nullable
              as int,
      dayNumber: null == dayNumber
          ? _value.dayNumber
          : dayNumber // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$MonthlyRepeat extends MonthlyRepeat {
  const _$MonthlyRepeat({required this.weekNumber, required this.dayNumber})
      : super._();

  @override
  final int weekNumber;
  @override
  final int dayNumber;

  @override
  String toString() {
    return 'Repeat.monthly(weekNumber: $weekNumber, dayNumber: $dayNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MonthlyRepeat &&
            (identical(other.weekNumber, weekNumber) ||
                other.weekNumber == weekNumber) &&
            (identical(other.dayNumber, dayNumber) ||
                other.dayNumber == dayNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, weekNumber, dayNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MonthlyRepeatCopyWith<_$MonthlyRepeat> get copyWith =>
      __$$MonthlyRepeatCopyWithImpl<_$MonthlyRepeat>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() daily,
    required TResult Function(List<int> dayNumbers) weekly,
    required TResult Function(int weekNumber, int dayNumber) monthly,
  }) {
    return monthly(weekNumber, dayNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? daily,
    TResult? Function(List<int> dayNumbers)? weekly,
    TResult? Function(int weekNumber, int dayNumber)? monthly,
  }) {
    return monthly?.call(weekNumber, dayNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? daily,
    TResult Function(List<int> dayNumbers)? weekly,
    TResult Function(int weekNumber, int dayNumber)? monthly,
    required TResult orElse(),
  }) {
    if (monthly != null) {
      return monthly(weekNumber, dayNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DailyRepeat value) daily,
    required TResult Function(WeeklyRepeat value) weekly,
    required TResult Function(MonthlyRepeat value) monthly,
  }) {
    return monthly(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DailyRepeat value)? daily,
    TResult? Function(WeeklyRepeat value)? weekly,
    TResult? Function(MonthlyRepeat value)? monthly,
  }) {
    return monthly?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DailyRepeat value)? daily,
    TResult Function(WeeklyRepeat value)? weekly,
    TResult Function(MonthlyRepeat value)? monthly,
    required TResult orElse(),
  }) {
    if (monthly != null) {
      return monthly(this);
    }
    return orElse();
  }
}

abstract class MonthlyRepeat extends Repeat {
  const factory MonthlyRepeat(
      {required final int weekNumber,
      required final int dayNumber}) = _$MonthlyRepeat;
  const MonthlyRepeat._() : super._();

  int get weekNumber;
  int get dayNumber;
  @JsonKey(ignore: true)
  _$$MonthlyRepeatCopyWith<_$MonthlyRepeat> get copyWith =>
      throw _privateConstructorUsedError;
}
