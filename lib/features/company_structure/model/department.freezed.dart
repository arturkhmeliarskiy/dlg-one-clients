// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'department.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Department {
  DepartmentMetaData get meta => throw _privateConstructorUsedError;
  ManagerDepartmentPosition get manager => throw _privateConstructorUsedError;
  List<StaffDepartmentPosition> get staffPositions =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DepartmentCopyWith<Department> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DepartmentCopyWith<$Res> {
  factory $DepartmentCopyWith(
          Department value, $Res Function(Department) then) =
      _$DepartmentCopyWithImpl<$Res, Department>;
  @useResult
  $Res call(
      {DepartmentMetaData meta,
      ManagerDepartmentPosition manager,
      List<StaffDepartmentPosition> staffPositions});
}

/// @nodoc
class _$DepartmentCopyWithImpl<$Res, $Val extends Department>
    implements $DepartmentCopyWith<$Res> {
  _$DepartmentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meta = null,
    Object? manager = null,
    Object? staffPositions = null,
  }) {
    return _then(_value.copyWith(
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as DepartmentMetaData,
      manager: null == manager
          ? _value.manager
          : manager // ignore: cast_nullable_to_non_nullable
              as ManagerDepartmentPosition,
      staffPositions: null == staffPositions
          ? _value.staffPositions
          : staffPositions // ignore: cast_nullable_to_non_nullable
              as List<StaffDepartmentPosition>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DepartmentCopyWith<$Res>
    implements $DepartmentCopyWith<$Res> {
  factory _$$_DepartmentCopyWith(
          _$_Department value, $Res Function(_$_Department) then) =
      __$$_DepartmentCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DepartmentMetaData meta,
      ManagerDepartmentPosition manager,
      List<StaffDepartmentPosition> staffPositions});
}

/// @nodoc
class __$$_DepartmentCopyWithImpl<$Res>
    extends _$DepartmentCopyWithImpl<$Res, _$_Department>
    implements _$$_DepartmentCopyWith<$Res> {
  __$$_DepartmentCopyWithImpl(
      _$_Department _value, $Res Function(_$_Department) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meta = null,
    Object? manager = null,
    Object? staffPositions = null,
  }) {
    return _then(_$_Department(
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as DepartmentMetaData,
      manager: null == manager
          ? _value.manager
          : manager // ignore: cast_nullable_to_non_nullable
              as ManagerDepartmentPosition,
      staffPositions: null == staffPositions
          ? _value._staffPositions
          : staffPositions // ignore: cast_nullable_to_non_nullable
              as List<StaffDepartmentPosition>,
    ));
  }
}

/// @nodoc

class _$_Department implements _Department {
  const _$_Department(
      {required this.meta,
      required this.manager,
      final List<StaffDepartmentPosition> staffPositions = const []})
      : _staffPositions = staffPositions;

  @override
  final DepartmentMetaData meta;
  @override
  final ManagerDepartmentPosition manager;
  final List<StaffDepartmentPosition> _staffPositions;
  @override
  @JsonKey()
  List<StaffDepartmentPosition> get staffPositions {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_staffPositions);
  }

  @override
  String toString() {
    return 'Department(meta: $meta, manager: $manager, staffPositions: $staffPositions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Department &&
            (identical(other.meta, meta) || other.meta == meta) &&
            const DeepCollectionEquality().equals(other.manager, manager) &&
            const DeepCollectionEquality()
                .equals(other._staffPositions, _staffPositions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      meta,
      const DeepCollectionEquality().hash(manager),
      const DeepCollectionEquality().hash(_staffPositions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DepartmentCopyWith<_$_Department> get copyWith =>
      __$$_DepartmentCopyWithImpl<_$_Department>(this, _$identity);
}

abstract class _Department implements Department {
  const factory _Department(
      {required final DepartmentMetaData meta,
      required final ManagerDepartmentPosition manager,
      final List<StaffDepartmentPosition> staffPositions}) = _$_Department;

  @override
  DepartmentMetaData get meta;
  @override
  ManagerDepartmentPosition get manager;
  @override
  List<StaffDepartmentPosition> get staffPositions;
  @override
  @JsonKey(ignore: true)
  _$$_DepartmentCopyWith<_$_Department> get copyWith =>
      throw _privateConstructorUsedError;
}
