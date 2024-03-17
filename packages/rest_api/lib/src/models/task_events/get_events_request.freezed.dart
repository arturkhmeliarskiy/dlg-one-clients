// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_events_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetEventsRequest _$GetEventsRequestFromJson(Map<String, dynamic> json) {
  return _GetEventsRequest.fromJson(json);
}

/// @nodoc
mixin _$GetEventsRequest {
  int? get page => throw _privateConstructorUsedError;
  int? get limit => throw _privateConstructorUsedError; // TODO config filter
  String? get filter => throw _privateConstructorUsedError;
  @DateTimeConverter()
  @JsonKey(name: 'calendar_start_date')
  DateTime? get calendarStartDate => throw _privateConstructorUsedError;
  @DateTimeConverter()
  @JsonKey(name: 'calendar_end_date')
  DateTime? get calendarEndDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetEventsRequestCopyWith<GetEventsRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetEventsRequestCopyWith<$Res> {
  factory $GetEventsRequestCopyWith(
          GetEventsRequest value, $Res Function(GetEventsRequest) then) =
      _$GetEventsRequestCopyWithImpl<$Res, GetEventsRequest>;
  @useResult
  $Res call(
      {int? page,
      int? limit,
      String? filter,
      @DateTimeConverter()
      @JsonKey(name: 'calendar_start_date')
          DateTime? calendarStartDate,
      @DateTimeConverter()
      @JsonKey(name: 'calendar_end_date')
          DateTime? calendarEndDate});
}

/// @nodoc
class _$GetEventsRequestCopyWithImpl<$Res, $Val extends GetEventsRequest>
    implements $GetEventsRequestCopyWith<$Res> {
  _$GetEventsRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = freezed,
    Object? limit = freezed,
    Object? filter = freezed,
    Object? calendarStartDate = freezed,
    Object? calendarEndDate = freezed,
  }) {
    return _then(_value.copyWith(
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      filter: freezed == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as String?,
      calendarStartDate: freezed == calendarStartDate
          ? _value.calendarStartDate
          : calendarStartDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      calendarEndDate: freezed == calendarEndDate
          ? _value.calendarEndDate
          : calendarEndDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GetEventsRequestCopyWith<$Res>
    implements $GetEventsRequestCopyWith<$Res> {
  factory _$$_GetEventsRequestCopyWith(
          _$_GetEventsRequest value, $Res Function(_$_GetEventsRequest) then) =
      __$$_GetEventsRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? page,
      int? limit,
      String? filter,
      @DateTimeConverter()
      @JsonKey(name: 'calendar_start_date')
          DateTime? calendarStartDate,
      @DateTimeConverter()
      @JsonKey(name: 'calendar_end_date')
          DateTime? calendarEndDate});
}

/// @nodoc
class __$$_GetEventsRequestCopyWithImpl<$Res>
    extends _$GetEventsRequestCopyWithImpl<$Res, _$_GetEventsRequest>
    implements _$$_GetEventsRequestCopyWith<$Res> {
  __$$_GetEventsRequestCopyWithImpl(
      _$_GetEventsRequest _value, $Res Function(_$_GetEventsRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = freezed,
    Object? limit = freezed,
    Object? filter = freezed,
    Object? calendarStartDate = freezed,
    Object? calendarEndDate = freezed,
  }) {
    return _then(_$_GetEventsRequest(
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      filter: freezed == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as String?,
      calendarStartDate: freezed == calendarStartDate
          ? _value.calendarStartDate
          : calendarStartDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      calendarEndDate: freezed == calendarEndDate
          ? _value.calendarEndDate
          : calendarEndDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetEventsRequest implements _GetEventsRequest {
  _$_GetEventsRequest(
      {this.page,
      this.limit,
      this.filter,
      @DateTimeConverter()
      @JsonKey(name: 'calendar_start_date')
          this.calendarStartDate,
      @DateTimeConverter()
      @JsonKey(name: 'calendar_end_date')
          this.calendarEndDate});

  factory _$_GetEventsRequest.fromJson(Map<String, dynamic> json) =>
      _$$_GetEventsRequestFromJson(json);

  @override
  final int? page;
  @override
  final int? limit;
// TODO config filter
  @override
  final String? filter;
  @override
  @DateTimeConverter()
  @JsonKey(name: 'calendar_start_date')
  final DateTime? calendarStartDate;
  @override
  @DateTimeConverter()
  @JsonKey(name: 'calendar_end_date')
  final DateTime? calendarEndDate;

  @override
  String toString() {
    return 'GetEventsRequest(page: $page, limit: $limit, filter: $filter, calendarStartDate: $calendarStartDate, calendarEndDate: $calendarEndDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetEventsRequest &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.filter, filter) || other.filter == filter) &&
            (identical(other.calendarStartDate, calendarStartDate) ||
                other.calendarStartDate == calendarStartDate) &&
            (identical(other.calendarEndDate, calendarEndDate) ||
                other.calendarEndDate == calendarEndDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, page, limit, filter, calendarStartDate, calendarEndDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetEventsRequestCopyWith<_$_GetEventsRequest> get copyWith =>
      __$$_GetEventsRequestCopyWithImpl<_$_GetEventsRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetEventsRequestToJson(
      this,
    );
  }
}

abstract class _GetEventsRequest implements GetEventsRequest {
  factory _GetEventsRequest(
      {final int? page,
      final int? limit,
      final String? filter,
      @DateTimeConverter()
      @JsonKey(name: 'calendar_start_date')
          final DateTime? calendarStartDate,
      @DateTimeConverter()
      @JsonKey(name: 'calendar_end_date')
          final DateTime? calendarEndDate}) = _$_GetEventsRequest;

  factory _GetEventsRequest.fromJson(Map<String, dynamic> json) =
      _$_GetEventsRequest.fromJson;

  @override
  int? get page;
  @override
  int? get limit;
  @override // TODO config filter
  String? get filter;
  @override
  @DateTimeConverter()
  @JsonKey(name: 'calendar_start_date')
  DateTime? get calendarStartDate;
  @override
  @DateTimeConverter()
  @JsonKey(name: 'calendar_end_date')
  DateTime? get calendarEndDate;
  @override
  @JsonKey(ignore: true)
  _$$_GetEventsRequestCopyWith<_$_GetEventsRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
