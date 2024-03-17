// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dls_tags_all.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DlsTagsAll _$DlsTagsAllFromJson(Map<String, dynamic> json) {
  return _DlsTagsAll.fromJson(json);
}

/// @nodoc
mixin _$DlsTagsAll {
  @JsonKey(name: 'current_page')
  int? get currentPage => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  List<TaskTagModel> get tags => throw _privateConstructorUsedError;
  @JsonKey(name: 'first_page_url')
  String? get firstPageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'from')
  int? get from => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_page')
  int? get lastPage => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_page_url')
  String? get lastPageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'links')
  DlsTasksLink? get links => throw _privateConstructorUsedError;
  @JsonKey(name: 'next_page_url')
  String? get nextPageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'path')
  String? get path => throw _privateConstructorUsedError;
  @JsonKey(name: 'per_page')
  int? get perPage => throw _privateConstructorUsedError;
  @JsonKey(name: 'prev_page_url')
  String? get prevPageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'to')
  int? get to => throw _privateConstructorUsedError;
  @JsonKey(name: 'total')
  int? get total => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DlsTagsAllCopyWith<DlsTagsAll> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DlsTagsAllCopyWith<$Res> {
  factory $DlsTagsAllCopyWith(
          DlsTagsAll value, $Res Function(DlsTagsAll) then) =
      _$DlsTagsAllCopyWithImpl<$Res, DlsTagsAll>;
  @useResult
  $Res call(
      {@JsonKey(name: 'current_page') int? currentPage,
      @JsonKey(name: 'data') List<TaskTagModel> tags,
      @JsonKey(name: 'first_page_url') String? firstPageUrl,
      @JsonKey(name: 'from') int? from,
      @JsonKey(name: 'last_page') int? lastPage,
      @JsonKey(name: 'last_page_url') String? lastPageUrl,
      @JsonKey(name: 'links') DlsTasksLink? links,
      @JsonKey(name: 'next_page_url') String? nextPageUrl,
      @JsonKey(name: 'path') String? path,
      @JsonKey(name: 'per_page') int? perPage,
      @JsonKey(name: 'prev_page_url') String? prevPageUrl,
      @JsonKey(name: 'to') int? to,
      @JsonKey(name: 'total') int? total});

  $DlsTasksLinkCopyWith<$Res>? get links;
}

/// @nodoc
class _$DlsTagsAllCopyWithImpl<$Res, $Val extends DlsTagsAll>
    implements $DlsTagsAllCopyWith<$Res> {
  _$DlsTagsAllCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = freezed,
    Object? tags = null,
    Object? firstPageUrl = freezed,
    Object? from = freezed,
    Object? lastPage = freezed,
    Object? lastPageUrl = freezed,
    Object? links = freezed,
    Object? nextPageUrl = freezed,
    Object? path = freezed,
    Object? perPage = freezed,
    Object? prevPageUrl = freezed,
    Object? to = freezed,
    Object? total = freezed,
  }) {
    return _then(_value.copyWith(
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<TaskTagModel>,
      firstPageUrl: freezed == firstPageUrl
          ? _value.firstPageUrl
          : firstPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as int?,
      lastPage: freezed == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int?,
      lastPageUrl: freezed == lastPageUrl
          ? _value.lastPageUrl
          : lastPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      links: freezed == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as DlsTasksLink?,
      nextPageUrl: freezed == nextPageUrl
          ? _value.nextPageUrl
          : nextPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      perPage: freezed == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int?,
      prevPageUrl: freezed == prevPageUrl
          ? _value.prevPageUrl
          : prevPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DlsTasksLinkCopyWith<$Res>? get links {
    if (_value.links == null) {
      return null;
    }

    return $DlsTasksLinkCopyWith<$Res>(_value.links!, (value) {
      return _then(_value.copyWith(links: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DlsTagsAllCopyWith<$Res>
    implements $DlsTagsAllCopyWith<$Res> {
  factory _$$_DlsTagsAllCopyWith(
          _$_DlsTagsAll value, $Res Function(_$_DlsTagsAll) then) =
      __$$_DlsTagsAllCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'current_page') int? currentPage,
      @JsonKey(name: 'data') List<TaskTagModel> tags,
      @JsonKey(name: 'first_page_url') String? firstPageUrl,
      @JsonKey(name: 'from') int? from,
      @JsonKey(name: 'last_page') int? lastPage,
      @JsonKey(name: 'last_page_url') String? lastPageUrl,
      @JsonKey(name: 'links') DlsTasksLink? links,
      @JsonKey(name: 'next_page_url') String? nextPageUrl,
      @JsonKey(name: 'path') String? path,
      @JsonKey(name: 'per_page') int? perPage,
      @JsonKey(name: 'prev_page_url') String? prevPageUrl,
      @JsonKey(name: 'to') int? to,
      @JsonKey(name: 'total') int? total});

  @override
  $DlsTasksLinkCopyWith<$Res>? get links;
}

/// @nodoc
class __$$_DlsTagsAllCopyWithImpl<$Res>
    extends _$DlsTagsAllCopyWithImpl<$Res, _$_DlsTagsAll>
    implements _$$_DlsTagsAllCopyWith<$Res> {
  __$$_DlsTagsAllCopyWithImpl(
      _$_DlsTagsAll _value, $Res Function(_$_DlsTagsAll) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = freezed,
    Object? tags = null,
    Object? firstPageUrl = freezed,
    Object? from = freezed,
    Object? lastPage = freezed,
    Object? lastPageUrl = freezed,
    Object? links = freezed,
    Object? nextPageUrl = freezed,
    Object? path = freezed,
    Object? perPage = freezed,
    Object? prevPageUrl = freezed,
    Object? to = freezed,
    Object? total = freezed,
  }) {
    return _then(_$_DlsTagsAll(
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<TaskTagModel>,
      firstPageUrl: freezed == firstPageUrl
          ? _value.firstPageUrl
          : firstPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as int?,
      lastPage: freezed == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int?,
      lastPageUrl: freezed == lastPageUrl
          ? _value.lastPageUrl
          : lastPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      links: freezed == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as DlsTasksLink?,
      nextPageUrl: freezed == nextPageUrl
          ? _value.nextPageUrl
          : nextPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      perPage: freezed == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int?,
      prevPageUrl: freezed == prevPageUrl
          ? _value.prevPageUrl
          : prevPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DlsTagsAll extends _DlsTagsAll {
  _$_DlsTagsAll(
      {@JsonKey(name: 'current_page') this.currentPage,
      @JsonKey(name: 'data') required final List<TaskTagModel> tags,
      @JsonKey(name: 'first_page_url') this.firstPageUrl,
      @JsonKey(name: 'from') this.from,
      @JsonKey(name: 'last_page') this.lastPage,
      @JsonKey(name: 'last_page_url') this.lastPageUrl,
      @JsonKey(name: 'links') this.links,
      @JsonKey(name: 'next_page_url') this.nextPageUrl,
      @JsonKey(name: 'path') this.path,
      @JsonKey(name: 'per_page') this.perPage,
      @JsonKey(name: 'prev_page_url') this.prevPageUrl,
      @JsonKey(name: 'to') this.to,
      @JsonKey(name: 'total') this.total})
      : _tags = tags,
        super._();

  factory _$_DlsTagsAll.fromJson(Map<String, dynamic> json) =>
      _$$_DlsTagsAllFromJson(json);

  @override
  @JsonKey(name: 'current_page')
  final int? currentPage;
  final List<TaskTagModel> _tags;
  @override
  @JsonKey(name: 'data')
  List<TaskTagModel> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  @JsonKey(name: 'first_page_url')
  final String? firstPageUrl;
  @override
  @JsonKey(name: 'from')
  final int? from;
  @override
  @JsonKey(name: 'last_page')
  final int? lastPage;
  @override
  @JsonKey(name: 'last_page_url')
  final String? lastPageUrl;
  @override
  @JsonKey(name: 'links')
  final DlsTasksLink? links;
  @override
  @JsonKey(name: 'next_page_url')
  final String? nextPageUrl;
  @override
  @JsonKey(name: 'path')
  final String? path;
  @override
  @JsonKey(name: 'per_page')
  final int? perPage;
  @override
  @JsonKey(name: 'prev_page_url')
  final String? prevPageUrl;
  @override
  @JsonKey(name: 'to')
  final int? to;
  @override
  @JsonKey(name: 'total')
  final int? total;

  @override
  String toString() {
    return 'DlsTagsAll(currentPage: $currentPage, tags: $tags, firstPageUrl: $firstPageUrl, from: $from, lastPage: $lastPage, lastPageUrl: $lastPageUrl, links: $links, nextPageUrl: $nextPageUrl, path: $path, perPage: $perPage, prevPageUrl: $prevPageUrl, to: $to, total: $total)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DlsTagsAll &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.firstPageUrl, firstPageUrl) ||
                other.firstPageUrl == firstPageUrl) &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.lastPage, lastPage) ||
                other.lastPage == lastPage) &&
            (identical(other.lastPageUrl, lastPageUrl) ||
                other.lastPageUrl == lastPageUrl) &&
            (identical(other.links, links) || other.links == links) &&
            (identical(other.nextPageUrl, nextPageUrl) ||
                other.nextPageUrl == nextPageUrl) &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            (identical(other.prevPageUrl, prevPageUrl) ||
                other.prevPageUrl == prevPageUrl) &&
            (identical(other.to, to) || other.to == to) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      currentPage,
      const DeepCollectionEquality().hash(_tags),
      firstPageUrl,
      from,
      lastPage,
      lastPageUrl,
      links,
      nextPageUrl,
      path,
      perPage,
      prevPageUrl,
      to,
      total);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DlsTagsAllCopyWith<_$_DlsTagsAll> get copyWith =>
      __$$_DlsTagsAllCopyWithImpl<_$_DlsTagsAll>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DlsTagsAllToJson(
      this,
    );
  }
}

abstract class _DlsTagsAll extends DlsTagsAll {
  factory _DlsTagsAll(
      {@JsonKey(name: 'current_page') final int? currentPage,
      @JsonKey(name: 'data') required final List<TaskTagModel> tags,
      @JsonKey(name: 'first_page_url') final String? firstPageUrl,
      @JsonKey(name: 'from') final int? from,
      @JsonKey(name: 'last_page') final int? lastPage,
      @JsonKey(name: 'last_page_url') final String? lastPageUrl,
      @JsonKey(name: 'links') final DlsTasksLink? links,
      @JsonKey(name: 'next_page_url') final String? nextPageUrl,
      @JsonKey(name: 'path') final String? path,
      @JsonKey(name: 'per_page') final int? perPage,
      @JsonKey(name: 'prev_page_url') final String? prevPageUrl,
      @JsonKey(name: 'to') final int? to,
      @JsonKey(name: 'total') final int? total}) = _$_DlsTagsAll;
  _DlsTagsAll._() : super._();

  factory _DlsTagsAll.fromJson(Map<String, dynamic> json) =
      _$_DlsTagsAll.fromJson;

  @override
  @JsonKey(name: 'current_page')
  int? get currentPage;
  @override
  @JsonKey(name: 'data')
  List<TaskTagModel> get tags;
  @override
  @JsonKey(name: 'first_page_url')
  String? get firstPageUrl;
  @override
  @JsonKey(name: 'from')
  int? get from;
  @override
  @JsonKey(name: 'last_page')
  int? get lastPage;
  @override
  @JsonKey(name: 'last_page_url')
  String? get lastPageUrl;
  @override
  @JsonKey(name: 'links')
  DlsTasksLink? get links;
  @override
  @JsonKey(name: 'next_page_url')
  String? get nextPageUrl;
  @override
  @JsonKey(name: 'path')
  String? get path;
  @override
  @JsonKey(name: 'per_page')
  int? get perPage;
  @override
  @JsonKey(name: 'prev_page_url')
  String? get prevPageUrl;
  @override
  @JsonKey(name: 'to')
  int? get to;
  @override
  @JsonKey(name: 'total')
  int? get total;
  @override
  @JsonKey(ignore: true)
  _$$_DlsTagsAllCopyWith<_$_DlsTagsAll> get copyWith =>
      throw _privateConstructorUsedError;
}
