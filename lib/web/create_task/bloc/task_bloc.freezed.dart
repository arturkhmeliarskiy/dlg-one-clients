// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'task_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TaskEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DlsTasks? task, String? title,
            DlsTasks? parentTask, TaskStatusType? status, DLSUser? currentUser)
        init,
    required TResult Function(SaveTaskModel model) updateModel,
    required TResult Function(bool isDoc, String? name, Uint8List? file)
        addFile,
    required TResult Function(int index) deleteFile,
    required TResult Function(String title, bool? checked) addRecord,
    required TResult Function(int index) deleteRecord,
    required TResult Function(int index, String? name, bool isActive)
        updateRecord,
    required TResult Function(String title) addTag,
    required TResult Function(bool withLoading) saveTask,
    required TResult Function(DlsTask request) updateTask,
    required TResult Function() deleteTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DlsTasks? task, String? title, DlsTasks? parentTask,
            TaskStatusType? status, DLSUser? currentUser)?
        init,
    TResult? Function(SaveTaskModel model)? updateModel,
    TResult? Function(bool isDoc, String? name, Uint8List? file)? addFile,
    TResult? Function(int index)? deleteFile,
    TResult? Function(String title, bool? checked)? addRecord,
    TResult? Function(int index)? deleteRecord,
    TResult? Function(int index, String? name, bool isActive)? updateRecord,
    TResult? Function(String title)? addTag,
    TResult? Function(bool withLoading)? saveTask,
    TResult? Function(DlsTask request)? updateTask,
    TResult? Function()? deleteTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DlsTasks? task, String? title, DlsTasks? parentTask,
            TaskStatusType? status, DLSUser? currentUser)?
        init,
    TResult Function(SaveTaskModel model)? updateModel,
    TResult Function(bool isDoc, String? name, Uint8List? file)? addFile,
    TResult Function(int index)? deleteFile,
    TResult Function(String title, bool? checked)? addRecord,
    TResult Function(int index)? deleteRecord,
    TResult Function(int index, String? name, bool isActive)? updateRecord,
    TResult Function(String title)? addTag,
    TResult Function(bool withLoading)? saveTask,
    TResult Function(DlsTask request)? updateTask,
    TResult Function()? deleteTask,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_UpdateModel value) updateModel,
    required TResult Function(_AddFile value) addFile,
    required TResult Function(_DeleteFile value) deleteFile,
    required TResult Function(_AddRecord value) addRecord,
    required TResult Function(_DeleteRecord value) deleteRecord,
    required TResult Function(_UpdateRecord value) updateRecord,
    required TResult Function(_AddTag value) addTag,
    required TResult Function(_SaveTask value) saveTask,
    required TResult Function(_UpdateTask value) updateTask,
    required TResult Function(_DeleteTask value) deleteTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_UpdateModel value)? updateModel,
    TResult? Function(_AddFile value)? addFile,
    TResult? Function(_DeleteFile value)? deleteFile,
    TResult? Function(_AddRecord value)? addRecord,
    TResult? Function(_DeleteRecord value)? deleteRecord,
    TResult? Function(_UpdateRecord value)? updateRecord,
    TResult? Function(_AddTag value)? addTag,
    TResult? Function(_SaveTask value)? saveTask,
    TResult? Function(_UpdateTask value)? updateTask,
    TResult? Function(_DeleteTask value)? deleteTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_UpdateModel value)? updateModel,
    TResult Function(_AddFile value)? addFile,
    TResult Function(_DeleteFile value)? deleteFile,
    TResult Function(_AddRecord value)? addRecord,
    TResult Function(_DeleteRecord value)? deleteRecord,
    TResult Function(_UpdateRecord value)? updateRecord,
    TResult Function(_AddTag value)? addTag,
    TResult Function(_SaveTask value)? saveTask,
    TResult Function(_UpdateTask value)? updateTask,
    TResult Function(_DeleteTask value)? deleteTask,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskEventCopyWith<$Res> {
  factory $TaskEventCopyWith(TaskEvent value, $Res Function(TaskEvent) then) =
      _$TaskEventCopyWithImpl<$Res, TaskEvent>;
}

/// @nodoc
class _$TaskEventCopyWithImpl<$Res, $Val extends TaskEvent>
    implements $TaskEventCopyWith<$Res> {
  _$TaskEventCopyWithImpl(this._value, this._then);

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
      {DlsTasks? task,
      String? title,
      DlsTasks? parentTask,
      TaskStatusType? status,
      DLSUser? currentUser});

  $DlsTasksCopyWith<$Res>? get task;
  $DlsTasksCopyWith<$Res>? get parentTask;
  $DLSUserCopyWith<$Res>? get currentUser;
}

/// @nodoc
class __$$_InitCopyWithImpl<$Res> extends _$TaskEventCopyWithImpl<$Res, _$_Init>
    implements _$$_InitCopyWith<$Res> {
  __$$_InitCopyWithImpl(_$_Init _value, $Res Function(_$_Init) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? task = freezed,
    Object? title = freezed,
    Object? parentTask = freezed,
    Object? status = freezed,
    Object? currentUser = freezed,
  }) {
    return _then(_$_Init(
      task: freezed == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as DlsTasks?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      parentTask: freezed == parentTask
          ? _value.parentTask
          : parentTask // ignore: cast_nullable_to_non_nullable
              as DlsTasks?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TaskStatusType?,
      currentUser: freezed == currentUser
          ? _value.currentUser
          : currentUser // ignore: cast_nullable_to_non_nullable
              as DLSUser?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $DlsTasksCopyWith<$Res>? get task {
    if (_value.task == null) {
      return null;
    }

    return $DlsTasksCopyWith<$Res>(_value.task!, (value) {
      return _then(_value.copyWith(task: value));
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DlsTasksCopyWith<$Res>? get parentTask {
    if (_value.parentTask == null) {
      return null;
    }

    return $DlsTasksCopyWith<$Res>(_value.parentTask!, (value) {
      return _then(_value.copyWith(parentTask: value));
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
      {this.task, this.title, this.parentTask, this.status, this.currentUser})
      : super._();

  @override
  final DlsTasks? task;
  @override
  final String? title;
  @override
  final DlsTasks? parentTask;
  @override
  final TaskStatusType? status;
  @override
  final DLSUser? currentUser;

  @override
  String toString() {
    return 'TaskEvent.init(task: $task, title: $title, parentTask: $parentTask, status: $status, currentUser: $currentUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Init &&
            (identical(other.task, task) || other.task == task) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.parentTask, parentTask) ||
                other.parentTask == parentTask) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.currentUser, currentUser) ||
                other.currentUser == currentUser));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, task, title, parentTask, status, currentUser);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitCopyWith<_$_Init> get copyWith =>
      __$$_InitCopyWithImpl<_$_Init>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DlsTasks? task, String? title,
            DlsTasks? parentTask, TaskStatusType? status, DLSUser? currentUser)
        init,
    required TResult Function(SaveTaskModel model) updateModel,
    required TResult Function(bool isDoc, String? name, Uint8List? file)
        addFile,
    required TResult Function(int index) deleteFile,
    required TResult Function(String title, bool? checked) addRecord,
    required TResult Function(int index) deleteRecord,
    required TResult Function(int index, String? name, bool isActive)
        updateRecord,
    required TResult Function(String title) addTag,
    required TResult Function(bool withLoading) saveTask,
    required TResult Function(DlsTask request) updateTask,
    required TResult Function() deleteTask,
  }) {
    return init(task, title, parentTask, status, currentUser);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DlsTasks? task, String? title, DlsTasks? parentTask,
            TaskStatusType? status, DLSUser? currentUser)?
        init,
    TResult? Function(SaveTaskModel model)? updateModel,
    TResult? Function(bool isDoc, String? name, Uint8List? file)? addFile,
    TResult? Function(int index)? deleteFile,
    TResult? Function(String title, bool? checked)? addRecord,
    TResult? Function(int index)? deleteRecord,
    TResult? Function(int index, String? name, bool isActive)? updateRecord,
    TResult? Function(String title)? addTag,
    TResult? Function(bool withLoading)? saveTask,
    TResult? Function(DlsTask request)? updateTask,
    TResult? Function()? deleteTask,
  }) {
    return init?.call(task, title, parentTask, status, currentUser);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DlsTasks? task, String? title, DlsTasks? parentTask,
            TaskStatusType? status, DLSUser? currentUser)?
        init,
    TResult Function(SaveTaskModel model)? updateModel,
    TResult Function(bool isDoc, String? name, Uint8List? file)? addFile,
    TResult Function(int index)? deleteFile,
    TResult Function(String title, bool? checked)? addRecord,
    TResult Function(int index)? deleteRecord,
    TResult Function(int index, String? name, bool isActive)? updateRecord,
    TResult Function(String title)? addTag,
    TResult Function(bool withLoading)? saveTask,
    TResult Function(DlsTask request)? updateTask,
    TResult Function()? deleteTask,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(task, title, parentTask, status, currentUser);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_UpdateModel value) updateModel,
    required TResult Function(_AddFile value) addFile,
    required TResult Function(_DeleteFile value) deleteFile,
    required TResult Function(_AddRecord value) addRecord,
    required TResult Function(_DeleteRecord value) deleteRecord,
    required TResult Function(_UpdateRecord value) updateRecord,
    required TResult Function(_AddTag value) addTag,
    required TResult Function(_SaveTask value) saveTask,
    required TResult Function(_UpdateTask value) updateTask,
    required TResult Function(_DeleteTask value) deleteTask,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_UpdateModel value)? updateModel,
    TResult? Function(_AddFile value)? addFile,
    TResult? Function(_DeleteFile value)? deleteFile,
    TResult? Function(_AddRecord value)? addRecord,
    TResult? Function(_DeleteRecord value)? deleteRecord,
    TResult? Function(_UpdateRecord value)? updateRecord,
    TResult? Function(_AddTag value)? addTag,
    TResult? Function(_SaveTask value)? saveTask,
    TResult? Function(_UpdateTask value)? updateTask,
    TResult? Function(_DeleteTask value)? deleteTask,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_UpdateModel value)? updateModel,
    TResult Function(_AddFile value)? addFile,
    TResult Function(_DeleteFile value)? deleteFile,
    TResult Function(_AddRecord value)? addRecord,
    TResult Function(_DeleteRecord value)? deleteRecord,
    TResult Function(_UpdateRecord value)? updateRecord,
    TResult Function(_AddTag value)? addTag,
    TResult Function(_SaveTask value)? saveTask,
    TResult Function(_UpdateTask value)? updateTask,
    TResult Function(_DeleteTask value)? deleteTask,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _Init extends TaskEvent {
  const factory _Init(
      {final DlsTasks? task,
      final String? title,
      final DlsTasks? parentTask,
      final TaskStatusType? status,
      final DLSUser? currentUser}) = _$_Init;
  const _Init._() : super._();

  DlsTasks? get task;
  String? get title;
  DlsTasks? get parentTask;
  TaskStatusType? get status;
  DLSUser? get currentUser;
  @JsonKey(ignore: true)
  _$$_InitCopyWith<_$_Init> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdateModelCopyWith<$Res> {
  factory _$$_UpdateModelCopyWith(
          _$_UpdateModel value, $Res Function(_$_UpdateModel) then) =
      __$$_UpdateModelCopyWithImpl<$Res>;
  @useResult
  $Res call({SaveTaskModel model});

  $SaveTaskModelCopyWith<$Res> get model;
}

/// @nodoc
class __$$_UpdateModelCopyWithImpl<$Res>
    extends _$TaskEventCopyWithImpl<$Res, _$_UpdateModel>
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
              as SaveTaskModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $SaveTaskModelCopyWith<$Res> get model {
    return $SaveTaskModelCopyWith<$Res>(_value.model, (value) {
      return _then(_value.copyWith(model: value));
    });
  }
}

/// @nodoc

class _$_UpdateModel extends _UpdateModel {
  const _$_UpdateModel(this.model) : super._();

  @override
  final SaveTaskModel model;

  @override
  String toString() {
    return 'TaskEvent.updateModel(model: $model)';
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
    required TResult Function(DlsTasks? task, String? title,
            DlsTasks? parentTask, TaskStatusType? status, DLSUser? currentUser)
        init,
    required TResult Function(SaveTaskModel model) updateModel,
    required TResult Function(bool isDoc, String? name, Uint8List? file)
        addFile,
    required TResult Function(int index) deleteFile,
    required TResult Function(String title, bool? checked) addRecord,
    required TResult Function(int index) deleteRecord,
    required TResult Function(int index, String? name, bool isActive)
        updateRecord,
    required TResult Function(String title) addTag,
    required TResult Function(bool withLoading) saveTask,
    required TResult Function(DlsTask request) updateTask,
    required TResult Function() deleteTask,
  }) {
    return updateModel(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DlsTasks? task, String? title, DlsTasks? parentTask,
            TaskStatusType? status, DLSUser? currentUser)?
        init,
    TResult? Function(SaveTaskModel model)? updateModel,
    TResult? Function(bool isDoc, String? name, Uint8List? file)? addFile,
    TResult? Function(int index)? deleteFile,
    TResult? Function(String title, bool? checked)? addRecord,
    TResult? Function(int index)? deleteRecord,
    TResult? Function(int index, String? name, bool isActive)? updateRecord,
    TResult? Function(String title)? addTag,
    TResult? Function(bool withLoading)? saveTask,
    TResult? Function(DlsTask request)? updateTask,
    TResult? Function()? deleteTask,
  }) {
    return updateModel?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DlsTasks? task, String? title, DlsTasks? parentTask,
            TaskStatusType? status, DLSUser? currentUser)?
        init,
    TResult Function(SaveTaskModel model)? updateModel,
    TResult Function(bool isDoc, String? name, Uint8List? file)? addFile,
    TResult Function(int index)? deleteFile,
    TResult Function(String title, bool? checked)? addRecord,
    TResult Function(int index)? deleteRecord,
    TResult Function(int index, String? name, bool isActive)? updateRecord,
    TResult Function(String title)? addTag,
    TResult Function(bool withLoading)? saveTask,
    TResult Function(DlsTask request)? updateTask,
    TResult Function()? deleteTask,
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
    required TResult Function(_UpdateModel value) updateModel,
    required TResult Function(_AddFile value) addFile,
    required TResult Function(_DeleteFile value) deleteFile,
    required TResult Function(_AddRecord value) addRecord,
    required TResult Function(_DeleteRecord value) deleteRecord,
    required TResult Function(_UpdateRecord value) updateRecord,
    required TResult Function(_AddTag value) addTag,
    required TResult Function(_SaveTask value) saveTask,
    required TResult Function(_UpdateTask value) updateTask,
    required TResult Function(_DeleteTask value) deleteTask,
  }) {
    return updateModel(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_UpdateModel value)? updateModel,
    TResult? Function(_AddFile value)? addFile,
    TResult? Function(_DeleteFile value)? deleteFile,
    TResult? Function(_AddRecord value)? addRecord,
    TResult? Function(_DeleteRecord value)? deleteRecord,
    TResult? Function(_UpdateRecord value)? updateRecord,
    TResult? Function(_AddTag value)? addTag,
    TResult? Function(_SaveTask value)? saveTask,
    TResult? Function(_UpdateTask value)? updateTask,
    TResult? Function(_DeleteTask value)? deleteTask,
  }) {
    return updateModel?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_UpdateModel value)? updateModel,
    TResult Function(_AddFile value)? addFile,
    TResult Function(_DeleteFile value)? deleteFile,
    TResult Function(_AddRecord value)? addRecord,
    TResult Function(_DeleteRecord value)? deleteRecord,
    TResult Function(_UpdateRecord value)? updateRecord,
    TResult Function(_AddTag value)? addTag,
    TResult Function(_SaveTask value)? saveTask,
    TResult Function(_UpdateTask value)? updateTask,
    TResult Function(_DeleteTask value)? deleteTask,
    required TResult orElse(),
  }) {
    if (updateModel != null) {
      return updateModel(this);
    }
    return orElse();
  }
}

abstract class _UpdateModel extends TaskEvent {
  const factory _UpdateModel(final SaveTaskModel model) = _$_UpdateModel;
  const _UpdateModel._() : super._();

  SaveTaskModel get model;
  @JsonKey(ignore: true)
  _$$_UpdateModelCopyWith<_$_UpdateModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AddFileCopyWith<$Res> {
  factory _$$_AddFileCopyWith(
          _$_AddFile value, $Res Function(_$_AddFile) then) =
      __$$_AddFileCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isDoc, String? name, Uint8List? file});
}

/// @nodoc
class __$$_AddFileCopyWithImpl<$Res>
    extends _$TaskEventCopyWithImpl<$Res, _$_AddFile>
    implements _$$_AddFileCopyWith<$Res> {
  __$$_AddFileCopyWithImpl(_$_AddFile _value, $Res Function(_$_AddFile) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDoc = null,
    Object? name = freezed,
    Object? file = freezed,
  }) {
    return _then(_$_AddFile(
      isDoc: null == isDoc
          ? _value.isDoc
          : isDoc // ignore: cast_nullable_to_non_nullable
              as bool,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      file: freezed == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
    ));
  }
}

/// @nodoc

class _$_AddFile extends _AddFile {
  const _$_AddFile({this.isDoc = false, this.name, this.file}) : super._();

  @override
  @JsonKey()
  final bool isDoc;
  @override
  final String? name;
  @override
  final Uint8List? file;

  @override
  String toString() {
    return 'TaskEvent.addFile(isDoc: $isDoc, name: $name, file: $file)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddFile &&
            (identical(other.isDoc, isDoc) || other.isDoc == isDoc) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other.file, file));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, isDoc, name, const DeepCollectionEquality().hash(file));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddFileCopyWith<_$_AddFile> get copyWith =>
      __$$_AddFileCopyWithImpl<_$_AddFile>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DlsTasks? task, String? title,
            DlsTasks? parentTask, TaskStatusType? status, DLSUser? currentUser)
        init,
    required TResult Function(SaveTaskModel model) updateModel,
    required TResult Function(bool isDoc, String? name, Uint8List? file)
        addFile,
    required TResult Function(int index) deleteFile,
    required TResult Function(String title, bool? checked) addRecord,
    required TResult Function(int index) deleteRecord,
    required TResult Function(int index, String? name, bool isActive)
        updateRecord,
    required TResult Function(String title) addTag,
    required TResult Function(bool withLoading) saveTask,
    required TResult Function(DlsTask request) updateTask,
    required TResult Function() deleteTask,
  }) {
    return addFile(isDoc, name, file);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DlsTasks? task, String? title, DlsTasks? parentTask,
            TaskStatusType? status, DLSUser? currentUser)?
        init,
    TResult? Function(SaveTaskModel model)? updateModel,
    TResult? Function(bool isDoc, String? name, Uint8List? file)? addFile,
    TResult? Function(int index)? deleteFile,
    TResult? Function(String title, bool? checked)? addRecord,
    TResult? Function(int index)? deleteRecord,
    TResult? Function(int index, String? name, bool isActive)? updateRecord,
    TResult? Function(String title)? addTag,
    TResult? Function(bool withLoading)? saveTask,
    TResult? Function(DlsTask request)? updateTask,
    TResult? Function()? deleteTask,
  }) {
    return addFile?.call(isDoc, name, file);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DlsTasks? task, String? title, DlsTasks? parentTask,
            TaskStatusType? status, DLSUser? currentUser)?
        init,
    TResult Function(SaveTaskModel model)? updateModel,
    TResult Function(bool isDoc, String? name, Uint8List? file)? addFile,
    TResult Function(int index)? deleteFile,
    TResult Function(String title, bool? checked)? addRecord,
    TResult Function(int index)? deleteRecord,
    TResult Function(int index, String? name, bool isActive)? updateRecord,
    TResult Function(String title)? addTag,
    TResult Function(bool withLoading)? saveTask,
    TResult Function(DlsTask request)? updateTask,
    TResult Function()? deleteTask,
    required TResult orElse(),
  }) {
    if (addFile != null) {
      return addFile(isDoc, name, file);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_UpdateModel value) updateModel,
    required TResult Function(_AddFile value) addFile,
    required TResult Function(_DeleteFile value) deleteFile,
    required TResult Function(_AddRecord value) addRecord,
    required TResult Function(_DeleteRecord value) deleteRecord,
    required TResult Function(_UpdateRecord value) updateRecord,
    required TResult Function(_AddTag value) addTag,
    required TResult Function(_SaveTask value) saveTask,
    required TResult Function(_UpdateTask value) updateTask,
    required TResult Function(_DeleteTask value) deleteTask,
  }) {
    return addFile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_UpdateModel value)? updateModel,
    TResult? Function(_AddFile value)? addFile,
    TResult? Function(_DeleteFile value)? deleteFile,
    TResult? Function(_AddRecord value)? addRecord,
    TResult? Function(_DeleteRecord value)? deleteRecord,
    TResult? Function(_UpdateRecord value)? updateRecord,
    TResult? Function(_AddTag value)? addTag,
    TResult? Function(_SaveTask value)? saveTask,
    TResult? Function(_UpdateTask value)? updateTask,
    TResult? Function(_DeleteTask value)? deleteTask,
  }) {
    return addFile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_UpdateModel value)? updateModel,
    TResult Function(_AddFile value)? addFile,
    TResult Function(_DeleteFile value)? deleteFile,
    TResult Function(_AddRecord value)? addRecord,
    TResult Function(_DeleteRecord value)? deleteRecord,
    TResult Function(_UpdateRecord value)? updateRecord,
    TResult Function(_AddTag value)? addTag,
    TResult Function(_SaveTask value)? saveTask,
    TResult Function(_UpdateTask value)? updateTask,
    TResult Function(_DeleteTask value)? deleteTask,
    required TResult orElse(),
  }) {
    if (addFile != null) {
      return addFile(this);
    }
    return orElse();
  }
}

abstract class _AddFile extends TaskEvent {
  const factory _AddFile(
      {final bool isDoc,
      final String? name,
      final Uint8List? file}) = _$_AddFile;
  const _AddFile._() : super._();

  bool get isDoc;
  String? get name;
  Uint8List? get file;
  @JsonKey(ignore: true)
  _$$_AddFileCopyWith<_$_AddFile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DeleteFileCopyWith<$Res> {
  factory _$$_DeleteFileCopyWith(
          _$_DeleteFile value, $Res Function(_$_DeleteFile) then) =
      __$$_DeleteFileCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$_DeleteFileCopyWithImpl<$Res>
    extends _$TaskEventCopyWithImpl<$Res, _$_DeleteFile>
    implements _$$_DeleteFileCopyWith<$Res> {
  __$$_DeleteFileCopyWithImpl(
      _$_DeleteFile _value, $Res Function(_$_DeleteFile) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$_DeleteFile(
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_DeleteFile extends _DeleteFile {
  const _$_DeleteFile(this.index) : super._();

  @override
  final int index;

  @override
  String toString() {
    return 'TaskEvent.deleteFile(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeleteFile &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeleteFileCopyWith<_$_DeleteFile> get copyWith =>
      __$$_DeleteFileCopyWithImpl<_$_DeleteFile>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DlsTasks? task, String? title,
            DlsTasks? parentTask, TaskStatusType? status, DLSUser? currentUser)
        init,
    required TResult Function(SaveTaskModel model) updateModel,
    required TResult Function(bool isDoc, String? name, Uint8List? file)
        addFile,
    required TResult Function(int index) deleteFile,
    required TResult Function(String title, bool? checked) addRecord,
    required TResult Function(int index) deleteRecord,
    required TResult Function(int index, String? name, bool isActive)
        updateRecord,
    required TResult Function(String title) addTag,
    required TResult Function(bool withLoading) saveTask,
    required TResult Function(DlsTask request) updateTask,
    required TResult Function() deleteTask,
  }) {
    return deleteFile(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DlsTasks? task, String? title, DlsTasks? parentTask,
            TaskStatusType? status, DLSUser? currentUser)?
        init,
    TResult? Function(SaveTaskModel model)? updateModel,
    TResult? Function(bool isDoc, String? name, Uint8List? file)? addFile,
    TResult? Function(int index)? deleteFile,
    TResult? Function(String title, bool? checked)? addRecord,
    TResult? Function(int index)? deleteRecord,
    TResult? Function(int index, String? name, bool isActive)? updateRecord,
    TResult? Function(String title)? addTag,
    TResult? Function(bool withLoading)? saveTask,
    TResult? Function(DlsTask request)? updateTask,
    TResult? Function()? deleteTask,
  }) {
    return deleteFile?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DlsTasks? task, String? title, DlsTasks? parentTask,
            TaskStatusType? status, DLSUser? currentUser)?
        init,
    TResult Function(SaveTaskModel model)? updateModel,
    TResult Function(bool isDoc, String? name, Uint8List? file)? addFile,
    TResult Function(int index)? deleteFile,
    TResult Function(String title, bool? checked)? addRecord,
    TResult Function(int index)? deleteRecord,
    TResult Function(int index, String? name, bool isActive)? updateRecord,
    TResult Function(String title)? addTag,
    TResult Function(bool withLoading)? saveTask,
    TResult Function(DlsTask request)? updateTask,
    TResult Function()? deleteTask,
    required TResult orElse(),
  }) {
    if (deleteFile != null) {
      return deleteFile(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_UpdateModel value) updateModel,
    required TResult Function(_AddFile value) addFile,
    required TResult Function(_DeleteFile value) deleteFile,
    required TResult Function(_AddRecord value) addRecord,
    required TResult Function(_DeleteRecord value) deleteRecord,
    required TResult Function(_UpdateRecord value) updateRecord,
    required TResult Function(_AddTag value) addTag,
    required TResult Function(_SaveTask value) saveTask,
    required TResult Function(_UpdateTask value) updateTask,
    required TResult Function(_DeleteTask value) deleteTask,
  }) {
    return deleteFile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_UpdateModel value)? updateModel,
    TResult? Function(_AddFile value)? addFile,
    TResult? Function(_DeleteFile value)? deleteFile,
    TResult? Function(_AddRecord value)? addRecord,
    TResult? Function(_DeleteRecord value)? deleteRecord,
    TResult? Function(_UpdateRecord value)? updateRecord,
    TResult? Function(_AddTag value)? addTag,
    TResult? Function(_SaveTask value)? saveTask,
    TResult? Function(_UpdateTask value)? updateTask,
    TResult? Function(_DeleteTask value)? deleteTask,
  }) {
    return deleteFile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_UpdateModel value)? updateModel,
    TResult Function(_AddFile value)? addFile,
    TResult Function(_DeleteFile value)? deleteFile,
    TResult Function(_AddRecord value)? addRecord,
    TResult Function(_DeleteRecord value)? deleteRecord,
    TResult Function(_UpdateRecord value)? updateRecord,
    TResult Function(_AddTag value)? addTag,
    TResult Function(_SaveTask value)? saveTask,
    TResult Function(_UpdateTask value)? updateTask,
    TResult Function(_DeleteTask value)? deleteTask,
    required TResult orElse(),
  }) {
    if (deleteFile != null) {
      return deleteFile(this);
    }
    return orElse();
  }
}

abstract class _DeleteFile extends TaskEvent {
  const factory _DeleteFile(final int index) = _$_DeleteFile;
  const _DeleteFile._() : super._();

  int get index;
  @JsonKey(ignore: true)
  _$$_DeleteFileCopyWith<_$_DeleteFile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AddRecordCopyWith<$Res> {
  factory _$$_AddRecordCopyWith(
          _$_AddRecord value, $Res Function(_$_AddRecord) then) =
      __$$_AddRecordCopyWithImpl<$Res>;
  @useResult
  $Res call({String title, bool? checked});
}

/// @nodoc
class __$$_AddRecordCopyWithImpl<$Res>
    extends _$TaskEventCopyWithImpl<$Res, _$_AddRecord>
    implements _$$_AddRecordCopyWith<$Res> {
  __$$_AddRecordCopyWithImpl(
      _$_AddRecord _value, $Res Function(_$_AddRecord) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? checked = freezed,
  }) {
    return _then(_$_AddRecord(
      null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      checked: freezed == checked
          ? _value.checked
          : checked // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$_AddRecord extends _AddRecord {
  const _$_AddRecord(this.title, {this.checked}) : super._();

  @override
  final String title;
  @override
  final bool? checked;

  @override
  String toString() {
    return 'TaskEvent.addRecord(title: $title, checked: $checked)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddRecord &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.checked, checked) || other.checked == checked));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, checked);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddRecordCopyWith<_$_AddRecord> get copyWith =>
      __$$_AddRecordCopyWithImpl<_$_AddRecord>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DlsTasks? task, String? title,
            DlsTasks? parentTask, TaskStatusType? status, DLSUser? currentUser)
        init,
    required TResult Function(SaveTaskModel model) updateModel,
    required TResult Function(bool isDoc, String? name, Uint8List? file)
        addFile,
    required TResult Function(int index) deleteFile,
    required TResult Function(String title, bool? checked) addRecord,
    required TResult Function(int index) deleteRecord,
    required TResult Function(int index, String? name, bool isActive)
        updateRecord,
    required TResult Function(String title) addTag,
    required TResult Function(bool withLoading) saveTask,
    required TResult Function(DlsTask request) updateTask,
    required TResult Function() deleteTask,
  }) {
    return addRecord(title, checked);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DlsTasks? task, String? title, DlsTasks? parentTask,
            TaskStatusType? status, DLSUser? currentUser)?
        init,
    TResult? Function(SaveTaskModel model)? updateModel,
    TResult? Function(bool isDoc, String? name, Uint8List? file)? addFile,
    TResult? Function(int index)? deleteFile,
    TResult? Function(String title, bool? checked)? addRecord,
    TResult? Function(int index)? deleteRecord,
    TResult? Function(int index, String? name, bool isActive)? updateRecord,
    TResult? Function(String title)? addTag,
    TResult? Function(bool withLoading)? saveTask,
    TResult? Function(DlsTask request)? updateTask,
    TResult? Function()? deleteTask,
  }) {
    return addRecord?.call(title, checked);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DlsTasks? task, String? title, DlsTasks? parentTask,
            TaskStatusType? status, DLSUser? currentUser)?
        init,
    TResult Function(SaveTaskModel model)? updateModel,
    TResult Function(bool isDoc, String? name, Uint8List? file)? addFile,
    TResult Function(int index)? deleteFile,
    TResult Function(String title, bool? checked)? addRecord,
    TResult Function(int index)? deleteRecord,
    TResult Function(int index, String? name, bool isActive)? updateRecord,
    TResult Function(String title)? addTag,
    TResult Function(bool withLoading)? saveTask,
    TResult Function(DlsTask request)? updateTask,
    TResult Function()? deleteTask,
    required TResult orElse(),
  }) {
    if (addRecord != null) {
      return addRecord(title, checked);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_UpdateModel value) updateModel,
    required TResult Function(_AddFile value) addFile,
    required TResult Function(_DeleteFile value) deleteFile,
    required TResult Function(_AddRecord value) addRecord,
    required TResult Function(_DeleteRecord value) deleteRecord,
    required TResult Function(_UpdateRecord value) updateRecord,
    required TResult Function(_AddTag value) addTag,
    required TResult Function(_SaveTask value) saveTask,
    required TResult Function(_UpdateTask value) updateTask,
    required TResult Function(_DeleteTask value) deleteTask,
  }) {
    return addRecord(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_UpdateModel value)? updateModel,
    TResult? Function(_AddFile value)? addFile,
    TResult? Function(_DeleteFile value)? deleteFile,
    TResult? Function(_AddRecord value)? addRecord,
    TResult? Function(_DeleteRecord value)? deleteRecord,
    TResult? Function(_UpdateRecord value)? updateRecord,
    TResult? Function(_AddTag value)? addTag,
    TResult? Function(_SaveTask value)? saveTask,
    TResult? Function(_UpdateTask value)? updateTask,
    TResult? Function(_DeleteTask value)? deleteTask,
  }) {
    return addRecord?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_UpdateModel value)? updateModel,
    TResult Function(_AddFile value)? addFile,
    TResult Function(_DeleteFile value)? deleteFile,
    TResult Function(_AddRecord value)? addRecord,
    TResult Function(_DeleteRecord value)? deleteRecord,
    TResult Function(_UpdateRecord value)? updateRecord,
    TResult Function(_AddTag value)? addTag,
    TResult Function(_SaveTask value)? saveTask,
    TResult Function(_UpdateTask value)? updateTask,
    TResult Function(_DeleteTask value)? deleteTask,
    required TResult orElse(),
  }) {
    if (addRecord != null) {
      return addRecord(this);
    }
    return orElse();
  }
}

abstract class _AddRecord extends TaskEvent {
  const factory _AddRecord(final String title, {final bool? checked}) =
      _$_AddRecord;
  const _AddRecord._() : super._();

  String get title;
  bool? get checked;
  @JsonKey(ignore: true)
  _$$_AddRecordCopyWith<_$_AddRecord> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DeleteRecordCopyWith<$Res> {
  factory _$$_DeleteRecordCopyWith(
          _$_DeleteRecord value, $Res Function(_$_DeleteRecord) then) =
      __$$_DeleteRecordCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$_DeleteRecordCopyWithImpl<$Res>
    extends _$TaskEventCopyWithImpl<$Res, _$_DeleteRecord>
    implements _$$_DeleteRecordCopyWith<$Res> {
  __$$_DeleteRecordCopyWithImpl(
      _$_DeleteRecord _value, $Res Function(_$_DeleteRecord) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$_DeleteRecord(
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_DeleteRecord extends _DeleteRecord {
  const _$_DeleteRecord(this.index) : super._();

  @override
  final int index;

  @override
  String toString() {
    return 'TaskEvent.deleteRecord(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeleteRecord &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeleteRecordCopyWith<_$_DeleteRecord> get copyWith =>
      __$$_DeleteRecordCopyWithImpl<_$_DeleteRecord>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DlsTasks? task, String? title,
            DlsTasks? parentTask, TaskStatusType? status, DLSUser? currentUser)
        init,
    required TResult Function(SaveTaskModel model) updateModel,
    required TResult Function(bool isDoc, String? name, Uint8List? file)
        addFile,
    required TResult Function(int index) deleteFile,
    required TResult Function(String title, bool? checked) addRecord,
    required TResult Function(int index) deleteRecord,
    required TResult Function(int index, String? name, bool isActive)
        updateRecord,
    required TResult Function(String title) addTag,
    required TResult Function(bool withLoading) saveTask,
    required TResult Function(DlsTask request) updateTask,
    required TResult Function() deleteTask,
  }) {
    return deleteRecord(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DlsTasks? task, String? title, DlsTasks? parentTask,
            TaskStatusType? status, DLSUser? currentUser)?
        init,
    TResult? Function(SaveTaskModel model)? updateModel,
    TResult? Function(bool isDoc, String? name, Uint8List? file)? addFile,
    TResult? Function(int index)? deleteFile,
    TResult? Function(String title, bool? checked)? addRecord,
    TResult? Function(int index)? deleteRecord,
    TResult? Function(int index, String? name, bool isActive)? updateRecord,
    TResult? Function(String title)? addTag,
    TResult? Function(bool withLoading)? saveTask,
    TResult? Function(DlsTask request)? updateTask,
    TResult? Function()? deleteTask,
  }) {
    return deleteRecord?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DlsTasks? task, String? title, DlsTasks? parentTask,
            TaskStatusType? status, DLSUser? currentUser)?
        init,
    TResult Function(SaveTaskModel model)? updateModel,
    TResult Function(bool isDoc, String? name, Uint8List? file)? addFile,
    TResult Function(int index)? deleteFile,
    TResult Function(String title, bool? checked)? addRecord,
    TResult Function(int index)? deleteRecord,
    TResult Function(int index, String? name, bool isActive)? updateRecord,
    TResult Function(String title)? addTag,
    TResult Function(bool withLoading)? saveTask,
    TResult Function(DlsTask request)? updateTask,
    TResult Function()? deleteTask,
    required TResult orElse(),
  }) {
    if (deleteRecord != null) {
      return deleteRecord(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_UpdateModel value) updateModel,
    required TResult Function(_AddFile value) addFile,
    required TResult Function(_DeleteFile value) deleteFile,
    required TResult Function(_AddRecord value) addRecord,
    required TResult Function(_DeleteRecord value) deleteRecord,
    required TResult Function(_UpdateRecord value) updateRecord,
    required TResult Function(_AddTag value) addTag,
    required TResult Function(_SaveTask value) saveTask,
    required TResult Function(_UpdateTask value) updateTask,
    required TResult Function(_DeleteTask value) deleteTask,
  }) {
    return deleteRecord(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_UpdateModel value)? updateModel,
    TResult? Function(_AddFile value)? addFile,
    TResult? Function(_DeleteFile value)? deleteFile,
    TResult? Function(_AddRecord value)? addRecord,
    TResult? Function(_DeleteRecord value)? deleteRecord,
    TResult? Function(_UpdateRecord value)? updateRecord,
    TResult? Function(_AddTag value)? addTag,
    TResult? Function(_SaveTask value)? saveTask,
    TResult? Function(_UpdateTask value)? updateTask,
    TResult? Function(_DeleteTask value)? deleteTask,
  }) {
    return deleteRecord?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_UpdateModel value)? updateModel,
    TResult Function(_AddFile value)? addFile,
    TResult Function(_DeleteFile value)? deleteFile,
    TResult Function(_AddRecord value)? addRecord,
    TResult Function(_DeleteRecord value)? deleteRecord,
    TResult Function(_UpdateRecord value)? updateRecord,
    TResult Function(_AddTag value)? addTag,
    TResult Function(_SaveTask value)? saveTask,
    TResult Function(_UpdateTask value)? updateTask,
    TResult Function(_DeleteTask value)? deleteTask,
    required TResult orElse(),
  }) {
    if (deleteRecord != null) {
      return deleteRecord(this);
    }
    return orElse();
  }
}

abstract class _DeleteRecord extends TaskEvent {
  const factory _DeleteRecord(final int index) = _$_DeleteRecord;
  const _DeleteRecord._() : super._();

  int get index;
  @JsonKey(ignore: true)
  _$$_DeleteRecordCopyWith<_$_DeleteRecord> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdateRecordCopyWith<$Res> {
  factory _$$_UpdateRecordCopyWith(
          _$_UpdateRecord value, $Res Function(_$_UpdateRecord) then) =
      __$$_UpdateRecordCopyWithImpl<$Res>;
  @useResult
  $Res call({int index, String? name, bool isActive});
}

/// @nodoc
class __$$_UpdateRecordCopyWithImpl<$Res>
    extends _$TaskEventCopyWithImpl<$Res, _$_UpdateRecord>
    implements _$$_UpdateRecordCopyWith<$Res> {
  __$$_UpdateRecordCopyWithImpl(
      _$_UpdateRecord _value, $Res Function(_$_UpdateRecord) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? name = freezed,
    Object? isActive = null,
  }) {
    return _then(_$_UpdateRecord(
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_UpdateRecord extends _UpdateRecord {
  const _$_UpdateRecord(this.index, {this.name, this.isActive = true})
      : super._();

  @override
  final int index;
  @override
  final String? name;
  @override
  @JsonKey()
  final bool isActive;

  @override
  String toString() {
    return 'TaskEvent.updateRecord(index: $index, name: $name, isActive: $isActive)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateRecord &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index, name, isActive);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateRecordCopyWith<_$_UpdateRecord> get copyWith =>
      __$$_UpdateRecordCopyWithImpl<_$_UpdateRecord>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DlsTasks? task, String? title,
            DlsTasks? parentTask, TaskStatusType? status, DLSUser? currentUser)
        init,
    required TResult Function(SaveTaskModel model) updateModel,
    required TResult Function(bool isDoc, String? name, Uint8List? file)
        addFile,
    required TResult Function(int index) deleteFile,
    required TResult Function(String title, bool? checked) addRecord,
    required TResult Function(int index) deleteRecord,
    required TResult Function(int index, String? name, bool isActive)
        updateRecord,
    required TResult Function(String title) addTag,
    required TResult Function(bool withLoading) saveTask,
    required TResult Function(DlsTask request) updateTask,
    required TResult Function() deleteTask,
  }) {
    return updateRecord(index, name, isActive);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DlsTasks? task, String? title, DlsTasks? parentTask,
            TaskStatusType? status, DLSUser? currentUser)?
        init,
    TResult? Function(SaveTaskModel model)? updateModel,
    TResult? Function(bool isDoc, String? name, Uint8List? file)? addFile,
    TResult? Function(int index)? deleteFile,
    TResult? Function(String title, bool? checked)? addRecord,
    TResult? Function(int index)? deleteRecord,
    TResult? Function(int index, String? name, bool isActive)? updateRecord,
    TResult? Function(String title)? addTag,
    TResult? Function(bool withLoading)? saveTask,
    TResult? Function(DlsTask request)? updateTask,
    TResult? Function()? deleteTask,
  }) {
    return updateRecord?.call(index, name, isActive);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DlsTasks? task, String? title, DlsTasks? parentTask,
            TaskStatusType? status, DLSUser? currentUser)?
        init,
    TResult Function(SaveTaskModel model)? updateModel,
    TResult Function(bool isDoc, String? name, Uint8List? file)? addFile,
    TResult Function(int index)? deleteFile,
    TResult Function(String title, bool? checked)? addRecord,
    TResult Function(int index)? deleteRecord,
    TResult Function(int index, String? name, bool isActive)? updateRecord,
    TResult Function(String title)? addTag,
    TResult Function(bool withLoading)? saveTask,
    TResult Function(DlsTask request)? updateTask,
    TResult Function()? deleteTask,
    required TResult orElse(),
  }) {
    if (updateRecord != null) {
      return updateRecord(index, name, isActive);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_UpdateModel value) updateModel,
    required TResult Function(_AddFile value) addFile,
    required TResult Function(_DeleteFile value) deleteFile,
    required TResult Function(_AddRecord value) addRecord,
    required TResult Function(_DeleteRecord value) deleteRecord,
    required TResult Function(_UpdateRecord value) updateRecord,
    required TResult Function(_AddTag value) addTag,
    required TResult Function(_SaveTask value) saveTask,
    required TResult Function(_UpdateTask value) updateTask,
    required TResult Function(_DeleteTask value) deleteTask,
  }) {
    return updateRecord(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_UpdateModel value)? updateModel,
    TResult? Function(_AddFile value)? addFile,
    TResult? Function(_DeleteFile value)? deleteFile,
    TResult? Function(_AddRecord value)? addRecord,
    TResult? Function(_DeleteRecord value)? deleteRecord,
    TResult? Function(_UpdateRecord value)? updateRecord,
    TResult? Function(_AddTag value)? addTag,
    TResult? Function(_SaveTask value)? saveTask,
    TResult? Function(_UpdateTask value)? updateTask,
    TResult? Function(_DeleteTask value)? deleteTask,
  }) {
    return updateRecord?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_UpdateModel value)? updateModel,
    TResult Function(_AddFile value)? addFile,
    TResult Function(_DeleteFile value)? deleteFile,
    TResult Function(_AddRecord value)? addRecord,
    TResult Function(_DeleteRecord value)? deleteRecord,
    TResult Function(_UpdateRecord value)? updateRecord,
    TResult Function(_AddTag value)? addTag,
    TResult Function(_SaveTask value)? saveTask,
    TResult Function(_UpdateTask value)? updateTask,
    TResult Function(_DeleteTask value)? deleteTask,
    required TResult orElse(),
  }) {
    if (updateRecord != null) {
      return updateRecord(this);
    }
    return orElse();
  }
}

abstract class _UpdateRecord extends TaskEvent {
  const factory _UpdateRecord(final int index,
      {final String? name, final bool isActive}) = _$_UpdateRecord;
  const _UpdateRecord._() : super._();

  int get index;
  String? get name;
  bool get isActive;
  @JsonKey(ignore: true)
  _$$_UpdateRecordCopyWith<_$_UpdateRecord> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AddTagCopyWith<$Res> {
  factory _$$_AddTagCopyWith(_$_AddTag value, $Res Function(_$_AddTag) then) =
      __$$_AddTagCopyWithImpl<$Res>;
  @useResult
  $Res call({String title});
}

/// @nodoc
class __$$_AddTagCopyWithImpl<$Res>
    extends _$TaskEventCopyWithImpl<$Res, _$_AddTag>
    implements _$$_AddTagCopyWith<$Res> {
  __$$_AddTagCopyWithImpl(_$_AddTag _value, $Res Function(_$_AddTag) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
  }) {
    return _then(_$_AddTag(
      null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AddTag extends _AddTag {
  const _$_AddTag(this.title) : super._();

  @override
  final String title;

  @override
  String toString() {
    return 'TaskEvent.addTag(title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddTag &&
            (identical(other.title, title) || other.title == title));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddTagCopyWith<_$_AddTag> get copyWith =>
      __$$_AddTagCopyWithImpl<_$_AddTag>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DlsTasks? task, String? title,
            DlsTasks? parentTask, TaskStatusType? status, DLSUser? currentUser)
        init,
    required TResult Function(SaveTaskModel model) updateModel,
    required TResult Function(bool isDoc, String? name, Uint8List? file)
        addFile,
    required TResult Function(int index) deleteFile,
    required TResult Function(String title, bool? checked) addRecord,
    required TResult Function(int index) deleteRecord,
    required TResult Function(int index, String? name, bool isActive)
        updateRecord,
    required TResult Function(String title) addTag,
    required TResult Function(bool withLoading) saveTask,
    required TResult Function(DlsTask request) updateTask,
    required TResult Function() deleteTask,
  }) {
    return addTag(title);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DlsTasks? task, String? title, DlsTasks? parentTask,
            TaskStatusType? status, DLSUser? currentUser)?
        init,
    TResult? Function(SaveTaskModel model)? updateModel,
    TResult? Function(bool isDoc, String? name, Uint8List? file)? addFile,
    TResult? Function(int index)? deleteFile,
    TResult? Function(String title, bool? checked)? addRecord,
    TResult? Function(int index)? deleteRecord,
    TResult? Function(int index, String? name, bool isActive)? updateRecord,
    TResult? Function(String title)? addTag,
    TResult? Function(bool withLoading)? saveTask,
    TResult? Function(DlsTask request)? updateTask,
    TResult? Function()? deleteTask,
  }) {
    return addTag?.call(title);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DlsTasks? task, String? title, DlsTasks? parentTask,
            TaskStatusType? status, DLSUser? currentUser)?
        init,
    TResult Function(SaveTaskModel model)? updateModel,
    TResult Function(bool isDoc, String? name, Uint8List? file)? addFile,
    TResult Function(int index)? deleteFile,
    TResult Function(String title, bool? checked)? addRecord,
    TResult Function(int index)? deleteRecord,
    TResult Function(int index, String? name, bool isActive)? updateRecord,
    TResult Function(String title)? addTag,
    TResult Function(bool withLoading)? saveTask,
    TResult Function(DlsTask request)? updateTask,
    TResult Function()? deleteTask,
    required TResult orElse(),
  }) {
    if (addTag != null) {
      return addTag(title);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_UpdateModel value) updateModel,
    required TResult Function(_AddFile value) addFile,
    required TResult Function(_DeleteFile value) deleteFile,
    required TResult Function(_AddRecord value) addRecord,
    required TResult Function(_DeleteRecord value) deleteRecord,
    required TResult Function(_UpdateRecord value) updateRecord,
    required TResult Function(_AddTag value) addTag,
    required TResult Function(_SaveTask value) saveTask,
    required TResult Function(_UpdateTask value) updateTask,
    required TResult Function(_DeleteTask value) deleteTask,
  }) {
    return addTag(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_UpdateModel value)? updateModel,
    TResult? Function(_AddFile value)? addFile,
    TResult? Function(_DeleteFile value)? deleteFile,
    TResult? Function(_AddRecord value)? addRecord,
    TResult? Function(_DeleteRecord value)? deleteRecord,
    TResult? Function(_UpdateRecord value)? updateRecord,
    TResult? Function(_AddTag value)? addTag,
    TResult? Function(_SaveTask value)? saveTask,
    TResult? Function(_UpdateTask value)? updateTask,
    TResult? Function(_DeleteTask value)? deleteTask,
  }) {
    return addTag?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_UpdateModel value)? updateModel,
    TResult Function(_AddFile value)? addFile,
    TResult Function(_DeleteFile value)? deleteFile,
    TResult Function(_AddRecord value)? addRecord,
    TResult Function(_DeleteRecord value)? deleteRecord,
    TResult Function(_UpdateRecord value)? updateRecord,
    TResult Function(_AddTag value)? addTag,
    TResult Function(_SaveTask value)? saveTask,
    TResult Function(_UpdateTask value)? updateTask,
    TResult Function(_DeleteTask value)? deleteTask,
    required TResult orElse(),
  }) {
    if (addTag != null) {
      return addTag(this);
    }
    return orElse();
  }
}

abstract class _AddTag extends TaskEvent {
  const factory _AddTag(final String title) = _$_AddTag;
  const _AddTag._() : super._();

  String get title;
  @JsonKey(ignore: true)
  _$$_AddTagCopyWith<_$_AddTag> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SaveTaskCopyWith<$Res> {
  factory _$$_SaveTaskCopyWith(
          _$_SaveTask value, $Res Function(_$_SaveTask) then) =
      __$$_SaveTaskCopyWithImpl<$Res>;
  @useResult
  $Res call({bool withLoading});
}

/// @nodoc
class __$$_SaveTaskCopyWithImpl<$Res>
    extends _$TaskEventCopyWithImpl<$Res, _$_SaveTask>
    implements _$$_SaveTaskCopyWith<$Res> {
  __$$_SaveTaskCopyWithImpl(
      _$_SaveTask _value, $Res Function(_$_SaveTask) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? withLoading = null,
  }) {
    return _then(_$_SaveTask(
      withLoading: null == withLoading
          ? _value.withLoading
          : withLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_SaveTask extends _SaveTask {
  const _$_SaveTask({this.withLoading = true}) : super._();

  @override
  @JsonKey()
  final bool withLoading;

  @override
  String toString() {
    return 'TaskEvent.saveTask(withLoading: $withLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SaveTask &&
            (identical(other.withLoading, withLoading) ||
                other.withLoading == withLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, withLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SaveTaskCopyWith<_$_SaveTask> get copyWith =>
      __$$_SaveTaskCopyWithImpl<_$_SaveTask>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DlsTasks? task, String? title,
            DlsTasks? parentTask, TaskStatusType? status, DLSUser? currentUser)
        init,
    required TResult Function(SaveTaskModel model) updateModel,
    required TResult Function(bool isDoc, String? name, Uint8List? file)
        addFile,
    required TResult Function(int index) deleteFile,
    required TResult Function(String title, bool? checked) addRecord,
    required TResult Function(int index) deleteRecord,
    required TResult Function(int index, String? name, bool isActive)
        updateRecord,
    required TResult Function(String title) addTag,
    required TResult Function(bool withLoading) saveTask,
    required TResult Function(DlsTask request) updateTask,
    required TResult Function() deleteTask,
  }) {
    return saveTask(withLoading);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DlsTasks? task, String? title, DlsTasks? parentTask,
            TaskStatusType? status, DLSUser? currentUser)?
        init,
    TResult? Function(SaveTaskModel model)? updateModel,
    TResult? Function(bool isDoc, String? name, Uint8List? file)? addFile,
    TResult? Function(int index)? deleteFile,
    TResult? Function(String title, bool? checked)? addRecord,
    TResult? Function(int index)? deleteRecord,
    TResult? Function(int index, String? name, bool isActive)? updateRecord,
    TResult? Function(String title)? addTag,
    TResult? Function(bool withLoading)? saveTask,
    TResult? Function(DlsTask request)? updateTask,
    TResult? Function()? deleteTask,
  }) {
    return saveTask?.call(withLoading);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DlsTasks? task, String? title, DlsTasks? parentTask,
            TaskStatusType? status, DLSUser? currentUser)?
        init,
    TResult Function(SaveTaskModel model)? updateModel,
    TResult Function(bool isDoc, String? name, Uint8List? file)? addFile,
    TResult Function(int index)? deleteFile,
    TResult Function(String title, bool? checked)? addRecord,
    TResult Function(int index)? deleteRecord,
    TResult Function(int index, String? name, bool isActive)? updateRecord,
    TResult Function(String title)? addTag,
    TResult Function(bool withLoading)? saveTask,
    TResult Function(DlsTask request)? updateTask,
    TResult Function()? deleteTask,
    required TResult orElse(),
  }) {
    if (saveTask != null) {
      return saveTask(withLoading);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_UpdateModel value) updateModel,
    required TResult Function(_AddFile value) addFile,
    required TResult Function(_DeleteFile value) deleteFile,
    required TResult Function(_AddRecord value) addRecord,
    required TResult Function(_DeleteRecord value) deleteRecord,
    required TResult Function(_UpdateRecord value) updateRecord,
    required TResult Function(_AddTag value) addTag,
    required TResult Function(_SaveTask value) saveTask,
    required TResult Function(_UpdateTask value) updateTask,
    required TResult Function(_DeleteTask value) deleteTask,
  }) {
    return saveTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_UpdateModel value)? updateModel,
    TResult? Function(_AddFile value)? addFile,
    TResult? Function(_DeleteFile value)? deleteFile,
    TResult? Function(_AddRecord value)? addRecord,
    TResult? Function(_DeleteRecord value)? deleteRecord,
    TResult? Function(_UpdateRecord value)? updateRecord,
    TResult? Function(_AddTag value)? addTag,
    TResult? Function(_SaveTask value)? saveTask,
    TResult? Function(_UpdateTask value)? updateTask,
    TResult? Function(_DeleteTask value)? deleteTask,
  }) {
    return saveTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_UpdateModel value)? updateModel,
    TResult Function(_AddFile value)? addFile,
    TResult Function(_DeleteFile value)? deleteFile,
    TResult Function(_AddRecord value)? addRecord,
    TResult Function(_DeleteRecord value)? deleteRecord,
    TResult Function(_UpdateRecord value)? updateRecord,
    TResult Function(_AddTag value)? addTag,
    TResult Function(_SaveTask value)? saveTask,
    TResult Function(_UpdateTask value)? updateTask,
    TResult Function(_DeleteTask value)? deleteTask,
    required TResult orElse(),
  }) {
    if (saveTask != null) {
      return saveTask(this);
    }
    return orElse();
  }
}

abstract class _SaveTask extends TaskEvent {
  const factory _SaveTask({final bool withLoading}) = _$_SaveTask;
  const _SaveTask._() : super._();

  bool get withLoading;
  @JsonKey(ignore: true)
  _$$_SaveTaskCopyWith<_$_SaveTask> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdateTaskCopyWith<$Res> {
  factory _$$_UpdateTaskCopyWith(
          _$_UpdateTask value, $Res Function(_$_UpdateTask) then) =
      __$$_UpdateTaskCopyWithImpl<$Res>;
  @useResult
  $Res call({DlsTask request});

  $DlsTaskCopyWith<$Res> get request;
}

/// @nodoc
class __$$_UpdateTaskCopyWithImpl<$Res>
    extends _$TaskEventCopyWithImpl<$Res, _$_UpdateTask>
    implements _$$_UpdateTaskCopyWith<$Res> {
  __$$_UpdateTaskCopyWithImpl(
      _$_UpdateTask _value, $Res Function(_$_UpdateTask) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
  }) {
    return _then(_$_UpdateTask(
      null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as DlsTask,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $DlsTaskCopyWith<$Res> get request {
    return $DlsTaskCopyWith<$Res>(_value.request, (value) {
      return _then(_value.copyWith(request: value));
    });
  }
}

/// @nodoc

class _$_UpdateTask extends _UpdateTask {
  const _$_UpdateTask(this.request) : super._();

  @override
  final DlsTask request;

  @override
  String toString() {
    return 'TaskEvent.updateTask(request: $request)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateTask &&
            (identical(other.request, request) || other.request == request));
  }

  @override
  int get hashCode => Object.hash(runtimeType, request);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateTaskCopyWith<_$_UpdateTask> get copyWith =>
      __$$_UpdateTaskCopyWithImpl<_$_UpdateTask>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DlsTasks? task, String? title,
            DlsTasks? parentTask, TaskStatusType? status, DLSUser? currentUser)
        init,
    required TResult Function(SaveTaskModel model) updateModel,
    required TResult Function(bool isDoc, String? name, Uint8List? file)
        addFile,
    required TResult Function(int index) deleteFile,
    required TResult Function(String title, bool? checked) addRecord,
    required TResult Function(int index) deleteRecord,
    required TResult Function(int index, String? name, bool isActive)
        updateRecord,
    required TResult Function(String title) addTag,
    required TResult Function(bool withLoading) saveTask,
    required TResult Function(DlsTask request) updateTask,
    required TResult Function() deleteTask,
  }) {
    return updateTask(request);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DlsTasks? task, String? title, DlsTasks? parentTask,
            TaskStatusType? status, DLSUser? currentUser)?
        init,
    TResult? Function(SaveTaskModel model)? updateModel,
    TResult? Function(bool isDoc, String? name, Uint8List? file)? addFile,
    TResult? Function(int index)? deleteFile,
    TResult? Function(String title, bool? checked)? addRecord,
    TResult? Function(int index)? deleteRecord,
    TResult? Function(int index, String? name, bool isActive)? updateRecord,
    TResult? Function(String title)? addTag,
    TResult? Function(bool withLoading)? saveTask,
    TResult? Function(DlsTask request)? updateTask,
    TResult? Function()? deleteTask,
  }) {
    return updateTask?.call(request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DlsTasks? task, String? title, DlsTasks? parentTask,
            TaskStatusType? status, DLSUser? currentUser)?
        init,
    TResult Function(SaveTaskModel model)? updateModel,
    TResult Function(bool isDoc, String? name, Uint8List? file)? addFile,
    TResult Function(int index)? deleteFile,
    TResult Function(String title, bool? checked)? addRecord,
    TResult Function(int index)? deleteRecord,
    TResult Function(int index, String? name, bool isActive)? updateRecord,
    TResult Function(String title)? addTag,
    TResult Function(bool withLoading)? saveTask,
    TResult Function(DlsTask request)? updateTask,
    TResult Function()? deleteTask,
    required TResult orElse(),
  }) {
    if (updateTask != null) {
      return updateTask(request);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_UpdateModel value) updateModel,
    required TResult Function(_AddFile value) addFile,
    required TResult Function(_DeleteFile value) deleteFile,
    required TResult Function(_AddRecord value) addRecord,
    required TResult Function(_DeleteRecord value) deleteRecord,
    required TResult Function(_UpdateRecord value) updateRecord,
    required TResult Function(_AddTag value) addTag,
    required TResult Function(_SaveTask value) saveTask,
    required TResult Function(_UpdateTask value) updateTask,
    required TResult Function(_DeleteTask value) deleteTask,
  }) {
    return updateTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_UpdateModel value)? updateModel,
    TResult? Function(_AddFile value)? addFile,
    TResult? Function(_DeleteFile value)? deleteFile,
    TResult? Function(_AddRecord value)? addRecord,
    TResult? Function(_DeleteRecord value)? deleteRecord,
    TResult? Function(_UpdateRecord value)? updateRecord,
    TResult? Function(_AddTag value)? addTag,
    TResult? Function(_SaveTask value)? saveTask,
    TResult? Function(_UpdateTask value)? updateTask,
    TResult? Function(_DeleteTask value)? deleteTask,
  }) {
    return updateTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_UpdateModel value)? updateModel,
    TResult Function(_AddFile value)? addFile,
    TResult Function(_DeleteFile value)? deleteFile,
    TResult Function(_AddRecord value)? addRecord,
    TResult Function(_DeleteRecord value)? deleteRecord,
    TResult Function(_UpdateRecord value)? updateRecord,
    TResult Function(_AddTag value)? addTag,
    TResult Function(_SaveTask value)? saveTask,
    TResult Function(_UpdateTask value)? updateTask,
    TResult Function(_DeleteTask value)? deleteTask,
    required TResult orElse(),
  }) {
    if (updateTask != null) {
      return updateTask(this);
    }
    return orElse();
  }
}

abstract class _UpdateTask extends TaskEvent {
  const factory _UpdateTask(final DlsTask request) = _$_UpdateTask;
  const _UpdateTask._() : super._();

  DlsTask get request;
  @JsonKey(ignore: true)
  _$$_UpdateTaskCopyWith<_$_UpdateTask> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DeleteTaskCopyWith<$Res> {
  factory _$$_DeleteTaskCopyWith(
          _$_DeleteTask value, $Res Function(_$_DeleteTask) then) =
      __$$_DeleteTaskCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_DeleteTaskCopyWithImpl<$Res>
    extends _$TaskEventCopyWithImpl<$Res, _$_DeleteTask>
    implements _$$_DeleteTaskCopyWith<$Res> {
  __$$_DeleteTaskCopyWithImpl(
      _$_DeleteTask _value, $Res Function(_$_DeleteTask) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_DeleteTask extends _DeleteTask {
  const _$_DeleteTask() : super._();

  @override
  String toString() {
    return 'TaskEvent.deleteTask()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_DeleteTask);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DlsTasks? task, String? title,
            DlsTasks? parentTask, TaskStatusType? status, DLSUser? currentUser)
        init,
    required TResult Function(SaveTaskModel model) updateModel,
    required TResult Function(bool isDoc, String? name, Uint8List? file)
        addFile,
    required TResult Function(int index) deleteFile,
    required TResult Function(String title, bool? checked) addRecord,
    required TResult Function(int index) deleteRecord,
    required TResult Function(int index, String? name, bool isActive)
        updateRecord,
    required TResult Function(String title) addTag,
    required TResult Function(bool withLoading) saveTask,
    required TResult Function(DlsTask request) updateTask,
    required TResult Function() deleteTask,
  }) {
    return deleteTask();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DlsTasks? task, String? title, DlsTasks? parentTask,
            TaskStatusType? status, DLSUser? currentUser)?
        init,
    TResult? Function(SaveTaskModel model)? updateModel,
    TResult? Function(bool isDoc, String? name, Uint8List? file)? addFile,
    TResult? Function(int index)? deleteFile,
    TResult? Function(String title, bool? checked)? addRecord,
    TResult? Function(int index)? deleteRecord,
    TResult? Function(int index, String? name, bool isActive)? updateRecord,
    TResult? Function(String title)? addTag,
    TResult? Function(bool withLoading)? saveTask,
    TResult? Function(DlsTask request)? updateTask,
    TResult? Function()? deleteTask,
  }) {
    return deleteTask?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DlsTasks? task, String? title, DlsTasks? parentTask,
            TaskStatusType? status, DLSUser? currentUser)?
        init,
    TResult Function(SaveTaskModel model)? updateModel,
    TResult Function(bool isDoc, String? name, Uint8List? file)? addFile,
    TResult Function(int index)? deleteFile,
    TResult Function(String title, bool? checked)? addRecord,
    TResult Function(int index)? deleteRecord,
    TResult Function(int index, String? name, bool isActive)? updateRecord,
    TResult Function(String title)? addTag,
    TResult Function(bool withLoading)? saveTask,
    TResult Function(DlsTask request)? updateTask,
    TResult Function()? deleteTask,
    required TResult orElse(),
  }) {
    if (deleteTask != null) {
      return deleteTask();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_UpdateModel value) updateModel,
    required TResult Function(_AddFile value) addFile,
    required TResult Function(_DeleteFile value) deleteFile,
    required TResult Function(_AddRecord value) addRecord,
    required TResult Function(_DeleteRecord value) deleteRecord,
    required TResult Function(_UpdateRecord value) updateRecord,
    required TResult Function(_AddTag value) addTag,
    required TResult Function(_SaveTask value) saveTask,
    required TResult Function(_UpdateTask value) updateTask,
    required TResult Function(_DeleteTask value) deleteTask,
  }) {
    return deleteTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_UpdateModel value)? updateModel,
    TResult? Function(_AddFile value)? addFile,
    TResult? Function(_DeleteFile value)? deleteFile,
    TResult? Function(_AddRecord value)? addRecord,
    TResult? Function(_DeleteRecord value)? deleteRecord,
    TResult? Function(_UpdateRecord value)? updateRecord,
    TResult? Function(_AddTag value)? addTag,
    TResult? Function(_SaveTask value)? saveTask,
    TResult? Function(_UpdateTask value)? updateTask,
    TResult? Function(_DeleteTask value)? deleteTask,
  }) {
    return deleteTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_UpdateModel value)? updateModel,
    TResult Function(_AddFile value)? addFile,
    TResult Function(_DeleteFile value)? deleteFile,
    TResult Function(_AddRecord value)? addRecord,
    TResult Function(_DeleteRecord value)? deleteRecord,
    TResult Function(_UpdateRecord value)? updateRecord,
    TResult Function(_AddTag value)? addTag,
    TResult Function(_SaveTask value)? saveTask,
    TResult Function(_UpdateTask value)? updateTask,
    TResult Function(_DeleteTask value)? deleteTask,
    required TResult orElse(),
  }) {
    if (deleteTask != null) {
      return deleteTask(this);
    }
    return orElse();
  }
}

abstract class _DeleteTask extends TaskEvent {
  const factory _DeleteTask() = _$_DeleteTask;
  const _DeleteTask._() : super._();
}

/// @nodoc
mixin _$TaskState {
  SaveTaskModel get model => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(SaveTaskModel model) $default, {
    required TResult Function(SaveTaskModel model) loading,
    required TResult Function(String message, SaveTaskModel model) error,
    required TResult Function(SaveTaskModel model) success,
    required TResult Function(SaveTaskModel model) updateSuccess,
    required TResult Function(SaveTaskModel model) deleteSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(SaveTaskModel model)? $default, {
    TResult? Function(SaveTaskModel model)? loading,
    TResult? Function(String message, SaveTaskModel model)? error,
    TResult? Function(SaveTaskModel model)? success,
    TResult? Function(SaveTaskModel model)? updateSuccess,
    TResult? Function(SaveTaskModel model)? deleteSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(SaveTaskModel model)? $default, {
    TResult Function(SaveTaskModel model)? loading,
    TResult Function(String message, SaveTaskModel model)? error,
    TResult Function(SaveTaskModel model)? success,
    TResult Function(SaveTaskModel model)? updateSuccess,
    TResult Function(SaveTaskModel model)? deleteSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_TaskState value) $default, {
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Success value) success,
    required TResult Function(_UpdateSuccess value) updateSuccess,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_TaskState value)? $default, {
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_Success value)? success,
    TResult? Function(_UpdateSuccess value)? updateSuccess,
    TResult? Function(_DeleteSuccess value)? deleteSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_TaskState value)? $default, {
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Success value)? success,
    TResult Function(_UpdateSuccess value)? updateSuccess,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TaskStateCopyWith<TaskState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskStateCopyWith<$Res> {
  factory $TaskStateCopyWith(TaskState value, $Res Function(TaskState) then) =
      _$TaskStateCopyWithImpl<$Res, TaskState>;
  @useResult
  $Res call({SaveTaskModel model});

  $SaveTaskModelCopyWith<$Res> get model;
}

/// @nodoc
class _$TaskStateCopyWithImpl<$Res, $Val extends TaskState>
    implements $TaskStateCopyWith<$Res> {
  _$TaskStateCopyWithImpl(this._value, this._then);

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
              as SaveTaskModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SaveTaskModelCopyWith<$Res> get model {
    return $SaveTaskModelCopyWith<$Res>(_value.model, (value) {
      return _then(_value.copyWith(model: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TaskStateCopyWith<$Res> implements $TaskStateCopyWith<$Res> {
  factory _$$_TaskStateCopyWith(
          _$_TaskState value, $Res Function(_$_TaskState) then) =
      __$$_TaskStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SaveTaskModel model});

  @override
  $SaveTaskModelCopyWith<$Res> get model;
}

/// @nodoc
class __$$_TaskStateCopyWithImpl<$Res>
    extends _$TaskStateCopyWithImpl<$Res, _$_TaskState>
    implements _$$_TaskStateCopyWith<$Res> {
  __$$_TaskStateCopyWithImpl(
      _$_TaskState _value, $Res Function(_$_TaskState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
  }) {
    return _then(_$_TaskState(
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as SaveTaskModel,
    ));
  }
}

/// @nodoc

class _$_TaskState implements _TaskState {
  const _$_TaskState({this.model = const SaveTaskModel()});

  @override
  @JsonKey()
  final SaveTaskModel model;

  @override
  String toString() {
    return 'TaskState(model: $model)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TaskState &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TaskStateCopyWith<_$_TaskState> get copyWith =>
      __$$_TaskStateCopyWithImpl<_$_TaskState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(SaveTaskModel model) $default, {
    required TResult Function(SaveTaskModel model) loading,
    required TResult Function(String message, SaveTaskModel model) error,
    required TResult Function(SaveTaskModel model) success,
    required TResult Function(SaveTaskModel model) updateSuccess,
    required TResult Function(SaveTaskModel model) deleteSuccess,
  }) {
    return $default(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(SaveTaskModel model)? $default, {
    TResult? Function(SaveTaskModel model)? loading,
    TResult? Function(String message, SaveTaskModel model)? error,
    TResult? Function(SaveTaskModel model)? success,
    TResult? Function(SaveTaskModel model)? updateSuccess,
    TResult? Function(SaveTaskModel model)? deleteSuccess,
  }) {
    return $default?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(SaveTaskModel model)? $default, {
    TResult Function(SaveTaskModel model)? loading,
    TResult Function(String message, SaveTaskModel model)? error,
    TResult Function(SaveTaskModel model)? success,
    TResult Function(SaveTaskModel model)? updateSuccess,
    TResult Function(SaveTaskModel model)? deleteSuccess,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_TaskState value) $default, {
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Success value) success,
    required TResult Function(_UpdateSuccess value) updateSuccess,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_TaskState value)? $default, {
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_Success value)? success,
    TResult? Function(_UpdateSuccess value)? updateSuccess,
    TResult? Function(_DeleteSuccess value)? deleteSuccess,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_TaskState value)? $default, {
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Success value)? success,
    TResult Function(_UpdateSuccess value)? updateSuccess,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _TaskState implements TaskState {
  const factory _TaskState({final SaveTaskModel model}) = _$_TaskState;

  @override
  SaveTaskModel get model;
  @override
  @JsonKey(ignore: true)
  _$$_TaskStateCopyWith<_$_TaskState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> implements $TaskStateCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SaveTaskModel model});

  @override
  $SaveTaskModelCopyWith<$Res> get model;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$TaskStateCopyWithImpl<$Res, _$_Loading>
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
              as SaveTaskModel,
    ));
  }
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading({this.model = const SaveTaskModel()});

  @override
  @JsonKey()
  final SaveTaskModel model;

  @override
  String toString() {
    return 'TaskState.loading(model: $model)';
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
  TResult when<TResult extends Object?>(
    TResult Function(SaveTaskModel model) $default, {
    required TResult Function(SaveTaskModel model) loading,
    required TResult Function(String message, SaveTaskModel model) error,
    required TResult Function(SaveTaskModel model) success,
    required TResult Function(SaveTaskModel model) updateSuccess,
    required TResult Function(SaveTaskModel model) deleteSuccess,
  }) {
    return loading(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(SaveTaskModel model)? $default, {
    TResult? Function(SaveTaskModel model)? loading,
    TResult? Function(String message, SaveTaskModel model)? error,
    TResult? Function(SaveTaskModel model)? success,
    TResult? Function(SaveTaskModel model)? updateSuccess,
    TResult? Function(SaveTaskModel model)? deleteSuccess,
  }) {
    return loading?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(SaveTaskModel model)? $default, {
    TResult Function(SaveTaskModel model)? loading,
    TResult Function(String message, SaveTaskModel model)? error,
    TResult Function(SaveTaskModel model)? success,
    TResult Function(SaveTaskModel model)? updateSuccess,
    TResult Function(SaveTaskModel model)? deleteSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_TaskState value) $default, {
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Success value) success,
    required TResult Function(_UpdateSuccess value) updateSuccess,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_TaskState value)? $default, {
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_Success value)? success,
    TResult? Function(_UpdateSuccess value)? updateSuccess,
    TResult? Function(_DeleteSuccess value)? deleteSuccess,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_TaskState value)? $default, {
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Success value)? success,
    TResult Function(_UpdateSuccess value)? updateSuccess,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements TaskState {
  const factory _Loading({final SaveTaskModel model}) = _$_Loading;

  @override
  SaveTaskModel get model;
  @override
  @JsonKey(ignore: true)
  _$$_LoadingCopyWith<_$_Loading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ErrorCopyWith<$Res> implements $TaskStateCopyWith<$Res> {
  factory _$$_ErrorCopyWith(_$_Error value, $Res Function(_$_Error) then) =
      __$$_ErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, SaveTaskModel model});

  @override
  $SaveTaskModelCopyWith<$Res> get model;
}

/// @nodoc
class __$$_ErrorCopyWithImpl<$Res>
    extends _$TaskStateCopyWithImpl<$Res, _$_Error>
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
              as SaveTaskModel,
    ));
  }
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error(this.message, {this.model = const SaveTaskModel()});

  @override
  final String message;
  @override
  @JsonKey()
  final SaveTaskModel model;

  @override
  String toString() {
    return 'TaskState.error(message: $message, model: $model)';
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
  TResult when<TResult extends Object?>(
    TResult Function(SaveTaskModel model) $default, {
    required TResult Function(SaveTaskModel model) loading,
    required TResult Function(String message, SaveTaskModel model) error,
    required TResult Function(SaveTaskModel model) success,
    required TResult Function(SaveTaskModel model) updateSuccess,
    required TResult Function(SaveTaskModel model) deleteSuccess,
  }) {
    return error(message, model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(SaveTaskModel model)? $default, {
    TResult? Function(SaveTaskModel model)? loading,
    TResult? Function(String message, SaveTaskModel model)? error,
    TResult? Function(SaveTaskModel model)? success,
    TResult? Function(SaveTaskModel model)? updateSuccess,
    TResult? Function(SaveTaskModel model)? deleteSuccess,
  }) {
    return error?.call(message, model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(SaveTaskModel model)? $default, {
    TResult Function(SaveTaskModel model)? loading,
    TResult Function(String message, SaveTaskModel model)? error,
    TResult Function(SaveTaskModel model)? success,
    TResult Function(SaveTaskModel model)? updateSuccess,
    TResult Function(SaveTaskModel model)? deleteSuccess,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message, model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_TaskState value) $default, {
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Success value) success,
    required TResult Function(_UpdateSuccess value) updateSuccess,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_TaskState value)? $default, {
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_Success value)? success,
    TResult? Function(_UpdateSuccess value)? updateSuccess,
    TResult? Function(_DeleteSuccess value)? deleteSuccess,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_TaskState value)? $default, {
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Success value)? success,
    TResult Function(_UpdateSuccess value)? updateSuccess,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements TaskState {
  const factory _Error(final String message, {final SaveTaskModel model}) =
      _$_Error;

  String get message;
  @override
  SaveTaskModel get model;
  @override
  @JsonKey(ignore: true)
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SuccessCopyWith<$Res> implements $TaskStateCopyWith<$Res> {
  factory _$$_SuccessCopyWith(
          _$_Success value, $Res Function(_$_Success) then) =
      __$$_SuccessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SaveTaskModel model});

  @override
  $SaveTaskModelCopyWith<$Res> get model;
}

/// @nodoc
class __$$_SuccessCopyWithImpl<$Res>
    extends _$TaskStateCopyWithImpl<$Res, _$_Success>
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
              as SaveTaskModel,
    ));
  }
}

/// @nodoc

class _$_Success implements _Success {
  const _$_Success({required this.model});

  @override
  final SaveTaskModel model;

  @override
  String toString() {
    return 'TaskState.success(model: $model)';
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
  TResult when<TResult extends Object?>(
    TResult Function(SaveTaskModel model) $default, {
    required TResult Function(SaveTaskModel model) loading,
    required TResult Function(String message, SaveTaskModel model) error,
    required TResult Function(SaveTaskModel model) success,
    required TResult Function(SaveTaskModel model) updateSuccess,
    required TResult Function(SaveTaskModel model) deleteSuccess,
  }) {
    return success(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(SaveTaskModel model)? $default, {
    TResult? Function(SaveTaskModel model)? loading,
    TResult? Function(String message, SaveTaskModel model)? error,
    TResult? Function(SaveTaskModel model)? success,
    TResult? Function(SaveTaskModel model)? updateSuccess,
    TResult? Function(SaveTaskModel model)? deleteSuccess,
  }) {
    return success?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(SaveTaskModel model)? $default, {
    TResult Function(SaveTaskModel model)? loading,
    TResult Function(String message, SaveTaskModel model)? error,
    TResult Function(SaveTaskModel model)? success,
    TResult Function(SaveTaskModel model)? updateSuccess,
    TResult Function(SaveTaskModel model)? deleteSuccess,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_TaskState value) $default, {
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Success value) success,
    required TResult Function(_UpdateSuccess value) updateSuccess,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_TaskState value)? $default, {
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_Success value)? success,
    TResult? Function(_UpdateSuccess value)? updateSuccess,
    TResult? Function(_DeleteSuccess value)? deleteSuccess,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_TaskState value)? $default, {
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Success value)? success,
    TResult Function(_UpdateSuccess value)? updateSuccess,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements TaskState {
  const factory _Success({required final SaveTaskModel model}) = _$_Success;

  @override
  SaveTaskModel get model;
  @override
  @JsonKey(ignore: true)
  _$$_SuccessCopyWith<_$_Success> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdateSuccessCopyWith<$Res>
    implements $TaskStateCopyWith<$Res> {
  factory _$$_UpdateSuccessCopyWith(
          _$_UpdateSuccess value, $Res Function(_$_UpdateSuccess) then) =
      __$$_UpdateSuccessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SaveTaskModel model});

  @override
  $SaveTaskModelCopyWith<$Res> get model;
}

/// @nodoc
class __$$_UpdateSuccessCopyWithImpl<$Res>
    extends _$TaskStateCopyWithImpl<$Res, _$_UpdateSuccess>
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
              as SaveTaskModel,
    ));
  }
}

/// @nodoc

class _$_UpdateSuccess implements _UpdateSuccess {
  const _$_UpdateSuccess({required this.model});

  @override
  final SaveTaskModel model;

  @override
  String toString() {
    return 'TaskState.updateSuccess(model: $model)';
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
  TResult when<TResult extends Object?>(
    TResult Function(SaveTaskModel model) $default, {
    required TResult Function(SaveTaskModel model) loading,
    required TResult Function(String message, SaveTaskModel model) error,
    required TResult Function(SaveTaskModel model) success,
    required TResult Function(SaveTaskModel model) updateSuccess,
    required TResult Function(SaveTaskModel model) deleteSuccess,
  }) {
    return updateSuccess(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(SaveTaskModel model)? $default, {
    TResult? Function(SaveTaskModel model)? loading,
    TResult? Function(String message, SaveTaskModel model)? error,
    TResult? Function(SaveTaskModel model)? success,
    TResult? Function(SaveTaskModel model)? updateSuccess,
    TResult? Function(SaveTaskModel model)? deleteSuccess,
  }) {
    return updateSuccess?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(SaveTaskModel model)? $default, {
    TResult Function(SaveTaskModel model)? loading,
    TResult Function(String message, SaveTaskModel model)? error,
    TResult Function(SaveTaskModel model)? success,
    TResult Function(SaveTaskModel model)? updateSuccess,
    TResult Function(SaveTaskModel model)? deleteSuccess,
    required TResult orElse(),
  }) {
    if (updateSuccess != null) {
      return updateSuccess(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_TaskState value) $default, {
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Success value) success,
    required TResult Function(_UpdateSuccess value) updateSuccess,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
  }) {
    return updateSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_TaskState value)? $default, {
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_Success value)? success,
    TResult? Function(_UpdateSuccess value)? updateSuccess,
    TResult? Function(_DeleteSuccess value)? deleteSuccess,
  }) {
    return updateSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_TaskState value)? $default, {
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Success value)? success,
    TResult Function(_UpdateSuccess value)? updateSuccess,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    required TResult orElse(),
  }) {
    if (updateSuccess != null) {
      return updateSuccess(this);
    }
    return orElse();
  }
}

abstract class _UpdateSuccess implements TaskState {
  const factory _UpdateSuccess({required final SaveTaskModel model}) =
      _$_UpdateSuccess;

  @override
  SaveTaskModel get model;
  @override
  @JsonKey(ignore: true)
  _$$_UpdateSuccessCopyWith<_$_UpdateSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DeleteSuccessCopyWith<$Res>
    implements $TaskStateCopyWith<$Res> {
  factory _$$_DeleteSuccessCopyWith(
          _$_DeleteSuccess value, $Res Function(_$_DeleteSuccess) then) =
      __$$_DeleteSuccessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SaveTaskModel model});

  @override
  $SaveTaskModelCopyWith<$Res> get model;
}

/// @nodoc
class __$$_DeleteSuccessCopyWithImpl<$Res>
    extends _$TaskStateCopyWithImpl<$Res, _$_DeleteSuccess>
    implements _$$_DeleteSuccessCopyWith<$Res> {
  __$$_DeleteSuccessCopyWithImpl(
      _$_DeleteSuccess _value, $Res Function(_$_DeleteSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
  }) {
    return _then(_$_DeleteSuccess(
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as SaveTaskModel,
    ));
  }
}

/// @nodoc

class _$_DeleteSuccess implements _DeleteSuccess {
  const _$_DeleteSuccess({required this.model});

  @override
  final SaveTaskModel model;

  @override
  String toString() {
    return 'TaskState.deleteSuccess(model: $model)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeleteSuccess &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeleteSuccessCopyWith<_$_DeleteSuccess> get copyWith =>
      __$$_DeleteSuccessCopyWithImpl<_$_DeleteSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(SaveTaskModel model) $default, {
    required TResult Function(SaveTaskModel model) loading,
    required TResult Function(String message, SaveTaskModel model) error,
    required TResult Function(SaveTaskModel model) success,
    required TResult Function(SaveTaskModel model) updateSuccess,
    required TResult Function(SaveTaskModel model) deleteSuccess,
  }) {
    return deleteSuccess(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(SaveTaskModel model)? $default, {
    TResult? Function(SaveTaskModel model)? loading,
    TResult? Function(String message, SaveTaskModel model)? error,
    TResult? Function(SaveTaskModel model)? success,
    TResult? Function(SaveTaskModel model)? updateSuccess,
    TResult? Function(SaveTaskModel model)? deleteSuccess,
  }) {
    return deleteSuccess?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(SaveTaskModel model)? $default, {
    TResult Function(SaveTaskModel model)? loading,
    TResult Function(String message, SaveTaskModel model)? error,
    TResult Function(SaveTaskModel model)? success,
    TResult Function(SaveTaskModel model)? updateSuccess,
    TResult Function(SaveTaskModel model)? deleteSuccess,
    required TResult orElse(),
  }) {
    if (deleteSuccess != null) {
      return deleteSuccess(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_TaskState value) $default, {
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Success value) success,
    required TResult Function(_UpdateSuccess value) updateSuccess,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
  }) {
    return deleteSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_TaskState value)? $default, {
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_Success value)? success,
    TResult? Function(_UpdateSuccess value)? updateSuccess,
    TResult? Function(_DeleteSuccess value)? deleteSuccess,
  }) {
    return deleteSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_TaskState value)? $default, {
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Success value)? success,
    TResult Function(_UpdateSuccess value)? updateSuccess,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    required TResult orElse(),
  }) {
    if (deleteSuccess != null) {
      return deleteSuccess(this);
    }
    return orElse();
  }
}

abstract class _DeleteSuccess implements TaskState {
  const factory _DeleteSuccess({required final SaveTaskModel model}) =
      _$_DeleteSuccess;

  @override
  SaveTaskModel get model;
  @override
  @JsonKey(ignore: true)
  _$$_DeleteSuccessCopyWith<_$_DeleteSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}
