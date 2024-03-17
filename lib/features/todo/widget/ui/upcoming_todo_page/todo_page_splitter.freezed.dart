// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'todo_page_splitter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TodoSection {
  List<TodoModel> get models => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<TodoModel> models) overdue,
    required TResult Function(List<TodoModel> models, DateTime date) date,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<TodoModel> models)? overdue,
    TResult? Function(List<TodoModel> models, DateTime date)? date,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TodoModel> models)? overdue,
    TResult Function(List<TodoModel> models, DateTime date)? date,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OverdueTodoSection value) overdue,
    required TResult Function(DateTodoSection value) date,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OverdueTodoSection value)? overdue,
    TResult? Function(DateTodoSection value)? date,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OverdueTodoSection value)? overdue,
    TResult Function(DateTodoSection value)? date,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TodoSectionCopyWith<TodoSection> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoSectionCopyWith<$Res> {
  factory $TodoSectionCopyWith(
          TodoSection value, $Res Function(TodoSection) then) =
      _$TodoSectionCopyWithImpl<$Res, TodoSection>;
  @useResult
  $Res call({List<TodoModel> models});
}

/// @nodoc
class _$TodoSectionCopyWithImpl<$Res, $Val extends TodoSection>
    implements $TodoSectionCopyWith<$Res> {
  _$TodoSectionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? models = null,
  }) {
    return _then(_value.copyWith(
      models: null == models
          ? _value.models
          : models // ignore: cast_nullable_to_non_nullable
              as List<TodoModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OverdueTodoSectionCopyWith<$Res>
    implements $TodoSectionCopyWith<$Res> {
  factory _$$OverdueTodoSectionCopyWith(_$OverdueTodoSection value,
          $Res Function(_$OverdueTodoSection) then) =
      __$$OverdueTodoSectionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TodoModel> models});
}

/// @nodoc
class __$$OverdueTodoSectionCopyWithImpl<$Res>
    extends _$TodoSectionCopyWithImpl<$Res, _$OverdueTodoSection>
    implements _$$OverdueTodoSectionCopyWith<$Res> {
  __$$OverdueTodoSectionCopyWithImpl(
      _$OverdueTodoSection _value, $Res Function(_$OverdueTodoSection) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? models = null,
  }) {
    return _then(_$OverdueTodoSection(
      models: null == models
          ? _value._models
          : models // ignore: cast_nullable_to_non_nullable
              as List<TodoModel>,
    ));
  }
}

/// @nodoc

class _$OverdueTodoSection
    with DiagnosticableTreeMixin
    implements OverdueTodoSection {
  const _$OverdueTodoSection({required final List<TodoModel> models})
      : _models = models;

  final List<TodoModel> _models;
  @override
  List<TodoModel> get models {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_models);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TodoSection.overdue(models: $models)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TodoSection.overdue'))
      ..add(DiagnosticsProperty('models', models));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OverdueTodoSection &&
            const DeepCollectionEquality().equals(other._models, _models));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_models));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OverdueTodoSectionCopyWith<_$OverdueTodoSection> get copyWith =>
      __$$OverdueTodoSectionCopyWithImpl<_$OverdueTodoSection>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<TodoModel> models) overdue,
    required TResult Function(List<TodoModel> models, DateTime date) date,
  }) {
    return overdue(models);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<TodoModel> models)? overdue,
    TResult? Function(List<TodoModel> models, DateTime date)? date,
  }) {
    return overdue?.call(models);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TodoModel> models)? overdue,
    TResult Function(List<TodoModel> models, DateTime date)? date,
    required TResult orElse(),
  }) {
    if (overdue != null) {
      return overdue(models);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OverdueTodoSection value) overdue,
    required TResult Function(DateTodoSection value) date,
  }) {
    return overdue(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OverdueTodoSection value)? overdue,
    TResult? Function(DateTodoSection value)? date,
  }) {
    return overdue?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OverdueTodoSection value)? overdue,
    TResult Function(DateTodoSection value)? date,
    required TResult orElse(),
  }) {
    if (overdue != null) {
      return overdue(this);
    }
    return orElse();
  }
}

abstract class OverdueTodoSection implements TodoSection {
  const factory OverdueTodoSection({required final List<TodoModel> models}) =
      _$OverdueTodoSection;

  @override
  List<TodoModel> get models;
  @override
  @JsonKey(ignore: true)
  _$$OverdueTodoSectionCopyWith<_$OverdueTodoSection> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DateTodoSectionCopyWith<$Res>
    implements $TodoSectionCopyWith<$Res> {
  factory _$$DateTodoSectionCopyWith(
          _$DateTodoSection value, $Res Function(_$DateTodoSection) then) =
      __$$DateTodoSectionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TodoModel> models, DateTime date});
}

/// @nodoc
class __$$DateTodoSectionCopyWithImpl<$Res>
    extends _$TodoSectionCopyWithImpl<$Res, _$DateTodoSection>
    implements _$$DateTodoSectionCopyWith<$Res> {
  __$$DateTodoSectionCopyWithImpl(
      _$DateTodoSection _value, $Res Function(_$DateTodoSection) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? models = null,
    Object? date = null,
  }) {
    return _then(_$DateTodoSection(
      models: null == models
          ? _value._models
          : models // ignore: cast_nullable_to_non_nullable
              as List<TodoModel>,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$DateTodoSection
    with DiagnosticableTreeMixin
    implements DateTodoSection {
  const _$DateTodoSection(
      {required final List<TodoModel> models, required this.date})
      : _models = models;

  final List<TodoModel> _models;
  @override
  List<TodoModel> get models {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_models);
  }

  @override
  final DateTime date;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TodoSection.date(models: $models, date: $date)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TodoSection.date'))
      ..add(DiagnosticsProperty('models', models))
      ..add(DiagnosticsProperty('date', date));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DateTodoSection &&
            const DeepCollectionEquality().equals(other._models, _models) &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_models), date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DateTodoSectionCopyWith<_$DateTodoSection> get copyWith =>
      __$$DateTodoSectionCopyWithImpl<_$DateTodoSection>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<TodoModel> models) overdue,
    required TResult Function(List<TodoModel> models, DateTime date) date,
  }) {
    return date(models, this.date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<TodoModel> models)? overdue,
    TResult? Function(List<TodoModel> models, DateTime date)? date,
  }) {
    return date?.call(models, this.date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TodoModel> models)? overdue,
    TResult Function(List<TodoModel> models, DateTime date)? date,
    required TResult orElse(),
  }) {
    if (date != null) {
      return date(models, this.date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OverdueTodoSection value) overdue,
    required TResult Function(DateTodoSection value) date,
  }) {
    return date(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OverdueTodoSection value)? overdue,
    TResult? Function(DateTodoSection value)? date,
  }) {
    return date?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OverdueTodoSection value)? overdue,
    TResult Function(DateTodoSection value)? date,
    required TResult orElse(),
  }) {
    if (date != null) {
      return date(this);
    }
    return orElse();
  }
}

abstract class DateTodoSection implements TodoSection {
  const factory DateTodoSection(
      {required final List<TodoModel> models,
      required final DateTime date}) = _$DateTodoSection;

  @override
  List<TodoModel> get models;
  DateTime get date;
  @override
  @JsonKey(ignore: true)
  _$$DateTodoSectionCopyWith<_$DateTodoSection> get copyWith =>
      throw _privateConstructorUsedError;
}
