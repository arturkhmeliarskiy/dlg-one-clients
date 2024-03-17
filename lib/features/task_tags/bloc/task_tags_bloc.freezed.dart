// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'task_tags_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TaskTagsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? title, int? page, bool withLoading) fetch,
    required TResult Function(String title) addTag,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? title, int? page, bool withLoading)? fetch,
    TResult? Function(String title)? addTag,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? title, int? page, bool withLoading)? fetch,
    TResult Function(String title)? addTag,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_AddTag value) addTag,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_AddTag value)? addTag,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_AddTag value)? addTag,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskTagsEventCopyWith<$Res> {
  factory $TaskTagsEventCopyWith(
          TaskTagsEvent value, $Res Function(TaskTagsEvent) then) =
      _$TaskTagsEventCopyWithImpl<$Res, TaskTagsEvent>;
}

/// @nodoc
class _$TaskTagsEventCopyWithImpl<$Res, $Val extends TaskTagsEvent>
    implements $TaskTagsEventCopyWith<$Res> {
  _$TaskTagsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_FetchCopyWith<$Res> {
  factory _$$_FetchCopyWith(_$_Fetch value, $Res Function(_$_Fetch) then) =
      __$$_FetchCopyWithImpl<$Res>;
  @useResult
  $Res call({String? title, int? page, bool withLoading});
}

/// @nodoc
class __$$_FetchCopyWithImpl<$Res>
    extends _$TaskTagsEventCopyWithImpl<$Res, _$_Fetch>
    implements _$$_FetchCopyWith<$Res> {
  __$$_FetchCopyWithImpl(_$_Fetch _value, $Res Function(_$_Fetch) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? page = freezed,
    Object? withLoading = null,
  }) {
    return _then(_$_Fetch(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
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

class _$_Fetch implements _Fetch {
  const _$_Fetch({this.title, this.page, this.withLoading = true});

  @override
  final String? title;
  @override
  final int? page;
  @override
  @JsonKey()
  final bool withLoading;

  @override
  String toString() {
    return 'TaskTagsEvent.fetch(title: $title, page: $page, withLoading: $withLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Fetch &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.withLoading, withLoading) ||
                other.withLoading == withLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, page, withLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FetchCopyWith<_$_Fetch> get copyWith =>
      __$$_FetchCopyWithImpl<_$_Fetch>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? title, int? page, bool withLoading) fetch,
    required TResult Function(String title) addTag,
  }) {
    return fetch(title, page, withLoading);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? title, int? page, bool withLoading)? fetch,
    TResult? Function(String title)? addTag,
  }) {
    return fetch?.call(title, page, withLoading);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? title, int? page, bool withLoading)? fetch,
    TResult Function(String title)? addTag,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(title, page, withLoading);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_AddTag value) addTag,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_AddTag value)? addTag,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_AddTag value)? addTag,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class _Fetch implements TaskTagsEvent {
  const factory _Fetch(
      {final String? title,
      final int? page,
      final bool withLoading}) = _$_Fetch;

  String? get title;
  int? get page;
  bool get withLoading;
  @JsonKey(ignore: true)
  _$$_FetchCopyWith<_$_Fetch> get copyWith =>
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
    extends _$TaskTagsEventCopyWithImpl<$Res, _$_AddTag>
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

class _$_AddTag implements _AddTag {
  const _$_AddTag(this.title);

  @override
  final String title;

  @override
  String toString() {
    return 'TaskTagsEvent.addTag(title: $title)';
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
    required TResult Function(String? title, int? page, bool withLoading) fetch,
    required TResult Function(String title) addTag,
  }) {
    return addTag(title);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? title, int? page, bool withLoading)? fetch,
    TResult? Function(String title)? addTag,
  }) {
    return addTag?.call(title);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? title, int? page, bool withLoading)? fetch,
    TResult Function(String title)? addTag,
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
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_AddTag value) addTag,
  }) {
    return addTag(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_AddTag value)? addTag,
  }) {
    return addTag?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_AddTag value)? addTag,
    required TResult orElse(),
  }) {
    if (addTag != null) {
      return addTag(this);
    }
    return orElse();
  }
}

abstract class _AddTag implements TaskTagsEvent {
  const factory _AddTag(final String title) = _$_AddTag;

  String get title;
  @JsonKey(ignore: true)
  _$$_AddTagCopyWith<_$_AddTag> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TaskTagsState {
  TaskTagsStateModel get model => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TaskTagsStateModel model) idle,
    required TResult Function(TaskTagsStateModel model) loading,
    required TResult Function(String message, TaskTagsStateModel model) error,
    required TResult Function(TaskTagModel tag, TaskTagsStateModel model)
        tagAdded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TaskTagsStateModel model)? idle,
    TResult? Function(TaskTagsStateModel model)? loading,
    TResult? Function(String message, TaskTagsStateModel model)? error,
    TResult? Function(TaskTagModel tag, TaskTagsStateModel model)? tagAdded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TaskTagsStateModel model)? idle,
    TResult Function(TaskTagsStateModel model)? loading,
    TResult Function(String message, TaskTagsStateModel model)? error,
    TResult Function(TaskTagModel tag, TaskTagsStateModel model)? tagAdded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_TagAdded value) tagAdded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Idle value)? idle,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_TagAdded value)? tagAdded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_TagAdded value)? tagAdded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TaskTagsStateCopyWith<TaskTagsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskTagsStateCopyWith<$Res> {
  factory $TaskTagsStateCopyWith(
          TaskTagsState value, $Res Function(TaskTagsState) then) =
      _$TaskTagsStateCopyWithImpl<$Res, TaskTagsState>;
  @useResult
  $Res call({TaskTagsStateModel model});

  $TaskTagsStateModelCopyWith<$Res> get model;
}

/// @nodoc
class _$TaskTagsStateCopyWithImpl<$Res, $Val extends TaskTagsState>
    implements $TaskTagsStateCopyWith<$Res> {
  _$TaskTagsStateCopyWithImpl(this._value, this._then);

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
              as TaskTagsStateModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TaskTagsStateModelCopyWith<$Res> get model {
    return $TaskTagsStateModelCopyWith<$Res>(_value.model, (value) {
      return _then(_value.copyWith(model: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_IdleCopyWith<$Res> implements $TaskTagsStateCopyWith<$Res> {
  factory _$$_IdleCopyWith(_$_Idle value, $Res Function(_$_Idle) then) =
      __$$_IdleCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TaskTagsStateModel model});

  @override
  $TaskTagsStateModelCopyWith<$Res> get model;
}

/// @nodoc
class __$$_IdleCopyWithImpl<$Res>
    extends _$TaskTagsStateCopyWithImpl<$Res, _$_Idle>
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
              as TaskTagsStateModel,
    ));
  }
}

/// @nodoc

class _$_Idle implements _Idle {
  const _$_Idle({this.model = const TaskTagsStateModel()});

  @override
  @JsonKey()
  final TaskTagsStateModel model;

  @override
  String toString() {
    return 'TaskTagsState.idle(model: $model)';
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
    required TResult Function(TaskTagsStateModel model) idle,
    required TResult Function(TaskTagsStateModel model) loading,
    required TResult Function(String message, TaskTagsStateModel model) error,
    required TResult Function(TaskTagModel tag, TaskTagsStateModel model)
        tagAdded,
  }) {
    return idle(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TaskTagsStateModel model)? idle,
    TResult? Function(TaskTagsStateModel model)? loading,
    TResult? Function(String message, TaskTagsStateModel model)? error,
    TResult? Function(TaskTagModel tag, TaskTagsStateModel model)? tagAdded,
  }) {
    return idle?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TaskTagsStateModel model)? idle,
    TResult Function(TaskTagsStateModel model)? loading,
    TResult Function(String message, TaskTagsStateModel model)? error,
    TResult Function(TaskTagModel tag, TaskTagsStateModel model)? tagAdded,
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
    required TResult Function(_Error value) error,
    required TResult Function(_TagAdded value) tagAdded,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Idle value)? idle,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_TagAdded value)? tagAdded,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_TagAdded value)? tagAdded,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class _Idle implements TaskTagsState {
  const factory _Idle({final TaskTagsStateModel model}) = _$_Idle;

  @override
  TaskTagsStateModel get model;
  @override
  @JsonKey(ignore: true)
  _$$_IdleCopyWith<_$_Idle> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res>
    implements $TaskTagsStateCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TaskTagsStateModel model});

  @override
  $TaskTagsStateModelCopyWith<$Res> get model;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$TaskTagsStateCopyWithImpl<$Res, _$_Loading>
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
              as TaskTagsStateModel,
    ));
  }
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading({this.model = const TaskTagsStateModel()});

  @override
  @JsonKey()
  final TaskTagsStateModel model;

  @override
  String toString() {
    return 'TaskTagsState.loading(model: $model)';
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
    required TResult Function(TaskTagsStateModel model) idle,
    required TResult Function(TaskTagsStateModel model) loading,
    required TResult Function(String message, TaskTagsStateModel model) error,
    required TResult Function(TaskTagModel tag, TaskTagsStateModel model)
        tagAdded,
  }) {
    return loading(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TaskTagsStateModel model)? idle,
    TResult? Function(TaskTagsStateModel model)? loading,
    TResult? Function(String message, TaskTagsStateModel model)? error,
    TResult? Function(TaskTagModel tag, TaskTagsStateModel model)? tagAdded,
  }) {
    return loading?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TaskTagsStateModel model)? idle,
    TResult Function(TaskTagsStateModel model)? loading,
    TResult Function(String message, TaskTagsStateModel model)? error,
    TResult Function(TaskTagModel tag, TaskTagsStateModel model)? tagAdded,
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
    required TResult Function(_Error value) error,
    required TResult Function(_TagAdded value) tagAdded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Idle value)? idle,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_TagAdded value)? tagAdded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_TagAdded value)? tagAdded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements TaskTagsState {
  const factory _Loading({final TaskTagsStateModel model}) = _$_Loading;

  @override
  TaskTagsStateModel get model;
  @override
  @JsonKey(ignore: true)
  _$$_LoadingCopyWith<_$_Loading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ErrorCopyWith<$Res> implements $TaskTagsStateCopyWith<$Res> {
  factory _$$_ErrorCopyWith(_$_Error value, $Res Function(_$_Error) then) =
      __$$_ErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, TaskTagsStateModel model});

  @override
  $TaskTagsStateModelCopyWith<$Res> get model;
}

/// @nodoc
class __$$_ErrorCopyWithImpl<$Res>
    extends _$TaskTagsStateCopyWithImpl<$Res, _$_Error>
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
              as TaskTagsStateModel,
    ));
  }
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error(this.message, {this.model = const TaskTagsStateModel()});

  @override
  final String message;
  @override
  @JsonKey()
  final TaskTagsStateModel model;

  @override
  String toString() {
    return 'TaskTagsState.error(message: $message, model: $model)';
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
    required TResult Function(TaskTagsStateModel model) idle,
    required TResult Function(TaskTagsStateModel model) loading,
    required TResult Function(String message, TaskTagsStateModel model) error,
    required TResult Function(TaskTagModel tag, TaskTagsStateModel model)
        tagAdded,
  }) {
    return error(message, model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TaskTagsStateModel model)? idle,
    TResult? Function(TaskTagsStateModel model)? loading,
    TResult? Function(String message, TaskTagsStateModel model)? error,
    TResult? Function(TaskTagModel tag, TaskTagsStateModel model)? tagAdded,
  }) {
    return error?.call(message, model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TaskTagsStateModel model)? idle,
    TResult Function(TaskTagsStateModel model)? loading,
    TResult Function(String message, TaskTagsStateModel model)? error,
    TResult Function(TaskTagModel tag, TaskTagsStateModel model)? tagAdded,
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
    required TResult Function(_Error value) error,
    required TResult Function(_TagAdded value) tagAdded,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Idle value)? idle,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_TagAdded value)? tagAdded,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_TagAdded value)? tagAdded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements TaskTagsState {
  const factory _Error(final String message, {final TaskTagsStateModel model}) =
      _$_Error;

  String get message;
  @override
  TaskTagsStateModel get model;
  @override
  @JsonKey(ignore: true)
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_TagAddedCopyWith<$Res>
    implements $TaskTagsStateCopyWith<$Res> {
  factory _$$_TagAddedCopyWith(
          _$_TagAdded value, $Res Function(_$_TagAdded) then) =
      __$$_TagAddedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TaskTagModel tag, TaskTagsStateModel model});

  $TaskTagModelCopyWith<$Res> get tag;
  @override
  $TaskTagsStateModelCopyWith<$Res> get model;
}

/// @nodoc
class __$$_TagAddedCopyWithImpl<$Res>
    extends _$TaskTagsStateCopyWithImpl<$Res, _$_TagAdded>
    implements _$$_TagAddedCopyWith<$Res> {
  __$$_TagAddedCopyWithImpl(
      _$_TagAdded _value, $Res Function(_$_TagAdded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tag = null,
    Object? model = null,
  }) {
    return _then(_$_TagAdded(
      null == tag
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as TaskTagModel,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as TaskTagsStateModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TaskTagModelCopyWith<$Res> get tag {
    return $TaskTagModelCopyWith<$Res>(_value.tag, (value) {
      return _then(_value.copyWith(tag: value));
    });
  }
}

/// @nodoc

class _$_TagAdded implements _TagAdded {
  const _$_TagAdded(this.tag, {this.model = const TaskTagsStateModel()});

  @override
  final TaskTagModel tag;
  @override
  @JsonKey()
  final TaskTagsStateModel model;

  @override
  String toString() {
    return 'TaskTagsState.tagAdded(tag: $tag, model: $model)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TagAdded &&
            (identical(other.tag, tag) || other.tag == tag) &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tag, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TagAddedCopyWith<_$_TagAdded> get copyWith =>
      __$$_TagAddedCopyWithImpl<_$_TagAdded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TaskTagsStateModel model) idle,
    required TResult Function(TaskTagsStateModel model) loading,
    required TResult Function(String message, TaskTagsStateModel model) error,
    required TResult Function(TaskTagModel tag, TaskTagsStateModel model)
        tagAdded,
  }) {
    return tagAdded(tag, model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TaskTagsStateModel model)? idle,
    TResult? Function(TaskTagsStateModel model)? loading,
    TResult? Function(String message, TaskTagsStateModel model)? error,
    TResult? Function(TaskTagModel tag, TaskTagsStateModel model)? tagAdded,
  }) {
    return tagAdded?.call(tag, model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TaskTagsStateModel model)? idle,
    TResult Function(TaskTagsStateModel model)? loading,
    TResult Function(String message, TaskTagsStateModel model)? error,
    TResult Function(TaskTagModel tag, TaskTagsStateModel model)? tagAdded,
    required TResult orElse(),
  }) {
    if (tagAdded != null) {
      return tagAdded(tag, model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_TagAdded value) tagAdded,
  }) {
    return tagAdded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Idle value)? idle,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_TagAdded value)? tagAdded,
  }) {
    return tagAdded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_TagAdded value)? tagAdded,
    required TResult orElse(),
  }) {
    if (tagAdded != null) {
      return tagAdded(this);
    }
    return orElse();
  }
}

abstract class _TagAdded implements TaskTagsState {
  const factory _TagAdded(final TaskTagModel tag,
      {final TaskTagsStateModel model}) = _$_TagAdded;

  TaskTagModel get tag;
  @override
  TaskTagsStateModel get model;
  @override
  @JsonKey(ignore: true)
  _$$_TagAddedCopyWith<_$_TagAdded> get copyWith =>
      throw _privateConstructorUsedError;
}
