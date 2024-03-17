// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'calendar_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CalendarModel {
  DateTime get date => throw _privateConstructorUsedError;
  CalendarViewType get viewType => throw _privateConstructorUsedError;
  List<CalendarItemModel> get items => throw _privateConstructorUsedError;
  DateTime? get dragDate => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CalendarModelCopyWith<CalendarModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalendarModelCopyWith<$Res> {
  factory $CalendarModelCopyWith(
          CalendarModel value, $Res Function(CalendarModel) then) =
      _$CalendarModelCopyWithImpl<$Res, CalendarModel>;
  @useResult
  $Res call(
      {DateTime date,
      CalendarViewType viewType,
      List<CalendarItemModel> items,
      DateTime? dragDate});
}

/// @nodoc
class _$CalendarModelCopyWithImpl<$Res, $Val extends CalendarModel>
    implements $CalendarModelCopyWith<$Res> {
  _$CalendarModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? viewType = null,
    Object? items = null,
    Object? dragDate = freezed,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      viewType: null == viewType
          ? _value.viewType
          : viewType // ignore: cast_nullable_to_non_nullable
              as CalendarViewType,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<CalendarItemModel>,
      dragDate: freezed == dragDate
          ? _value.dragDate
          : dragDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CalendarModelCopyWith<$Res>
    implements $CalendarModelCopyWith<$Res> {
  factory _$$_CalendarModelCopyWith(
          _$_CalendarModel value, $Res Function(_$_CalendarModel) then) =
      __$$_CalendarModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime date,
      CalendarViewType viewType,
      List<CalendarItemModel> items,
      DateTime? dragDate});
}

/// @nodoc
class __$$_CalendarModelCopyWithImpl<$Res>
    extends _$CalendarModelCopyWithImpl<$Res, _$_CalendarModel>
    implements _$$_CalendarModelCopyWith<$Res> {
  __$$_CalendarModelCopyWithImpl(
      _$_CalendarModel _value, $Res Function(_$_CalendarModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? viewType = null,
    Object? items = null,
    Object? dragDate = freezed,
  }) {
    return _then(_$_CalendarModel(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      viewType: null == viewType
          ? _value.viewType
          : viewType // ignore: cast_nullable_to_non_nullable
              as CalendarViewType,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<CalendarItemModel>,
      dragDate: freezed == dragDate
          ? _value.dragDate
          : dragDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$_CalendarModel implements _CalendarModel {
  const _$_CalendarModel(
      {required this.date,
      this.viewType = CalendarViewType.day,
      final List<CalendarItemModel> items = const [],
      this.dragDate})
      : _items = items;

  @override
  final DateTime date;
  @override
  @JsonKey()
  final CalendarViewType viewType;
  final List<CalendarItemModel> _items;
  @override
  @JsonKey()
  List<CalendarItemModel> get items {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final DateTime? dragDate;

  @override
  String toString() {
    return 'CalendarModel(date: $date, viewType: $viewType, items: $items, dragDate: $dragDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CalendarModel &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.viewType, viewType) ||
                other.viewType == viewType) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.dragDate, dragDate) ||
                other.dragDate == dragDate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date, viewType,
      const DeepCollectionEquality().hash(_items), dragDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CalendarModelCopyWith<_$_CalendarModel> get copyWith =>
      __$$_CalendarModelCopyWithImpl<_$_CalendarModel>(this, _$identity);
}

abstract class _CalendarModel implements CalendarModel {
  const factory _CalendarModel(
      {required final DateTime date,
      final CalendarViewType viewType,
      final List<CalendarItemModel> items,
      final DateTime? dragDate}) = _$_CalendarModel;

  @override
  DateTime get date;
  @override
  CalendarViewType get viewType;
  @override
  List<CalendarItemModel> get items;
  @override
  DateTime? get dragDate;
  @override
  @JsonKey(ignore: true)
  _$$_CalendarModelCopyWith<_$_CalendarModel> get copyWith =>
      throw _privateConstructorUsedError;
}
