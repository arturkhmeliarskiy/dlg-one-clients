// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dls_tasks.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DlsTasks _$DlsTasksFromJson(Map<String, dynamic> json) {
  return _DlsTasks.fromJson(json);
}

/// @nodoc
mixin _$DlsTasks {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @DateTimeConverter()
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @DateTimeConverter()
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @DateTimeConverter()
  @JsonKey(name: 'expired_at')
  DateTime? get expiredAt => throw _privateConstructorUsedError;
  @DateTimeConverter()
  @JsonKey(name: 'deleted_at')
  DateTime? get deletedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'type')
  int? get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'status_id', unknownEnumValue: TaskStatusType.unknown)
  TaskStatusType? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'priority')
  TaskPriorityType? get priority => throw _privateConstructorUsedError;
  @JsonKey(name: 'count_sub_tasks')
  int? get countSubTasks => throw _privateConstructorUsedError;
  @JsonKey(name: 'count_files')
  int? get countFiles => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'chat_comment_id')
  int? get chatCommentId => throw _privateConstructorUsedError;
  @JsonKey(name: 'kanban_order_by')
  int? get kanbanOrderBy => throw _privateConstructorUsedError;
  @JsonKey(name: 'template_id')
  int? get templateId => throw _privateConstructorUsedError;
  @JsonKey(name: 'story_points')
  int? get storyPoints => throw _privateConstructorUsedError;
  @JsonKey(name: 'slug')
  String? get slug => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_at')
  DateTime? get startAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'duration')
  int? get duration => throw _privateConstructorUsedError;
  @JsonKey(name: 'files')
  List<DlsTasksFileElement>? get files => throw _privateConstructorUsedError;
  @JsonKey(name: 'sprints')
  List<DlsSprintModel>? get sprints => throw _privateConstructorUsedError;
  @JsonKey(name: 'checklist')
  List<DlsTasksChecklist>? get checklist => throw _privateConstructorUsedError;
  @JsonKey(name: 'comments')
  List<DlsTasksComment>? get comments => throw _privateConstructorUsedError;
  @JsonKey(name: 'events')
  List<TaskEventModel>? get events => throw _privateConstructorUsedError;
  @JsonKey(name: 'tags')
  List<TaskTagModel>? get tags => throw _privateConstructorUsedError;
  @JsonKey(name: 'parent_task')
  DlsTasks? get parentTask => throw _privateConstructorUsedError;
  @JsonKey(name: 'sub_tasks')
  List<DlsTasks>? get subTasks => throw _privateConstructorUsedError;
  @JsonKey(name: 'user')
  DlsUserShort? get user => throw _privateConstructorUsedError;
  @JsonKey(name: 'performers')
  List<DlsTasksPerformer>? get performers => throw _privateConstructorUsedError;
  @JsonKey(name: 'roles')
  List<DlsTasksRole>? get roles => throw _privateConstructorUsedError;
  @JsonKey(name: 'permissions')
  DlsTasksPermissions? get permissions => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_expired')
  bool? get isExpired => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_subtask')
  bool? get isSubtask => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_check')
  bool? get isCheck => throw _privateConstructorUsedError;
  @JsonKey(name: 'members')
  DlsTasksMembers? get members => throw _privateConstructorUsedError;
  @JsonKey(name: 'priority_name')
  String? get priorityName => throw _privateConstructorUsedError;
  @JsonKey(name: 'status_name')
  String? get statusName => throw _privateConstructorUsedError;
  @JsonKey(name: 'nesting')
  int? get nesting => throw _privateConstructorUsedError;
  @JsonKey(name: 'unique_key')
  String? get uniqueKey => throw _privateConstructorUsedError;
  List<DlsTasks>? get depends => throw _privateConstructorUsedError;
  List<DlsTasks>? get blocks => throw _privateConstructorUsedError;
  @JsonKey(name: 'matrix_room')
  String? get matrixRoom => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DlsTasksCopyWith<DlsTasks> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DlsTasksCopyWith<$Res> {
  factory $DlsTasksCopyWith(DlsTasks value, $Res Function(DlsTasks) then) =
      _$DlsTasksCopyWithImpl<$Res, DlsTasks>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id')
          int id,
      @DateTimeConverter()
      @JsonKey(name: 'created_at')
          DateTime? createdAt,
      @DateTimeConverter()
      @JsonKey(name: 'updated_at')
          DateTime? updatedAt,
      @DateTimeConverter()
      @JsonKey(name: 'expired_at')
          DateTime? expiredAt,
      @DateTimeConverter()
      @JsonKey(name: 'deleted_at')
          DateTime? deletedAt,
      @JsonKey(name: 'type')
          int? type,
      @JsonKey(name: 'status_id', unknownEnumValue: TaskStatusType.unknown)
          TaskStatusType? status,
      @JsonKey(name: 'priority')
          TaskPriorityType? priority,
      @JsonKey(name: 'count_sub_tasks')
          int? countSubTasks,
      @JsonKey(name: 'count_files')
          int? countFiles,
      @JsonKey(name: 'title')
          String title,
      @JsonKey(name: 'description')
          String? description,
      @JsonKey(name: 'chat_comment_id')
          int? chatCommentId,
      @JsonKey(name: 'kanban_order_by')
          int? kanbanOrderBy,
      @JsonKey(name: 'template_id')
          int? templateId,
      @JsonKey(name: 'story_points')
          int? storyPoints,
      @JsonKey(name: 'slug')
          String? slug,
      @JsonKey(name: 'start_at')
          DateTime? startAt,
      @JsonKey(name: 'duration')
          int? duration,
      @JsonKey(name: 'files')
          List<DlsTasksFileElement>? files,
      @JsonKey(name: 'sprints')
          List<DlsSprintModel>? sprints,
      @JsonKey(name: 'checklist')
          List<DlsTasksChecklist>? checklist,
      @JsonKey(name: 'comments')
          List<DlsTasksComment>? comments,
      @JsonKey(name: 'events')
          List<TaskEventModel>? events,
      @JsonKey(name: 'tags')
          List<TaskTagModel>? tags,
      @JsonKey(name: 'parent_task')
          DlsTasks? parentTask,
      @JsonKey(name: 'sub_tasks')
          List<DlsTasks>? subTasks,
      @JsonKey(name: 'user')
          DlsUserShort? user,
      @JsonKey(name: 'performers')
          List<DlsTasksPerformer>? performers,
      @JsonKey(name: 'roles')
          List<DlsTasksRole>? roles,
      @JsonKey(name: 'permissions')
          DlsTasksPermissions? permissions,
      @JsonKey(name: 'is_expired')
          bool? isExpired,
      @JsonKey(name: 'is_subtask')
          bool? isSubtask,
      @JsonKey(name: 'is_check')
          bool? isCheck,
      @JsonKey(name: 'members')
          DlsTasksMembers? members,
      @JsonKey(name: 'priority_name')
          String? priorityName,
      @JsonKey(name: 'status_name')
          String? statusName,
      @JsonKey(name: 'nesting')
          int? nesting,
      @JsonKey(name: 'unique_key')
          String? uniqueKey,
      List<DlsTasks>? depends,
      List<DlsTasks>? blocks,
      @JsonKey(name: 'matrix_room')
          String? matrixRoom});

  $DlsTasksCopyWith<$Res>? get parentTask;
  $DlsUserShortCopyWith<$Res>? get user;
  $DlsTasksPermissionsCopyWith<$Res>? get permissions;
  $DlsTasksMembersCopyWith<$Res>? get members;
}

/// @nodoc
class _$DlsTasksCopyWithImpl<$Res, $Val extends DlsTasks>
    implements $DlsTasksCopyWith<$Res> {
  _$DlsTasksCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? expiredAt = freezed,
    Object? deletedAt = freezed,
    Object? type = freezed,
    Object? status = freezed,
    Object? priority = freezed,
    Object? countSubTasks = freezed,
    Object? countFiles = freezed,
    Object? title = null,
    Object? description = freezed,
    Object? chatCommentId = freezed,
    Object? kanbanOrderBy = freezed,
    Object? templateId = freezed,
    Object? storyPoints = freezed,
    Object? slug = freezed,
    Object? startAt = freezed,
    Object? duration = freezed,
    Object? files = freezed,
    Object? sprints = freezed,
    Object? checklist = freezed,
    Object? comments = freezed,
    Object? events = freezed,
    Object? tags = freezed,
    Object? parentTask = freezed,
    Object? subTasks = freezed,
    Object? user = freezed,
    Object? performers = freezed,
    Object? roles = freezed,
    Object? permissions = freezed,
    Object? isExpired = freezed,
    Object? isSubtask = freezed,
    Object? isCheck = freezed,
    Object? members = freezed,
    Object? priorityName = freezed,
    Object? statusName = freezed,
    Object? nesting = freezed,
    Object? uniqueKey = freezed,
    Object? depends = freezed,
    Object? blocks = freezed,
    Object? matrixRoom = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      expiredAt: freezed == expiredAt
          ? _value.expiredAt
          : expiredAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TaskStatusType?,
      priority: freezed == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as TaskPriorityType?,
      countSubTasks: freezed == countSubTasks
          ? _value.countSubTasks
          : countSubTasks // ignore: cast_nullable_to_non_nullable
              as int?,
      countFiles: freezed == countFiles
          ? _value.countFiles
          : countFiles // ignore: cast_nullable_to_non_nullable
              as int?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      chatCommentId: freezed == chatCommentId
          ? _value.chatCommentId
          : chatCommentId // ignore: cast_nullable_to_non_nullable
              as int?,
      kanbanOrderBy: freezed == kanbanOrderBy
          ? _value.kanbanOrderBy
          : kanbanOrderBy // ignore: cast_nullable_to_non_nullable
              as int?,
      templateId: freezed == templateId
          ? _value.templateId
          : templateId // ignore: cast_nullable_to_non_nullable
              as int?,
      storyPoints: freezed == storyPoints
          ? _value.storyPoints
          : storyPoints // ignore: cast_nullable_to_non_nullable
              as int?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      startAt: freezed == startAt
          ? _value.startAt
          : startAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
      files: freezed == files
          ? _value.files
          : files // ignore: cast_nullable_to_non_nullable
              as List<DlsTasksFileElement>?,
      sprints: freezed == sprints
          ? _value.sprints
          : sprints // ignore: cast_nullable_to_non_nullable
              as List<DlsSprintModel>?,
      checklist: freezed == checklist
          ? _value.checklist
          : checklist // ignore: cast_nullable_to_non_nullable
              as List<DlsTasksChecklist>?,
      comments: freezed == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<DlsTasksComment>?,
      events: freezed == events
          ? _value.events
          : events // ignore: cast_nullable_to_non_nullable
              as List<TaskEventModel>?,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<TaskTagModel>?,
      parentTask: freezed == parentTask
          ? _value.parentTask
          : parentTask // ignore: cast_nullable_to_non_nullable
              as DlsTasks?,
      subTasks: freezed == subTasks
          ? _value.subTasks
          : subTasks // ignore: cast_nullable_to_non_nullable
              as List<DlsTasks>?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as DlsUserShort?,
      performers: freezed == performers
          ? _value.performers
          : performers // ignore: cast_nullable_to_non_nullable
              as List<DlsTasksPerformer>?,
      roles: freezed == roles
          ? _value.roles
          : roles // ignore: cast_nullable_to_non_nullable
              as List<DlsTasksRole>?,
      permissions: freezed == permissions
          ? _value.permissions
          : permissions // ignore: cast_nullable_to_non_nullable
              as DlsTasksPermissions?,
      isExpired: freezed == isExpired
          ? _value.isExpired
          : isExpired // ignore: cast_nullable_to_non_nullable
              as bool?,
      isSubtask: freezed == isSubtask
          ? _value.isSubtask
          : isSubtask // ignore: cast_nullable_to_non_nullable
              as bool?,
      isCheck: freezed == isCheck
          ? _value.isCheck
          : isCheck // ignore: cast_nullable_to_non_nullable
              as bool?,
      members: freezed == members
          ? _value.members
          : members // ignore: cast_nullable_to_non_nullable
              as DlsTasksMembers?,
      priorityName: freezed == priorityName
          ? _value.priorityName
          : priorityName // ignore: cast_nullable_to_non_nullable
              as String?,
      statusName: freezed == statusName
          ? _value.statusName
          : statusName // ignore: cast_nullable_to_non_nullable
              as String?,
      nesting: freezed == nesting
          ? _value.nesting
          : nesting // ignore: cast_nullable_to_non_nullable
              as int?,
      uniqueKey: freezed == uniqueKey
          ? _value.uniqueKey
          : uniqueKey // ignore: cast_nullable_to_non_nullable
              as String?,
      depends: freezed == depends
          ? _value.depends
          : depends // ignore: cast_nullable_to_non_nullable
              as List<DlsTasks>?,
      blocks: freezed == blocks
          ? _value.blocks
          : blocks // ignore: cast_nullable_to_non_nullable
              as List<DlsTasks>?,
      matrixRoom: freezed == matrixRoom
          ? _value.matrixRoom
          : matrixRoom // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DlsTasksCopyWith<$Res>? get parentTask {
    if (_value.parentTask == null) {
      return null;
    }

    return $DlsTasksCopyWith<$Res>(_value.parentTask!, (value) {
      return _then(_value.copyWith(parentTask: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DlsUserShortCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $DlsUserShortCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DlsTasksPermissionsCopyWith<$Res>? get permissions {
    if (_value.permissions == null) {
      return null;
    }

    return $DlsTasksPermissionsCopyWith<$Res>(_value.permissions!, (value) {
      return _then(_value.copyWith(permissions: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DlsTasksMembersCopyWith<$Res>? get members {
    if (_value.members == null) {
      return null;
    }

    return $DlsTasksMembersCopyWith<$Res>(_value.members!, (value) {
      return _then(_value.copyWith(members: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DlsTasksCopyWith<$Res> implements $DlsTasksCopyWith<$Res> {
  factory _$$_DlsTasksCopyWith(
          _$_DlsTasks value, $Res Function(_$_DlsTasks) then) =
      __$$_DlsTasksCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id')
          int id,
      @DateTimeConverter()
      @JsonKey(name: 'created_at')
          DateTime? createdAt,
      @DateTimeConverter()
      @JsonKey(name: 'updated_at')
          DateTime? updatedAt,
      @DateTimeConverter()
      @JsonKey(name: 'expired_at')
          DateTime? expiredAt,
      @DateTimeConverter()
      @JsonKey(name: 'deleted_at')
          DateTime? deletedAt,
      @JsonKey(name: 'type')
          int? type,
      @JsonKey(name: 'status_id', unknownEnumValue: TaskStatusType.unknown)
          TaskStatusType? status,
      @JsonKey(name: 'priority')
          TaskPriorityType? priority,
      @JsonKey(name: 'count_sub_tasks')
          int? countSubTasks,
      @JsonKey(name: 'count_files')
          int? countFiles,
      @JsonKey(name: 'title')
          String title,
      @JsonKey(name: 'description')
          String? description,
      @JsonKey(name: 'chat_comment_id')
          int? chatCommentId,
      @JsonKey(name: 'kanban_order_by')
          int? kanbanOrderBy,
      @JsonKey(name: 'template_id')
          int? templateId,
      @JsonKey(name: 'story_points')
          int? storyPoints,
      @JsonKey(name: 'slug')
          String? slug,
      @JsonKey(name: 'start_at')
          DateTime? startAt,
      @JsonKey(name: 'duration')
          int? duration,
      @JsonKey(name: 'files')
          List<DlsTasksFileElement>? files,
      @JsonKey(name: 'sprints')
          List<DlsSprintModel>? sprints,
      @JsonKey(name: 'checklist')
          List<DlsTasksChecklist>? checklist,
      @JsonKey(name: 'comments')
          List<DlsTasksComment>? comments,
      @JsonKey(name: 'events')
          List<TaskEventModel>? events,
      @JsonKey(name: 'tags')
          List<TaskTagModel>? tags,
      @JsonKey(name: 'parent_task')
          DlsTasks? parentTask,
      @JsonKey(name: 'sub_tasks')
          List<DlsTasks>? subTasks,
      @JsonKey(name: 'user')
          DlsUserShort? user,
      @JsonKey(name: 'performers')
          List<DlsTasksPerformer>? performers,
      @JsonKey(name: 'roles')
          List<DlsTasksRole>? roles,
      @JsonKey(name: 'permissions')
          DlsTasksPermissions? permissions,
      @JsonKey(name: 'is_expired')
          bool? isExpired,
      @JsonKey(name: 'is_subtask')
          bool? isSubtask,
      @JsonKey(name: 'is_check')
          bool? isCheck,
      @JsonKey(name: 'members')
          DlsTasksMembers? members,
      @JsonKey(name: 'priority_name')
          String? priorityName,
      @JsonKey(name: 'status_name')
          String? statusName,
      @JsonKey(name: 'nesting')
          int? nesting,
      @JsonKey(name: 'unique_key')
          String? uniqueKey,
      List<DlsTasks>? depends,
      List<DlsTasks>? blocks,
      @JsonKey(name: 'matrix_room')
          String? matrixRoom});

  @override
  $DlsTasksCopyWith<$Res>? get parentTask;
  @override
  $DlsUserShortCopyWith<$Res>? get user;
  @override
  $DlsTasksPermissionsCopyWith<$Res>? get permissions;
  @override
  $DlsTasksMembersCopyWith<$Res>? get members;
}

/// @nodoc
class __$$_DlsTasksCopyWithImpl<$Res>
    extends _$DlsTasksCopyWithImpl<$Res, _$_DlsTasks>
    implements _$$_DlsTasksCopyWith<$Res> {
  __$$_DlsTasksCopyWithImpl(
      _$_DlsTasks _value, $Res Function(_$_DlsTasks) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? expiredAt = freezed,
    Object? deletedAt = freezed,
    Object? type = freezed,
    Object? status = freezed,
    Object? priority = freezed,
    Object? countSubTasks = freezed,
    Object? countFiles = freezed,
    Object? title = null,
    Object? description = freezed,
    Object? chatCommentId = freezed,
    Object? kanbanOrderBy = freezed,
    Object? templateId = freezed,
    Object? storyPoints = freezed,
    Object? slug = freezed,
    Object? startAt = freezed,
    Object? duration = freezed,
    Object? files = freezed,
    Object? sprints = freezed,
    Object? checklist = freezed,
    Object? comments = freezed,
    Object? events = freezed,
    Object? tags = freezed,
    Object? parentTask = freezed,
    Object? subTasks = freezed,
    Object? user = freezed,
    Object? performers = freezed,
    Object? roles = freezed,
    Object? permissions = freezed,
    Object? isExpired = freezed,
    Object? isSubtask = freezed,
    Object? isCheck = freezed,
    Object? members = freezed,
    Object? priorityName = freezed,
    Object? statusName = freezed,
    Object? nesting = freezed,
    Object? uniqueKey = freezed,
    Object? depends = freezed,
    Object? blocks = freezed,
    Object? matrixRoom = freezed,
  }) {
    return _then(_$_DlsTasks(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      expiredAt: freezed == expiredAt
          ? _value.expiredAt
          : expiredAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TaskStatusType?,
      priority: freezed == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as TaskPriorityType?,
      countSubTasks: freezed == countSubTasks
          ? _value.countSubTasks
          : countSubTasks // ignore: cast_nullable_to_non_nullable
              as int?,
      countFiles: freezed == countFiles
          ? _value.countFiles
          : countFiles // ignore: cast_nullable_to_non_nullable
              as int?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      chatCommentId: freezed == chatCommentId
          ? _value.chatCommentId
          : chatCommentId // ignore: cast_nullable_to_non_nullable
              as int?,
      kanbanOrderBy: freezed == kanbanOrderBy
          ? _value.kanbanOrderBy
          : kanbanOrderBy // ignore: cast_nullable_to_non_nullable
              as int?,
      templateId: freezed == templateId
          ? _value.templateId
          : templateId // ignore: cast_nullable_to_non_nullable
              as int?,
      storyPoints: freezed == storyPoints
          ? _value.storyPoints
          : storyPoints // ignore: cast_nullable_to_non_nullable
              as int?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      startAt: freezed == startAt
          ? _value.startAt
          : startAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
      files: freezed == files
          ? _value._files
          : files // ignore: cast_nullable_to_non_nullable
              as List<DlsTasksFileElement>?,
      sprints: freezed == sprints
          ? _value._sprints
          : sprints // ignore: cast_nullable_to_non_nullable
              as List<DlsSprintModel>?,
      checklist: freezed == checklist
          ? _value._checklist
          : checklist // ignore: cast_nullable_to_non_nullable
              as List<DlsTasksChecklist>?,
      comments: freezed == comments
          ? _value._comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<DlsTasksComment>?,
      events: freezed == events
          ? _value._events
          : events // ignore: cast_nullable_to_non_nullable
              as List<TaskEventModel>?,
      tags: freezed == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<TaskTagModel>?,
      parentTask: freezed == parentTask
          ? _value.parentTask
          : parentTask // ignore: cast_nullable_to_non_nullable
              as DlsTasks?,
      subTasks: freezed == subTasks
          ? _value._subTasks
          : subTasks // ignore: cast_nullable_to_non_nullable
              as List<DlsTasks>?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as DlsUserShort?,
      performers: freezed == performers
          ? _value._performers
          : performers // ignore: cast_nullable_to_non_nullable
              as List<DlsTasksPerformer>?,
      roles: freezed == roles
          ? _value._roles
          : roles // ignore: cast_nullable_to_non_nullable
              as List<DlsTasksRole>?,
      permissions: freezed == permissions
          ? _value.permissions
          : permissions // ignore: cast_nullable_to_non_nullable
              as DlsTasksPermissions?,
      isExpired: freezed == isExpired
          ? _value.isExpired
          : isExpired // ignore: cast_nullable_to_non_nullable
              as bool?,
      isSubtask: freezed == isSubtask
          ? _value.isSubtask
          : isSubtask // ignore: cast_nullable_to_non_nullable
              as bool?,
      isCheck: freezed == isCheck
          ? _value.isCheck
          : isCheck // ignore: cast_nullable_to_non_nullable
              as bool?,
      members: freezed == members
          ? _value.members
          : members // ignore: cast_nullable_to_non_nullable
              as DlsTasksMembers?,
      priorityName: freezed == priorityName
          ? _value.priorityName
          : priorityName // ignore: cast_nullable_to_non_nullable
              as String?,
      statusName: freezed == statusName
          ? _value.statusName
          : statusName // ignore: cast_nullable_to_non_nullable
              as String?,
      nesting: freezed == nesting
          ? _value.nesting
          : nesting // ignore: cast_nullable_to_non_nullable
              as int?,
      uniqueKey: freezed == uniqueKey
          ? _value.uniqueKey
          : uniqueKey // ignore: cast_nullable_to_non_nullable
              as String?,
      depends: freezed == depends
          ? _value._depends
          : depends // ignore: cast_nullable_to_non_nullable
              as List<DlsTasks>?,
      blocks: freezed == blocks
          ? _value._blocks
          : blocks // ignore: cast_nullable_to_non_nullable
              as List<DlsTasks>?,
      matrixRoom: freezed == matrixRoom
          ? _value.matrixRoom
          : matrixRoom // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DlsTasks extends _DlsTasks {
  _$_DlsTasks(
      {@JsonKey(name: 'id')
          required this.id,
      @DateTimeConverter()
      @JsonKey(name: 'created_at')
          this.createdAt,
      @DateTimeConverter()
      @JsonKey(name: 'updated_at')
          this.updatedAt,
      @DateTimeConverter()
      @JsonKey(name: 'expired_at')
          this.expiredAt,
      @DateTimeConverter()
      @JsonKey(name: 'deleted_at')
          this.deletedAt,
      @JsonKey(name: 'type')
          this.type,
      @JsonKey(name: 'status_id', unknownEnumValue: TaskStatusType.unknown)
          this.status,
      @JsonKey(name: 'priority')
          this.priority,
      @JsonKey(name: 'count_sub_tasks')
          this.countSubTasks,
      @JsonKey(name: 'count_files')
          this.countFiles,
      @JsonKey(name: 'title')
          required this.title,
      @JsonKey(name: 'description')
          this.description,
      @JsonKey(name: 'chat_comment_id')
          this.chatCommentId,
      @JsonKey(name: 'kanban_order_by')
          this.kanbanOrderBy,
      @JsonKey(name: 'template_id')
          this.templateId,
      @JsonKey(name: 'story_points')
          this.storyPoints,
      @JsonKey(name: 'slug')
          this.slug,
      @JsonKey(name: 'start_at')
          this.startAt,
      @JsonKey(name: 'duration')
          this.duration,
      @JsonKey(name: 'files')
          final List<DlsTasksFileElement>? files,
      @JsonKey(name: 'sprints')
          final List<DlsSprintModel>? sprints,
      @JsonKey(name: 'checklist')
          final List<DlsTasksChecklist>? checklist,
      @JsonKey(name: 'comments')
          final List<DlsTasksComment>? comments,
      @JsonKey(name: 'events')
          final List<TaskEventModel>? events,
      @JsonKey(name: 'tags')
          final List<TaskTagModel>? tags,
      @JsonKey(name: 'parent_task')
          this.parentTask,
      @JsonKey(name: 'sub_tasks')
          final List<DlsTasks>? subTasks,
      @JsonKey(name: 'user')
          this.user,
      @JsonKey(name: 'performers')
          final List<DlsTasksPerformer>? performers,
      @JsonKey(name: 'roles')
          final List<DlsTasksRole>? roles,
      @JsonKey(name: 'permissions')
          this.permissions,
      @JsonKey(name: 'is_expired')
          this.isExpired,
      @JsonKey(name: 'is_subtask')
          this.isSubtask,
      @JsonKey(name: 'is_check')
          this.isCheck,
      @JsonKey(name: 'members')
          this.members,
      @JsonKey(name: 'priority_name')
          this.priorityName,
      @JsonKey(name: 'status_name')
          this.statusName,
      @JsonKey(name: 'nesting')
          this.nesting,
      @JsonKey(name: 'unique_key')
          this.uniqueKey,
      final List<DlsTasks>? depends,
      final List<DlsTasks>? blocks,
      @JsonKey(name: 'matrix_room')
          this.matrixRoom})
      : _files = files,
        _sprints = sprints,
        _checklist = checklist,
        _comments = comments,
        _events = events,
        _tags = tags,
        _subTasks = subTasks,
        _performers = performers,
        _roles = roles,
        _depends = depends,
        _blocks = blocks,
        super._();

  factory _$_DlsTasks.fromJson(Map<String, dynamic> json) =>
      _$$_DlsTasksFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @DateTimeConverter()
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @DateTimeConverter()
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  @override
  @DateTimeConverter()
  @JsonKey(name: 'expired_at')
  final DateTime? expiredAt;
  @override
  @DateTimeConverter()
  @JsonKey(name: 'deleted_at')
  final DateTime? deletedAt;
  @override
  @JsonKey(name: 'type')
  final int? type;
  @override
  @JsonKey(name: 'status_id', unknownEnumValue: TaskStatusType.unknown)
  final TaskStatusType? status;
  @override
  @JsonKey(name: 'priority')
  final TaskPriorityType? priority;
  @override
  @JsonKey(name: 'count_sub_tasks')
  final int? countSubTasks;
  @override
  @JsonKey(name: 'count_files')
  final int? countFiles;
  @override
  @JsonKey(name: 'title')
  final String title;
  @override
  @JsonKey(name: 'description')
  final String? description;
  @override
  @JsonKey(name: 'chat_comment_id')
  final int? chatCommentId;
  @override
  @JsonKey(name: 'kanban_order_by')
  final int? kanbanOrderBy;
  @override
  @JsonKey(name: 'template_id')
  final int? templateId;
  @override
  @JsonKey(name: 'story_points')
  final int? storyPoints;
  @override
  @JsonKey(name: 'slug')
  final String? slug;
  @override
  @JsonKey(name: 'start_at')
  final DateTime? startAt;
  @override
  @JsonKey(name: 'duration')
  final int? duration;
  final List<DlsTasksFileElement>? _files;
  @override
  @JsonKey(name: 'files')
  List<DlsTasksFileElement>? get files {
    final value = _files;
    if (value == null) return null;
    if (_files is EqualUnmodifiableListView) return _files;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<DlsSprintModel>? _sprints;
  @override
  @JsonKey(name: 'sprints')
  List<DlsSprintModel>? get sprints {
    final value = _sprints;
    if (value == null) return null;
    if (_sprints is EqualUnmodifiableListView) return _sprints;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<DlsTasksChecklist>? _checklist;
  @override
  @JsonKey(name: 'checklist')
  List<DlsTasksChecklist>? get checklist {
    final value = _checklist;
    if (value == null) return null;
    if (_checklist is EqualUnmodifiableListView) return _checklist;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<DlsTasksComment>? _comments;
  @override
  @JsonKey(name: 'comments')
  List<DlsTasksComment>? get comments {
    final value = _comments;
    if (value == null) return null;
    if (_comments is EqualUnmodifiableListView) return _comments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<TaskEventModel>? _events;
  @override
  @JsonKey(name: 'events')
  List<TaskEventModel>? get events {
    final value = _events;
    if (value == null) return null;
    if (_events is EqualUnmodifiableListView) return _events;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<TaskTagModel>? _tags;
  @override
  @JsonKey(name: 'tags')
  List<TaskTagModel>? get tags {
    final value = _tags;
    if (value == null) return null;
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'parent_task')
  final DlsTasks? parentTask;
  final List<DlsTasks>? _subTasks;
  @override
  @JsonKey(name: 'sub_tasks')
  List<DlsTasks>? get subTasks {
    final value = _subTasks;
    if (value == null) return null;
    if (_subTasks is EqualUnmodifiableListView) return _subTasks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'user')
  final DlsUserShort? user;
  final List<DlsTasksPerformer>? _performers;
  @override
  @JsonKey(name: 'performers')
  List<DlsTasksPerformer>? get performers {
    final value = _performers;
    if (value == null) return null;
    if (_performers is EqualUnmodifiableListView) return _performers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<DlsTasksRole>? _roles;
  @override
  @JsonKey(name: 'roles')
  List<DlsTasksRole>? get roles {
    final value = _roles;
    if (value == null) return null;
    if (_roles is EqualUnmodifiableListView) return _roles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'permissions')
  final DlsTasksPermissions? permissions;
  @override
  @JsonKey(name: 'is_expired')
  final bool? isExpired;
  @override
  @JsonKey(name: 'is_subtask')
  final bool? isSubtask;
  @override
  @JsonKey(name: 'is_check')
  final bool? isCheck;
  @override
  @JsonKey(name: 'members')
  final DlsTasksMembers? members;
  @override
  @JsonKey(name: 'priority_name')
  final String? priorityName;
  @override
  @JsonKey(name: 'status_name')
  final String? statusName;
  @override
  @JsonKey(name: 'nesting')
  final int? nesting;
  @override
  @JsonKey(name: 'unique_key')
  final String? uniqueKey;
  final List<DlsTasks>? _depends;
  @override
  List<DlsTasks>? get depends {
    final value = _depends;
    if (value == null) return null;
    if (_depends is EqualUnmodifiableListView) return _depends;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<DlsTasks>? _blocks;
  @override
  List<DlsTasks>? get blocks {
    final value = _blocks;
    if (value == null) return null;
    if (_blocks is EqualUnmodifiableListView) return _blocks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'matrix_room')
  final String? matrixRoom;

  @override
  String toString() {
    return 'DlsTasks(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, expiredAt: $expiredAt, deletedAt: $deletedAt, type: $type, status: $status, priority: $priority, countSubTasks: $countSubTasks, countFiles: $countFiles, title: $title, description: $description, chatCommentId: $chatCommentId, kanbanOrderBy: $kanbanOrderBy, templateId: $templateId, storyPoints: $storyPoints, slug: $slug, startAt: $startAt, duration: $duration, files: $files, sprints: $sprints, checklist: $checklist, comments: $comments, events: $events, tags: $tags, parentTask: $parentTask, subTasks: $subTasks, user: $user, performers: $performers, roles: $roles, permissions: $permissions, isExpired: $isExpired, isSubtask: $isSubtask, isCheck: $isCheck, members: $members, priorityName: $priorityName, statusName: $statusName, nesting: $nesting, uniqueKey: $uniqueKey, depends: $depends, blocks: $blocks, matrixRoom: $matrixRoom)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DlsTasks &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.expiredAt, expiredAt) ||
                other.expiredAt == expiredAt) &&
            (identical(other.deletedAt, deletedAt) ||
                other.deletedAt == deletedAt) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.priority, priority) ||
                other.priority == priority) &&
            (identical(other.countSubTasks, countSubTasks) ||
                other.countSubTasks == countSubTasks) &&
            (identical(other.countFiles, countFiles) ||
                other.countFiles == countFiles) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.chatCommentId, chatCommentId) ||
                other.chatCommentId == chatCommentId) &&
            (identical(other.kanbanOrderBy, kanbanOrderBy) ||
                other.kanbanOrderBy == kanbanOrderBy) &&
            (identical(other.templateId, templateId) ||
                other.templateId == templateId) &&
            (identical(other.storyPoints, storyPoints) ||
                other.storyPoints == storyPoints) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.startAt, startAt) || other.startAt == startAt) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            const DeepCollectionEquality().equals(other._files, _files) &&
            const DeepCollectionEquality().equals(other._sprints, _sprints) &&
            const DeepCollectionEquality()
                .equals(other._checklist, _checklist) &&
            const DeepCollectionEquality().equals(other._comments, _comments) &&
            const DeepCollectionEquality().equals(other._events, _events) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.parentTask, parentTask) ||
                other.parentTask == parentTask) &&
            const DeepCollectionEquality().equals(other._subTasks, _subTasks) &&
            (identical(other.user, user) || other.user == user) &&
            const DeepCollectionEquality()
                .equals(other._performers, _performers) &&
            const DeepCollectionEquality().equals(other._roles, _roles) &&
            (identical(other.permissions, permissions) ||
                other.permissions == permissions) &&
            (identical(other.isExpired, isExpired) ||
                other.isExpired == isExpired) &&
            (identical(other.isSubtask, isSubtask) ||
                other.isSubtask == isSubtask) &&
            (identical(other.isCheck, isCheck) || other.isCheck == isCheck) &&
            (identical(other.members, members) || other.members == members) &&
            (identical(other.priorityName, priorityName) ||
                other.priorityName == priorityName) &&
            (identical(other.statusName, statusName) ||
                other.statusName == statusName) &&
            (identical(other.nesting, nesting) || other.nesting == nesting) &&
            (identical(other.uniqueKey, uniqueKey) ||
                other.uniqueKey == uniqueKey) &&
            const DeepCollectionEquality().equals(other._depends, _depends) &&
            const DeepCollectionEquality().equals(other._blocks, _blocks) &&
            (identical(other.matrixRoom, matrixRoom) ||
                other.matrixRoom == matrixRoom));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        createdAt,
        updatedAt,
        expiredAt,
        deletedAt,
        type,
        status,
        priority,
        countSubTasks,
        countFiles,
        title,
        description,
        chatCommentId,
        kanbanOrderBy,
        templateId,
        storyPoints,
        slug,
        startAt,
        duration,
        const DeepCollectionEquality().hash(_files),
        const DeepCollectionEquality().hash(_sprints),
        const DeepCollectionEquality().hash(_checklist),
        const DeepCollectionEquality().hash(_comments),
        const DeepCollectionEquality().hash(_events),
        const DeepCollectionEquality().hash(_tags),
        parentTask,
        const DeepCollectionEquality().hash(_subTasks),
        user,
        const DeepCollectionEquality().hash(_performers),
        const DeepCollectionEquality().hash(_roles),
        permissions,
        isExpired,
        isSubtask,
        isCheck,
        members,
        priorityName,
        statusName,
        nesting,
        uniqueKey,
        const DeepCollectionEquality().hash(_depends),
        const DeepCollectionEquality().hash(_blocks),
        matrixRoom
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DlsTasksCopyWith<_$_DlsTasks> get copyWith =>
      __$$_DlsTasksCopyWithImpl<_$_DlsTasks>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DlsTasksToJson(
      this,
    );
  }
}

abstract class _DlsTasks extends DlsTasks {
  factory _DlsTasks(
      {@JsonKey(name: 'id')
          required final int id,
      @DateTimeConverter()
      @JsonKey(name: 'created_at')
          final DateTime? createdAt,
      @DateTimeConverter()
      @JsonKey(name: 'updated_at')
          final DateTime? updatedAt,
      @DateTimeConverter()
      @JsonKey(name: 'expired_at')
          final DateTime? expiredAt,
      @DateTimeConverter()
      @JsonKey(name: 'deleted_at')
          final DateTime? deletedAt,
      @JsonKey(name: 'type')
          final int? type,
      @JsonKey(name: 'status_id', unknownEnumValue: TaskStatusType.unknown)
          final TaskStatusType? status,
      @JsonKey(name: 'priority')
          final TaskPriorityType? priority,
      @JsonKey(name: 'count_sub_tasks')
          final int? countSubTasks,
      @JsonKey(name: 'count_files')
          final int? countFiles,
      @JsonKey(name: 'title')
          required final String title,
      @JsonKey(name: 'description')
          final String? description,
      @JsonKey(name: 'chat_comment_id')
          final int? chatCommentId,
      @JsonKey(name: 'kanban_order_by')
          final int? kanbanOrderBy,
      @JsonKey(name: 'template_id')
          final int? templateId,
      @JsonKey(name: 'story_points')
          final int? storyPoints,
      @JsonKey(name: 'slug')
          final String? slug,
      @JsonKey(name: 'start_at')
          final DateTime? startAt,
      @JsonKey(name: 'duration')
          final int? duration,
      @JsonKey(name: 'files')
          final List<DlsTasksFileElement>? files,
      @JsonKey(name: 'sprints')
          final List<DlsSprintModel>? sprints,
      @JsonKey(name: 'checklist')
          final List<DlsTasksChecklist>? checklist,
      @JsonKey(name: 'comments')
          final List<DlsTasksComment>? comments,
      @JsonKey(name: 'events')
          final List<TaskEventModel>? events,
      @JsonKey(name: 'tags')
          final List<TaskTagModel>? tags,
      @JsonKey(name: 'parent_task')
          final DlsTasks? parentTask,
      @JsonKey(name: 'sub_tasks')
          final List<DlsTasks>? subTasks,
      @JsonKey(name: 'user')
          final DlsUserShort? user,
      @JsonKey(name: 'performers')
          final List<DlsTasksPerformer>? performers,
      @JsonKey(name: 'roles')
          final List<DlsTasksRole>? roles,
      @JsonKey(name: 'permissions')
          final DlsTasksPermissions? permissions,
      @JsonKey(name: 'is_expired')
          final bool? isExpired,
      @JsonKey(name: 'is_subtask')
          final bool? isSubtask,
      @JsonKey(name: 'is_check')
          final bool? isCheck,
      @JsonKey(name: 'members')
          final DlsTasksMembers? members,
      @JsonKey(name: 'priority_name')
          final String? priorityName,
      @JsonKey(name: 'status_name')
          final String? statusName,
      @JsonKey(name: 'nesting')
          final int? nesting,
      @JsonKey(name: 'unique_key')
          final String? uniqueKey,
      final List<DlsTasks>? depends,
      final List<DlsTasks>? blocks,
      @JsonKey(name: 'matrix_room')
          final String? matrixRoom}) = _$_DlsTasks;
  _DlsTasks._() : super._();

  factory _DlsTasks.fromJson(Map<String, dynamic> json) = _$_DlsTasks.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @DateTimeConverter()
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @DateTimeConverter()
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @override
  @DateTimeConverter()
  @JsonKey(name: 'expired_at')
  DateTime? get expiredAt;
  @override
  @DateTimeConverter()
  @JsonKey(name: 'deleted_at')
  DateTime? get deletedAt;
  @override
  @JsonKey(name: 'type')
  int? get type;
  @override
  @JsonKey(name: 'status_id', unknownEnumValue: TaskStatusType.unknown)
  TaskStatusType? get status;
  @override
  @JsonKey(name: 'priority')
  TaskPriorityType? get priority;
  @override
  @JsonKey(name: 'count_sub_tasks')
  int? get countSubTasks;
  @override
  @JsonKey(name: 'count_files')
  int? get countFiles;
  @override
  @JsonKey(name: 'title')
  String get title;
  @override
  @JsonKey(name: 'description')
  String? get description;
  @override
  @JsonKey(name: 'chat_comment_id')
  int? get chatCommentId;
  @override
  @JsonKey(name: 'kanban_order_by')
  int? get kanbanOrderBy;
  @override
  @JsonKey(name: 'template_id')
  int? get templateId;
  @override
  @JsonKey(name: 'story_points')
  int? get storyPoints;
  @override
  @JsonKey(name: 'slug')
  String? get slug;
  @override
  @JsonKey(name: 'start_at')
  DateTime? get startAt;
  @override
  @JsonKey(name: 'duration')
  int? get duration;
  @override
  @JsonKey(name: 'files')
  List<DlsTasksFileElement>? get files;
  @override
  @JsonKey(name: 'sprints')
  List<DlsSprintModel>? get sprints;
  @override
  @JsonKey(name: 'checklist')
  List<DlsTasksChecklist>? get checklist;
  @override
  @JsonKey(name: 'comments')
  List<DlsTasksComment>? get comments;
  @override
  @JsonKey(name: 'events')
  List<TaskEventModel>? get events;
  @override
  @JsonKey(name: 'tags')
  List<TaskTagModel>? get tags;
  @override
  @JsonKey(name: 'parent_task')
  DlsTasks? get parentTask;
  @override
  @JsonKey(name: 'sub_tasks')
  List<DlsTasks>? get subTasks;
  @override
  @JsonKey(name: 'user')
  DlsUserShort? get user;
  @override
  @JsonKey(name: 'performers')
  List<DlsTasksPerformer>? get performers;
  @override
  @JsonKey(name: 'roles')
  List<DlsTasksRole>? get roles;
  @override
  @JsonKey(name: 'permissions')
  DlsTasksPermissions? get permissions;
  @override
  @JsonKey(name: 'is_expired')
  bool? get isExpired;
  @override
  @JsonKey(name: 'is_subtask')
  bool? get isSubtask;
  @override
  @JsonKey(name: 'is_check')
  bool? get isCheck;
  @override
  @JsonKey(name: 'members')
  DlsTasksMembers? get members;
  @override
  @JsonKey(name: 'priority_name')
  String? get priorityName;
  @override
  @JsonKey(name: 'status_name')
  String? get statusName;
  @override
  @JsonKey(name: 'nesting')
  int? get nesting;
  @override
  @JsonKey(name: 'unique_key')
  String? get uniqueKey;
  @override
  List<DlsTasks>? get depends;
  @override
  List<DlsTasks>? get blocks;
  @override
  @JsonKey(name: 'matrix_room')
  String? get matrixRoom;
  @override
  @JsonKey(ignore: true)
  _$$_DlsTasksCopyWith<_$_DlsTasks> get copyWith =>
      throw _privateConstructorUsedError;
}
