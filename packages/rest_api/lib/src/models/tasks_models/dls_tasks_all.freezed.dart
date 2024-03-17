// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dls_tasks_all.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DlsTasksAll _$DlsTasksAllFromJson(Map<String, dynamic> json) {
  return _DlsTasksAll.fromJson(json);
}

/// @nodoc
mixin _$DlsTasksAll {
  @JsonKey(name: 'current_page')
  int? get currentPage => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  List<DlsTasks> get tasks => throw _privateConstructorUsedError;
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
  $DlsTasksAllCopyWith<DlsTasksAll> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DlsTasksAllCopyWith<$Res> {
  factory $DlsTasksAllCopyWith(
          DlsTasksAll value, $Res Function(DlsTasksAll) then) =
      _$DlsTasksAllCopyWithImpl<$Res, DlsTasksAll>;
  @useResult
  $Res call(
      {@JsonKey(name: 'current_page') int? currentPage,
      @JsonKey(name: 'data') List<DlsTasks> tasks,
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
class _$DlsTasksAllCopyWithImpl<$Res, $Val extends DlsTasksAll>
    implements $DlsTasksAllCopyWith<$Res> {
  _$DlsTasksAllCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = freezed,
    Object? tasks = null,
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
      tasks: null == tasks
          ? _value.tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<DlsTasks>,
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
abstract class _$$_DlsTasksAllCopyWith<$Res>
    implements $DlsTasksAllCopyWith<$Res> {
  factory _$$_DlsTasksAllCopyWith(
          _$_DlsTasksAll value, $Res Function(_$_DlsTasksAll) then) =
      __$$_DlsTasksAllCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'current_page') int? currentPage,
      @JsonKey(name: 'data') List<DlsTasks> tasks,
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
class __$$_DlsTasksAllCopyWithImpl<$Res>
    extends _$DlsTasksAllCopyWithImpl<$Res, _$_DlsTasksAll>
    implements _$$_DlsTasksAllCopyWith<$Res> {
  __$$_DlsTasksAllCopyWithImpl(
      _$_DlsTasksAll _value, $Res Function(_$_DlsTasksAll) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = freezed,
    Object? tasks = null,
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
    return _then(_$_DlsTasksAll(
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      tasks: null == tasks
          ? _value._tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<DlsTasks>,
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
class _$_DlsTasksAll extends _DlsTasksAll {
  _$_DlsTasksAll(
      {@JsonKey(name: 'current_page') this.currentPage,
      @JsonKey(name: 'data') required final List<DlsTasks> tasks,
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
      : _tasks = tasks,
        super._();

  factory _$_DlsTasksAll.fromJson(Map<String, dynamic> json) =>
      _$$_DlsTasksAllFromJson(json);

  @override
  @JsonKey(name: 'current_page')
  final int? currentPage;
  final List<DlsTasks> _tasks;
  @override
  @JsonKey(name: 'data')
  List<DlsTasks> get tasks {
    if (_tasks is EqualUnmodifiableListView) return _tasks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tasks);
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
    return 'DlsTasksAll(currentPage: $currentPage, tasks: $tasks, firstPageUrl: $firstPageUrl, from: $from, lastPage: $lastPage, lastPageUrl: $lastPageUrl, links: $links, nextPageUrl: $nextPageUrl, path: $path, perPage: $perPage, prevPageUrl: $prevPageUrl, to: $to, total: $total)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DlsTasksAll &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            const DeepCollectionEquality().equals(other._tasks, _tasks) &&
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
      const DeepCollectionEquality().hash(_tasks),
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
  _$$_DlsTasksAllCopyWith<_$_DlsTasksAll> get copyWith =>
      __$$_DlsTasksAllCopyWithImpl<_$_DlsTasksAll>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DlsTasksAllToJson(
      this,
    );
  }
}

abstract class _DlsTasksAll extends DlsTasksAll {
  factory _DlsTasksAll(
      {@JsonKey(name: 'current_page') final int? currentPage,
      @JsonKey(name: 'data') required final List<DlsTasks> tasks,
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
      @JsonKey(name: 'total') final int? total}) = _$_DlsTasksAll;
  _DlsTasksAll._() : super._();

  factory _DlsTasksAll.fromJson(Map<String, dynamic> json) =
      _$_DlsTasksAll.fromJson;

  @override
  @JsonKey(name: 'current_page')
  int? get currentPage;
  @override
  @JsonKey(name: 'data')
  List<DlsTasks> get tasks;
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
  _$$_DlsTasksAllCopyWith<_$_DlsTasksAll> get copyWith =>
      throw _privateConstructorUsedError;
}
