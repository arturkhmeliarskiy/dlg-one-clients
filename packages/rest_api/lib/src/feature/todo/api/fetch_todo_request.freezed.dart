// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fetch_todo_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FetchTodoRequest _$FetchTodoRequestFromJson(Map<String, dynamic> json) {
  return _FetchTodoRequest.fromJson(json);
}

/// @nodoc
mixin _$FetchTodoRequest {
  int? get page => throw _privateConstructorUsedError;
  @JsonKey(name: 'filter[no_dates]')
  bool? get hasNotDate => throw _privateConstructorUsedError;
  @DateTimeConverter()
  @JsonKey(name: 'filter[dates_between]', toJson: FetchTodoRequest.joinedDates)
  List<DateTime>? get datesRange => throw _privateConstructorUsedError;
  @JsonKey(name: 'order_create')
  TodoCreateSortType? get sortByCreate => throw _privateConstructorUsedError;
  @JsonKey(name: 'sort')
  TodoStartSortType? get sortByStart => throw _privateConstructorUsedError;
  @JsonKey(name: 'filter[status]')
  TodoStatus? get filteredStatus => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FetchTodoRequestCopyWith<FetchTodoRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchTodoRequestCopyWith<$Res> {
  factory $FetchTodoRequestCopyWith(
          FetchTodoRequest value, $Res Function(FetchTodoRequest) then) =
      _$FetchTodoRequestCopyWithImpl<$Res, FetchTodoRequest>;
  @useResult
  $Res call(
      {int? page,
      @JsonKey(name: 'filter[no_dates]')
          bool? hasNotDate,
      @DateTimeConverter()
      @JsonKey(name: 'filter[dates_between]', toJson: FetchTodoRequest.joinedDates)
          List<DateTime>? datesRange,
      @JsonKey(name: 'order_create')
          TodoCreateSortType? sortByCreate,
      @JsonKey(name: 'sort')
          TodoStartSortType? sortByStart,
      @JsonKey(name: 'filter[status]')
          TodoStatus? filteredStatus});
}

/// @nodoc
class _$FetchTodoRequestCopyWithImpl<$Res, $Val extends FetchTodoRequest>
    implements $FetchTodoRequestCopyWith<$Res> {
  _$FetchTodoRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = freezed,
    Object? hasNotDate = freezed,
    Object? datesRange = freezed,
    Object? sortByCreate = freezed,
    Object? sortByStart = freezed,
    Object? filteredStatus = freezed,
  }) {
    return _then(_value.copyWith(
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      hasNotDate: freezed == hasNotDate
          ? _value.hasNotDate
          : hasNotDate // ignore: cast_nullable_to_non_nullable
              as bool?,
      datesRange: freezed == datesRange
          ? _value.datesRange
          : datesRange // ignore: cast_nullable_to_non_nullable
              as List<DateTime>?,
      sortByCreate: freezed == sortByCreate
          ? _value.sortByCreate
          : sortByCreate // ignore: cast_nullable_to_non_nullable
              as TodoCreateSortType?,
      sortByStart: freezed == sortByStart
          ? _value.sortByStart
          : sortByStart // ignore: cast_nullable_to_non_nullable
              as TodoStartSortType?,
      filteredStatus: freezed == filteredStatus
          ? _value.filteredStatus
          : filteredStatus // ignore: cast_nullable_to_non_nullable
              as TodoStatus?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FetchTodoRequestCopyWith<$Res>
    implements $FetchTodoRequestCopyWith<$Res> {
  factory _$$_FetchTodoRequestCopyWith(
          _$_FetchTodoRequest value, $Res Function(_$_FetchTodoRequest) then) =
      __$$_FetchTodoRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? page,
      @JsonKey(name: 'filter[no_dates]')
          bool? hasNotDate,
      @DateTimeConverter()
      @JsonKey(name: 'filter[dates_between]', toJson: FetchTodoRequest.joinedDates)
          List<DateTime>? datesRange,
      @JsonKey(name: 'order_create')
          TodoCreateSortType? sortByCreate,
      @JsonKey(name: 'sort')
          TodoStartSortType? sortByStart,
      @JsonKey(name: 'filter[status]')
          TodoStatus? filteredStatus});
}

/// @nodoc
class __$$_FetchTodoRequestCopyWithImpl<$Res>
    extends _$FetchTodoRequestCopyWithImpl<$Res, _$_FetchTodoRequest>
    implements _$$_FetchTodoRequestCopyWith<$Res> {
  __$$_FetchTodoRequestCopyWithImpl(
      _$_FetchTodoRequest _value, $Res Function(_$_FetchTodoRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = freezed,
    Object? hasNotDate = freezed,
    Object? datesRange = freezed,
    Object? sortByCreate = freezed,
    Object? sortByStart = freezed,
    Object? filteredStatus = freezed,
  }) {
    return _then(_$_FetchTodoRequest(
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      hasNotDate: freezed == hasNotDate
          ? _value.hasNotDate
          : hasNotDate // ignore: cast_nullable_to_non_nullable
              as bool?,
      datesRange: freezed == datesRange
          ? _value._datesRange
          : datesRange // ignore: cast_nullable_to_non_nullable
              as List<DateTime>?,
      sortByCreate: freezed == sortByCreate
          ? _value.sortByCreate
          : sortByCreate // ignore: cast_nullable_to_non_nullable
              as TodoCreateSortType?,
      sortByStart: freezed == sortByStart
          ? _value.sortByStart
          : sortByStart // ignore: cast_nullable_to_non_nullable
              as TodoStartSortType?,
      filteredStatus: freezed == filteredStatus
          ? _value.filteredStatus
          : filteredStatus // ignore: cast_nullable_to_non_nullable
              as TodoStatus?,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$_FetchTodoRequest implements _FetchTodoRequest {
  const _$_FetchTodoRequest(
      {this.page,
      @JsonKey(name: 'filter[no_dates]')
          this.hasNotDate,
      @DateTimeConverter()
      @JsonKey(name: 'filter[dates_between]', toJson: FetchTodoRequest.joinedDates)
          final List<DateTime>? datesRange,
      @JsonKey(name: 'order_create')
          this.sortByCreate,
      @JsonKey(name: 'sort')
          this.sortByStart,
      @JsonKey(name: 'filter[status]')
          this.filteredStatus})
      : _datesRange = datesRange;

  factory _$_FetchTodoRequest.fromJson(Map<String, dynamic> json) =>
      _$$_FetchTodoRequestFromJson(json);

  @override
  final int? page;
  @override
  @JsonKey(name: 'filter[no_dates]')
  final bool? hasNotDate;
  final List<DateTime>? _datesRange;
  @override
  @DateTimeConverter()
  @JsonKey(name: 'filter[dates_between]', toJson: FetchTodoRequest.joinedDates)
  List<DateTime>? get datesRange {
    final value = _datesRange;
    if (value == null) return null;
    if (_datesRange is EqualUnmodifiableListView) return _datesRange;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'order_create')
  final TodoCreateSortType? sortByCreate;
  @override
  @JsonKey(name: 'sort')
  final TodoStartSortType? sortByStart;
  @override
  @JsonKey(name: 'filter[status]')
  final TodoStatus? filteredStatus;

  @override
  String toString() {
    return 'FetchTodoRequest(page: $page, hasNotDate: $hasNotDate, datesRange: $datesRange, sortByCreate: $sortByCreate, sortByStart: $sortByStart, filteredStatus: $filteredStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchTodoRequest &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.hasNotDate, hasNotDate) ||
                other.hasNotDate == hasNotDate) &&
            const DeepCollectionEquality()
                .equals(other._datesRange, _datesRange) &&
            (identical(other.sortByCreate, sortByCreate) ||
                other.sortByCreate == sortByCreate) &&
            (identical(other.sortByStart, sortByStart) ||
                other.sortByStart == sortByStart) &&
            (identical(other.filteredStatus, filteredStatus) ||
                other.filteredStatus == filteredStatus));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      page,
      hasNotDate,
      const DeepCollectionEquality().hash(_datesRange),
      sortByCreate,
      sortByStart,
      filteredStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FetchTodoRequestCopyWith<_$_FetchTodoRequest> get copyWith =>
      __$$_FetchTodoRequestCopyWithImpl<_$_FetchTodoRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FetchTodoRequestToJson(
      this,
    );
  }
}

abstract class _FetchTodoRequest implements FetchTodoRequest {
  const factory _FetchTodoRequest(
      {final int? page,
      @JsonKey(name: 'filter[no_dates]')
          final bool? hasNotDate,
      @DateTimeConverter()
      @JsonKey(name: 'filter[dates_between]', toJson: FetchTodoRequest.joinedDates)
          final List<DateTime>? datesRange,
      @JsonKey(name: 'order_create')
          final TodoCreateSortType? sortByCreate,
      @JsonKey(name: 'sort')
          final TodoStartSortType? sortByStart,
      @JsonKey(name: 'filter[status]')
          final TodoStatus? filteredStatus}) = _$_FetchTodoRequest;

  factory _FetchTodoRequest.fromJson(Map<String, dynamic> json) =
      _$_FetchTodoRequest.fromJson;

  @override
  int? get page;
  @override
  @JsonKey(name: 'filter[no_dates]')
  bool? get hasNotDate;
  @override
  @DateTimeConverter()
  @JsonKey(name: 'filter[dates_between]', toJson: FetchTodoRequest.joinedDates)
  List<DateTime>? get datesRange;
  @override
  @JsonKey(name: 'order_create')
  TodoCreateSortType? get sortByCreate;
  @override
  @JsonKey(name: 'sort')
  TodoStartSortType? get sortByStart;
  @override
  @JsonKey(name: 'filter[status]')
  TodoStatus? get filteredStatus;
  @override
  @JsonKey(ignore: true)
  _$$_FetchTodoRequestCopyWith<_$_FetchTodoRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
