// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dls_task.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DlsTask _$DlsTaskFromJson(Map<String, dynamic> json) {
  return _DlsTask.fromJson(json);
}

/// @nodoc
mixin _$DlsTask {
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'type')
  int? get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_at')
  DateTime? get startAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'expired_at')
  DateTime? get expiredAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'status_id', unknownEnumValue: TaskStatusType.unknown)
  TaskStatusType? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'priority')
  TaskPriorityType? get priority => throw _privateConstructorUsedError;
  @JsonKey(name: 'chat_comment_id')
  int? get chatCommentId => throw _privateConstructorUsedError;
  @JsonKey(name: 'template_id')
  int? get templateId => throw _privateConstructorUsedError;
  @JsonKey(name: 'sprint_id')
  int? get sprintId => throw _privateConstructorUsedError;
  @JsonKey(name: 'parent_id')
  int? get parentId => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_attach_sprint')
  bool? get isAttachSprint => throw _privateConstructorUsedError;
  @JsonKey(name: 'story_points')
  int? get storyPoints => throw _privateConstructorUsedError;
  @JsonKey(name: 'duration')
  int? get duration => throw _privateConstructorUsedError;
  @JsonKey(name: 'tags')
  List<int>? get tags => throw _privateConstructorUsedError;
  @JsonKey(name: 'sub_tasks')
  List<int>? get subTasks => throw _privateConstructorUsedError;
  List<int>? get depends => throw _privateConstructorUsedError;
  List<int>? get blocks => throw _privateConstructorUsedError;
  List<int>? get events => throw _privateConstructorUsedError;
  List<int>? get sprints => throw _privateConstructorUsedError;
  @JsonKey(name: 'files_ids')
  List<int>? get filesIds => throw _privateConstructorUsedError;
  @JsonKey(name: 'members')
  DlsMembers? get members => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DlsTaskCopyWith<DlsTask> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DlsTaskCopyWith<$Res> {
  factory $DlsTaskCopyWith(DlsTask value, $Res Function(DlsTask) then) =
      _$DlsTaskCopyWithImpl<$Res, DlsTask>;
  @useResult
  $Res call(
      {@JsonKey(name: 'title')
          String? title,
      @JsonKey(name: 'description')
          String? description,
      @JsonKey(name: 'type')
          int? type,
      @JsonKey(name: 'start_at')
          DateTime? startAt,
      @JsonKey(name: 'expired_at')
          DateTime? expiredAt,
      @JsonKey(name: 'status_id', unknownEnumValue: TaskStatusType.unknown)
          TaskStatusType? status,
      @JsonKey(name: 'priority')
          TaskPriorityType? priority,
      @JsonKey(name: 'chat_comment_id')
          int? chatCommentId,
      @JsonKey(name: 'template_id')
          int? templateId,
      @JsonKey(name: 'sprint_id')
          int? sprintId,
      @JsonKey(name: 'parent_id')
          int? parentId,
      @JsonKey(name: 'is_attach_sprint')
          bool? isAttachSprint,
      @JsonKey(name: 'story_points')
          int? storyPoints,
      @JsonKey(name: 'duration')
          int? duration,
      @JsonKey(name: 'tags')
          List<int>? tags,
      @JsonKey(name: 'sub_tasks')
          List<int>? subTasks,
      List<int>? depends,
      List<int>? blocks,
      List<int>? events,
      List<int>? sprints,
      @JsonKey(name: 'files_ids')
          List<int>? filesIds,
      @JsonKey(name: 'members')
          DlsMembers? members});

  $DlsMembersCopyWith<$Res>? get members;
}

/// @nodoc
class _$DlsTaskCopyWithImpl<$Res, $Val extends DlsTask>
    implements $DlsTaskCopyWith<$Res> {
  _$DlsTaskCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? type = freezed,
    Object? startAt = freezed,
    Object? expiredAt = freezed,
    Object? status = freezed,
    Object? priority = freezed,
    Object? chatCommentId = freezed,
    Object? templateId = freezed,
    Object? sprintId = freezed,
    Object? parentId = freezed,
    Object? isAttachSprint = freezed,
    Object? storyPoints = freezed,
    Object? duration = freezed,
    Object? tags = freezed,
    Object? subTasks = freezed,
    Object? depends = freezed,
    Object? blocks = freezed,
    Object? events = freezed,
    Object? sprints = freezed,
    Object? filesIds = freezed,
    Object? members = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int?,
      startAt: freezed == startAt
          ? _value.startAt
          : startAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      expiredAt: freezed == expiredAt
          ? _value.expiredAt
          : expiredAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TaskStatusType?,
      priority: freezed == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as TaskPriorityType?,
      chatCommentId: freezed == chatCommentId
          ? _value.chatCommentId
          : chatCommentId // ignore: cast_nullable_to_non_nullable
              as int?,
      templateId: freezed == templateId
          ? _value.templateId
          : templateId // ignore: cast_nullable_to_non_nullable
              as int?,
      sprintId: freezed == sprintId
          ? _value.sprintId
          : sprintId // ignore: cast_nullable_to_non_nullable
              as int?,
      parentId: freezed == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as int?,
      isAttachSprint: freezed == isAttachSprint
          ? _value.isAttachSprint
          : isAttachSprint // ignore: cast_nullable_to_non_nullable
              as bool?,
      storyPoints: freezed == storyPoints
          ? _value.storyPoints
          : storyPoints // ignore: cast_nullable_to_non_nullable
              as int?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      subTasks: freezed == subTasks
          ? _value.subTasks
          : subTasks // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      depends: freezed == depends
          ? _value.depends
          : depends // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      blocks: freezed == blocks
          ? _value.blocks
          : blocks // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      events: freezed == events
          ? _value.events
          : events // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      sprints: freezed == sprints
          ? _value.sprints
          : sprints // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      filesIds: freezed == filesIds
          ? _value.filesIds
          : filesIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      members: freezed == members
          ? _value.members
          : members // ignore: cast_nullable_to_non_nullable
              as DlsMembers?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DlsMembersCopyWith<$Res>? get members {
    if (_value.members == null) {
      return null;
    }

    return $DlsMembersCopyWith<$Res>(_value.members!, (value) {
      return _then(_value.copyWith(members: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DlsTaskCopyWith<$Res> implements $DlsTaskCopyWith<$Res> {
  factory _$$_DlsTaskCopyWith(
          _$_DlsTask value, $Res Function(_$_DlsTask) then) =
      __$$_DlsTaskCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'title')
          String? title,
      @JsonKey(name: 'description')
          String? description,
      @JsonKey(name: 'type')
          int? type,
      @JsonKey(name: 'start_at')
          DateTime? startAt,
      @JsonKey(name: 'expired_at')
          DateTime? expiredAt,
      @JsonKey(name: 'status_id', unknownEnumValue: TaskStatusType.unknown)
          TaskStatusType? status,
      @JsonKey(name: 'priority')
          TaskPriorityType? priority,
      @JsonKey(name: 'chat_comment_id')
          int? chatCommentId,
      @JsonKey(name: 'template_id')
          int? templateId,
      @JsonKey(name: 'sprint_id')
          int? sprintId,
      @JsonKey(name: 'parent_id')
          int? parentId,
      @JsonKey(name: 'is_attach_sprint')
          bool? isAttachSprint,
      @JsonKey(name: 'story_points')
          int? storyPoints,
      @JsonKey(name: 'duration')
          int? duration,
      @JsonKey(name: 'tags')
          List<int>? tags,
      @JsonKey(name: 'sub_tasks')
          List<int>? subTasks,
      List<int>? depends,
      List<int>? blocks,
      List<int>? events,
      List<int>? sprints,
      @JsonKey(name: 'files_ids')
          List<int>? filesIds,
      @JsonKey(name: 'members')
          DlsMembers? members});

  @override
  $DlsMembersCopyWith<$Res>? get members;
}

/// @nodoc
class __$$_DlsTaskCopyWithImpl<$Res>
    extends _$DlsTaskCopyWithImpl<$Res, _$_DlsTask>
    implements _$$_DlsTaskCopyWith<$Res> {
  __$$_DlsTaskCopyWithImpl(_$_DlsTask _value, $Res Function(_$_DlsTask) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? type = freezed,
    Object? startAt = freezed,
    Object? expiredAt = freezed,
    Object? status = freezed,
    Object? priority = freezed,
    Object? chatCommentId = freezed,
    Object? templateId = freezed,
    Object? sprintId = freezed,
    Object? parentId = freezed,
    Object? isAttachSprint = freezed,
    Object? storyPoints = freezed,
    Object? duration = freezed,
    Object? tags = freezed,
    Object? subTasks = freezed,
    Object? depends = freezed,
    Object? blocks = freezed,
    Object? events = freezed,
    Object? sprints = freezed,
    Object? filesIds = freezed,
    Object? members = freezed,
  }) {
    return _then(_$_DlsTask(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int?,
      startAt: freezed == startAt
          ? _value.startAt
          : startAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      expiredAt: freezed == expiredAt
          ? _value.expiredAt
          : expiredAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TaskStatusType?,
      priority: freezed == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as TaskPriorityType?,
      chatCommentId: freezed == chatCommentId
          ? _value.chatCommentId
          : chatCommentId // ignore: cast_nullable_to_non_nullable
              as int?,
      templateId: freezed == templateId
          ? _value.templateId
          : templateId // ignore: cast_nullable_to_non_nullable
              as int?,
      sprintId: freezed == sprintId
          ? _value.sprintId
          : sprintId // ignore: cast_nullable_to_non_nullable
              as int?,
      parentId: freezed == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as int?,
      isAttachSprint: freezed == isAttachSprint
          ? _value.isAttachSprint
          : isAttachSprint // ignore: cast_nullable_to_non_nullable
              as bool?,
      storyPoints: freezed == storyPoints
          ? _value.storyPoints
          : storyPoints // ignore: cast_nullable_to_non_nullable
              as int?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
      tags: freezed == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      subTasks: freezed == subTasks
          ? _value._subTasks
          : subTasks // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      depends: freezed == depends
          ? _value._depends
          : depends // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      blocks: freezed == blocks
          ? _value._blocks
          : blocks // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      events: freezed == events
          ? _value._events
          : events // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      sprints: freezed == sprints
          ? _value._sprints
          : sprints // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      filesIds: freezed == filesIds
          ? _value._filesIds
          : filesIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      members: freezed == members
          ? _value.members
          : members // ignore: cast_nullable_to_non_nullable
              as DlsMembers?,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$_DlsTask extends _DlsTask {
  const _$_DlsTask(
      {@JsonKey(name: 'title')
          this.title,
      @JsonKey(name: 'description')
          this.description,
      @JsonKey(name: 'type')
          this.type,
      @JsonKey(name: 'start_at')
          this.startAt,
      @JsonKey(name: 'expired_at')
          this.expiredAt,
      @JsonKey(name: 'status_id', unknownEnumValue: TaskStatusType.unknown)
          this.status,
      @JsonKey(name: 'priority')
          this.priority,
      @JsonKey(name: 'chat_comment_id')
          this.chatCommentId,
      @JsonKey(name: 'template_id')
          this.templateId,
      @JsonKey(name: 'sprint_id')
          this.sprintId,
      @JsonKey(name: 'parent_id')
          this.parentId,
      @JsonKey(name: 'is_attach_sprint')
          this.isAttachSprint,
      @JsonKey(name: 'story_points')
          this.storyPoints,
      @JsonKey(name: 'duration')
          this.duration,
      @JsonKey(name: 'tags')
          final List<int>? tags,
      @JsonKey(name: 'sub_tasks')
          final List<int>? subTasks,
      final List<int>? depends,
      final List<int>? blocks,
      final List<int>? events,
      final List<int>? sprints,
      @JsonKey(name: 'files_ids')
          final List<int>? filesIds,
      @JsonKey(name: 'members')
          this.members})
      : _tags = tags,
        _subTasks = subTasks,
        _depends = depends,
        _blocks = blocks,
        _events = events,
        _sprints = sprints,
        _filesIds = filesIds,
        super._();

  factory _$_DlsTask.fromJson(Map<String, dynamic> json) =>
      _$$_DlsTaskFromJson(json);

  @override
  @JsonKey(name: 'title')
  final String? title;
  @override
  @JsonKey(name: 'description')
  final String? description;
  @override
  @JsonKey(name: 'type')
  final int? type;
  @override
  @JsonKey(name: 'start_at')
  final DateTime? startAt;
  @override
  @JsonKey(name: 'expired_at')
  final DateTime? expiredAt;
  @override
  @JsonKey(name: 'status_id', unknownEnumValue: TaskStatusType.unknown)
  final TaskStatusType? status;
  @override
  @JsonKey(name: 'priority')
  final TaskPriorityType? priority;
  @override
  @JsonKey(name: 'chat_comment_id')
  final int? chatCommentId;
  @override
  @JsonKey(name: 'template_id')
  final int? templateId;
  @override
  @JsonKey(name: 'sprint_id')
  final int? sprintId;
  @override
  @JsonKey(name: 'parent_id')
  final int? parentId;
  @override
  @JsonKey(name: 'is_attach_sprint')
  final bool? isAttachSprint;
  @override
  @JsonKey(name: 'story_points')
  final int? storyPoints;
  @override
  @JsonKey(name: 'duration')
  final int? duration;
  final List<int>? _tags;
  @override
  @JsonKey(name: 'tags')
  List<int>? get tags {
    final value = _tags;
    if (value == null) return null;
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<int>? _subTasks;
  @override
  @JsonKey(name: 'sub_tasks')
  List<int>? get subTasks {
    final value = _subTasks;
    if (value == null) return null;
    if (_subTasks is EqualUnmodifiableListView) return _subTasks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<int>? _depends;
  @override
  List<int>? get depends {
    final value = _depends;
    if (value == null) return null;
    if (_depends is EqualUnmodifiableListView) return _depends;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<int>? _blocks;
  @override
  List<int>? get blocks {
    final value = _blocks;
    if (value == null) return null;
    if (_blocks is EqualUnmodifiableListView) return _blocks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<int>? _events;
  @override
  List<int>? get events {
    final value = _events;
    if (value == null) return null;
    if (_events is EqualUnmodifiableListView) return _events;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<int>? _sprints;
  @override
  List<int>? get sprints {
    final value = _sprints;
    if (value == null) return null;
    if (_sprints is EqualUnmodifiableListView) return _sprints;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<int>? _filesIds;
  @override
  @JsonKey(name: 'files_ids')
  List<int>? get filesIds {
    final value = _filesIds;
    if (value == null) return null;
    if (_filesIds is EqualUnmodifiableListView) return _filesIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'members')
  final DlsMembers? members;

  @override
  String toString() {
    return 'DlsTask(title: $title, description: $description, type: $type, startAt: $startAt, expiredAt: $expiredAt, status: $status, priority: $priority, chatCommentId: $chatCommentId, templateId: $templateId, sprintId: $sprintId, parentId: $parentId, isAttachSprint: $isAttachSprint, storyPoints: $storyPoints, duration: $duration, tags: $tags, subTasks: $subTasks, depends: $depends, blocks: $blocks, events: $events, sprints: $sprints, filesIds: $filesIds, members: $members)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DlsTask &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.startAt, startAt) || other.startAt == startAt) &&
            (identical(other.expiredAt, expiredAt) ||
                other.expiredAt == expiredAt) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.priority, priority) ||
                other.priority == priority) &&
            (identical(other.chatCommentId, chatCommentId) ||
                other.chatCommentId == chatCommentId) &&
            (identical(other.templateId, templateId) ||
                other.templateId == templateId) &&
            (identical(other.sprintId, sprintId) ||
                other.sprintId == sprintId) &&
            (identical(other.parentId, parentId) ||
                other.parentId == parentId) &&
            (identical(other.isAttachSprint, isAttachSprint) ||
                other.isAttachSprint == isAttachSprint) &&
            (identical(other.storyPoints, storyPoints) ||
                other.storyPoints == storyPoints) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            const DeepCollectionEquality().equals(other._subTasks, _subTasks) &&
            const DeepCollectionEquality().equals(other._depends, _depends) &&
            const DeepCollectionEquality().equals(other._blocks, _blocks) &&
            const DeepCollectionEquality().equals(other._events, _events) &&
            const DeepCollectionEquality().equals(other._sprints, _sprints) &&
            const DeepCollectionEquality().equals(other._filesIds, _filesIds) &&
            (identical(other.members, members) || other.members == members));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        title,
        description,
        type,
        startAt,
        expiredAt,
        status,
        priority,
        chatCommentId,
        templateId,
        sprintId,
        parentId,
        isAttachSprint,
        storyPoints,
        duration,
        const DeepCollectionEquality().hash(_tags),
        const DeepCollectionEquality().hash(_subTasks),
        const DeepCollectionEquality().hash(_depends),
        const DeepCollectionEquality().hash(_blocks),
        const DeepCollectionEquality().hash(_events),
        const DeepCollectionEquality().hash(_sprints),
        const DeepCollectionEquality().hash(_filesIds),
        members
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DlsTaskCopyWith<_$_DlsTask> get copyWith =>
      __$$_DlsTaskCopyWithImpl<_$_DlsTask>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DlsTaskToJson(
      this,
    );
  }
}

abstract class _DlsTask extends DlsTask {
  const factory _DlsTask(
      {@JsonKey(name: 'title')
          final String? title,
      @JsonKey(name: 'description')
          final String? description,
      @JsonKey(name: 'type')
          final int? type,
      @JsonKey(name: 'start_at')
          final DateTime? startAt,
      @JsonKey(name: 'expired_at')
          final DateTime? expiredAt,
      @JsonKey(name: 'status_id', unknownEnumValue: TaskStatusType.unknown)
          final TaskStatusType? status,
      @JsonKey(name: 'priority')
          final TaskPriorityType? priority,
      @JsonKey(name: 'chat_comment_id')
          final int? chatCommentId,
      @JsonKey(name: 'template_id')
          final int? templateId,
      @JsonKey(name: 'sprint_id')
          final int? sprintId,
      @JsonKey(name: 'parent_id')
          final int? parentId,
      @JsonKey(name: 'is_attach_sprint')
          final bool? isAttachSprint,
      @JsonKey(name: 'story_points')
          final int? storyPoints,
      @JsonKey(name: 'duration')
          final int? duration,
      @JsonKey(name: 'tags')
          final List<int>? tags,
      @JsonKey(name: 'sub_tasks')
          final List<int>? subTasks,
      final List<int>? depends,
      final List<int>? blocks,
      final List<int>? events,
      final List<int>? sprints,
      @JsonKey(name: 'files_ids')
          final List<int>? filesIds,
      @JsonKey(name: 'members')
          final DlsMembers? members}) = _$_DlsTask;
  const _DlsTask._() : super._();

  factory _DlsTask.fromJson(Map<String, dynamic> json) = _$_DlsTask.fromJson;

  @override
  @JsonKey(name: 'title')
  String? get title;
  @override
  @JsonKey(name: 'description')
  String? get description;
  @override
  @JsonKey(name: 'type')
  int? get type;
  @override
  @JsonKey(name: 'start_at')
  DateTime? get startAt;
  @override
  @JsonKey(name: 'expired_at')
  DateTime? get expiredAt;
  @override
  @JsonKey(name: 'status_id', unknownEnumValue: TaskStatusType.unknown)
  TaskStatusType? get status;
  @override
  @JsonKey(name: 'priority')
  TaskPriorityType? get priority;
  @override
  @JsonKey(name: 'chat_comment_id')
  int? get chatCommentId;
  @override
  @JsonKey(name: 'template_id')
  int? get templateId;
  @override
  @JsonKey(name: 'sprint_id')
  int? get sprintId;
  @override
  @JsonKey(name: 'parent_id')
  int? get parentId;
  @override
  @JsonKey(name: 'is_attach_sprint')
  bool? get isAttachSprint;
  @override
  @JsonKey(name: 'story_points')
  int? get storyPoints;
  @override
  @JsonKey(name: 'duration')
  int? get duration;
  @override
  @JsonKey(name: 'tags')
  List<int>? get tags;
  @override
  @JsonKey(name: 'sub_tasks')
  List<int>? get subTasks;
  @override
  List<int>? get depends;
  @override
  List<int>? get blocks;
  @override
  List<int>? get events;
  @override
  List<int>? get sprints;
  @override
  @JsonKey(name: 'files_ids')
  List<int>? get filesIds;
  @override
  @JsonKey(name: 'members')
  DlsMembers? get members;
  @override
  @JsonKey(ignore: true)
  _$$_DlsTaskCopyWith<_$_DlsTask> get copyWith =>
      throw _privateConstructorUsedError;
}
