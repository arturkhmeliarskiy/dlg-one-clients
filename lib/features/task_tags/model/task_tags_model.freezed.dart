// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'task_tags_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TaskTagsStateModel {
  List<TaskTagModel> get tags => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  int? get currentPage => throw _privateConstructorUsedError;
  int? get lastPage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TaskTagsStateModelCopyWith<TaskTagsStateModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskTagsStateModelCopyWith<$Res> {
  factory $TaskTagsStateModelCopyWith(
          TaskTagsStateModel value, $Res Function(TaskTagsStateModel) then) =
      _$TaskTagsStateModelCopyWithImpl<$Res, TaskTagsStateModel>;
  @useResult
  $Res call(
      {List<TaskTagModel> tags,
      String? title,
      int? currentPage,
      int? lastPage});
}

/// @nodoc
class _$TaskTagsStateModelCopyWithImpl<$Res, $Val extends TaskTagsStateModel>
    implements $TaskTagsStateModelCopyWith<$Res> {
  _$TaskTagsStateModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tags = null,
    Object? title = freezed,
    Object? currentPage = freezed,
    Object? lastPage = freezed,
  }) {
    return _then(_value.copyWith(
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<TaskTagModel>,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      lastPage: freezed == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TaskTagsStateModelCopyWith<$Res>
    implements $TaskTagsStateModelCopyWith<$Res> {
  factory _$$_TaskTagsStateModelCopyWith(_$_TaskTagsStateModel value,
          $Res Function(_$_TaskTagsStateModel) then) =
      __$$_TaskTagsStateModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<TaskTagModel> tags,
      String? title,
      int? currentPage,
      int? lastPage});
}

/// @nodoc
class __$$_TaskTagsStateModelCopyWithImpl<$Res>
    extends _$TaskTagsStateModelCopyWithImpl<$Res, _$_TaskTagsStateModel>
    implements _$$_TaskTagsStateModelCopyWith<$Res> {
  __$$_TaskTagsStateModelCopyWithImpl(
      _$_TaskTagsStateModel _value, $Res Function(_$_TaskTagsStateModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tags = null,
    Object? title = freezed,
    Object? currentPage = freezed,
    Object? lastPage = freezed,
  }) {
    return _then(_$_TaskTagsStateModel(
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<TaskTagModel>,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      lastPage: freezed == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_TaskTagsStateModel implements _TaskTagsStateModel {
  const _$_TaskTagsStateModel(
      {final List<TaskTagModel> tags = const [],
      this.title,
      this.currentPage,
      this.lastPage})
      : _tags = tags;

  final List<TaskTagModel> _tags;
  @override
  @JsonKey()
  List<TaskTagModel> get tags {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  final String? title;
  @override
  final int? currentPage;
  @override
  final int? lastPage;

  @override
  String toString() {
    return 'TaskTagsStateModel(tags: $tags, title: $title, currentPage: $currentPage, lastPage: $lastPage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TaskTagsStateModel &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.lastPage, lastPage) ||
                other.lastPage == lastPage));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_tags), title, currentPage, lastPage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TaskTagsStateModelCopyWith<_$_TaskTagsStateModel> get copyWith =>
      __$$_TaskTagsStateModelCopyWithImpl<_$_TaskTagsStateModel>(
          this, _$identity);
}

abstract class _TaskTagsStateModel implements TaskTagsStateModel {
  const factory _TaskTagsStateModel(
      {final List<TaskTagModel> tags,
      final String? title,
      final int? currentPage,
      final int? lastPage}) = _$_TaskTagsStateModel;

  @override
  List<TaskTagModel> get tags;
  @override
  String? get title;
  @override
  int? get currentPage;
  @override
  int? get lastPage;
  @override
  @JsonKey(ignore: true)
  _$$_TaskTagsStateModelCopyWith<_$_TaskTagsStateModel> get copyWith =>
      throw _privateConstructorUsedError;
}
