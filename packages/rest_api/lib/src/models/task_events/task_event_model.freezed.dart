// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_event_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TaskEventModel _$TaskEventModelFromJson(Map<String, dynamic> json) {
  return _TaskEventModel.fromJson(json);
}

/// @nodoc
mixin _$TaskEventModel {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  TaskEventType get type => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  @DateTimeConverter()
  @JsonKey(name: 'start_at')
  DateTime? get startAt => throw _privateConstructorUsedError;
  @DateTimeConverter()
  @JsonKey(name: 'end_at')
  DateTime? get endAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_all_day')
  bool? get isAllDay => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_invite_others')
  bool? get isInviteOthers => throw _privateConstructorUsedError;
  @JsonKey(name: 'notification_type')
  EventNotificationType? get notificationType =>
      throw _privateConstructorUsedError;
  List<DlsUserShort>? get members =>
      throw _privateConstructorUsedError; // TODO remove if not using
  @JsonKey(name: 'file_ids')
  List<int>? get fileIds => throw _privateConstructorUsedError;
  DlsTasks? get task =>
      throw _privateConstructorUsedError; // TODO config sprint
// Map<String, dynamic>? sprint,
  SeriesRepeatEventModel? get series => throw _privateConstructorUsedError;
  RepeatEventModel? get repeat => throw _privateConstructorUsedError;
  List<DlsFileData>? get files => throw _privateConstructorUsedError;
  DLSUser? get user => throw _privateConstructorUsedError;
  @JsonKey(name: 'matrix_room')
  String? get matrixRoom => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TaskEventModelCopyWith<TaskEventModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskEventModelCopyWith<$Res> {
  factory $TaskEventModelCopyWith(
          TaskEventModel value, $Res Function(TaskEventModel) then) =
      _$TaskEventModelCopyWithImpl<$Res, TaskEventModel>;
  @useResult
  $Res call(
      {int id,
      String title,
      TaskEventType type,
      String? description,
      String? location,
      @DateTimeConverter()
      @JsonKey(name: 'start_at')
          DateTime? startAt,
      @DateTimeConverter()
      @JsonKey(name: 'end_at')
          DateTime? endAt,
      @JsonKey(name: 'is_all_day')
          bool? isAllDay,
      @JsonKey(name: 'is_invite_others')
          bool? isInviteOthers,
      @JsonKey(name: 'notification_type')
          EventNotificationType? notificationType,
      List<DlsUserShort>? members,
      @JsonKey(name: 'file_ids')
          List<int>? fileIds,
      DlsTasks? task,
      SeriesRepeatEventModel? series,
      RepeatEventModel? repeat,
      List<DlsFileData>? files,
      DLSUser? user,
      @JsonKey(name: 'matrix_room')
          String? matrixRoom});

  $DlsTasksCopyWith<$Res>? get task;
  $SeriesRepeatEventModelCopyWith<$Res>? get series;
  $RepeatEventModelCopyWith<$Res>? get repeat;
  $DLSUserCopyWith<$Res>? get user;
}

/// @nodoc
class _$TaskEventModelCopyWithImpl<$Res, $Val extends TaskEventModel>
    implements $TaskEventModelCopyWith<$Res> {
  _$TaskEventModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? type = null,
    Object? description = freezed,
    Object? location = freezed,
    Object? startAt = freezed,
    Object? endAt = freezed,
    Object? isAllDay = freezed,
    Object? isInviteOthers = freezed,
    Object? notificationType = freezed,
    Object? members = freezed,
    Object? fileIds = freezed,
    Object? task = freezed,
    Object? series = freezed,
    Object? repeat = freezed,
    Object? files = freezed,
    Object? user = freezed,
    Object? matrixRoom = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TaskEventType,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      startAt: freezed == startAt
          ? _value.startAt
          : startAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endAt: freezed == endAt
          ? _value.endAt
          : endAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isAllDay: freezed == isAllDay
          ? _value.isAllDay
          : isAllDay // ignore: cast_nullable_to_non_nullable
              as bool?,
      isInviteOthers: freezed == isInviteOthers
          ? _value.isInviteOthers
          : isInviteOthers // ignore: cast_nullable_to_non_nullable
              as bool?,
      notificationType: freezed == notificationType
          ? _value.notificationType
          : notificationType // ignore: cast_nullable_to_non_nullable
              as EventNotificationType?,
      members: freezed == members
          ? _value.members
          : members // ignore: cast_nullable_to_non_nullable
              as List<DlsUserShort>?,
      fileIds: freezed == fileIds
          ? _value.fileIds
          : fileIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      task: freezed == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as DlsTasks?,
      series: freezed == series
          ? _value.series
          : series // ignore: cast_nullable_to_non_nullable
              as SeriesRepeatEventModel?,
      repeat: freezed == repeat
          ? _value.repeat
          : repeat // ignore: cast_nullable_to_non_nullable
              as RepeatEventModel?,
      files: freezed == files
          ? _value.files
          : files // ignore: cast_nullable_to_non_nullable
              as List<DlsFileData>?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as DLSUser?,
      matrixRoom: freezed == matrixRoom
          ? _value.matrixRoom
          : matrixRoom // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DlsTasksCopyWith<$Res>? get task {
    if (_value.task == null) {
      return null;
    }

    return $DlsTasksCopyWith<$Res>(_value.task!, (value) {
      return _then(_value.copyWith(task: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SeriesRepeatEventModelCopyWith<$Res>? get series {
    if (_value.series == null) {
      return null;
    }

    return $SeriesRepeatEventModelCopyWith<$Res>(_value.series!, (value) {
      return _then(_value.copyWith(series: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RepeatEventModelCopyWith<$Res>? get repeat {
    if (_value.repeat == null) {
      return null;
    }

    return $RepeatEventModelCopyWith<$Res>(_value.repeat!, (value) {
      return _then(_value.copyWith(repeat: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DLSUserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $DLSUserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TaskEventModelCopyWith<$Res>
    implements $TaskEventModelCopyWith<$Res> {
  factory _$$_TaskEventModelCopyWith(
          _$_TaskEventModel value, $Res Function(_$_TaskEventModel) then) =
      __$$_TaskEventModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      TaskEventType type,
      String? description,
      String? location,
      @DateTimeConverter()
      @JsonKey(name: 'start_at')
          DateTime? startAt,
      @DateTimeConverter()
      @JsonKey(name: 'end_at')
          DateTime? endAt,
      @JsonKey(name: 'is_all_day')
          bool? isAllDay,
      @JsonKey(name: 'is_invite_others')
          bool? isInviteOthers,
      @JsonKey(name: 'notification_type')
          EventNotificationType? notificationType,
      List<DlsUserShort>? members,
      @JsonKey(name: 'file_ids')
          List<int>? fileIds,
      DlsTasks? task,
      SeriesRepeatEventModel? series,
      RepeatEventModel? repeat,
      List<DlsFileData>? files,
      DLSUser? user,
      @JsonKey(name: 'matrix_room')
          String? matrixRoom});

  @override
  $DlsTasksCopyWith<$Res>? get task;
  @override
  $SeriesRepeatEventModelCopyWith<$Res>? get series;
  @override
  $RepeatEventModelCopyWith<$Res>? get repeat;
  @override
  $DLSUserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$_TaskEventModelCopyWithImpl<$Res>
    extends _$TaskEventModelCopyWithImpl<$Res, _$_TaskEventModel>
    implements _$$_TaskEventModelCopyWith<$Res> {
  __$$_TaskEventModelCopyWithImpl(
      _$_TaskEventModel _value, $Res Function(_$_TaskEventModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? type = null,
    Object? description = freezed,
    Object? location = freezed,
    Object? startAt = freezed,
    Object? endAt = freezed,
    Object? isAllDay = freezed,
    Object? isInviteOthers = freezed,
    Object? notificationType = freezed,
    Object? members = freezed,
    Object? fileIds = freezed,
    Object? task = freezed,
    Object? series = freezed,
    Object? repeat = freezed,
    Object? files = freezed,
    Object? user = freezed,
    Object? matrixRoom = freezed,
  }) {
    return _then(_$_TaskEventModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TaskEventType,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      startAt: freezed == startAt
          ? _value.startAt
          : startAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endAt: freezed == endAt
          ? _value.endAt
          : endAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isAllDay: freezed == isAllDay
          ? _value.isAllDay
          : isAllDay // ignore: cast_nullable_to_non_nullable
              as bool?,
      isInviteOthers: freezed == isInviteOthers
          ? _value.isInviteOthers
          : isInviteOthers // ignore: cast_nullable_to_non_nullable
              as bool?,
      notificationType: freezed == notificationType
          ? _value.notificationType
          : notificationType // ignore: cast_nullable_to_non_nullable
              as EventNotificationType?,
      members: freezed == members
          ? _value._members
          : members // ignore: cast_nullable_to_non_nullable
              as List<DlsUserShort>?,
      fileIds: freezed == fileIds
          ? _value._fileIds
          : fileIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      task: freezed == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as DlsTasks?,
      series: freezed == series
          ? _value.series
          : series // ignore: cast_nullable_to_non_nullable
              as SeriesRepeatEventModel?,
      repeat: freezed == repeat
          ? _value.repeat
          : repeat // ignore: cast_nullable_to_non_nullable
              as RepeatEventModel?,
      files: freezed == files
          ? _value._files
          : files // ignore: cast_nullable_to_non_nullable
              as List<DlsFileData>?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as DLSUser?,
      matrixRoom: freezed == matrixRoom
          ? _value.matrixRoom
          : matrixRoom // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TaskEventModel implements _TaskEventModel {
  const _$_TaskEventModel(
      {required this.id,
      required this.title,
      required this.type,
      this.description,
      this.location,
      @DateTimeConverter() @JsonKey(name: 'start_at') this.startAt,
      @DateTimeConverter() @JsonKey(name: 'end_at') this.endAt,
      @JsonKey(name: 'is_all_day') this.isAllDay,
      @JsonKey(name: 'is_invite_others') this.isInviteOthers,
      @JsonKey(name: 'notification_type') this.notificationType,
      final List<DlsUserShort>? members,
      @JsonKey(name: 'file_ids') final List<int>? fileIds,
      this.task,
      this.series,
      this.repeat,
      final List<DlsFileData>? files,
      this.user,
      @JsonKey(name: 'matrix_room') this.matrixRoom})
      : _members = members,
        _fileIds = fileIds,
        _files = files;

  factory _$_TaskEventModel.fromJson(Map<String, dynamic> json) =>
      _$$_TaskEventModelFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final TaskEventType type;
  @override
  final String? description;
  @override
  final String? location;
  @override
  @DateTimeConverter()
  @JsonKey(name: 'start_at')
  final DateTime? startAt;
  @override
  @DateTimeConverter()
  @JsonKey(name: 'end_at')
  final DateTime? endAt;
  @override
  @JsonKey(name: 'is_all_day')
  final bool? isAllDay;
  @override
  @JsonKey(name: 'is_invite_others')
  final bool? isInviteOthers;
  @override
  @JsonKey(name: 'notification_type')
  final EventNotificationType? notificationType;
  final List<DlsUserShort>? _members;
  @override
  List<DlsUserShort>? get members {
    final value = _members;
    if (value == null) return null;
    if (_members is EqualUnmodifiableListView) return _members;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

// TODO remove if not using
  final List<int>? _fileIds;
// TODO remove if not using
  @override
  @JsonKey(name: 'file_ids')
  List<int>? get fileIds {
    final value = _fileIds;
    if (value == null) return null;
    if (_fileIds is EqualUnmodifiableListView) return _fileIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final DlsTasks? task;
// TODO config sprint
// Map<String, dynamic>? sprint,
  @override
  final SeriesRepeatEventModel? series;
  @override
  final RepeatEventModel? repeat;
  final List<DlsFileData>? _files;
  @override
  List<DlsFileData>? get files {
    final value = _files;
    if (value == null) return null;
    if (_files is EqualUnmodifiableListView) return _files;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final DLSUser? user;
  @override
  @JsonKey(name: 'matrix_room')
  final String? matrixRoom;

  @override
  String toString() {
    return 'TaskEventModel(id: $id, title: $title, type: $type, description: $description, location: $location, startAt: $startAt, endAt: $endAt, isAllDay: $isAllDay, isInviteOthers: $isInviteOthers, notificationType: $notificationType, members: $members, fileIds: $fileIds, task: $task, series: $series, repeat: $repeat, files: $files, user: $user, matrixRoom: $matrixRoom)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TaskEventModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.startAt, startAt) || other.startAt == startAt) &&
            (identical(other.endAt, endAt) || other.endAt == endAt) &&
            (identical(other.isAllDay, isAllDay) ||
                other.isAllDay == isAllDay) &&
            (identical(other.isInviteOthers, isInviteOthers) ||
                other.isInviteOthers == isInviteOthers) &&
            (identical(other.notificationType, notificationType) ||
                other.notificationType == notificationType) &&
            const DeepCollectionEquality().equals(other._members, _members) &&
            const DeepCollectionEquality().equals(other._fileIds, _fileIds) &&
            (identical(other.task, task) || other.task == task) &&
            (identical(other.series, series) || other.series == series) &&
            (identical(other.repeat, repeat) || other.repeat == repeat) &&
            const DeepCollectionEquality().equals(other._files, _files) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.matrixRoom, matrixRoom) ||
                other.matrixRoom == matrixRoom));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      type,
      description,
      location,
      startAt,
      endAt,
      isAllDay,
      isInviteOthers,
      notificationType,
      const DeepCollectionEquality().hash(_members),
      const DeepCollectionEquality().hash(_fileIds),
      task,
      series,
      repeat,
      const DeepCollectionEquality().hash(_files),
      user,
      matrixRoom);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TaskEventModelCopyWith<_$_TaskEventModel> get copyWith =>
      __$$_TaskEventModelCopyWithImpl<_$_TaskEventModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TaskEventModelToJson(
      this,
    );
  }
}

abstract class _TaskEventModel implements TaskEventModel {
  const factory _TaskEventModel(
      {required final int id,
      required final String title,
      required final TaskEventType type,
      final String? description,
      final String? location,
      @DateTimeConverter()
      @JsonKey(name: 'start_at')
          final DateTime? startAt,
      @DateTimeConverter()
      @JsonKey(name: 'end_at')
          final DateTime? endAt,
      @JsonKey(name: 'is_all_day')
          final bool? isAllDay,
      @JsonKey(name: 'is_invite_others')
          final bool? isInviteOthers,
      @JsonKey(name: 'notification_type')
          final EventNotificationType? notificationType,
      final List<DlsUserShort>? members,
      @JsonKey(name: 'file_ids')
          final List<int>? fileIds,
      final DlsTasks? task,
      final SeriesRepeatEventModel? series,
      final RepeatEventModel? repeat,
      final List<DlsFileData>? files,
      final DLSUser? user,
      @JsonKey(name: 'matrix_room')
          final String? matrixRoom}) = _$_TaskEventModel;

  factory _TaskEventModel.fromJson(Map<String, dynamic> json) =
      _$_TaskEventModel.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  TaskEventType get type;
  @override
  String? get description;
  @override
  String? get location;
  @override
  @DateTimeConverter()
  @JsonKey(name: 'start_at')
  DateTime? get startAt;
  @override
  @DateTimeConverter()
  @JsonKey(name: 'end_at')
  DateTime? get endAt;
  @override
  @JsonKey(name: 'is_all_day')
  bool? get isAllDay;
  @override
  @JsonKey(name: 'is_invite_others')
  bool? get isInviteOthers;
  @override
  @JsonKey(name: 'notification_type')
  EventNotificationType? get notificationType;
  @override
  List<DlsUserShort>? get members;
  @override // TODO remove if not using
  @JsonKey(name: 'file_ids')
  List<int>? get fileIds;
  @override
  DlsTasks? get task;
  @override // TODO config sprint
// Map<String, dynamic>? sprint,
  SeriesRepeatEventModel? get series;
  @override
  RepeatEventModel? get repeat;
  @override
  List<DlsFileData>? get files;
  @override
  DLSUser? get user;
  @override
  @JsonKey(name: 'matrix_room')
  String? get matrixRoom;
  @override
  @JsonKey(ignore: true)
  _$$_TaskEventModelCopyWith<_$_TaskEventModel> get copyWith =>
      throw _privateConstructorUsedError;
}
