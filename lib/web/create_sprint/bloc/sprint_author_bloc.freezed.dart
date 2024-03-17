// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sprint_author_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SprintAuthorEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String parentTitle, List<DlsTasks> backlog,
            DlsSprintModel? sprint, DlsTasks? superTask, DLSUser? currentUser)
        init,
    required TResult Function(bool update) fetch,
    required TResult Function(
            int index, TaskStatusType status, DlsTasks item, bool backlog)
        updateSubtask,
    required TResult Function(SprintDurationType duration, DateTime? endDate)
        updateDuration,
    required TResult Function(SprintAuthorModel model) updateModel,
    required TResult Function() finish,
    required TResult Function() save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String parentTitle, List<DlsTasks> backlog,
            DlsSprintModel? sprint, DlsTasks? superTask, DLSUser? currentUser)?
        init,
    TResult? Function(bool update)? fetch,
    TResult? Function(
            int index, TaskStatusType status, DlsTasks item, bool backlog)?
        updateSubtask,
    TResult? Function(SprintDurationType duration, DateTime? endDate)?
        updateDuration,
    TResult? Function(SprintAuthorModel model)? updateModel,
    TResult? Function()? finish,
    TResult? Function()? save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String parentTitle, List<DlsTasks> backlog,
            DlsSprintModel? sprint, DlsTasks? superTask, DLSUser? currentUser)?
        init,
    TResult Function(bool update)? fetch,
    TResult Function(
            int index, TaskStatusType status, DlsTasks item, bool backlog)?
        updateSubtask,
    TResult Function(SprintDurationType duration, DateTime? endDate)?
        updateDuration,
    TResult Function(SprintAuthorModel model)? updateModel,
    TResult Function()? finish,
    TResult Function()? save,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_UpdateSubtask value) updateSubtask,
    required TResult Function(_UpdateDuration value) updateDuration,
    required TResult Function(_UpdateModel value) updateModel,
    required TResult Function(_Finish value) finish,
    required TResult Function(_Save value) save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_UpdateSubtask value)? updateSubtask,
    TResult? Function(_UpdateDuration value)? updateDuration,
    TResult? Function(_UpdateModel value)? updateModel,
    TResult? Function(_Finish value)? finish,
    TResult? Function(_Save value)? save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Fetch value)? fetch,
    TResult Function(_UpdateSubtask value)? updateSubtask,
    TResult Function(_UpdateDuration value)? updateDuration,
    TResult Function(_UpdateModel value)? updateModel,
    TResult Function(_Finish value)? finish,
    TResult Function(_Save value)? save,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SprintAuthorEventCopyWith<$Res> {
  factory $SprintAuthorEventCopyWith(
          SprintAuthorEvent value, $Res Function(SprintAuthorEvent) then) =
      _$SprintAuthorEventCopyWithImpl<$Res, SprintAuthorEvent>;
}

/// @nodoc
class _$SprintAuthorEventCopyWithImpl<$Res, $Val extends SprintAuthorEvent>
    implements $SprintAuthorEventCopyWith<$Res> {
  _$SprintAuthorEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitCopyWith<$Res> {
  factory _$$_InitCopyWith(_$_Init value, $Res Function(_$_Init) then) =
      __$$_InitCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String parentTitle,
      List<DlsTasks> backlog,
      DlsSprintModel? sprint,
      DlsTasks? superTask,
      DLSUser? currentUser});

  $DlsSprintModelCopyWith<$Res>? get sprint;
  $DlsTasksCopyWith<$Res>? get superTask;
  $DLSUserCopyWith<$Res>? get currentUser;
}

/// @nodoc
class __$$_InitCopyWithImpl<$Res>
    extends _$SprintAuthorEventCopyWithImpl<$Res, _$_Init>
    implements _$$_InitCopyWith<$Res> {
  __$$_InitCopyWithImpl(_$_Init _value, $Res Function(_$_Init) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? parentTitle = null,
    Object? backlog = null,
    Object? sprint = freezed,
    Object? superTask = freezed,
    Object? currentUser = freezed,
  }) {
    return _then(_$_Init(
      parentTitle: null == parentTitle
          ? _value.parentTitle
          : parentTitle // ignore: cast_nullable_to_non_nullable
              as String,
      backlog: null == backlog
          ? _value._backlog
          : backlog // ignore: cast_nullable_to_non_nullable
              as List<DlsTasks>,
      sprint: freezed == sprint
          ? _value.sprint
          : sprint // ignore: cast_nullable_to_non_nullable
              as DlsSprintModel?,
      superTask: freezed == superTask
          ? _value.superTask
          : superTask // ignore: cast_nullable_to_non_nullable
              as DlsTasks?,
      currentUser: freezed == currentUser
          ? _value.currentUser
          : currentUser // ignore: cast_nullable_to_non_nullable
              as DLSUser?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $DlsSprintModelCopyWith<$Res>? get sprint {
    if (_value.sprint == null) {
      return null;
    }

    return $DlsSprintModelCopyWith<$Res>(_value.sprint!, (value) {
      return _then(_value.copyWith(sprint: value));
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DlsTasksCopyWith<$Res>? get superTask {
    if (_value.superTask == null) {
      return null;
    }

    return $DlsTasksCopyWith<$Res>(_value.superTask!, (value) {
      return _then(_value.copyWith(superTask: value));
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DLSUserCopyWith<$Res>? get currentUser {
    if (_value.currentUser == null) {
      return null;
    }

    return $DLSUserCopyWith<$Res>(_value.currentUser!, (value) {
      return _then(_value.copyWith(currentUser: value));
    });
  }
}

/// @nodoc

class _$_Init extends _Init {
  const _$_Init(
      {this.parentTitle = '',
      final List<DlsTasks> backlog = const [],
      this.sprint,
      this.superTask,
      this.currentUser})
      : _backlog = backlog,
        super._();

  @override
  @JsonKey()
  final String parentTitle;
  final List<DlsTasks> _backlog;
  @override
  @JsonKey()
  List<DlsTasks> get backlog {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_backlog);
  }

  @override
  final DlsSprintModel? sprint;
  @override
  final DlsTasks? superTask;
  @override
  final DLSUser? currentUser;

  @override
  String toString() {
    return 'SprintAuthorEvent.init(parentTitle: $parentTitle, backlog: $backlog, sprint: $sprint, superTask: $superTask, currentUser: $currentUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Init &&
            (identical(other.parentTitle, parentTitle) ||
                other.parentTitle == parentTitle) &&
            const DeepCollectionEquality().equals(other._backlog, _backlog) &&
            (identical(other.sprint, sprint) || other.sprint == sprint) &&
            (identical(other.superTask, superTask) ||
                other.superTask == superTask) &&
            (identical(other.currentUser, currentUser) ||
                other.currentUser == currentUser));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      parentTitle,
      const DeepCollectionEquality().hash(_backlog),
      sprint,
      superTask,
      currentUser);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitCopyWith<_$_Init> get copyWith =>
      __$$_InitCopyWithImpl<_$_Init>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String parentTitle, List<DlsTasks> backlog,
            DlsSprintModel? sprint, DlsTasks? superTask, DLSUser? currentUser)
        init,
    required TResult Function(bool update) fetch,
    required TResult Function(
            int index, TaskStatusType status, DlsTasks item, bool backlog)
        updateSubtask,
    required TResult Function(SprintDurationType duration, DateTime? endDate)
        updateDuration,
    required TResult Function(SprintAuthorModel model) updateModel,
    required TResult Function() finish,
    required TResult Function() save,
  }) {
    return init(parentTitle, backlog, sprint, superTask, currentUser);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String parentTitle, List<DlsTasks> backlog,
            DlsSprintModel? sprint, DlsTasks? superTask, DLSUser? currentUser)?
        init,
    TResult? Function(bool update)? fetch,
    TResult? Function(
            int index, TaskStatusType status, DlsTasks item, bool backlog)?
        updateSubtask,
    TResult? Function(SprintDurationType duration, DateTime? endDate)?
        updateDuration,
    TResult? Function(SprintAuthorModel model)? updateModel,
    TResult? Function()? finish,
    TResult? Function()? save,
  }) {
    return init?.call(parentTitle, backlog, sprint, superTask, currentUser);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String parentTitle, List<DlsTasks> backlog,
            DlsSprintModel? sprint, DlsTasks? superTask, DLSUser? currentUser)?
        init,
    TResult Function(bool update)? fetch,
    TResult Function(
            int index, TaskStatusType status, DlsTasks item, bool backlog)?
        updateSubtask,
    TResult Function(SprintDurationType duration, DateTime? endDate)?
        updateDuration,
    TResult Function(SprintAuthorModel model)? updateModel,
    TResult Function()? finish,
    TResult Function()? save,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(parentTitle, backlog, sprint, superTask, currentUser);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_UpdateSubtask value) updateSubtask,
    required TResult Function(_UpdateDuration value) updateDuration,
    required TResult Function(_UpdateModel value) updateModel,
    required TResult Function(_Finish value) finish,
    required TResult Function(_Save value) save,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_UpdateSubtask value)? updateSubtask,
    TResult? Function(_UpdateDuration value)? updateDuration,
    TResult? Function(_UpdateModel value)? updateModel,
    TResult? Function(_Finish value)? finish,
    TResult? Function(_Save value)? save,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Fetch value)? fetch,
    TResult Function(_UpdateSubtask value)? updateSubtask,
    TResult Function(_UpdateDuration value)? updateDuration,
    TResult Function(_UpdateModel value)? updateModel,
    TResult Function(_Finish value)? finish,
    TResult Function(_Save value)? save,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _Init extends SprintAuthorEvent {
  const factory _Init(
      {final String parentTitle,
      final List<DlsTasks> backlog,
      final DlsSprintModel? sprint,
      final DlsTasks? superTask,
      final DLSUser? currentUser}) = _$_Init;
  const _Init._() : super._();

  String get parentTitle;
  List<DlsTasks> get backlog;
  DlsSprintModel? get sprint;
  DlsTasks? get superTask;
  DLSUser? get currentUser;
  @JsonKey(ignore: true)
  _$$_InitCopyWith<_$_Init> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FetchCopyWith<$Res> {
  factory _$$_FetchCopyWith(_$_Fetch value, $Res Function(_$_Fetch) then) =
      __$$_FetchCopyWithImpl<$Res>;
  @useResult
  $Res call({bool update});
}

/// @nodoc
class __$$_FetchCopyWithImpl<$Res>
    extends _$SprintAuthorEventCopyWithImpl<$Res, _$_Fetch>
    implements _$$_FetchCopyWith<$Res> {
  __$$_FetchCopyWithImpl(_$_Fetch _value, $Res Function(_$_Fetch) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? update = null,
  }) {
    return _then(_$_Fetch(
      update: null == update
          ? _value.update
          : update // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Fetch extends _Fetch {
  const _$_Fetch({this.update = false}) : super._();

  @override
  @JsonKey()
  final bool update;

  @override
  String toString() {
    return 'SprintAuthorEvent.fetch(update: $update)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Fetch &&
            (identical(other.update, update) || other.update == update));
  }

  @override
  int get hashCode => Object.hash(runtimeType, update);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FetchCopyWith<_$_Fetch> get copyWith =>
      __$$_FetchCopyWithImpl<_$_Fetch>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String parentTitle, List<DlsTasks> backlog,
            DlsSprintModel? sprint, DlsTasks? superTask, DLSUser? currentUser)
        init,
    required TResult Function(bool update) fetch,
    required TResult Function(
            int index, TaskStatusType status, DlsTasks item, bool backlog)
        updateSubtask,
    required TResult Function(SprintDurationType duration, DateTime? endDate)
        updateDuration,
    required TResult Function(SprintAuthorModel model) updateModel,
    required TResult Function() finish,
    required TResult Function() save,
  }) {
    return fetch(update);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String parentTitle, List<DlsTasks> backlog,
            DlsSprintModel? sprint, DlsTasks? superTask, DLSUser? currentUser)?
        init,
    TResult? Function(bool update)? fetch,
    TResult? Function(
            int index, TaskStatusType status, DlsTasks item, bool backlog)?
        updateSubtask,
    TResult? Function(SprintDurationType duration, DateTime? endDate)?
        updateDuration,
    TResult? Function(SprintAuthorModel model)? updateModel,
    TResult? Function()? finish,
    TResult? Function()? save,
  }) {
    return fetch?.call(update);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String parentTitle, List<DlsTasks> backlog,
            DlsSprintModel? sprint, DlsTasks? superTask, DLSUser? currentUser)?
        init,
    TResult Function(bool update)? fetch,
    TResult Function(
            int index, TaskStatusType status, DlsTasks item, bool backlog)?
        updateSubtask,
    TResult Function(SprintDurationType duration, DateTime? endDate)?
        updateDuration,
    TResult Function(SprintAuthorModel model)? updateModel,
    TResult Function()? finish,
    TResult Function()? save,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(update);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_UpdateSubtask value) updateSubtask,
    required TResult Function(_UpdateDuration value) updateDuration,
    required TResult Function(_UpdateModel value) updateModel,
    required TResult Function(_Finish value) finish,
    required TResult Function(_Save value) save,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_UpdateSubtask value)? updateSubtask,
    TResult? Function(_UpdateDuration value)? updateDuration,
    TResult? Function(_UpdateModel value)? updateModel,
    TResult? Function(_Finish value)? finish,
    TResult? Function(_Save value)? save,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Fetch value)? fetch,
    TResult Function(_UpdateSubtask value)? updateSubtask,
    TResult Function(_UpdateDuration value)? updateDuration,
    TResult Function(_UpdateModel value)? updateModel,
    TResult Function(_Finish value)? finish,
    TResult Function(_Save value)? save,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class _Fetch extends SprintAuthorEvent {
  const factory _Fetch({final bool update}) = _$_Fetch;
  const _Fetch._() : super._();

  bool get update;
  @JsonKey(ignore: true)
  _$$_FetchCopyWith<_$_Fetch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdateSubtaskCopyWith<$Res> {
  factory _$$_UpdateSubtaskCopyWith(
          _$_UpdateSubtask value, $Res Function(_$_UpdateSubtask) then) =
      __$$_UpdateSubtaskCopyWithImpl<$Res>;
  @useResult
  $Res call({int index, TaskStatusType status, DlsTasks item, bool backlog});

  $DlsTasksCopyWith<$Res> get item;
}

/// @nodoc
class __$$_UpdateSubtaskCopyWithImpl<$Res>
    extends _$SprintAuthorEventCopyWithImpl<$Res, _$_UpdateSubtask>
    implements _$$_UpdateSubtaskCopyWith<$Res> {
  __$$_UpdateSubtaskCopyWithImpl(
      _$_UpdateSubtask _value, $Res Function(_$_UpdateSubtask) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? status = null,
    Object? item = null,
    Object? backlog = null,
  }) {
    return _then(_$_UpdateSubtask(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TaskStatusType,
      item: null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as DlsTasks,
      backlog: null == backlog
          ? _value.backlog
          : backlog // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $DlsTasksCopyWith<$Res> get item {
    return $DlsTasksCopyWith<$Res>(_value.item, (value) {
      return _then(_value.copyWith(item: value));
    });
  }
}

/// @nodoc

class _$_UpdateSubtask extends _UpdateSubtask {
  const _$_UpdateSubtask(
      {required this.index,
      required this.status,
      required this.item,
      required this.backlog})
      : super._();

  @override
  final int index;
  @override
  final TaskStatusType status;
  @override
  final DlsTasks item;
  @override
  final bool backlog;

  @override
  String toString() {
    return 'SprintAuthorEvent.updateSubtask(index: $index, status: $status, item: $item, backlog: $backlog)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateSubtask &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.item, item) || other.item == item) &&
            (identical(other.backlog, backlog) || other.backlog == backlog));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index, status, item, backlog);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateSubtaskCopyWith<_$_UpdateSubtask> get copyWith =>
      __$$_UpdateSubtaskCopyWithImpl<_$_UpdateSubtask>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String parentTitle, List<DlsTasks> backlog,
            DlsSprintModel? sprint, DlsTasks? superTask, DLSUser? currentUser)
        init,
    required TResult Function(bool update) fetch,
    required TResult Function(
            int index, TaskStatusType status, DlsTasks item, bool backlog)
        updateSubtask,
    required TResult Function(SprintDurationType duration, DateTime? endDate)
        updateDuration,
    required TResult Function(SprintAuthorModel model) updateModel,
    required TResult Function() finish,
    required TResult Function() save,
  }) {
    return updateSubtask(index, status, item, backlog);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String parentTitle, List<DlsTasks> backlog,
            DlsSprintModel? sprint, DlsTasks? superTask, DLSUser? currentUser)?
        init,
    TResult? Function(bool update)? fetch,
    TResult? Function(
            int index, TaskStatusType status, DlsTasks item, bool backlog)?
        updateSubtask,
    TResult? Function(SprintDurationType duration, DateTime? endDate)?
        updateDuration,
    TResult? Function(SprintAuthorModel model)? updateModel,
    TResult? Function()? finish,
    TResult? Function()? save,
  }) {
    return updateSubtask?.call(index, status, item, backlog);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String parentTitle, List<DlsTasks> backlog,
            DlsSprintModel? sprint, DlsTasks? superTask, DLSUser? currentUser)?
        init,
    TResult Function(bool update)? fetch,
    TResult Function(
            int index, TaskStatusType status, DlsTasks item, bool backlog)?
        updateSubtask,
    TResult Function(SprintDurationType duration, DateTime? endDate)?
        updateDuration,
    TResult Function(SprintAuthorModel model)? updateModel,
    TResult Function()? finish,
    TResult Function()? save,
    required TResult orElse(),
  }) {
    if (updateSubtask != null) {
      return updateSubtask(index, status, item, backlog);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_UpdateSubtask value) updateSubtask,
    required TResult Function(_UpdateDuration value) updateDuration,
    required TResult Function(_UpdateModel value) updateModel,
    required TResult Function(_Finish value) finish,
    required TResult Function(_Save value) save,
  }) {
    return updateSubtask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_UpdateSubtask value)? updateSubtask,
    TResult? Function(_UpdateDuration value)? updateDuration,
    TResult? Function(_UpdateModel value)? updateModel,
    TResult? Function(_Finish value)? finish,
    TResult? Function(_Save value)? save,
  }) {
    return updateSubtask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Fetch value)? fetch,
    TResult Function(_UpdateSubtask value)? updateSubtask,
    TResult Function(_UpdateDuration value)? updateDuration,
    TResult Function(_UpdateModel value)? updateModel,
    TResult Function(_Finish value)? finish,
    TResult Function(_Save value)? save,
    required TResult orElse(),
  }) {
    if (updateSubtask != null) {
      return updateSubtask(this);
    }
    return orElse();
  }
}

abstract class _UpdateSubtask extends SprintAuthorEvent {
  const factory _UpdateSubtask(
      {required final int index,
      required final TaskStatusType status,
      required final DlsTasks item,
      required final bool backlog}) = _$_UpdateSubtask;
  const _UpdateSubtask._() : super._();

  int get index;
  TaskStatusType get status;
  DlsTasks get item;
  bool get backlog;
  @JsonKey(ignore: true)
  _$$_UpdateSubtaskCopyWith<_$_UpdateSubtask> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdateDurationCopyWith<$Res> {
  factory _$$_UpdateDurationCopyWith(
          _$_UpdateDuration value, $Res Function(_$_UpdateDuration) then) =
      __$$_UpdateDurationCopyWithImpl<$Res>;
  @useResult
  $Res call({SprintDurationType duration, DateTime? endDate});
}

/// @nodoc
class __$$_UpdateDurationCopyWithImpl<$Res>
    extends _$SprintAuthorEventCopyWithImpl<$Res, _$_UpdateDuration>
    implements _$$_UpdateDurationCopyWith<$Res> {
  __$$_UpdateDurationCopyWithImpl(
      _$_UpdateDuration _value, $Res Function(_$_UpdateDuration) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? duration = null,
    Object? endDate = freezed,
  }) {
    return _then(_$_UpdateDuration(
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as SprintDurationType,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$_UpdateDuration extends _UpdateDuration {
  const _$_UpdateDuration({required this.duration, this.endDate}) : super._();

  @override
  final SprintDurationType duration;
  @override
  final DateTime? endDate;

  @override
  String toString() {
    return 'SprintAuthorEvent.updateDuration(duration: $duration, endDate: $endDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateDuration &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.endDate, endDate) || other.endDate == endDate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, duration, endDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateDurationCopyWith<_$_UpdateDuration> get copyWith =>
      __$$_UpdateDurationCopyWithImpl<_$_UpdateDuration>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String parentTitle, List<DlsTasks> backlog,
            DlsSprintModel? sprint, DlsTasks? superTask, DLSUser? currentUser)
        init,
    required TResult Function(bool update) fetch,
    required TResult Function(
            int index, TaskStatusType status, DlsTasks item, bool backlog)
        updateSubtask,
    required TResult Function(SprintDurationType duration, DateTime? endDate)
        updateDuration,
    required TResult Function(SprintAuthorModel model) updateModel,
    required TResult Function() finish,
    required TResult Function() save,
  }) {
    return updateDuration(duration, endDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String parentTitle, List<DlsTasks> backlog,
            DlsSprintModel? sprint, DlsTasks? superTask, DLSUser? currentUser)?
        init,
    TResult? Function(bool update)? fetch,
    TResult? Function(
            int index, TaskStatusType status, DlsTasks item, bool backlog)?
        updateSubtask,
    TResult? Function(SprintDurationType duration, DateTime? endDate)?
        updateDuration,
    TResult? Function(SprintAuthorModel model)? updateModel,
    TResult? Function()? finish,
    TResult? Function()? save,
  }) {
    return updateDuration?.call(duration, endDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String parentTitle, List<DlsTasks> backlog,
            DlsSprintModel? sprint, DlsTasks? superTask, DLSUser? currentUser)?
        init,
    TResult Function(bool update)? fetch,
    TResult Function(
            int index, TaskStatusType status, DlsTasks item, bool backlog)?
        updateSubtask,
    TResult Function(SprintDurationType duration, DateTime? endDate)?
        updateDuration,
    TResult Function(SprintAuthorModel model)? updateModel,
    TResult Function()? finish,
    TResult Function()? save,
    required TResult orElse(),
  }) {
    if (updateDuration != null) {
      return updateDuration(duration, endDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_UpdateSubtask value) updateSubtask,
    required TResult Function(_UpdateDuration value) updateDuration,
    required TResult Function(_UpdateModel value) updateModel,
    required TResult Function(_Finish value) finish,
    required TResult Function(_Save value) save,
  }) {
    return updateDuration(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_UpdateSubtask value)? updateSubtask,
    TResult? Function(_UpdateDuration value)? updateDuration,
    TResult? Function(_UpdateModel value)? updateModel,
    TResult? Function(_Finish value)? finish,
    TResult? Function(_Save value)? save,
  }) {
    return updateDuration?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Fetch value)? fetch,
    TResult Function(_UpdateSubtask value)? updateSubtask,
    TResult Function(_UpdateDuration value)? updateDuration,
    TResult Function(_UpdateModel value)? updateModel,
    TResult Function(_Finish value)? finish,
    TResult Function(_Save value)? save,
    required TResult orElse(),
  }) {
    if (updateDuration != null) {
      return updateDuration(this);
    }
    return orElse();
  }
}

abstract class _UpdateDuration extends SprintAuthorEvent {
  const factory _UpdateDuration(
      {required final SprintDurationType duration,
      final DateTime? endDate}) = _$_UpdateDuration;
  const _UpdateDuration._() : super._();

  SprintDurationType get duration;
  DateTime? get endDate;
  @JsonKey(ignore: true)
  _$$_UpdateDurationCopyWith<_$_UpdateDuration> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdateModelCopyWith<$Res> {
  factory _$$_UpdateModelCopyWith(
          _$_UpdateModel value, $Res Function(_$_UpdateModel) then) =
      __$$_UpdateModelCopyWithImpl<$Res>;
  @useResult
  $Res call({SprintAuthorModel model});

  $SprintAuthorModelCopyWith<$Res> get model;
}

/// @nodoc
class __$$_UpdateModelCopyWithImpl<$Res>
    extends _$SprintAuthorEventCopyWithImpl<$Res, _$_UpdateModel>
    implements _$$_UpdateModelCopyWith<$Res> {
  __$$_UpdateModelCopyWithImpl(
      _$_UpdateModel _value, $Res Function(_$_UpdateModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
  }) {
    return _then(_$_UpdateModel(
      null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as SprintAuthorModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $SprintAuthorModelCopyWith<$Res> get model {
    return $SprintAuthorModelCopyWith<$Res>(_value.model, (value) {
      return _then(_value.copyWith(model: value));
    });
  }
}

/// @nodoc

class _$_UpdateModel extends _UpdateModel {
  const _$_UpdateModel(this.model) : super._();

  @override
  final SprintAuthorModel model;

  @override
  String toString() {
    return 'SprintAuthorEvent.updateModel(model: $model)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateModel &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateModelCopyWith<_$_UpdateModel> get copyWith =>
      __$$_UpdateModelCopyWithImpl<_$_UpdateModel>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String parentTitle, List<DlsTasks> backlog,
            DlsSprintModel? sprint, DlsTasks? superTask, DLSUser? currentUser)
        init,
    required TResult Function(bool update) fetch,
    required TResult Function(
            int index, TaskStatusType status, DlsTasks item, bool backlog)
        updateSubtask,
    required TResult Function(SprintDurationType duration, DateTime? endDate)
        updateDuration,
    required TResult Function(SprintAuthorModel model) updateModel,
    required TResult Function() finish,
    required TResult Function() save,
  }) {
    return updateModel(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String parentTitle, List<DlsTasks> backlog,
            DlsSprintModel? sprint, DlsTasks? superTask, DLSUser? currentUser)?
        init,
    TResult? Function(bool update)? fetch,
    TResult? Function(
            int index, TaskStatusType status, DlsTasks item, bool backlog)?
        updateSubtask,
    TResult? Function(SprintDurationType duration, DateTime? endDate)?
        updateDuration,
    TResult? Function(SprintAuthorModel model)? updateModel,
    TResult? Function()? finish,
    TResult? Function()? save,
  }) {
    return updateModel?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String parentTitle, List<DlsTasks> backlog,
            DlsSprintModel? sprint, DlsTasks? superTask, DLSUser? currentUser)?
        init,
    TResult Function(bool update)? fetch,
    TResult Function(
            int index, TaskStatusType status, DlsTasks item, bool backlog)?
        updateSubtask,
    TResult Function(SprintDurationType duration, DateTime? endDate)?
        updateDuration,
    TResult Function(SprintAuthorModel model)? updateModel,
    TResult Function()? finish,
    TResult Function()? save,
    required TResult orElse(),
  }) {
    if (updateModel != null) {
      return updateModel(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_UpdateSubtask value) updateSubtask,
    required TResult Function(_UpdateDuration value) updateDuration,
    required TResult Function(_UpdateModel value) updateModel,
    required TResult Function(_Finish value) finish,
    required TResult Function(_Save value) save,
  }) {
    return updateModel(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_UpdateSubtask value)? updateSubtask,
    TResult? Function(_UpdateDuration value)? updateDuration,
    TResult? Function(_UpdateModel value)? updateModel,
    TResult? Function(_Finish value)? finish,
    TResult? Function(_Save value)? save,
  }) {
    return updateModel?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Fetch value)? fetch,
    TResult Function(_UpdateSubtask value)? updateSubtask,
    TResult Function(_UpdateDuration value)? updateDuration,
    TResult Function(_UpdateModel value)? updateModel,
    TResult Function(_Finish value)? finish,
    TResult Function(_Save value)? save,
    required TResult orElse(),
  }) {
    if (updateModel != null) {
      return updateModel(this);
    }
    return orElse();
  }
}

abstract class _UpdateModel extends SprintAuthorEvent {
  const factory _UpdateModel(final SprintAuthorModel model) = _$_UpdateModel;
  const _UpdateModel._() : super._();

  SprintAuthorModel get model;
  @JsonKey(ignore: true)
  _$$_UpdateModelCopyWith<_$_UpdateModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FinishCopyWith<$Res> {
  factory _$$_FinishCopyWith(_$_Finish value, $Res Function(_$_Finish) then) =
      __$$_FinishCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FinishCopyWithImpl<$Res>
    extends _$SprintAuthorEventCopyWithImpl<$Res, _$_Finish>
    implements _$$_FinishCopyWith<$Res> {
  __$$_FinishCopyWithImpl(_$_Finish _value, $Res Function(_$_Finish) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Finish extends _Finish {
  const _$_Finish() : super._();

  @override
  String toString() {
    return 'SprintAuthorEvent.finish()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Finish);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String parentTitle, List<DlsTasks> backlog,
            DlsSprintModel? sprint, DlsTasks? superTask, DLSUser? currentUser)
        init,
    required TResult Function(bool update) fetch,
    required TResult Function(
            int index, TaskStatusType status, DlsTasks item, bool backlog)
        updateSubtask,
    required TResult Function(SprintDurationType duration, DateTime? endDate)
        updateDuration,
    required TResult Function(SprintAuthorModel model) updateModel,
    required TResult Function() finish,
    required TResult Function() save,
  }) {
    return finish();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String parentTitle, List<DlsTasks> backlog,
            DlsSprintModel? sprint, DlsTasks? superTask, DLSUser? currentUser)?
        init,
    TResult? Function(bool update)? fetch,
    TResult? Function(
            int index, TaskStatusType status, DlsTasks item, bool backlog)?
        updateSubtask,
    TResult? Function(SprintDurationType duration, DateTime? endDate)?
        updateDuration,
    TResult? Function(SprintAuthorModel model)? updateModel,
    TResult? Function()? finish,
    TResult? Function()? save,
  }) {
    return finish?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String parentTitle, List<DlsTasks> backlog,
            DlsSprintModel? sprint, DlsTasks? superTask, DLSUser? currentUser)?
        init,
    TResult Function(bool update)? fetch,
    TResult Function(
            int index, TaskStatusType status, DlsTasks item, bool backlog)?
        updateSubtask,
    TResult Function(SprintDurationType duration, DateTime? endDate)?
        updateDuration,
    TResult Function(SprintAuthorModel model)? updateModel,
    TResult Function()? finish,
    TResult Function()? save,
    required TResult orElse(),
  }) {
    if (finish != null) {
      return finish();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_UpdateSubtask value) updateSubtask,
    required TResult Function(_UpdateDuration value) updateDuration,
    required TResult Function(_UpdateModel value) updateModel,
    required TResult Function(_Finish value) finish,
    required TResult Function(_Save value) save,
  }) {
    return finish(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_UpdateSubtask value)? updateSubtask,
    TResult? Function(_UpdateDuration value)? updateDuration,
    TResult? Function(_UpdateModel value)? updateModel,
    TResult? Function(_Finish value)? finish,
    TResult? Function(_Save value)? save,
  }) {
    return finish?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Fetch value)? fetch,
    TResult Function(_UpdateSubtask value)? updateSubtask,
    TResult Function(_UpdateDuration value)? updateDuration,
    TResult Function(_UpdateModel value)? updateModel,
    TResult Function(_Finish value)? finish,
    TResult Function(_Save value)? save,
    required TResult orElse(),
  }) {
    if (finish != null) {
      return finish(this);
    }
    return orElse();
  }
}

abstract class _Finish extends SprintAuthorEvent {
  const factory _Finish() = _$_Finish;
  const _Finish._() : super._();
}

/// @nodoc
abstract class _$$_SaveCopyWith<$Res> {
  factory _$$_SaveCopyWith(_$_Save value, $Res Function(_$_Save) then) =
      __$$_SaveCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SaveCopyWithImpl<$Res>
    extends _$SprintAuthorEventCopyWithImpl<$Res, _$_Save>
    implements _$$_SaveCopyWith<$Res> {
  __$$_SaveCopyWithImpl(_$_Save _value, $Res Function(_$_Save) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Save extends _Save {
  const _$_Save() : super._();

  @override
  String toString() {
    return 'SprintAuthorEvent.save()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Save);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String parentTitle, List<DlsTasks> backlog,
            DlsSprintModel? sprint, DlsTasks? superTask, DLSUser? currentUser)
        init,
    required TResult Function(bool update) fetch,
    required TResult Function(
            int index, TaskStatusType status, DlsTasks item, bool backlog)
        updateSubtask,
    required TResult Function(SprintDurationType duration, DateTime? endDate)
        updateDuration,
    required TResult Function(SprintAuthorModel model) updateModel,
    required TResult Function() finish,
    required TResult Function() save,
  }) {
    return save();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String parentTitle, List<DlsTasks> backlog,
            DlsSprintModel? sprint, DlsTasks? superTask, DLSUser? currentUser)?
        init,
    TResult? Function(bool update)? fetch,
    TResult? Function(
            int index, TaskStatusType status, DlsTasks item, bool backlog)?
        updateSubtask,
    TResult? Function(SprintDurationType duration, DateTime? endDate)?
        updateDuration,
    TResult? Function(SprintAuthorModel model)? updateModel,
    TResult? Function()? finish,
    TResult? Function()? save,
  }) {
    return save?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String parentTitle, List<DlsTasks> backlog,
            DlsSprintModel? sprint, DlsTasks? superTask, DLSUser? currentUser)?
        init,
    TResult Function(bool update)? fetch,
    TResult Function(
            int index, TaskStatusType status, DlsTasks item, bool backlog)?
        updateSubtask,
    TResult Function(SprintDurationType duration, DateTime? endDate)?
        updateDuration,
    TResult Function(SprintAuthorModel model)? updateModel,
    TResult Function()? finish,
    TResult Function()? save,
    required TResult orElse(),
  }) {
    if (save != null) {
      return save();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_UpdateSubtask value) updateSubtask,
    required TResult Function(_UpdateDuration value) updateDuration,
    required TResult Function(_UpdateModel value) updateModel,
    required TResult Function(_Finish value) finish,
    required TResult Function(_Save value) save,
  }) {
    return save(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_UpdateSubtask value)? updateSubtask,
    TResult? Function(_UpdateDuration value)? updateDuration,
    TResult? Function(_UpdateModel value)? updateModel,
    TResult? Function(_Finish value)? finish,
    TResult? Function(_Save value)? save,
  }) {
    return save?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Fetch value)? fetch,
    TResult Function(_UpdateSubtask value)? updateSubtask,
    TResult Function(_UpdateDuration value)? updateDuration,
    TResult Function(_UpdateModel value)? updateModel,
    TResult Function(_Finish value)? finish,
    TResult Function(_Save value)? save,
    required TResult orElse(),
  }) {
    if (save != null) {
      return save(this);
    }
    return orElse();
  }
}

abstract class _Save extends SprintAuthorEvent {
  const factory _Save() = _$_Save;
  const _Save._() : super._();
}

/// @nodoc
mixin _$SprintAuthorState {
  SprintAuthorModel get model => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SprintAuthorModel model) idle,
    required TResult Function(SprintAuthorModel model) loading,
    required TResult Function(SprintAuthorModel model) success,
    required TResult Function(SprintAuthorModel model) updateSuccess,
    required TResult Function(String message, SprintAuthorModel model) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SprintAuthorModel model)? idle,
    TResult? Function(SprintAuthorModel model)? loading,
    TResult? Function(SprintAuthorModel model)? success,
    TResult? Function(SprintAuthorModel model)? updateSuccess,
    TResult? Function(String message, SprintAuthorModel model)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SprintAuthorModel model)? idle,
    TResult Function(SprintAuthorModel model)? loading,
    TResult Function(SprintAuthorModel model)? success,
    TResult Function(SprintAuthorModel model)? updateSuccess,
    TResult Function(String message, SprintAuthorModel model)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_UpdateSuccess value) updateSuccess,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Idle value)? idle,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_UpdateSuccess value)? updateSuccess,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_UpdateSuccess value)? updateSuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SprintAuthorStateCopyWith<SprintAuthorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SprintAuthorStateCopyWith<$Res> {
  factory $SprintAuthorStateCopyWith(
          SprintAuthorState value, $Res Function(SprintAuthorState) then) =
      _$SprintAuthorStateCopyWithImpl<$Res, SprintAuthorState>;
  @useResult
  $Res call({SprintAuthorModel model});

  $SprintAuthorModelCopyWith<$Res> get model;
}

/// @nodoc
class _$SprintAuthorStateCopyWithImpl<$Res, $Val extends SprintAuthorState>
    implements $SprintAuthorStateCopyWith<$Res> {
  _$SprintAuthorStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
  }) {
    return _then(_value.copyWith(
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as SprintAuthorModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SprintAuthorModelCopyWith<$Res> get model {
    return $SprintAuthorModelCopyWith<$Res>(_value.model, (value) {
      return _then(_value.copyWith(model: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_IdleCopyWith<$Res>
    implements $SprintAuthorStateCopyWith<$Res> {
  factory _$$_IdleCopyWith(_$_Idle value, $Res Function(_$_Idle) then) =
      __$$_IdleCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SprintAuthorModel model});

  @override
  $SprintAuthorModelCopyWith<$Res> get model;
}

/// @nodoc
class __$$_IdleCopyWithImpl<$Res>
    extends _$SprintAuthorStateCopyWithImpl<$Res, _$_Idle>
    implements _$$_IdleCopyWith<$Res> {
  __$$_IdleCopyWithImpl(_$_Idle _value, $Res Function(_$_Idle) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
  }) {
    return _then(_$_Idle(
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as SprintAuthorModel,
    ));
  }
}

/// @nodoc

class _$_Idle implements _Idle {
  const _$_Idle({this.model = const SprintAuthorModel()});

  @override
  @JsonKey()
  final SprintAuthorModel model;

  @override
  String toString() {
    return 'SprintAuthorState.idle(model: $model)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Idle &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IdleCopyWith<_$_Idle> get copyWith =>
      __$$_IdleCopyWithImpl<_$_Idle>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SprintAuthorModel model) idle,
    required TResult Function(SprintAuthorModel model) loading,
    required TResult Function(SprintAuthorModel model) success,
    required TResult Function(SprintAuthorModel model) updateSuccess,
    required TResult Function(String message, SprintAuthorModel model) error,
  }) {
    return idle(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SprintAuthorModel model)? idle,
    TResult? Function(SprintAuthorModel model)? loading,
    TResult? Function(SprintAuthorModel model)? success,
    TResult? Function(SprintAuthorModel model)? updateSuccess,
    TResult? Function(String message, SprintAuthorModel model)? error,
  }) {
    return idle?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SprintAuthorModel model)? idle,
    TResult Function(SprintAuthorModel model)? loading,
    TResult Function(SprintAuthorModel model)? success,
    TResult Function(SprintAuthorModel model)? updateSuccess,
    TResult Function(String message, SprintAuthorModel model)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_UpdateSuccess value) updateSuccess,
    required TResult Function(_Error value) error,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Idle value)? idle,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_UpdateSuccess value)? updateSuccess,
    TResult? Function(_Error value)? error,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_UpdateSuccess value)? updateSuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class _Idle implements SprintAuthorState {
  const factory _Idle({final SprintAuthorModel model}) = _$_Idle;

  @override
  SprintAuthorModel get model;
  @override
  @JsonKey(ignore: true)
  _$$_IdleCopyWith<_$_Idle> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res>
    implements $SprintAuthorStateCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SprintAuthorModel model});

  @override
  $SprintAuthorModelCopyWith<$Res> get model;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$SprintAuthorStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
  }) {
    return _then(_$_Loading(
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as SprintAuthorModel,
    ));
  }
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading({this.model = const SprintAuthorModel()});

  @override
  @JsonKey()
  final SprintAuthorModel model;

  @override
  String toString() {
    return 'SprintAuthorState.loading(model: $model)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Loading &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadingCopyWith<_$_Loading> get copyWith =>
      __$$_LoadingCopyWithImpl<_$_Loading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SprintAuthorModel model) idle,
    required TResult Function(SprintAuthorModel model) loading,
    required TResult Function(SprintAuthorModel model) success,
    required TResult Function(SprintAuthorModel model) updateSuccess,
    required TResult Function(String message, SprintAuthorModel model) error,
  }) {
    return loading(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SprintAuthorModel model)? idle,
    TResult? Function(SprintAuthorModel model)? loading,
    TResult? Function(SprintAuthorModel model)? success,
    TResult? Function(SprintAuthorModel model)? updateSuccess,
    TResult? Function(String message, SprintAuthorModel model)? error,
  }) {
    return loading?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SprintAuthorModel model)? idle,
    TResult Function(SprintAuthorModel model)? loading,
    TResult Function(SprintAuthorModel model)? success,
    TResult Function(SprintAuthorModel model)? updateSuccess,
    TResult Function(String message, SprintAuthorModel model)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_UpdateSuccess value) updateSuccess,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Idle value)? idle,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_UpdateSuccess value)? updateSuccess,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_UpdateSuccess value)? updateSuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements SprintAuthorState {
  const factory _Loading({final SprintAuthorModel model}) = _$_Loading;

  @override
  SprintAuthorModel get model;
  @override
  @JsonKey(ignore: true)
  _$$_LoadingCopyWith<_$_Loading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SuccessCopyWith<$Res>
    implements $SprintAuthorStateCopyWith<$Res> {
  factory _$$_SuccessCopyWith(
          _$_Success value, $Res Function(_$_Success) then) =
      __$$_SuccessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SprintAuthorModel model});

  @override
  $SprintAuthorModelCopyWith<$Res> get model;
}

/// @nodoc
class __$$_SuccessCopyWithImpl<$Res>
    extends _$SprintAuthorStateCopyWithImpl<$Res, _$_Success>
    implements _$$_SuccessCopyWith<$Res> {
  __$$_SuccessCopyWithImpl(_$_Success _value, $Res Function(_$_Success) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
  }) {
    return _then(_$_Success(
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as SprintAuthorModel,
    ));
  }
}

/// @nodoc

class _$_Success implements _Success {
  const _$_Success({this.model = const SprintAuthorModel()});

  @override
  @JsonKey()
  final SprintAuthorModel model;

  @override
  String toString() {
    return 'SprintAuthorState.success(model: $model)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Success &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SuccessCopyWith<_$_Success> get copyWith =>
      __$$_SuccessCopyWithImpl<_$_Success>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SprintAuthorModel model) idle,
    required TResult Function(SprintAuthorModel model) loading,
    required TResult Function(SprintAuthorModel model) success,
    required TResult Function(SprintAuthorModel model) updateSuccess,
    required TResult Function(String message, SprintAuthorModel model) error,
  }) {
    return success(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SprintAuthorModel model)? idle,
    TResult? Function(SprintAuthorModel model)? loading,
    TResult? Function(SprintAuthorModel model)? success,
    TResult? Function(SprintAuthorModel model)? updateSuccess,
    TResult? Function(String message, SprintAuthorModel model)? error,
  }) {
    return success?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SprintAuthorModel model)? idle,
    TResult Function(SprintAuthorModel model)? loading,
    TResult Function(SprintAuthorModel model)? success,
    TResult Function(SprintAuthorModel model)? updateSuccess,
    TResult Function(String message, SprintAuthorModel model)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_UpdateSuccess value) updateSuccess,
    required TResult Function(_Error value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Idle value)? idle,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_UpdateSuccess value)? updateSuccess,
    TResult? Function(_Error value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_UpdateSuccess value)? updateSuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements SprintAuthorState {
  const factory _Success({final SprintAuthorModel model}) = _$_Success;

  @override
  SprintAuthorModel get model;
  @override
  @JsonKey(ignore: true)
  _$$_SuccessCopyWith<_$_Success> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdateSuccessCopyWith<$Res>
    implements $SprintAuthorStateCopyWith<$Res> {
  factory _$$_UpdateSuccessCopyWith(
          _$_UpdateSuccess value, $Res Function(_$_UpdateSuccess) then) =
      __$$_UpdateSuccessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SprintAuthorModel model});

  @override
  $SprintAuthorModelCopyWith<$Res> get model;
}

/// @nodoc
class __$$_UpdateSuccessCopyWithImpl<$Res>
    extends _$SprintAuthorStateCopyWithImpl<$Res, _$_UpdateSuccess>
    implements _$$_UpdateSuccessCopyWith<$Res> {
  __$$_UpdateSuccessCopyWithImpl(
      _$_UpdateSuccess _value, $Res Function(_$_UpdateSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
  }) {
    return _then(_$_UpdateSuccess(
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as SprintAuthorModel,
    ));
  }
}

/// @nodoc

class _$_UpdateSuccess implements _UpdateSuccess {
  const _$_UpdateSuccess({this.model = const SprintAuthorModel()});

  @override
  @JsonKey()
  final SprintAuthorModel model;

  @override
  String toString() {
    return 'SprintAuthorState.updateSuccess(model: $model)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateSuccess &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateSuccessCopyWith<_$_UpdateSuccess> get copyWith =>
      __$$_UpdateSuccessCopyWithImpl<_$_UpdateSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SprintAuthorModel model) idle,
    required TResult Function(SprintAuthorModel model) loading,
    required TResult Function(SprintAuthorModel model) success,
    required TResult Function(SprintAuthorModel model) updateSuccess,
    required TResult Function(String message, SprintAuthorModel model) error,
  }) {
    return updateSuccess(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SprintAuthorModel model)? idle,
    TResult? Function(SprintAuthorModel model)? loading,
    TResult? Function(SprintAuthorModel model)? success,
    TResult? Function(SprintAuthorModel model)? updateSuccess,
    TResult? Function(String message, SprintAuthorModel model)? error,
  }) {
    return updateSuccess?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SprintAuthorModel model)? idle,
    TResult Function(SprintAuthorModel model)? loading,
    TResult Function(SprintAuthorModel model)? success,
    TResult Function(SprintAuthorModel model)? updateSuccess,
    TResult Function(String message, SprintAuthorModel model)? error,
    required TResult orElse(),
  }) {
    if (updateSuccess != null) {
      return updateSuccess(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_UpdateSuccess value) updateSuccess,
    required TResult Function(_Error value) error,
  }) {
    return updateSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Idle value)? idle,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_UpdateSuccess value)? updateSuccess,
    TResult? Function(_Error value)? error,
  }) {
    return updateSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_UpdateSuccess value)? updateSuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (updateSuccess != null) {
      return updateSuccess(this);
    }
    return orElse();
  }
}

abstract class _UpdateSuccess implements SprintAuthorState {
  const factory _UpdateSuccess({final SprintAuthorModel model}) =
      _$_UpdateSuccess;

  @override
  SprintAuthorModel get model;
  @override
  @JsonKey(ignore: true)
  _$$_UpdateSuccessCopyWith<_$_UpdateSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ErrorCopyWith<$Res>
    implements $SprintAuthorStateCopyWith<$Res> {
  factory _$$_ErrorCopyWith(_$_Error value, $Res Function(_$_Error) then) =
      __$$_ErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, SprintAuthorModel model});

  @override
  $SprintAuthorModelCopyWith<$Res> get model;
}

/// @nodoc
class __$$_ErrorCopyWithImpl<$Res>
    extends _$SprintAuthorStateCopyWithImpl<$Res, _$_Error>
    implements _$$_ErrorCopyWith<$Res> {
  __$$_ErrorCopyWithImpl(_$_Error _value, $Res Function(_$_Error) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? model = null,
  }) {
    return _then(_$_Error(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as SprintAuthorModel,
    ));
  }
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error(this.message, {this.model = const SprintAuthorModel()});

  @override
  final String message;
  @override
  @JsonKey()
  final SprintAuthorModel model;

  @override
  String toString() {
    return 'SprintAuthorState.error(message: $message, model: $model)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Error &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      __$$_ErrorCopyWithImpl<_$_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SprintAuthorModel model) idle,
    required TResult Function(SprintAuthorModel model) loading,
    required TResult Function(SprintAuthorModel model) success,
    required TResult Function(SprintAuthorModel model) updateSuccess,
    required TResult Function(String message, SprintAuthorModel model) error,
  }) {
    return error(message, model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SprintAuthorModel model)? idle,
    TResult? Function(SprintAuthorModel model)? loading,
    TResult? Function(SprintAuthorModel model)? success,
    TResult? Function(SprintAuthorModel model)? updateSuccess,
    TResult? Function(String message, SprintAuthorModel model)? error,
  }) {
    return error?.call(message, model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SprintAuthorModel model)? idle,
    TResult Function(SprintAuthorModel model)? loading,
    TResult Function(SprintAuthorModel model)? success,
    TResult Function(SprintAuthorModel model)? updateSuccess,
    TResult Function(String message, SprintAuthorModel model)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message, model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_UpdateSuccess value) updateSuccess,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Idle value)? idle,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_UpdateSuccess value)? updateSuccess,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_UpdateSuccess value)? updateSuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements SprintAuthorState {
  const factory _Error(final String message, {final SprintAuthorModel model}) =
      _$_Error;

  String get message;
  @override
  SprintAuthorModel get model;
  @override
  @JsonKey(ignore: true)
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      throw _privateConstructorUsedError;
}
