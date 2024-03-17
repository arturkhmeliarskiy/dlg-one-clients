// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dls_paginated_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DlsPaginatedResponse<T> _$DlsPaginatedResponseFromJson<T extends Object?>(
    Map<String, dynamic> json, T Function(Object?) fromJsonT) {
  return _DlsPaginatedResponse<T>.fromJson(json, fromJsonT);
}

/// @nodoc
mixin _$DlsPaginatedResponse<T extends Object?> {
  List<T> get data => throw _privateConstructorUsedError;
  DlsPaginationLinks? get links => throw _privateConstructorUsedError;
  DlsPaginationMeta? get meta => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson(Object? Function(T) toJsonT) =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DlsPaginatedResponseCopyWith<T, DlsPaginatedResponse<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DlsPaginatedResponseCopyWith<T extends Object?, $Res> {
  factory $DlsPaginatedResponseCopyWith(DlsPaginatedResponse<T> value,
          $Res Function(DlsPaginatedResponse<T>) then) =
      _$DlsPaginatedResponseCopyWithImpl<T, $Res, DlsPaginatedResponse<T>>;
  @useResult
  $Res call({List<T> data, DlsPaginationLinks? links, DlsPaginationMeta? meta});

  $DlsPaginationLinksCopyWith<$Res>? get links;
  $DlsPaginationMetaCopyWith<$Res>? get meta;
}

/// @nodoc
class _$DlsPaginatedResponseCopyWithImpl<T extends Object?, $Res,
        $Val extends DlsPaginatedResponse<T>>
    implements $DlsPaginatedResponseCopyWith<T, $Res> {
  _$DlsPaginatedResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? links = freezed,
    Object? meta = freezed,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<T>,
      links: freezed == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as DlsPaginationLinks?,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as DlsPaginationMeta?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DlsPaginationLinksCopyWith<$Res>? get links {
    if (_value.links == null) {
      return null;
    }

    return $DlsPaginationLinksCopyWith<$Res>(_value.links!, (value) {
      return _then(_value.copyWith(links: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DlsPaginationMetaCopyWith<$Res>? get meta {
    if (_value.meta == null) {
      return null;
    }

    return $DlsPaginationMetaCopyWith<$Res>(_value.meta!, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DlsPaginatedResponseCopyWith<T extends Object?, $Res>
    implements $DlsPaginatedResponseCopyWith<T, $Res> {
  factory _$$_DlsPaginatedResponseCopyWith(_$_DlsPaginatedResponse<T> value,
          $Res Function(_$_DlsPaginatedResponse<T>) then) =
      __$$_DlsPaginatedResponseCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({List<T> data, DlsPaginationLinks? links, DlsPaginationMeta? meta});

  @override
  $DlsPaginationLinksCopyWith<$Res>? get links;
  @override
  $DlsPaginationMetaCopyWith<$Res>? get meta;
}

/// @nodoc
class __$$_DlsPaginatedResponseCopyWithImpl<T extends Object?, $Res>
    extends _$DlsPaginatedResponseCopyWithImpl<T, $Res,
        _$_DlsPaginatedResponse<T>>
    implements _$$_DlsPaginatedResponseCopyWith<T, $Res> {
  __$$_DlsPaginatedResponseCopyWithImpl(_$_DlsPaginatedResponse<T> _value,
      $Res Function(_$_DlsPaginatedResponse<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? links = freezed,
    Object? meta = freezed,
  }) {
    return _then(_$_DlsPaginatedResponse<T>(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<T>,
      links: freezed == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as DlsPaginationLinks?,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as DlsPaginationMeta?,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false, genericArgumentFactories: true)
class _$_DlsPaginatedResponse<T extends Object?>
    implements _DlsPaginatedResponse<T> {
  const _$_DlsPaginatedResponse(
      {required final List<T> data, this.links, this.meta})
      : _data = data;

  factory _$_DlsPaginatedResponse.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$$_DlsPaginatedResponseFromJson(json, fromJsonT);

  final List<T> _data;
  @override
  List<T> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  final DlsPaginationLinks? links;
  @override
  final DlsPaginationMeta? meta;

  @override
  String toString() {
    return 'DlsPaginatedResponse<$T>(data: $data, links: $links, meta: $meta)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DlsPaginatedResponse<T> &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.links, links) || other.links == links) &&
            (identical(other.meta, meta) || other.meta == meta));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_data), links, meta);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DlsPaginatedResponseCopyWith<T, _$_DlsPaginatedResponse<T>>
      get copyWith =>
          __$$_DlsPaginatedResponseCopyWithImpl<T, _$_DlsPaginatedResponse<T>>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$$_DlsPaginatedResponseToJson<T>(this, toJsonT);
  }
}

abstract class _DlsPaginatedResponse<T extends Object?>
    implements DlsPaginatedResponse<T> {
  const factory _DlsPaginatedResponse(
      {required final List<T> data,
      final DlsPaginationLinks? links,
      final DlsPaginationMeta? meta}) = _$_DlsPaginatedResponse<T>;

  factory _DlsPaginatedResponse.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =
      _$_DlsPaginatedResponse<T>.fromJson;

  @override
  List<T> get data;
  @override
  DlsPaginationLinks? get links;
  @override
  DlsPaginationMeta? get meta;
  @override
  @JsonKey(ignore: true)
  _$$_DlsPaginatedResponseCopyWith<T, _$_DlsPaginatedResponse<T>>
      get copyWith => throw _privateConstructorUsedError;
}
