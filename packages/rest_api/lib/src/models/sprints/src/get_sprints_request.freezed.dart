// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_sprints_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetSprintsRequest _$GetSprintsRequestFromJson(Map<String, dynamic> json) {
  return _GetSprintsRequest.fromJson(json);
}

/// @nodoc
mixin _$GetSprintsRequest {
  int? get page => throw _privateConstructorUsedError;
  GetSprintsViewType? get view => throw _privateConstructorUsedError;
  @JsonKey(name: 'filter[archive]')
  int? get filterArchive => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetSprintsRequestCopyWith<GetSprintsRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetSprintsRequestCopyWith<$Res> {
  factory $GetSprintsRequestCopyWith(
          GetSprintsRequest value, $Res Function(GetSprintsRequest) then) =
      _$GetSprintsRequestCopyWithImpl<$Res, GetSprintsRequest>;
  @useResult
  $Res call(
      {int? page,
      GetSprintsViewType? view,
      @JsonKey(name: 'filter[archive]') int? filterArchive});
}

/// @nodoc
class _$GetSprintsRequestCopyWithImpl<$Res, $Val extends GetSprintsRequest>
    implements $GetSprintsRequestCopyWith<$Res> {
  _$GetSprintsRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = freezed,
    Object? view = freezed,
    Object? filterArchive = freezed,
  }) {
    return _then(_value.copyWith(
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      view: freezed == view
          ? _value.view
          : view // ignore: cast_nullable_to_non_nullable
              as GetSprintsViewType?,
      filterArchive: freezed == filterArchive
          ? _value.filterArchive
          : filterArchive // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GetSprintsRequestCopyWith<$Res>
    implements $GetSprintsRequestCopyWith<$Res> {
  factory _$$_GetSprintsRequestCopyWith(_$_GetSprintsRequest value,
          $Res Function(_$_GetSprintsRequest) then) =
      __$$_GetSprintsRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? page,
      GetSprintsViewType? view,
      @JsonKey(name: 'filter[archive]') int? filterArchive});
}

/// @nodoc
class __$$_GetSprintsRequestCopyWithImpl<$Res>
    extends _$GetSprintsRequestCopyWithImpl<$Res, _$_GetSprintsRequest>
    implements _$$_GetSprintsRequestCopyWith<$Res> {
  __$$_GetSprintsRequestCopyWithImpl(
      _$_GetSprintsRequest _value, $Res Function(_$_GetSprintsRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = freezed,
    Object? view = freezed,
    Object? filterArchive = freezed,
  }) {
    return _then(_$_GetSprintsRequest(
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      view: freezed == view
          ? _value.view
          : view // ignore: cast_nullable_to_non_nullable
              as GetSprintsViewType?,
      filterArchive: freezed == filterArchive
          ? _value.filterArchive
          : filterArchive // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$_GetSprintsRequest implements _GetSprintsRequest {
  const _$_GetSprintsRequest(
      {this.page,
      this.view,
      @JsonKey(name: 'filter[archive]') this.filterArchive});

  factory _$_GetSprintsRequest.fromJson(Map<String, dynamic> json) =>
      _$$_GetSprintsRequestFromJson(json);

  @override
  final int? page;
  @override
  final GetSprintsViewType? view;
  @override
  @JsonKey(name: 'filter[archive]')
  final int? filterArchive;

  @override
  String toString() {
    return 'GetSprintsRequest(page: $page, view: $view, filterArchive: $filterArchive)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetSprintsRequest &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.view, view) || other.view == view) &&
            (identical(other.filterArchive, filterArchive) ||
                other.filterArchive == filterArchive));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, page, view, filterArchive);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetSprintsRequestCopyWith<_$_GetSprintsRequest> get copyWith =>
      __$$_GetSprintsRequestCopyWithImpl<_$_GetSprintsRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetSprintsRequestToJson(
      this,
    );
  }
}

abstract class _GetSprintsRequest implements GetSprintsRequest {
  const factory _GetSprintsRequest(
          {final int? page,
          final GetSprintsViewType? view,
          @JsonKey(name: 'filter[archive]') final int? filterArchive}) =
      _$_GetSprintsRequest;

  factory _GetSprintsRequest.fromJson(Map<String, dynamic> json) =
      _$_GetSprintsRequest.fromJson;

  @override
  int? get page;
  @override
  GetSprintsViewType? get view;
  @override
  @JsonKey(name: 'filter[archive]')
  int? get filterArchive;
  @override
  @JsonKey(ignore: true)
  _$$_GetSprintsRequestCopyWith<_$_GetSprintsRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
