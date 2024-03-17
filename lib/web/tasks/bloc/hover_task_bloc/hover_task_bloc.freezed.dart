// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'hover_task_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HoverTaskEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(int idTask) hoverTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(int idTask)? hoverTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(int idTask)? hoverTask,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitHoverTaskEvent value) init,
    required TResult Function(HoverIdTaskEvent value) hoverTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitHoverTaskEvent value)? init,
    TResult? Function(HoverIdTaskEvent value)? hoverTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitHoverTaskEvent value)? init,
    TResult Function(HoverIdTaskEvent value)? hoverTask,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HoverTaskEventCopyWith<$Res> {
  factory $HoverTaskEventCopyWith(
          HoverTaskEvent value, $Res Function(HoverTaskEvent) then) =
      _$HoverTaskEventCopyWithImpl<$Res, HoverTaskEvent>;
}

/// @nodoc
class _$HoverTaskEventCopyWithImpl<$Res, $Val extends HoverTaskEvent>
    implements $HoverTaskEventCopyWith<$Res> {
  _$HoverTaskEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitHoverTaskEventCopyWith<$Res> {
  factory _$$InitHoverTaskEventCopyWith(_$InitHoverTaskEvent value,
          $Res Function(_$InitHoverTaskEvent) then) =
      __$$InitHoverTaskEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitHoverTaskEventCopyWithImpl<$Res>
    extends _$HoverTaskEventCopyWithImpl<$Res, _$InitHoverTaskEvent>
    implements _$$InitHoverTaskEventCopyWith<$Res> {
  __$$InitHoverTaskEventCopyWithImpl(
      _$InitHoverTaskEvent _value, $Res Function(_$InitHoverTaskEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitHoverTaskEvent extends InitHoverTaskEvent {
  const _$InitHoverTaskEvent() : super._();

  @override
  String toString() {
    return 'HoverTaskEvent.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitHoverTaskEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(int idTask) hoverTask,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(int idTask)? hoverTask,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(int idTask)? hoverTask,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitHoverTaskEvent value) init,
    required TResult Function(HoverIdTaskEvent value) hoverTask,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitHoverTaskEvent value)? init,
    TResult? Function(HoverIdTaskEvent value)? hoverTask,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitHoverTaskEvent value)? init,
    TResult Function(HoverIdTaskEvent value)? hoverTask,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class InitHoverTaskEvent extends HoverTaskEvent {
  const factory InitHoverTaskEvent() = _$InitHoverTaskEvent;
  const InitHoverTaskEvent._() : super._();
}

/// @nodoc
abstract class _$$HoverIdTaskEventCopyWith<$Res> {
  factory _$$HoverIdTaskEventCopyWith(
          _$HoverIdTaskEvent value, $Res Function(_$HoverIdTaskEvent) then) =
      __$$HoverIdTaskEventCopyWithImpl<$Res>;
  @useResult
  $Res call({int idTask});
}

/// @nodoc
class __$$HoverIdTaskEventCopyWithImpl<$Res>
    extends _$HoverTaskEventCopyWithImpl<$Res, _$HoverIdTaskEvent>
    implements _$$HoverIdTaskEventCopyWith<$Res> {
  __$$HoverIdTaskEventCopyWithImpl(
      _$HoverIdTaskEvent _value, $Res Function(_$HoverIdTaskEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idTask = null,
  }) {
    return _then(_$HoverIdTaskEvent(
      null == idTask
          ? _value.idTask
          : idTask // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$HoverIdTaskEvent extends HoverIdTaskEvent {
  const _$HoverIdTaskEvent(this.idTask) : super._();

  @override
  final int idTask;

  @override
  String toString() {
    return 'HoverTaskEvent.hoverTask(idTask: $idTask)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HoverIdTaskEvent &&
            (identical(other.idTask, idTask) || other.idTask == idTask));
  }

  @override
  int get hashCode => Object.hash(runtimeType, idTask);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HoverIdTaskEventCopyWith<_$HoverIdTaskEvent> get copyWith =>
      __$$HoverIdTaskEventCopyWithImpl<_$HoverIdTaskEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(int idTask) hoverTask,
  }) {
    return hoverTask(idTask);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(int idTask)? hoverTask,
  }) {
    return hoverTask?.call(idTask);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(int idTask)? hoverTask,
    required TResult orElse(),
  }) {
    if (hoverTask != null) {
      return hoverTask(idTask);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitHoverTaskEvent value) init,
    required TResult Function(HoverIdTaskEvent value) hoverTask,
  }) {
    return hoverTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitHoverTaskEvent value)? init,
    TResult? Function(HoverIdTaskEvent value)? hoverTask,
  }) {
    return hoverTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitHoverTaskEvent value)? init,
    TResult Function(HoverIdTaskEvent value)? hoverTask,
    required TResult orElse(),
  }) {
    if (hoverTask != null) {
      return hoverTask(this);
    }
    return orElse();
  }
}

abstract class HoverIdTaskEvent extends HoverTaskEvent {
  const factory HoverIdTaskEvent(final int idTask) = _$HoverIdTaskEvent;
  const HoverIdTaskEvent._() : super._();

  int get idTask;
  @JsonKey(ignore: true)
  _$$HoverIdTaskEventCopyWith<_$HoverIdTaskEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HoverTaskState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(int idTask) preloadData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(int idTask)? preloadData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(int idTask)? preloadData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitHoverTaskState value) init,
    required TResult Function(PreloadDataHoverTaskState value) preloadData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitHoverTaskState value)? init,
    TResult? Function(PreloadDataHoverTaskState value)? preloadData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitHoverTaskState value)? init,
    TResult Function(PreloadDataHoverTaskState value)? preloadData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HoverTaskStateCopyWith<$Res> {
  factory $HoverTaskStateCopyWith(
          HoverTaskState value, $Res Function(HoverTaskState) then) =
      _$HoverTaskStateCopyWithImpl<$Res, HoverTaskState>;
}

/// @nodoc
class _$HoverTaskStateCopyWithImpl<$Res, $Val extends HoverTaskState>
    implements $HoverTaskStateCopyWith<$Res> {
  _$HoverTaskStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitHoverTaskStateCopyWith<$Res> {
  factory _$$InitHoverTaskStateCopyWith(_$InitHoverTaskState value,
          $Res Function(_$InitHoverTaskState) then) =
      __$$InitHoverTaskStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitHoverTaskStateCopyWithImpl<$Res>
    extends _$HoverTaskStateCopyWithImpl<$Res, _$InitHoverTaskState>
    implements _$$InitHoverTaskStateCopyWith<$Res> {
  __$$InitHoverTaskStateCopyWithImpl(
      _$InitHoverTaskState _value, $Res Function(_$InitHoverTaskState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitHoverTaskState extends InitHoverTaskState {
  const _$InitHoverTaskState() : super._();

  @override
  String toString() {
    return 'HoverTaskState.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitHoverTaskState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(int idTask) preloadData,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(int idTask)? preloadData,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(int idTask)? preloadData,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitHoverTaskState value) init,
    required TResult Function(PreloadDataHoverTaskState value) preloadData,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitHoverTaskState value)? init,
    TResult? Function(PreloadDataHoverTaskState value)? preloadData,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitHoverTaskState value)? init,
    TResult Function(PreloadDataHoverTaskState value)? preloadData,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class InitHoverTaskState extends HoverTaskState {
  const factory InitHoverTaskState() = _$InitHoverTaskState;
  const InitHoverTaskState._() : super._();
}

/// @nodoc
abstract class _$$PreloadDataHoverTaskStateCopyWith<$Res> {
  factory _$$PreloadDataHoverTaskStateCopyWith(
          _$PreloadDataHoverTaskState value,
          $Res Function(_$PreloadDataHoverTaskState) then) =
      __$$PreloadDataHoverTaskStateCopyWithImpl<$Res>;
  @useResult
  $Res call({int idTask});
}

/// @nodoc
class __$$PreloadDataHoverTaskStateCopyWithImpl<$Res>
    extends _$HoverTaskStateCopyWithImpl<$Res, _$PreloadDataHoverTaskState>
    implements _$$PreloadDataHoverTaskStateCopyWith<$Res> {
  __$$PreloadDataHoverTaskStateCopyWithImpl(_$PreloadDataHoverTaskState _value,
      $Res Function(_$PreloadDataHoverTaskState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idTask = null,
  }) {
    return _then(_$PreloadDataHoverTaskState(
      idTask: null == idTask
          ? _value.idTask
          : idTask // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$PreloadDataHoverTaskState extends PreloadDataHoverTaskState {
  const _$PreloadDataHoverTaskState({required this.idTask}) : super._();

  @override
  final int idTask;

  @override
  String toString() {
    return 'HoverTaskState.preloadData(idTask: $idTask)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PreloadDataHoverTaskState &&
            (identical(other.idTask, idTask) || other.idTask == idTask));
  }

  @override
  int get hashCode => Object.hash(runtimeType, idTask);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PreloadDataHoverTaskStateCopyWith<_$PreloadDataHoverTaskState>
      get copyWith => __$$PreloadDataHoverTaskStateCopyWithImpl<
          _$PreloadDataHoverTaskState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(int idTask) preloadData,
  }) {
    return preloadData(idTask);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(int idTask)? preloadData,
  }) {
    return preloadData?.call(idTask);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(int idTask)? preloadData,
    required TResult orElse(),
  }) {
    if (preloadData != null) {
      return preloadData(idTask);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitHoverTaskState value) init,
    required TResult Function(PreloadDataHoverTaskState value) preloadData,
  }) {
    return preloadData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitHoverTaskState value)? init,
    TResult? Function(PreloadDataHoverTaskState value)? preloadData,
  }) {
    return preloadData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitHoverTaskState value)? init,
    TResult Function(PreloadDataHoverTaskState value)? preloadData,
    required TResult orElse(),
  }) {
    if (preloadData != null) {
      return preloadData(this);
    }
    return orElse();
  }
}

abstract class PreloadDataHoverTaskState extends HoverTaskState {
  const factory PreloadDataHoverTaskState({required final int idTask}) =
      _$PreloadDataHoverTaskState;
  const PreloadDataHoverTaskState._() : super._();

  int get idTask;
  @JsonKey(ignore: true)
  _$$PreloadDataHoverTaskStateCopyWith<_$PreloadDataHoverTaskState>
      get copyWith => throw _privateConstructorUsedError;
}
