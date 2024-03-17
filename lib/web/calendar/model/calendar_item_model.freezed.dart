// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'calendar_item_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CalendarItemModel {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TodoModel model) todo,
    required TResult Function(TaskEventModel model) event,
    required TResult Function(PopupMenuModel model) popupMenu,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TodoModel model)? todo,
    TResult? Function(TaskEventModel model)? event,
    TResult? Function(PopupMenuModel model)? popupMenu,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TodoModel model)? todo,
    TResult Function(TaskEventModel model)? event,
    TResult Function(PopupMenuModel model)? popupMenu,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TodoCalendarItemModel value) todo,
    required TResult Function(TaskEventCalendarItemModel value) event,
    required TResult Function(PopupMenuCalendarItemModel value) popupMenu,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TodoCalendarItemModel value)? todo,
    TResult? Function(TaskEventCalendarItemModel value)? event,
    TResult? Function(PopupMenuCalendarItemModel value)? popupMenu,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TodoCalendarItemModel value)? todo,
    TResult Function(TaskEventCalendarItemModel value)? event,
    TResult Function(PopupMenuCalendarItemModel value)? popupMenu,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalendarItemModelCopyWith<$Res> {
  factory $CalendarItemModelCopyWith(
          CalendarItemModel value, $Res Function(CalendarItemModel) then) =
      _$CalendarItemModelCopyWithImpl<$Res, CalendarItemModel>;
}

/// @nodoc
class _$CalendarItemModelCopyWithImpl<$Res, $Val extends CalendarItemModel>
    implements $CalendarItemModelCopyWith<$Res> {
  _$CalendarItemModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$TodoCalendarItemModelCopyWith<$Res> {
  factory _$$TodoCalendarItemModelCopyWith(_$TodoCalendarItemModel value,
          $Res Function(_$TodoCalendarItemModel) then) =
      __$$TodoCalendarItemModelCopyWithImpl<$Res>;
  @useResult
  $Res call({TodoModel model});

  $TodoModelCopyWith<$Res> get model;
}

/// @nodoc
class __$$TodoCalendarItemModelCopyWithImpl<$Res>
    extends _$CalendarItemModelCopyWithImpl<$Res, _$TodoCalendarItemModel>
    implements _$$TodoCalendarItemModelCopyWith<$Res> {
  __$$TodoCalendarItemModelCopyWithImpl(_$TodoCalendarItemModel _value,
      $Res Function(_$TodoCalendarItemModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
  }) {
    return _then(_$TodoCalendarItemModel(
      null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as TodoModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TodoModelCopyWith<$Res> get model {
    return $TodoModelCopyWith<$Res>(_value.model, (value) {
      return _then(_value.copyWith(model: value));
    });
  }
}

/// @nodoc

class _$TodoCalendarItemModel extends TodoCalendarItemModel {
  const _$TodoCalendarItemModel(this.model) : super._();

  @override
  final TodoModel model;

  @override
  String toString() {
    return 'CalendarItemModel.todo(model: $model)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodoCalendarItemModel &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TodoCalendarItemModelCopyWith<_$TodoCalendarItemModel> get copyWith =>
      __$$TodoCalendarItemModelCopyWithImpl<_$TodoCalendarItemModel>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TodoModel model) todo,
    required TResult Function(TaskEventModel model) event,
    required TResult Function(PopupMenuModel model) popupMenu,
  }) {
    return todo(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TodoModel model)? todo,
    TResult? Function(TaskEventModel model)? event,
    TResult? Function(PopupMenuModel model)? popupMenu,
  }) {
    return todo?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TodoModel model)? todo,
    TResult Function(TaskEventModel model)? event,
    TResult Function(PopupMenuModel model)? popupMenu,
    required TResult orElse(),
  }) {
    if (todo != null) {
      return todo(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TodoCalendarItemModel value) todo,
    required TResult Function(TaskEventCalendarItemModel value) event,
    required TResult Function(PopupMenuCalendarItemModel value) popupMenu,
  }) {
    return todo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TodoCalendarItemModel value)? todo,
    TResult? Function(TaskEventCalendarItemModel value)? event,
    TResult? Function(PopupMenuCalendarItemModel value)? popupMenu,
  }) {
    return todo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TodoCalendarItemModel value)? todo,
    TResult Function(TaskEventCalendarItemModel value)? event,
    TResult Function(PopupMenuCalendarItemModel value)? popupMenu,
    required TResult orElse(),
  }) {
    if (todo != null) {
      return todo(this);
    }
    return orElse();
  }
}

abstract class TodoCalendarItemModel extends CalendarItemModel {
  const factory TodoCalendarItemModel(final TodoModel model) =
      _$TodoCalendarItemModel;
  const TodoCalendarItemModel._() : super._();

  TodoModel get model;
  @JsonKey(ignore: true)
  _$$TodoCalendarItemModelCopyWith<_$TodoCalendarItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TaskEventCalendarItemModelCopyWith<$Res> {
  factory _$$TaskEventCalendarItemModelCopyWith(
          _$TaskEventCalendarItemModel value,
          $Res Function(_$TaskEventCalendarItemModel) then) =
      __$$TaskEventCalendarItemModelCopyWithImpl<$Res>;
  @useResult
  $Res call({TaskEventModel model});

  $TaskEventModelCopyWith<$Res> get model;
}

/// @nodoc
class __$$TaskEventCalendarItemModelCopyWithImpl<$Res>
    extends _$CalendarItemModelCopyWithImpl<$Res, _$TaskEventCalendarItemModel>
    implements _$$TaskEventCalendarItemModelCopyWith<$Res> {
  __$$TaskEventCalendarItemModelCopyWithImpl(
      _$TaskEventCalendarItemModel _value,
      $Res Function(_$TaskEventCalendarItemModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
  }) {
    return _then(_$TaskEventCalendarItemModel(
      null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as TaskEventModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TaskEventModelCopyWith<$Res> get model {
    return $TaskEventModelCopyWith<$Res>(_value.model, (value) {
      return _then(_value.copyWith(model: value));
    });
  }
}

/// @nodoc

class _$TaskEventCalendarItemModel extends TaskEventCalendarItemModel {
  const _$TaskEventCalendarItemModel(this.model) : super._();

  @override
  final TaskEventModel model;

  @override
  String toString() {
    return 'CalendarItemModel.event(model: $model)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskEventCalendarItemModel &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskEventCalendarItemModelCopyWith<_$TaskEventCalendarItemModel>
      get copyWith => __$$TaskEventCalendarItemModelCopyWithImpl<
          _$TaskEventCalendarItemModel>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TodoModel model) todo,
    required TResult Function(TaskEventModel model) event,
    required TResult Function(PopupMenuModel model) popupMenu,
  }) {
    return event(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TodoModel model)? todo,
    TResult? Function(TaskEventModel model)? event,
    TResult? Function(PopupMenuModel model)? popupMenu,
  }) {
    return event?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TodoModel model)? todo,
    TResult Function(TaskEventModel model)? event,
    TResult Function(PopupMenuModel model)? popupMenu,
    required TResult orElse(),
  }) {
    if (event != null) {
      return event(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TodoCalendarItemModel value) todo,
    required TResult Function(TaskEventCalendarItemModel value) event,
    required TResult Function(PopupMenuCalendarItemModel value) popupMenu,
  }) {
    return event(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TodoCalendarItemModel value)? todo,
    TResult? Function(TaskEventCalendarItemModel value)? event,
    TResult? Function(PopupMenuCalendarItemModel value)? popupMenu,
  }) {
    return event?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TodoCalendarItemModel value)? todo,
    TResult Function(TaskEventCalendarItemModel value)? event,
    TResult Function(PopupMenuCalendarItemModel value)? popupMenu,
    required TResult orElse(),
  }) {
    if (event != null) {
      return event(this);
    }
    return orElse();
  }
}

abstract class TaskEventCalendarItemModel extends CalendarItemModel {
  const factory TaskEventCalendarItemModel(final TaskEventModel model) =
      _$TaskEventCalendarItemModel;
  const TaskEventCalendarItemModel._() : super._();

  TaskEventModel get model;
  @JsonKey(ignore: true)
  _$$TaskEventCalendarItemModelCopyWith<_$TaskEventCalendarItemModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PopupMenuCalendarItemModelCopyWith<$Res> {
  factory _$$PopupMenuCalendarItemModelCopyWith(
          _$PopupMenuCalendarItemModel value,
          $Res Function(_$PopupMenuCalendarItemModel) then) =
      __$$PopupMenuCalendarItemModelCopyWithImpl<$Res>;
  @useResult
  $Res call({PopupMenuModel model});

  $PopupMenuModelCopyWith<$Res> get model;
}

/// @nodoc
class __$$PopupMenuCalendarItemModelCopyWithImpl<$Res>
    extends _$CalendarItemModelCopyWithImpl<$Res, _$PopupMenuCalendarItemModel>
    implements _$$PopupMenuCalendarItemModelCopyWith<$Res> {
  __$$PopupMenuCalendarItemModelCopyWithImpl(
      _$PopupMenuCalendarItemModel _value,
      $Res Function(_$PopupMenuCalendarItemModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
  }) {
    return _then(_$PopupMenuCalendarItemModel(
      null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as PopupMenuModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $PopupMenuModelCopyWith<$Res> get model {
    return $PopupMenuModelCopyWith<$Res>(_value.model, (value) {
      return _then(_value.copyWith(model: value));
    });
  }
}

/// @nodoc

class _$PopupMenuCalendarItemModel extends PopupMenuCalendarItemModel {
  const _$PopupMenuCalendarItemModel(this.model) : super._();

  @override
  final PopupMenuModel model;

  @override
  String toString() {
    return 'CalendarItemModel.popupMenu(model: $model)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PopupMenuCalendarItemModel &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PopupMenuCalendarItemModelCopyWith<_$PopupMenuCalendarItemModel>
      get copyWith => __$$PopupMenuCalendarItemModelCopyWithImpl<
          _$PopupMenuCalendarItemModel>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TodoModel model) todo,
    required TResult Function(TaskEventModel model) event,
    required TResult Function(PopupMenuModel model) popupMenu,
  }) {
    return popupMenu(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TodoModel model)? todo,
    TResult? Function(TaskEventModel model)? event,
    TResult? Function(PopupMenuModel model)? popupMenu,
  }) {
    return popupMenu?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TodoModel model)? todo,
    TResult Function(TaskEventModel model)? event,
    TResult Function(PopupMenuModel model)? popupMenu,
    required TResult orElse(),
  }) {
    if (popupMenu != null) {
      return popupMenu(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TodoCalendarItemModel value) todo,
    required TResult Function(TaskEventCalendarItemModel value) event,
    required TResult Function(PopupMenuCalendarItemModel value) popupMenu,
  }) {
    return popupMenu(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TodoCalendarItemModel value)? todo,
    TResult? Function(TaskEventCalendarItemModel value)? event,
    TResult? Function(PopupMenuCalendarItemModel value)? popupMenu,
  }) {
    return popupMenu?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TodoCalendarItemModel value)? todo,
    TResult Function(TaskEventCalendarItemModel value)? event,
    TResult Function(PopupMenuCalendarItemModel value)? popupMenu,
    required TResult orElse(),
  }) {
    if (popupMenu != null) {
      return popupMenu(this);
    }
    return orElse();
  }
}

abstract class PopupMenuCalendarItemModel extends CalendarItemModel {
  const factory PopupMenuCalendarItemModel(final PopupMenuModel model) =
      _$PopupMenuCalendarItemModel;
  const PopupMenuCalendarItemModel._() : super._();

  PopupMenuModel get model;
  @JsonKey(ignore: true)
  _$$PopupMenuCalendarItemModelCopyWith<_$PopupMenuCalendarItemModel>
      get copyWith => throw _privateConstructorUsedError;
}
