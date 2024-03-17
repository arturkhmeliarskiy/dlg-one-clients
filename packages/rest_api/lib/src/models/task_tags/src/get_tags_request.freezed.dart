// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_tags_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetTagsRequest _$GetTagsRequestFromJson(Map<String, dynamic> json) {
  return _GetTagsRequest.fromJson(json);
}

/// @nodoc
mixin _$GetTagsRequest {
  @JsonKey(name: 'filter[title]')
  String? get title => throw _privateConstructorUsedError;
  int? get page => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetTagsRequestCopyWith<GetTagsRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetTagsRequestCopyWith<$Res> {
  factory $GetTagsRequestCopyWith(
          GetTagsRequest value, $Res Function(GetTagsRequest) then) =
      _$GetTagsRequestCopyWithImpl<$Res, GetTagsRequest>;
  @useResult
  $Res call({@JsonKey(name: 'filter[title]') String? title, int? page});
}

/// @nodoc
class _$GetTagsRequestCopyWithImpl<$Res, $Val extends GetTagsRequest>
    implements $GetTagsRequestCopyWith<$Res> {
  _$GetTagsRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? page = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GetTagsRequestCopyWith<$Res>
    implements $GetTagsRequestCopyWith<$Res> {
  factory _$$_GetTagsRequestCopyWith(
          _$_GetTagsRequest value, $Res Function(_$_GetTagsRequest) then) =
      __$$_GetTagsRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'filter[title]') String? title, int? page});
}

/// @nodoc
class __$$_GetTagsRequestCopyWithImpl<$Res>
    extends _$GetTagsRequestCopyWithImpl<$Res, _$_GetTagsRequest>
    implements _$$_GetTagsRequestCopyWith<$Res> {
  __$$_GetTagsRequestCopyWithImpl(
      _$_GetTagsRequest _value, $Res Function(_$_GetTagsRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? page = freezed,
  }) {
    return _then(_$_GetTagsRequest(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$_GetTagsRequest implements _GetTagsRequest {
  const _$_GetTagsRequest(
      {@JsonKey(name: 'filter[title]') this.title, this.page});

  factory _$_GetTagsRequest.fromJson(Map<String, dynamic> json) =>
      _$$_GetTagsRequestFromJson(json);

  @override
  @JsonKey(name: 'filter[title]')
  final String? title;
  @override
  final int? page;

  @override
  String toString() {
    return 'GetTagsRequest(title: $title, page: $page)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetTagsRequest &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.page, page) || other.page == page));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, page);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetTagsRequestCopyWith<_$_GetTagsRequest> get copyWith =>
      __$$_GetTagsRequestCopyWithImpl<_$_GetTagsRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetTagsRequestToJson(
      this,
    );
  }
}

abstract class _GetTagsRequest implements GetTagsRequest {
  const factory _GetTagsRequest(
      {@JsonKey(name: 'filter[title]') final String? title,
      final int? page}) = _$_GetTagsRequest;

  factory _GetTagsRequest.fromJson(Map<String, dynamic> json) =
      _$_GetTagsRequest.fromJson;

  @override
  @JsonKey(name: 'filter[title]')
  String? get title;
  @override
  int? get page;
  @override
  @JsonKey(ignore: true)
  _$$_GetTagsRequestCopyWith<_$_GetTagsRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
