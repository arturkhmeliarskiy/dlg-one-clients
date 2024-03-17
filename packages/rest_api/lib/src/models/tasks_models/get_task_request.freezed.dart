// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_task_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetTaskRequest _$GetTaskRequestFromJson(Map<String, dynamic> json) {
  return _GetTaskRequest.fromJson(json);
}

/// @nodoc
mixin _$GetTaskRequest {
  @JsonKey(name: 'filter[title]')
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'parent_id')
  int? get parentId => throw _privateConstructorUsedError;
  @JsonKey(name: 'filter[type]')
  int? get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'filter[has_files]')
  int? get files => throw _privateConstructorUsedError;
  @JsonKey(name: 'filter[expired_between]')
  String? get deadline => throw _privateConstructorUsedError;
  @JsonKey(name: 'filter[story_points_between]')
  DlsStorypointsEnum? get storypoints => throw _privateConstructorUsedError;
  @JsonKey(name: 'filter[role]', toJson: GetTaskRequest.filterToJson)
  List<int>? get roles => throw _privateConstructorUsedError;
  @JsonKey(name: 'filter[status_id]', toJson: GetTaskRequest.filterToJson)
  List<int>? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'filter[priority]', toJson: GetTaskRequest.filterToJson)
  List<int>? get priority => throw _privateConstructorUsedError;
  @JsonKey(
      name: 'filter[members][executors]', toJson: GetTaskRequest.filterToJson)
  List<int>? get performers => throw _privateConstructorUsedError;
  @JsonKey(toJson: GetTaskRequest.includeToJson)
  List<DlsTaskIncludeType>? get include => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetTaskRequestCopyWith<GetTaskRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetTaskRequestCopyWith<$Res> {
  factory $GetTaskRequestCopyWith(
          GetTaskRequest value, $Res Function(GetTaskRequest) then) =
      _$GetTaskRequestCopyWithImpl<$Res, GetTaskRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'filter[title]')
          String? title,
      @JsonKey(name: 'parent_id')
          int? parentId,
      @JsonKey(name: 'filter[type]')
          int? type,
      @JsonKey(name: 'filter[has_files]')
          int? files,
      @JsonKey(name: 'filter[expired_between]')
          String? deadline,
      @JsonKey(name: 'filter[story_points_between]')
          DlsStorypointsEnum? storypoints,
      @JsonKey(name: 'filter[role]', toJson: GetTaskRequest.filterToJson)
          List<int>? roles,
      @JsonKey(name: 'filter[status_id]', toJson: GetTaskRequest.filterToJson)
          List<int>? status,
      @JsonKey(name: 'filter[priority]', toJson: GetTaskRequest.filterToJson)
          List<int>? priority,
      @JsonKey(name: 'filter[members][executors]', toJson: GetTaskRequest.filterToJson)
          List<int>? performers,
      @JsonKey(toJson: GetTaskRequest.includeToJson)
          List<DlsTaskIncludeType>? include});
}

/// @nodoc
class _$GetTaskRequestCopyWithImpl<$Res, $Val extends GetTaskRequest>
    implements $GetTaskRequestCopyWith<$Res> {
  _$GetTaskRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? parentId = freezed,
    Object? type = freezed,
    Object? files = freezed,
    Object? deadline = freezed,
    Object? storypoints = freezed,
    Object? roles = freezed,
    Object? status = freezed,
    Object? priority = freezed,
    Object? performers = freezed,
    Object? include = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      parentId: freezed == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int?,
      files: freezed == files
          ? _value.files
          : files // ignore: cast_nullable_to_non_nullable
              as int?,
      deadline: freezed == deadline
          ? _value.deadline
          : deadline // ignore: cast_nullable_to_non_nullable
              as String?,
      storypoints: freezed == storypoints
          ? _value.storypoints
          : storypoints // ignore: cast_nullable_to_non_nullable
              as DlsStorypointsEnum?,
      roles: freezed == roles
          ? _value.roles
          : roles // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      priority: freezed == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      performers: freezed == performers
          ? _value.performers
          : performers // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      include: freezed == include
          ? _value.include
          : include // ignore: cast_nullable_to_non_nullable
              as List<DlsTaskIncludeType>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GetTaskRequestCopyWith<$Res>
    implements $GetTaskRequestCopyWith<$Res> {
  factory _$$_GetTaskRequestCopyWith(
          _$_GetTaskRequest value, $Res Function(_$_GetTaskRequest) then) =
      __$$_GetTaskRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'filter[title]')
          String? title,
      @JsonKey(name: 'parent_id')
          int? parentId,
      @JsonKey(name: 'filter[type]')
          int? type,
      @JsonKey(name: 'filter[has_files]')
          int? files,
      @JsonKey(name: 'filter[expired_between]')
          String? deadline,
      @JsonKey(name: 'filter[story_points_between]')
          DlsStorypointsEnum? storypoints,
      @JsonKey(name: 'filter[role]', toJson: GetTaskRequest.filterToJson)
          List<int>? roles,
      @JsonKey(name: 'filter[status_id]', toJson: GetTaskRequest.filterToJson)
          List<int>? status,
      @JsonKey(name: 'filter[priority]', toJson: GetTaskRequest.filterToJson)
          List<int>? priority,
      @JsonKey(name: 'filter[members][executors]', toJson: GetTaskRequest.filterToJson)
          List<int>? performers,
      @JsonKey(toJson: GetTaskRequest.includeToJson)
          List<DlsTaskIncludeType>? include});
}

/// @nodoc
class __$$_GetTaskRequestCopyWithImpl<$Res>
    extends _$GetTaskRequestCopyWithImpl<$Res, _$_GetTaskRequest>
    implements _$$_GetTaskRequestCopyWith<$Res> {
  __$$_GetTaskRequestCopyWithImpl(
      _$_GetTaskRequest _value, $Res Function(_$_GetTaskRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? parentId = freezed,
    Object? type = freezed,
    Object? files = freezed,
    Object? deadline = freezed,
    Object? storypoints = freezed,
    Object? roles = freezed,
    Object? status = freezed,
    Object? priority = freezed,
    Object? performers = freezed,
    Object? include = freezed,
  }) {
    return _then(_$_GetTaskRequest(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      parentId: freezed == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int?,
      files: freezed == files
          ? _value.files
          : files // ignore: cast_nullable_to_non_nullable
              as int?,
      deadline: freezed == deadline
          ? _value.deadline
          : deadline // ignore: cast_nullable_to_non_nullable
              as String?,
      storypoints: freezed == storypoints
          ? _value.storypoints
          : storypoints // ignore: cast_nullable_to_non_nullable
              as DlsStorypointsEnum?,
      roles: freezed == roles
          ? _value._roles
          : roles // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      status: freezed == status
          ? _value._status
          : status // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      priority: freezed == priority
          ? _value._priority
          : priority // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      performers: freezed == performers
          ? _value._performers
          : performers // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      include: freezed == include
          ? _value._include
          : include // ignore: cast_nullable_to_non_nullable
              as List<DlsTaskIncludeType>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$_GetTaskRequest implements _GetTaskRequest {
  const _$_GetTaskRequest(
      {@JsonKey(name: 'filter[title]')
          this.title,
      @JsonKey(name: 'parent_id')
          this.parentId,
      @JsonKey(name: 'filter[type]')
          this.type,
      @JsonKey(name: 'filter[has_files]')
          this.files,
      @JsonKey(name: 'filter[expired_between]')
          this.deadline,
      @JsonKey(name: 'filter[story_points_between]')
          this.storypoints,
      @JsonKey(name: 'filter[role]', toJson: GetTaskRequest.filterToJson)
          final List<int>? roles,
      @JsonKey(name: 'filter[status_id]', toJson: GetTaskRequest.filterToJson)
          final List<int>? status,
      @JsonKey(name: 'filter[priority]', toJson: GetTaskRequest.filterToJson)
          final List<int>? priority,
      @JsonKey(name: 'filter[members][executors]', toJson: GetTaskRequest.filterToJson)
          final List<int>? performers,
      @JsonKey(toJson: GetTaskRequest.includeToJson)
          final List<DlsTaskIncludeType>? include})
      : _roles = roles,
        _status = status,
        _priority = priority,
        _performers = performers,
        _include = include;

  factory _$_GetTaskRequest.fromJson(Map<String, dynamic> json) =>
      _$$_GetTaskRequestFromJson(json);

  @override
  @JsonKey(name: 'filter[title]')
  final String? title;
  @override
  @JsonKey(name: 'parent_id')
  final int? parentId;
  @override
  @JsonKey(name: 'filter[type]')
  final int? type;
  @override
  @JsonKey(name: 'filter[has_files]')
  final int? files;
  @override
  @JsonKey(name: 'filter[expired_between]')
  final String? deadline;
  @override
  @JsonKey(name: 'filter[story_points_between]')
  final DlsStorypointsEnum? storypoints;
  final List<int>? _roles;
  @override
  @JsonKey(name: 'filter[role]', toJson: GetTaskRequest.filterToJson)
  List<int>? get roles {
    final value = _roles;
    if (value == null) return null;
    if (_roles is EqualUnmodifiableListView) return _roles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<int>? _status;
  @override
  @JsonKey(name: 'filter[status_id]', toJson: GetTaskRequest.filterToJson)
  List<int>? get status {
    final value = _status;
    if (value == null) return null;
    if (_status is EqualUnmodifiableListView) return _status;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<int>? _priority;
  @override
  @JsonKey(name: 'filter[priority]', toJson: GetTaskRequest.filterToJson)
  List<int>? get priority {
    final value = _priority;
    if (value == null) return null;
    if (_priority is EqualUnmodifiableListView) return _priority;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<int>? _performers;
  @override
  @JsonKey(
      name: 'filter[members][executors]', toJson: GetTaskRequest.filterToJson)
  List<int>? get performers {
    final value = _performers;
    if (value == null) return null;
    if (_performers is EqualUnmodifiableListView) return _performers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<DlsTaskIncludeType>? _include;
  @override
  @JsonKey(toJson: GetTaskRequest.includeToJson)
  List<DlsTaskIncludeType>? get include {
    final value = _include;
    if (value == null) return null;
    if (_include is EqualUnmodifiableListView) return _include;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'GetTaskRequest(title: $title, parentId: $parentId, type: $type, files: $files, deadline: $deadline, storypoints: $storypoints, roles: $roles, status: $status, priority: $priority, performers: $performers, include: $include)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetTaskRequest &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.parentId, parentId) ||
                other.parentId == parentId) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.files, files) || other.files == files) &&
            (identical(other.deadline, deadline) ||
                other.deadline == deadline) &&
            (identical(other.storypoints, storypoints) ||
                other.storypoints == storypoints) &&
            const DeepCollectionEquality().equals(other._roles, _roles) &&
            const DeepCollectionEquality().equals(other._status, _status) &&
            const DeepCollectionEquality().equals(other._priority, _priority) &&
            const DeepCollectionEquality()
                .equals(other._performers, _performers) &&
            const DeepCollectionEquality().equals(other._include, _include));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      title,
      parentId,
      type,
      files,
      deadline,
      storypoints,
      const DeepCollectionEquality().hash(_roles),
      const DeepCollectionEquality().hash(_status),
      const DeepCollectionEquality().hash(_priority),
      const DeepCollectionEquality().hash(_performers),
      const DeepCollectionEquality().hash(_include));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetTaskRequestCopyWith<_$_GetTaskRequest> get copyWith =>
      __$$_GetTaskRequestCopyWithImpl<_$_GetTaskRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetTaskRequestToJson(
      this,
    );
  }
}

abstract class _GetTaskRequest implements GetTaskRequest {
  const factory _GetTaskRequest(
      {@JsonKey(name: 'filter[title]')
          final String? title,
      @JsonKey(name: 'parent_id')
          final int? parentId,
      @JsonKey(name: 'filter[type]')
          final int? type,
      @JsonKey(name: 'filter[has_files]')
          final int? files,
      @JsonKey(name: 'filter[expired_between]')
          final String? deadline,
      @JsonKey(name: 'filter[story_points_between]')
          final DlsStorypointsEnum? storypoints,
      @JsonKey(name: 'filter[role]', toJson: GetTaskRequest.filterToJson)
          final List<int>? roles,
      @JsonKey(name: 'filter[status_id]', toJson: GetTaskRequest.filterToJson)
          final List<int>? status,
      @JsonKey(name: 'filter[priority]', toJson: GetTaskRequest.filterToJson)
          final List<int>? priority,
      @JsonKey(name: 'filter[members][executors]', toJson: GetTaskRequest.filterToJson)
          final List<int>? performers,
      @JsonKey(toJson: GetTaskRequest.includeToJson)
          final List<DlsTaskIncludeType>? include}) = _$_GetTaskRequest;

  factory _GetTaskRequest.fromJson(Map<String, dynamic> json) =
      _$_GetTaskRequest.fromJson;

  @override
  @JsonKey(name: 'filter[title]')
  String? get title;
  @override
  @JsonKey(name: 'parent_id')
  int? get parentId;
  @override
  @JsonKey(name: 'filter[type]')
  int? get type;
  @override
  @JsonKey(name: 'filter[has_files]')
  int? get files;
  @override
  @JsonKey(name: 'filter[expired_between]')
  String? get deadline;
  @override
  @JsonKey(name: 'filter[story_points_between]')
  DlsStorypointsEnum? get storypoints;
  @override
  @JsonKey(name: 'filter[role]', toJson: GetTaskRequest.filterToJson)
  List<int>? get roles;
  @override
  @JsonKey(name: 'filter[status_id]', toJson: GetTaskRequest.filterToJson)
  List<int>? get status;
  @override
  @JsonKey(name: 'filter[priority]', toJson: GetTaskRequest.filterToJson)
  List<int>? get priority;
  @override
  @JsonKey(
      name: 'filter[members][executors]', toJson: GetTaskRequest.filterToJson)
  List<int>? get performers;
  @override
  @JsonKey(toJson: GetTaskRequest.includeToJson)
  List<DlsTaskIncludeType>? get include;
  @override
  @JsonKey(ignore: true)
  _$$_GetTaskRequestCopyWith<_$_GetTaskRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
