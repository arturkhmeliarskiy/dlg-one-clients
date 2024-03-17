// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sprints_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SprintsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? page, bool withLoading) getSprints,
    required TResult Function(TaskStatusType status) statusClick,
    required TResult Function(DlsSprintModel sprint) setCurrentSprint,
    required TResult Function(DlsSprintModel sprint) updateSprint,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? page, bool withLoading)? getSprints,
    TResult? Function(TaskStatusType status)? statusClick,
    TResult? Function(DlsSprintModel sprint)? setCurrentSprint,
    TResult? Function(DlsSprintModel sprint)? updateSprint,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? page, bool withLoading)? getSprints,
    TResult Function(TaskStatusType status)? statusClick,
    TResult Function(DlsSprintModel sprint)? setCurrentSprint,
    TResult Function(DlsSprintModel sprint)? updateSprint,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetSprints value) getSprints,
    required TResult Function(_StatusClick value) statusClick,
    required TResult Function(_SetCurrentSprint value) setCurrentSprint,
    required TResult Function(_UpdateSprint value) updateSprint,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetSprints value)? getSprints,
    TResult? Function(_StatusClick value)? statusClick,
    TResult? Function(_SetCurrentSprint value)? setCurrentSprint,
    TResult? Function(_UpdateSprint value)? updateSprint,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSprints value)? getSprints,
    TResult Function(_StatusClick value)? statusClick,
    TResult Function(_SetCurrentSprint value)? setCurrentSprint,
    TResult Function(_UpdateSprint value)? updateSprint,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SprintsEventCopyWith<$Res> {
  factory $SprintsEventCopyWith(
          SprintsEvent value, $Res Function(SprintsEvent) then) =
      _$SprintsEventCopyWithImpl<$Res, SprintsEvent>;
}

/// @nodoc
class _$SprintsEventCopyWithImpl<$Res, $Val extends SprintsEvent>
    implements $SprintsEventCopyWith<$Res> {
  _$SprintsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_GetSprintsCopyWith<$Res> {
  factory _$$_GetSprintsCopyWith(
          _$_GetSprints value, $Res Function(_$_GetSprints) then) =
      __$$_GetSprintsCopyWithImpl<$Res>;
  @useResult
  $Res call({int? page, bool withLoading});
}

/// @nodoc
class __$$_GetSprintsCopyWithImpl<$Res>
    extends _$SprintsEventCopyWithImpl<$Res, _$_GetSprints>
    implements _$$_GetSprintsCopyWith<$Res> {
  __$$_GetSprintsCopyWithImpl(
      _$_GetSprints _value, $Res Function(_$_GetSprints) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = freezed,
    Object? withLoading = null,
  }) {
    return _then(_$_GetSprints(
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      withLoading: null == withLoading
          ? _value.withLoading
          : withLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_GetSprints implements _GetSprints {
  const _$_GetSprints({this.page, this.withLoading = true});

  @override
  final int? page;
  @override
  @JsonKey()
  final bool withLoading;

  @override
  String toString() {
    return 'SprintsEvent.getSprints(page: $page, withLoading: $withLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetSprints &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.withLoading, withLoading) ||
                other.withLoading == withLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, page, withLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetSprintsCopyWith<_$_GetSprints> get copyWith =>
      __$$_GetSprintsCopyWithImpl<_$_GetSprints>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? page, bool withLoading) getSprints,
    required TResult Function(TaskStatusType status) statusClick,
    required TResult Function(DlsSprintModel sprint) setCurrentSprint,
    required TResult Function(DlsSprintModel sprint) updateSprint,
  }) {
    return getSprints(page, withLoading);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? page, bool withLoading)? getSprints,
    TResult? Function(TaskStatusType status)? statusClick,
    TResult? Function(DlsSprintModel sprint)? setCurrentSprint,
    TResult? Function(DlsSprintModel sprint)? updateSprint,
  }) {
    return getSprints?.call(page, withLoading);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? page, bool withLoading)? getSprints,
    TResult Function(TaskStatusType status)? statusClick,
    TResult Function(DlsSprintModel sprint)? setCurrentSprint,
    TResult Function(DlsSprintModel sprint)? updateSprint,
    required TResult orElse(),
  }) {
    if (getSprints != null) {
      return getSprints(page, withLoading);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetSprints value) getSprints,
    required TResult Function(_StatusClick value) statusClick,
    required TResult Function(_SetCurrentSprint value) setCurrentSprint,
    required TResult Function(_UpdateSprint value) updateSprint,
  }) {
    return getSprints(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetSprints value)? getSprints,
    TResult? Function(_StatusClick value)? statusClick,
    TResult? Function(_SetCurrentSprint value)? setCurrentSprint,
    TResult? Function(_UpdateSprint value)? updateSprint,
  }) {
    return getSprints?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSprints value)? getSprints,
    TResult Function(_StatusClick value)? statusClick,
    TResult Function(_SetCurrentSprint value)? setCurrentSprint,
    TResult Function(_UpdateSprint value)? updateSprint,
    required TResult orElse(),
  }) {
    if (getSprints != null) {
      return getSprints(this);
    }
    return orElse();
  }
}

abstract class _GetSprints implements SprintsEvent {
  const factory _GetSprints({final int? page, final bool withLoading}) =
      _$_GetSprints;

  int? get page;
  bool get withLoading;
  @JsonKey(ignore: true)
  _$$_GetSprintsCopyWith<_$_GetSprints> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_StatusClickCopyWith<$Res> {
  factory _$$_StatusClickCopyWith(
          _$_StatusClick value, $Res Function(_$_StatusClick) then) =
      __$$_StatusClickCopyWithImpl<$Res>;
  @useResult
  $Res call({TaskStatusType status});
}

/// @nodoc
class __$$_StatusClickCopyWithImpl<$Res>
    extends _$SprintsEventCopyWithImpl<$Res, _$_StatusClick>
    implements _$$_StatusClickCopyWith<$Res> {
  __$$_StatusClickCopyWithImpl(
      _$_StatusClick _value, $Res Function(_$_StatusClick) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_$_StatusClick(
      null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TaskStatusType,
    ));
  }
}

/// @nodoc

class _$_StatusClick implements _StatusClick {
  const _$_StatusClick(this.status);

  @override
  final TaskStatusType status;

  @override
  String toString() {
    return 'SprintsEvent.statusClick(status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StatusClick &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StatusClickCopyWith<_$_StatusClick> get copyWith =>
      __$$_StatusClickCopyWithImpl<_$_StatusClick>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? page, bool withLoading) getSprints,
    required TResult Function(TaskStatusType status) statusClick,
    required TResult Function(DlsSprintModel sprint) setCurrentSprint,
    required TResult Function(DlsSprintModel sprint) updateSprint,
  }) {
    return statusClick(status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? page, bool withLoading)? getSprints,
    TResult? Function(TaskStatusType status)? statusClick,
    TResult? Function(DlsSprintModel sprint)? setCurrentSprint,
    TResult? Function(DlsSprintModel sprint)? updateSprint,
  }) {
    return statusClick?.call(status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? page, bool withLoading)? getSprints,
    TResult Function(TaskStatusType status)? statusClick,
    TResult Function(DlsSprintModel sprint)? setCurrentSprint,
    TResult Function(DlsSprintModel sprint)? updateSprint,
    required TResult orElse(),
  }) {
    if (statusClick != null) {
      return statusClick(status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetSprints value) getSprints,
    required TResult Function(_StatusClick value) statusClick,
    required TResult Function(_SetCurrentSprint value) setCurrentSprint,
    required TResult Function(_UpdateSprint value) updateSprint,
  }) {
    return statusClick(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetSprints value)? getSprints,
    TResult? Function(_StatusClick value)? statusClick,
    TResult? Function(_SetCurrentSprint value)? setCurrentSprint,
    TResult? Function(_UpdateSprint value)? updateSprint,
  }) {
    return statusClick?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSprints value)? getSprints,
    TResult Function(_StatusClick value)? statusClick,
    TResult Function(_SetCurrentSprint value)? setCurrentSprint,
    TResult Function(_UpdateSprint value)? updateSprint,
    required TResult orElse(),
  }) {
    if (statusClick != null) {
      return statusClick(this);
    }
    return orElse();
  }
}

abstract class _StatusClick implements SprintsEvent {
  const factory _StatusClick(final TaskStatusType status) = _$_StatusClick;

  TaskStatusType get status;
  @JsonKey(ignore: true)
  _$$_StatusClickCopyWith<_$_StatusClick> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SetCurrentSprintCopyWith<$Res> {
  factory _$$_SetCurrentSprintCopyWith(
          _$_SetCurrentSprint value, $Res Function(_$_SetCurrentSprint) then) =
      __$$_SetCurrentSprintCopyWithImpl<$Res>;
  @useResult
  $Res call({DlsSprintModel sprint});

  $DlsSprintModelCopyWith<$Res> get sprint;
}

/// @nodoc
class __$$_SetCurrentSprintCopyWithImpl<$Res>
    extends _$SprintsEventCopyWithImpl<$Res, _$_SetCurrentSprint>
    implements _$$_SetCurrentSprintCopyWith<$Res> {
  __$$_SetCurrentSprintCopyWithImpl(
      _$_SetCurrentSprint _value, $Res Function(_$_SetCurrentSprint) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sprint = null,
  }) {
    return _then(_$_SetCurrentSprint(
      null == sprint
          ? _value.sprint
          : sprint // ignore: cast_nullable_to_non_nullable
              as DlsSprintModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $DlsSprintModelCopyWith<$Res> get sprint {
    return $DlsSprintModelCopyWith<$Res>(_value.sprint, (value) {
      return _then(_value.copyWith(sprint: value));
    });
  }
}

/// @nodoc

class _$_SetCurrentSprint implements _SetCurrentSprint {
  const _$_SetCurrentSprint(this.sprint);

  @override
  final DlsSprintModel sprint;

  @override
  String toString() {
    return 'SprintsEvent.setCurrentSprint(sprint: $sprint)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SetCurrentSprint &&
            (identical(other.sprint, sprint) || other.sprint == sprint));
  }

  @override
  int get hashCode => Object.hash(runtimeType, sprint);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SetCurrentSprintCopyWith<_$_SetCurrentSprint> get copyWith =>
      __$$_SetCurrentSprintCopyWithImpl<_$_SetCurrentSprint>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? page, bool withLoading) getSprints,
    required TResult Function(TaskStatusType status) statusClick,
    required TResult Function(DlsSprintModel sprint) setCurrentSprint,
    required TResult Function(DlsSprintModel sprint) updateSprint,
  }) {
    return setCurrentSprint(sprint);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? page, bool withLoading)? getSprints,
    TResult? Function(TaskStatusType status)? statusClick,
    TResult? Function(DlsSprintModel sprint)? setCurrentSprint,
    TResult? Function(DlsSprintModel sprint)? updateSprint,
  }) {
    return setCurrentSprint?.call(sprint);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? page, bool withLoading)? getSprints,
    TResult Function(TaskStatusType status)? statusClick,
    TResult Function(DlsSprintModel sprint)? setCurrentSprint,
    TResult Function(DlsSprintModel sprint)? updateSprint,
    required TResult orElse(),
  }) {
    if (setCurrentSprint != null) {
      return setCurrentSprint(sprint);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetSprints value) getSprints,
    required TResult Function(_StatusClick value) statusClick,
    required TResult Function(_SetCurrentSprint value) setCurrentSprint,
    required TResult Function(_UpdateSprint value) updateSprint,
  }) {
    return setCurrentSprint(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetSprints value)? getSprints,
    TResult? Function(_StatusClick value)? statusClick,
    TResult? Function(_SetCurrentSprint value)? setCurrentSprint,
    TResult? Function(_UpdateSprint value)? updateSprint,
  }) {
    return setCurrentSprint?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSprints value)? getSprints,
    TResult Function(_StatusClick value)? statusClick,
    TResult Function(_SetCurrentSprint value)? setCurrentSprint,
    TResult Function(_UpdateSprint value)? updateSprint,
    required TResult orElse(),
  }) {
    if (setCurrentSprint != null) {
      return setCurrentSprint(this);
    }
    return orElse();
  }
}

abstract class _SetCurrentSprint implements SprintsEvent {
  const factory _SetCurrentSprint(final DlsSprintModel sprint) =
      _$_SetCurrentSprint;

  DlsSprintModel get sprint;
  @JsonKey(ignore: true)
  _$$_SetCurrentSprintCopyWith<_$_SetCurrentSprint> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdateSprintCopyWith<$Res> {
  factory _$$_UpdateSprintCopyWith(
          _$_UpdateSprint value, $Res Function(_$_UpdateSprint) then) =
      __$$_UpdateSprintCopyWithImpl<$Res>;
  @useResult
  $Res call({DlsSprintModel sprint});

  $DlsSprintModelCopyWith<$Res> get sprint;
}

/// @nodoc
class __$$_UpdateSprintCopyWithImpl<$Res>
    extends _$SprintsEventCopyWithImpl<$Res, _$_UpdateSprint>
    implements _$$_UpdateSprintCopyWith<$Res> {
  __$$_UpdateSprintCopyWithImpl(
      _$_UpdateSprint _value, $Res Function(_$_UpdateSprint) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sprint = null,
  }) {
    return _then(_$_UpdateSprint(
      null == sprint
          ? _value.sprint
          : sprint // ignore: cast_nullable_to_non_nullable
              as DlsSprintModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $DlsSprintModelCopyWith<$Res> get sprint {
    return $DlsSprintModelCopyWith<$Res>(_value.sprint, (value) {
      return _then(_value.copyWith(sprint: value));
    });
  }
}

/// @nodoc

class _$_UpdateSprint implements _UpdateSprint {
  const _$_UpdateSprint(this.sprint);

  @override
  final DlsSprintModel sprint;

  @override
  String toString() {
    return 'SprintsEvent.updateSprint(sprint: $sprint)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateSprint &&
            (identical(other.sprint, sprint) || other.sprint == sprint));
  }

  @override
  int get hashCode => Object.hash(runtimeType, sprint);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateSprintCopyWith<_$_UpdateSprint> get copyWith =>
      __$$_UpdateSprintCopyWithImpl<_$_UpdateSprint>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? page, bool withLoading) getSprints,
    required TResult Function(TaskStatusType status) statusClick,
    required TResult Function(DlsSprintModel sprint) setCurrentSprint,
    required TResult Function(DlsSprintModel sprint) updateSprint,
  }) {
    return updateSprint(sprint);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? page, bool withLoading)? getSprints,
    TResult? Function(TaskStatusType status)? statusClick,
    TResult? Function(DlsSprintModel sprint)? setCurrentSprint,
    TResult? Function(DlsSprintModel sprint)? updateSprint,
  }) {
    return updateSprint?.call(sprint);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? page, bool withLoading)? getSprints,
    TResult Function(TaskStatusType status)? statusClick,
    TResult Function(DlsSprintModel sprint)? setCurrentSprint,
    TResult Function(DlsSprintModel sprint)? updateSprint,
    required TResult orElse(),
  }) {
    if (updateSprint != null) {
      return updateSprint(sprint);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetSprints value) getSprints,
    required TResult Function(_StatusClick value) statusClick,
    required TResult Function(_SetCurrentSprint value) setCurrentSprint,
    required TResult Function(_UpdateSprint value) updateSprint,
  }) {
    return updateSprint(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetSprints value)? getSprints,
    TResult? Function(_StatusClick value)? statusClick,
    TResult? Function(_SetCurrentSprint value)? setCurrentSprint,
    TResult? Function(_UpdateSprint value)? updateSprint,
  }) {
    return updateSprint?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSprints value)? getSprints,
    TResult Function(_StatusClick value)? statusClick,
    TResult Function(_SetCurrentSprint value)? setCurrentSprint,
    TResult Function(_UpdateSprint value)? updateSprint,
    required TResult orElse(),
  }) {
    if (updateSprint != null) {
      return updateSprint(this);
    }
    return orElse();
  }
}

abstract class _UpdateSprint implements SprintsEvent {
  const factory _UpdateSprint(final DlsSprintModel sprint) = _$_UpdateSprint;

  DlsSprintModel get sprint;
  @JsonKey(ignore: true)
  _$$_UpdateSprintCopyWith<_$_UpdateSprint> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SprintsState {
  SprintsModel get model => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(SprintsModel model) $default, {
    required TResult Function(SprintsModel model) loading,
    required TResult Function(String message, SprintsModel model) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(SprintsModel model)? $default, {
    TResult? Function(SprintsModel model)? loading,
    TResult? Function(String message, SprintsModel model)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(SprintsModel model)? $default, {
    TResult Function(SprintsModel model)? loading,
    TResult Function(String message, SprintsModel model)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_SprintsState value) $default, {
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_SprintsState value)? $default, {
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SprintsState value)? $default, {
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SprintsStateCopyWith<SprintsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SprintsStateCopyWith<$Res> {
  factory $SprintsStateCopyWith(
          SprintsState value, $Res Function(SprintsState) then) =
      _$SprintsStateCopyWithImpl<$Res, SprintsState>;
  @useResult
  $Res call({SprintsModel model});

  $SprintsModelCopyWith<$Res> get model;
}

/// @nodoc
class _$SprintsStateCopyWithImpl<$Res, $Val extends SprintsState>
    implements $SprintsStateCopyWith<$Res> {
  _$SprintsStateCopyWithImpl(this._value, this._then);

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
              as SprintsModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SprintsModelCopyWith<$Res> get model {
    return $SprintsModelCopyWith<$Res>(_value.model, (value) {
      return _then(_value.copyWith(model: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SprintsStateCopyWith<$Res>
    implements $SprintsStateCopyWith<$Res> {
  factory _$$_SprintsStateCopyWith(
          _$_SprintsState value, $Res Function(_$_SprintsState) then) =
      __$$_SprintsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SprintsModel model});

  @override
  $SprintsModelCopyWith<$Res> get model;
}

/// @nodoc
class __$$_SprintsStateCopyWithImpl<$Res>
    extends _$SprintsStateCopyWithImpl<$Res, _$_SprintsState>
    implements _$$_SprintsStateCopyWith<$Res> {
  __$$_SprintsStateCopyWithImpl(
      _$_SprintsState _value, $Res Function(_$_SprintsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
  }) {
    return _then(_$_SprintsState(
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as SprintsModel,
    ));
  }
}

/// @nodoc

class _$_SprintsState implements _SprintsState {
  const _$_SprintsState({this.model = const SprintsModel()});

  @override
  @JsonKey()
  final SprintsModel model;

  @override
  String toString() {
    return 'SprintsState(model: $model)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SprintsState &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SprintsStateCopyWith<_$_SprintsState> get copyWith =>
      __$$_SprintsStateCopyWithImpl<_$_SprintsState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(SprintsModel model) $default, {
    required TResult Function(SprintsModel model) loading,
    required TResult Function(String message, SprintsModel model) error,
  }) {
    return $default(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(SprintsModel model)? $default, {
    TResult? Function(SprintsModel model)? loading,
    TResult? Function(String message, SprintsModel model)? error,
  }) {
    return $default?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(SprintsModel model)? $default, {
    TResult Function(SprintsModel model)? loading,
    TResult Function(String message, SprintsModel model)? error,
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
    TResult Function(_SprintsState value) $default, {
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_SprintsState value)? $default, {
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SprintsState value)? $default, {
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _SprintsState implements SprintsState {
  const factory _SprintsState({final SprintsModel model}) = _$_SprintsState;

  @override
  SprintsModel get model;
  @override
  @JsonKey(ignore: true)
  _$$_SprintsStateCopyWith<_$_SprintsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res>
    implements $SprintsStateCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SprintsModel model});

  @override
  $SprintsModelCopyWith<$Res> get model;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$SprintsStateCopyWithImpl<$Res, _$_Loading>
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
              as SprintsModel,
    ));
  }
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading({this.model = const SprintsModel()});

  @override
  @JsonKey()
  final SprintsModel model;

  @override
  String toString() {
    return 'SprintsState.loading(model: $model)';
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
    TResult Function(SprintsModel model) $default, {
    required TResult Function(SprintsModel model) loading,
    required TResult Function(String message, SprintsModel model) error,
  }) {
    return loading(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(SprintsModel model)? $default, {
    TResult? Function(SprintsModel model)? loading,
    TResult? Function(String message, SprintsModel model)? error,
  }) {
    return loading?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(SprintsModel model)? $default, {
    TResult Function(SprintsModel model)? loading,
    TResult Function(String message, SprintsModel model)? error,
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
    TResult Function(_SprintsState value) $default, {
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_SprintsState value)? $default, {
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SprintsState value)? $default, {
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements SprintsState {
  const factory _Loading({final SprintsModel model}) = _$_Loading;

  @override
  SprintsModel get model;
  @override
  @JsonKey(ignore: true)
  _$$_LoadingCopyWith<_$_Loading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ErrorCopyWith<$Res> implements $SprintsStateCopyWith<$Res> {
  factory _$$_ErrorCopyWith(_$_Error value, $Res Function(_$_Error) then) =
      __$$_ErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, SprintsModel model});

  @override
  $SprintsModelCopyWith<$Res> get model;
}

/// @nodoc
class __$$_ErrorCopyWithImpl<$Res>
    extends _$SprintsStateCopyWithImpl<$Res, _$_Error>
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
              as SprintsModel,
    ));
  }
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error(this.message, {this.model = const SprintsModel()});

  @override
  final String message;
  @override
  @JsonKey()
  final SprintsModel model;

  @override
  String toString() {
    return 'SprintsState.error(message: $message, model: $model)';
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
    TResult Function(SprintsModel model) $default, {
    required TResult Function(SprintsModel model) loading,
    required TResult Function(String message, SprintsModel model) error,
  }) {
    return error(message, model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(SprintsModel model)? $default, {
    TResult? Function(SprintsModel model)? loading,
    TResult? Function(String message, SprintsModel model)? error,
  }) {
    return error?.call(message, model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(SprintsModel model)? $default, {
    TResult Function(SprintsModel model)? loading,
    TResult Function(String message, SprintsModel model)? error,
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
    TResult Function(_SprintsState value) $default, {
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_SprintsState value)? $default, {
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SprintsState value)? $default, {
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements SprintsState {
  const factory _Error(final String message, {final SprintsModel model}) =
      _$_Error;

  String get message;
  @override
  SprintsModel get model;
  @override
  @JsonKey(ignore: true)
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      throw _privateConstructorUsedError;
}
