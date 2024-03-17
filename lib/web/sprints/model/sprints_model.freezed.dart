// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sprints_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SprintsModel {
  List<DlsSprintModel> get data => throw _privateConstructorUsedError;
  List<TaskStatusType> get openStatuses => throw _privateConstructorUsedError;
  DlsSprintModel? get currentSprint => throw _privateConstructorUsedError;
  DlsPaginationMeta? get meta => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SprintsModelCopyWith<SprintsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SprintsModelCopyWith<$Res> {
  factory $SprintsModelCopyWith(
          SprintsModel value, $Res Function(SprintsModel) then) =
      _$SprintsModelCopyWithImpl<$Res, SprintsModel>;
  @useResult
  $Res call(
      {List<DlsSprintModel> data,
      List<TaskStatusType> openStatuses,
      DlsSprintModel? currentSprint,
      DlsPaginationMeta? meta});

  $DlsSprintModelCopyWith<$Res>? get currentSprint;
  $DlsPaginationMetaCopyWith<$Res>? get meta;
}

/// @nodoc
class _$SprintsModelCopyWithImpl<$Res, $Val extends SprintsModel>
    implements $SprintsModelCopyWith<$Res> {
  _$SprintsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? openStatuses = null,
    Object? currentSprint = freezed,
    Object? meta = freezed,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DlsSprintModel>,
      openStatuses: null == openStatuses
          ? _value.openStatuses
          : openStatuses // ignore: cast_nullable_to_non_nullable
              as List<TaskStatusType>,
      currentSprint: freezed == currentSprint
          ? _value.currentSprint
          : currentSprint // ignore: cast_nullable_to_non_nullable
              as DlsSprintModel?,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as DlsPaginationMeta?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DlsSprintModelCopyWith<$Res>? get currentSprint {
    if (_value.currentSprint == null) {
      return null;
    }

    return $DlsSprintModelCopyWith<$Res>(_value.currentSprint!, (value) {
      return _then(_value.copyWith(currentSprint: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DlsPaginationMetaCopyWith<$Res>? get meta {
    if (_value.meta == null) {
      return null;
    }

    return $DlsPaginationMetaCopyWith<$Res>(_value.meta!, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SprintsModelCopyWith<$Res>
    implements $SprintsModelCopyWith<$Res> {
  factory _$$_SprintsModelCopyWith(
          _$_SprintsModel value, $Res Function(_$_SprintsModel) then) =
      __$$_SprintsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<DlsSprintModel> data,
      List<TaskStatusType> openStatuses,
      DlsSprintModel? currentSprint,
      DlsPaginationMeta? meta});

  @override
  $DlsSprintModelCopyWith<$Res>? get currentSprint;
  @override
  $DlsPaginationMetaCopyWith<$Res>? get meta;
}

/// @nodoc
class __$$_SprintsModelCopyWithImpl<$Res>
    extends _$SprintsModelCopyWithImpl<$Res, _$_SprintsModel>
    implements _$$_SprintsModelCopyWith<$Res> {
  __$$_SprintsModelCopyWithImpl(
      _$_SprintsModel _value, $Res Function(_$_SprintsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? openStatuses = null,
    Object? currentSprint = freezed,
    Object? meta = freezed,
  }) {
    return _then(_$_SprintsModel(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DlsSprintModel>,
      openStatuses: null == openStatuses
          ? _value._openStatuses
          : openStatuses // ignore: cast_nullable_to_non_nullable
              as List<TaskStatusType>,
      currentSprint: freezed == currentSprint
          ? _value.currentSprint
          : currentSprint // ignore: cast_nullable_to_non_nullable
              as DlsSprintModel?,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as DlsPaginationMeta?,
    ));
  }
}

/// @nodoc

class _$_SprintsModel implements _SprintsModel {
  const _$_SprintsModel(
      {final List<DlsSprintModel> data = const [],
      final List<TaskStatusType> openStatuses = const [],
      this.currentSprint,
      this.meta})
      : _data = data,
        _openStatuses = openStatuses;

  final List<DlsSprintModel> _data;
  @override
  @JsonKey()
  List<DlsSprintModel> get data {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  final List<TaskStatusType> _openStatuses;
  @override
  @JsonKey()
  List<TaskStatusType> get openStatuses {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_openStatuses);
  }

  @override
  final DlsSprintModel? currentSprint;
  @override
  final DlsPaginationMeta? meta;

  @override
  String toString() {
    return 'SprintsModel(data: $data, openStatuses: $openStatuses, currentSprint: $currentSprint, meta: $meta)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SprintsModel &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            const DeepCollectionEquality()
                .equals(other._openStatuses, _openStatuses) &&
            (identical(other.currentSprint, currentSprint) ||
                other.currentSprint == currentSprint) &&
            (identical(other.meta, meta) || other.meta == meta));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_data),
      const DeepCollectionEquality().hash(_openStatuses),
      currentSprint,
      meta);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SprintsModelCopyWith<_$_SprintsModel> get copyWith =>
      __$$_SprintsModelCopyWithImpl<_$_SprintsModel>(this, _$identity);
}

abstract class _SprintsModel implements SprintsModel {
  const factory _SprintsModel(
      {final List<DlsSprintModel> data,
      final List<TaskStatusType> openStatuses,
      final DlsSprintModel? currentSprint,
      final DlsPaginationMeta? meta}) = _$_SprintsModel;

  @override
  List<DlsSprintModel> get data;
  @override
  List<TaskStatusType> get openStatuses;
  @override
  DlsSprintModel? get currentSprint;
  @override
  DlsPaginationMeta? get meta;
  @override
  @JsonKey(ignore: true)
  _$$_SprintsModelCopyWith<_$_SprintsModel> get copyWith =>
      throw _privateConstructorUsedError;
}
