// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'create_events_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CreateEventsModel {
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String? get place => throw _privateConstructorUsedError;
  DlsTasks? get task => throw _privateConstructorUsedError;
  DlsSprintModel? get sprint => throw _privateConstructorUsedError;
  List<DlsFileData> get files => throw _privateConstructorUsedError;
  DLSUser? get currentUser => throw _privateConstructorUsedError;
  DLSUser? get organizer => throw _privateConstructorUsedError;
  ScheduleViewType get scheduleViewType => throw _privateConstructorUsedError;
  List<DLSUser> get members => throw _privateConstructorUsedError;
  bool get online => throw _privateConstructorUsedError;
  bool get allDay => throw _privateConstructorUsedError;
  DateTime? get date => throw _privateConstructorUsedError;
  TimeOfDay get start => throw _privateConstructorUsedError;
  TimeOfDay get end => throw _privateConstructorUsedError;
  TimeOfDay? get moveStart => throw _privateConstructorUsedError;
  TimeOfDay? get moveEnd => throw _privateConstructorUsedError;
  EventRepeatModel? get repeat => throw _privateConstructorUsedError;
  EventNotificationType get notifyBefore => throw _privateConstructorUsedError;
  bool get memberInvite => throw _privateConstructorUsedError;
  TaskEventModel? get event => throw _privateConstructorUsedError;
  CreateTaskEventRequest? get request => throw _privateConstructorUsedError;
  String? get matrixRoom => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateEventsModelCopyWith<CreateEventsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateEventsModelCopyWith<$Res> {
  factory $CreateEventsModelCopyWith(
          CreateEventsModel value, $Res Function(CreateEventsModel) then) =
      _$CreateEventsModelCopyWithImpl<$Res, CreateEventsModel>;
  @useResult
  $Res call(
      {String name,
      String description,
      String? place,
      DlsTasks? task,
      DlsSprintModel? sprint,
      List<DlsFileData> files,
      DLSUser? currentUser,
      DLSUser? organizer,
      ScheduleViewType scheduleViewType,
      List<DLSUser> members,
      bool online,
      bool allDay,
      DateTime? date,
      TimeOfDay start,
      TimeOfDay end,
      TimeOfDay? moveStart,
      TimeOfDay? moveEnd,
      EventRepeatModel? repeat,
      EventNotificationType notifyBefore,
      bool memberInvite,
      TaskEventModel? event,
      CreateTaskEventRequest? request,
      String? matrixRoom});

  $DlsTasksCopyWith<$Res>? get task;
  $DlsSprintModelCopyWith<$Res>? get sprint;
  $DLSUserCopyWith<$Res>? get currentUser;
  $DLSUserCopyWith<$Res>? get organizer;
  $EventRepeatModelCopyWith<$Res>? get repeat;
  $TaskEventModelCopyWith<$Res>? get event;
  $CreateTaskEventRequestCopyWith<$Res>? get request;
}

/// @nodoc
class _$CreateEventsModelCopyWithImpl<$Res, $Val extends CreateEventsModel>
    implements $CreateEventsModelCopyWith<$Res> {
  _$CreateEventsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? place = freezed,
    Object? task = freezed,
    Object? sprint = freezed,
    Object? files = null,
    Object? currentUser = freezed,
    Object? organizer = freezed,
    Object? scheduleViewType = null,
    Object? members = null,
    Object? online = null,
    Object? allDay = null,
    Object? date = freezed,
    Object? start = null,
    Object? end = null,
    Object? moveStart = freezed,
    Object? moveEnd = freezed,
    Object? repeat = freezed,
    Object? notifyBefore = null,
    Object? memberInvite = null,
    Object? event = freezed,
    Object? request = freezed,
    Object? matrixRoom = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      place: freezed == place
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as String?,
      task: freezed == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as DlsTasks?,
      sprint: freezed == sprint
          ? _value.sprint
          : sprint // ignore: cast_nullable_to_non_nullable
              as DlsSprintModel?,
      files: null == files
          ? _value.files
          : files // ignore: cast_nullable_to_non_nullable
              as List<DlsFileData>,
      currentUser: freezed == currentUser
          ? _value.currentUser
          : currentUser // ignore: cast_nullable_to_non_nullable
              as DLSUser?,
      organizer: freezed == organizer
          ? _value.organizer
          : organizer // ignore: cast_nullable_to_non_nullable
              as DLSUser?,
      scheduleViewType: null == scheduleViewType
          ? _value.scheduleViewType
          : scheduleViewType // ignore: cast_nullable_to_non_nullable
              as ScheduleViewType,
      members: null == members
          ? _value.members
          : members // ignore: cast_nullable_to_non_nullable
              as List<DLSUser>,
      online: null == online
          ? _value.online
          : online // ignore: cast_nullable_to_non_nullable
              as bool,
      allDay: null == allDay
          ? _value.allDay
          : allDay // ignore: cast_nullable_to_non_nullable
              as bool,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      start: null == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
      end: null == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
      moveStart: freezed == moveStart
          ? _value.moveStart
          : moveStart // ignore: cast_nullable_to_non_nullable
              as TimeOfDay?,
      moveEnd: freezed == moveEnd
          ? _value.moveEnd
          : moveEnd // ignore: cast_nullable_to_non_nullable
              as TimeOfDay?,
      repeat: freezed == repeat
          ? _value.repeat
          : repeat // ignore: cast_nullable_to_non_nullable
              as EventRepeatModel?,
      notifyBefore: null == notifyBefore
          ? _value.notifyBefore
          : notifyBefore // ignore: cast_nullable_to_non_nullable
              as EventNotificationType,
      memberInvite: null == memberInvite
          ? _value.memberInvite
          : memberInvite // ignore: cast_nullable_to_non_nullable
              as bool,
      event: freezed == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as TaskEventModel?,
      request: freezed == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as CreateTaskEventRequest?,
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
  $DlsSprintModelCopyWith<$Res>? get sprint {
    if (_value.sprint == null) {
      return null;
    }

    return $DlsSprintModelCopyWith<$Res>(_value.sprint!, (value) {
      return _then(_value.copyWith(sprint: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DLSUserCopyWith<$Res>? get currentUser {
    if (_value.currentUser == null) {
      return null;
    }

    return $DLSUserCopyWith<$Res>(_value.currentUser!, (value) {
      return _then(_value.copyWith(currentUser: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DLSUserCopyWith<$Res>? get organizer {
    if (_value.organizer == null) {
      return null;
    }

    return $DLSUserCopyWith<$Res>(_value.organizer!, (value) {
      return _then(_value.copyWith(organizer: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $EventRepeatModelCopyWith<$Res>? get repeat {
    if (_value.repeat == null) {
      return null;
    }

    return $EventRepeatModelCopyWith<$Res>(_value.repeat!, (value) {
      return _then(_value.copyWith(repeat: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TaskEventModelCopyWith<$Res>? get event {
    if (_value.event == null) {
      return null;
    }

    return $TaskEventModelCopyWith<$Res>(_value.event!, (value) {
      return _then(_value.copyWith(event: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CreateTaskEventRequestCopyWith<$Res>? get request {
    if (_value.request == null) {
      return null;
    }

    return $CreateTaskEventRequestCopyWith<$Res>(_value.request!, (value) {
      return _then(_value.copyWith(request: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CreateEventsModelCopyWith<$Res>
    implements $CreateEventsModelCopyWith<$Res> {
  factory _$$_CreateEventsModelCopyWith(_$_CreateEventsModel value,
          $Res Function(_$_CreateEventsModel) then) =
      __$$_CreateEventsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String description,
      String? place,
      DlsTasks? task,
      DlsSprintModel? sprint,
      List<DlsFileData> files,
      DLSUser? currentUser,
      DLSUser? organizer,
      ScheduleViewType scheduleViewType,
      List<DLSUser> members,
      bool online,
      bool allDay,
      DateTime? date,
      TimeOfDay start,
      TimeOfDay end,
      TimeOfDay? moveStart,
      TimeOfDay? moveEnd,
      EventRepeatModel? repeat,
      EventNotificationType notifyBefore,
      bool memberInvite,
      TaskEventModel? event,
      CreateTaskEventRequest? request,
      String? matrixRoom});

  @override
  $DlsTasksCopyWith<$Res>? get task;
  @override
  $DlsSprintModelCopyWith<$Res>? get sprint;
  @override
  $DLSUserCopyWith<$Res>? get currentUser;
  @override
  $DLSUserCopyWith<$Res>? get organizer;
  @override
  $EventRepeatModelCopyWith<$Res>? get repeat;
  @override
  $TaskEventModelCopyWith<$Res>? get event;
  @override
  $CreateTaskEventRequestCopyWith<$Res>? get request;
}

/// @nodoc
class __$$_CreateEventsModelCopyWithImpl<$Res>
    extends _$CreateEventsModelCopyWithImpl<$Res, _$_CreateEventsModel>
    implements _$$_CreateEventsModelCopyWith<$Res> {
  __$$_CreateEventsModelCopyWithImpl(
      _$_CreateEventsModel _value, $Res Function(_$_CreateEventsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? place = freezed,
    Object? task = freezed,
    Object? sprint = freezed,
    Object? files = null,
    Object? currentUser = freezed,
    Object? organizer = freezed,
    Object? scheduleViewType = null,
    Object? members = null,
    Object? online = null,
    Object? allDay = null,
    Object? date = freezed,
    Object? start = null,
    Object? end = null,
    Object? moveStart = freezed,
    Object? moveEnd = freezed,
    Object? repeat = freezed,
    Object? notifyBefore = null,
    Object? memberInvite = null,
    Object? event = freezed,
    Object? request = freezed,
    Object? matrixRoom = freezed,
  }) {
    return _then(_$_CreateEventsModel(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      place: freezed == place
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as String?,
      task: freezed == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as DlsTasks?,
      sprint: freezed == sprint
          ? _value.sprint
          : sprint // ignore: cast_nullable_to_non_nullable
              as DlsSprintModel?,
      files: null == files
          ? _value._files
          : files // ignore: cast_nullable_to_non_nullable
              as List<DlsFileData>,
      currentUser: freezed == currentUser
          ? _value.currentUser
          : currentUser // ignore: cast_nullable_to_non_nullable
              as DLSUser?,
      organizer: freezed == organizer
          ? _value.organizer
          : organizer // ignore: cast_nullable_to_non_nullable
              as DLSUser?,
      scheduleViewType: null == scheduleViewType
          ? _value.scheduleViewType
          : scheduleViewType // ignore: cast_nullable_to_non_nullable
              as ScheduleViewType,
      members: null == members
          ? _value._members
          : members // ignore: cast_nullable_to_non_nullable
              as List<DLSUser>,
      online: null == online
          ? _value.online
          : online // ignore: cast_nullable_to_non_nullable
              as bool,
      allDay: null == allDay
          ? _value.allDay
          : allDay // ignore: cast_nullable_to_non_nullable
              as bool,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      start: null == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
      end: null == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
      moveStart: freezed == moveStart
          ? _value.moveStart
          : moveStart // ignore: cast_nullable_to_non_nullable
              as TimeOfDay?,
      moveEnd: freezed == moveEnd
          ? _value.moveEnd
          : moveEnd // ignore: cast_nullable_to_non_nullable
              as TimeOfDay?,
      repeat: freezed == repeat
          ? _value.repeat
          : repeat // ignore: cast_nullable_to_non_nullable
              as EventRepeatModel?,
      notifyBefore: null == notifyBefore
          ? _value.notifyBefore
          : notifyBefore // ignore: cast_nullable_to_non_nullable
              as EventNotificationType,
      memberInvite: null == memberInvite
          ? _value.memberInvite
          : memberInvite // ignore: cast_nullable_to_non_nullable
              as bool,
      event: freezed == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as TaskEventModel?,
      request: freezed == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as CreateTaskEventRequest?,
      matrixRoom: freezed == matrixRoom
          ? _value.matrixRoom
          : matrixRoom // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_CreateEventsModel implements _CreateEventsModel {
  const _$_CreateEventsModel(
      {this.name = '',
      this.description = '',
      this.place,
      this.task,
      this.sprint,
      final List<DlsFileData> files = const [],
      this.currentUser,
      this.organizer,
      this.scheduleViewType = ScheduleViewType.today,
      final List<DLSUser> members = const [],
      this.online = true,
      this.allDay = false,
      this.date,
      this.start = const TimeOfDay(hour: 0, minute: 0),
      this.end = const TimeOfDay(hour: 1, minute: 0),
      this.moveStart,
      this.moveEnd,
      this.repeat,
      this.notifyBefore = EventNotificationType.min15,
      this.memberInvite = false,
      this.event,
      this.request,
      this.matrixRoom})
      : _files = files,
        _members = members;

  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String description;
  @override
  final String? place;
  @override
  final DlsTasks? task;
  @override
  final DlsSprintModel? sprint;
  final List<DlsFileData> _files;
  @override
  @JsonKey()
  List<DlsFileData> get files {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_files);
  }

  @override
  final DLSUser? currentUser;
  @override
  final DLSUser? organizer;
  @override
  @JsonKey()
  final ScheduleViewType scheduleViewType;
  final List<DLSUser> _members;
  @override
  @JsonKey()
  List<DLSUser> get members {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_members);
  }

  @override
  @JsonKey()
  final bool online;
  @override
  @JsonKey()
  final bool allDay;
  @override
  final DateTime? date;
  @override
  @JsonKey()
  final TimeOfDay start;
  @override
  @JsonKey()
  final TimeOfDay end;
  @override
  final TimeOfDay? moveStart;
  @override
  final TimeOfDay? moveEnd;
  @override
  final EventRepeatModel? repeat;
  @override
  @JsonKey()
  final EventNotificationType notifyBefore;
  @override
  @JsonKey()
  final bool memberInvite;
  @override
  final TaskEventModel? event;
  @override
  final CreateTaskEventRequest? request;
  @override
  final String? matrixRoom;

  @override
  String toString() {
    return 'CreateEventsModel(name: $name, description: $description, place: $place, task: $task, sprint: $sprint, files: $files, currentUser: $currentUser, organizer: $organizer, scheduleViewType: $scheduleViewType, members: $members, online: $online, allDay: $allDay, date: $date, start: $start, end: $end, moveStart: $moveStart, moveEnd: $moveEnd, repeat: $repeat, notifyBefore: $notifyBefore, memberInvite: $memberInvite, event: $event, request: $request, matrixRoom: $matrixRoom)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateEventsModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.place, place) || other.place == place) &&
            (identical(other.task, task) || other.task == task) &&
            (identical(other.sprint, sprint) || other.sprint == sprint) &&
            const DeepCollectionEquality().equals(other._files, _files) &&
            (identical(other.currentUser, currentUser) ||
                other.currentUser == currentUser) &&
            (identical(other.organizer, organizer) ||
                other.organizer == organizer) &&
            (identical(other.scheduleViewType, scheduleViewType) ||
                other.scheduleViewType == scheduleViewType) &&
            const DeepCollectionEquality().equals(other._members, _members) &&
            (identical(other.online, online) || other.online == online) &&
            (identical(other.allDay, allDay) || other.allDay == allDay) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.end, end) || other.end == end) &&
            (identical(other.moveStart, moveStart) ||
                other.moveStart == moveStart) &&
            (identical(other.moveEnd, moveEnd) || other.moveEnd == moveEnd) &&
            (identical(other.repeat, repeat) || other.repeat == repeat) &&
            (identical(other.notifyBefore, notifyBefore) ||
                other.notifyBefore == notifyBefore) &&
            (identical(other.memberInvite, memberInvite) ||
                other.memberInvite == memberInvite) &&
            (identical(other.event, event) || other.event == event) &&
            (identical(other.request, request) || other.request == request) &&
            (identical(other.matrixRoom, matrixRoom) ||
                other.matrixRoom == matrixRoom));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        name,
        description,
        place,
        task,
        sprint,
        const DeepCollectionEquality().hash(_files),
        currentUser,
        organizer,
        scheduleViewType,
        const DeepCollectionEquality().hash(_members),
        online,
        allDay,
        date,
        start,
        end,
        moveStart,
        moveEnd,
        repeat,
        notifyBefore,
        memberInvite,
        event,
        request,
        matrixRoom
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateEventsModelCopyWith<_$_CreateEventsModel> get copyWith =>
      __$$_CreateEventsModelCopyWithImpl<_$_CreateEventsModel>(
          this, _$identity);
}

abstract class _CreateEventsModel implements CreateEventsModel {
  const factory _CreateEventsModel(
      {final String name,
      final String description,
      final String? place,
      final DlsTasks? task,
      final DlsSprintModel? sprint,
      final List<DlsFileData> files,
      final DLSUser? currentUser,
      final DLSUser? organizer,
      final ScheduleViewType scheduleViewType,
      final List<DLSUser> members,
      final bool online,
      final bool allDay,
      final DateTime? date,
      final TimeOfDay start,
      final TimeOfDay end,
      final TimeOfDay? moveStart,
      final TimeOfDay? moveEnd,
      final EventRepeatModel? repeat,
      final EventNotificationType notifyBefore,
      final bool memberInvite,
      final TaskEventModel? event,
      final CreateTaskEventRequest? request,
      final String? matrixRoom}) = _$_CreateEventsModel;

  @override
  String get name;
  @override
  String get description;
  @override
  String? get place;
  @override
  DlsTasks? get task;
  @override
  DlsSprintModel? get sprint;
  @override
  List<DlsFileData> get files;
  @override
  DLSUser? get currentUser;
  @override
  DLSUser? get organizer;
  @override
  ScheduleViewType get scheduleViewType;
  @override
  List<DLSUser> get members;
  @override
  bool get online;
  @override
  bool get allDay;
  @override
  DateTime? get date;
  @override
  TimeOfDay get start;
  @override
  TimeOfDay get end;
  @override
  TimeOfDay? get moveStart;
  @override
  TimeOfDay? get moveEnd;
  @override
  EventRepeatModel? get repeat;
  @override
  EventNotificationType get notifyBefore;
  @override
  bool get memberInvite;
  @override
  TaskEventModel? get event;
  @override
  CreateTaskEventRequest? get request;
  @override
  String? get matrixRoom;
  @override
  @JsonKey(ignore: true)
  _$$_CreateEventsModelCopyWith<_$_CreateEventsModel> get copyWith =>
      throw _privateConstructorUsedError;
}
