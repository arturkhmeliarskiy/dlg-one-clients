// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dls_search_resp.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DLSSearchResp _$DLSSearchRespFromJson(Map<String, dynamic> json) {
  return _DLSSearchResp.fromJson(json);
}

/// @nodoc
mixin _$DLSSearchResp {
  @JsonKey(name: 'links')
  DlsPaginationLinks? get links => throw _privateConstructorUsedError;
  @JsonKey(name: 'meta')
  DlsPaginationMeta? get meta => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  List<DLSUser>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DLSSearchRespCopyWith<DLSSearchResp> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DLSSearchRespCopyWith<$Res> {
  factory $DLSSearchRespCopyWith(
          DLSSearchResp value, $Res Function(DLSSearchResp) then) =
      _$DLSSearchRespCopyWithImpl<$Res, DLSSearchResp>;
  @useResult
  $Res call(
      {@JsonKey(name: 'links') DlsPaginationLinks? links,
      @JsonKey(name: 'meta') DlsPaginationMeta? meta,
      @JsonKey(name: 'data') List<DLSUser>? data});

  $DlsPaginationLinksCopyWith<$Res>? get links;
  $DlsPaginationMetaCopyWith<$Res>? get meta;
}

/// @nodoc
class _$DLSSearchRespCopyWithImpl<$Res, $Val extends DLSSearchResp>
    implements $DLSSearchRespCopyWith<$Res> {
  _$DLSSearchRespCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? links = freezed,
    Object? meta = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      links: freezed == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as DlsPaginationLinks?,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as DlsPaginationMeta?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DLSUser>?,
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
abstract class _$$_DLSSearchRespCopyWith<$Res>
    implements $DLSSearchRespCopyWith<$Res> {
  factory _$$_DLSSearchRespCopyWith(
          _$_DLSSearchResp value, $Res Function(_$_DLSSearchResp) then) =
      __$$_DLSSearchRespCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'links') DlsPaginationLinks? links,
      @JsonKey(name: 'meta') DlsPaginationMeta? meta,
      @JsonKey(name: 'data') List<DLSUser>? data});

  @override
  $DlsPaginationLinksCopyWith<$Res>? get links;
  @override
  $DlsPaginationMetaCopyWith<$Res>? get meta;
}

/// @nodoc
class __$$_DLSSearchRespCopyWithImpl<$Res>
    extends _$DLSSearchRespCopyWithImpl<$Res, _$_DLSSearchResp>
    implements _$$_DLSSearchRespCopyWith<$Res> {
  __$$_DLSSearchRespCopyWithImpl(
      _$_DLSSearchResp _value, $Res Function(_$_DLSSearchResp) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? links = freezed,
    Object? meta = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_DLSSearchResp(
      links: freezed == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as DlsPaginationLinks?,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as DlsPaginationMeta?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DLSUser>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DLSSearchResp extends _DLSSearchResp {
  _$_DLSSearchResp(
      {@JsonKey(name: 'links') this.links,
      @JsonKey(name: 'meta') this.meta,
      @JsonKey(name: 'data') final List<DLSUser>? data})
      : _data = data,
        super._();

  factory _$_DLSSearchResp.fromJson(Map<String, dynamic> json) =>
      _$$_DLSSearchRespFromJson(json);

  @override
  @JsonKey(name: 'links')
  final DlsPaginationLinks? links;
  @override
  @JsonKey(name: 'meta')
  final DlsPaginationMeta? meta;
  final List<DLSUser>? _data;
  @override
  @JsonKey(name: 'data')
  List<DLSUser>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'DLSSearchResp(links: $links, meta: $meta, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DLSSearchResp &&
            (identical(other.links, links) || other.links == links) &&
            (identical(other.meta, meta) || other.meta == meta) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, links, meta, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DLSSearchRespCopyWith<_$_DLSSearchResp> get copyWith =>
      __$$_DLSSearchRespCopyWithImpl<_$_DLSSearchResp>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DLSSearchRespToJson(
      this,
    );
  }
}

abstract class _DLSSearchResp extends DLSSearchResp {
  factory _DLSSearchResp(
      {@JsonKey(name: 'links') final DlsPaginationLinks? links,
      @JsonKey(name: 'meta') final DlsPaginationMeta? meta,
      @JsonKey(name: 'data') final List<DLSUser>? data}) = _$_DLSSearchResp;
  _DLSSearchResp._() : super._();

  factory _DLSSearchResp.fromJson(Map<String, dynamic> json) =
      _$_DLSSearchResp.fromJson;

  @override
  @JsonKey(name: 'links')
  DlsPaginationLinks? get links;
  @override
  @JsonKey(name: 'meta')
  DlsPaginationMeta? get meta;
  @override
  @JsonKey(name: 'data')
  List<DLSUser>? get data;
  @override
  @JsonKey(ignore: true)
  _$$_DLSSearchRespCopyWith<_$_DLSSearchResp> get copyWith =>
      throw _privateConstructorUsedError;
}
