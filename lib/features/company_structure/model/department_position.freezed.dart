// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'department_position.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DepartmentPosition {
  EmployeePosition get position => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EmployeePosition position, Employee? assigned)
        manager,
    required TResult Function(EmployeePosition position, List<Employee> staff)
        staff,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EmployeePosition position, Employee? assigned)? manager,
    TResult? Function(EmployeePosition position, List<Employee> staff)? staff,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EmployeePosition position, Employee? assigned)? manager,
    TResult Function(EmployeePosition position, List<Employee> staff)? staff,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ManagerDepartmentPosition value) manager,
    required TResult Function(StaffDepartmentPosition value) staff,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ManagerDepartmentPosition value)? manager,
    TResult? Function(StaffDepartmentPosition value)? staff,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ManagerDepartmentPosition value)? manager,
    TResult Function(StaffDepartmentPosition value)? staff,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DepartmentPositionCopyWith<DepartmentPosition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DepartmentPositionCopyWith<$Res> {
  factory $DepartmentPositionCopyWith(
          DepartmentPosition value, $Res Function(DepartmentPosition) then) =
      _$DepartmentPositionCopyWithImpl<$Res, DepartmentPosition>;
  @useResult
  $Res call({EmployeePosition position});
}

/// @nodoc
class _$DepartmentPositionCopyWithImpl<$Res, $Val extends DepartmentPosition>
    implements $DepartmentPositionCopyWith<$Res> {
  _$DepartmentPositionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? position = null,
  }) {
    return _then(_value.copyWith(
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as EmployeePosition,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ManagerDepartmentPositionCopyWith<$Res>
    implements $DepartmentPositionCopyWith<$Res> {
  factory _$$ManagerDepartmentPositionCopyWith(
          _$ManagerDepartmentPosition value,
          $Res Function(_$ManagerDepartmentPosition) then) =
      __$$ManagerDepartmentPositionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({EmployeePosition position, Employee? assigned});

  $EmployeeCopyWith<$Res>? get assigned;
}

/// @nodoc
class __$$ManagerDepartmentPositionCopyWithImpl<$Res>
    extends _$DepartmentPositionCopyWithImpl<$Res, _$ManagerDepartmentPosition>
    implements _$$ManagerDepartmentPositionCopyWith<$Res> {
  __$$ManagerDepartmentPositionCopyWithImpl(_$ManagerDepartmentPosition _value,
      $Res Function(_$ManagerDepartmentPosition) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? position = null,
    Object? assigned = freezed,
  }) {
    return _then(_$ManagerDepartmentPosition(
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as EmployeePosition,
      assigned: freezed == assigned
          ? _value.assigned
          : assigned // ignore: cast_nullable_to_non_nullable
              as Employee?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $EmployeeCopyWith<$Res>? get assigned {
    if (_value.assigned == null) {
      return null;
    }

    return $EmployeeCopyWith<$Res>(_value.assigned!, (value) {
      return _then(_value.copyWith(assigned: value));
    });
  }
}

/// @nodoc

class _$ManagerDepartmentPosition implements ManagerDepartmentPosition {
  const _$ManagerDepartmentPosition({required this.position, this.assigned});

  @override
  final EmployeePosition position;
  @override
  final Employee? assigned;

  @override
  String toString() {
    return 'DepartmentPosition.manager(position: $position, assigned: $assigned)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ManagerDepartmentPosition &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.assigned, assigned) ||
                other.assigned == assigned));
  }

  @override
  int get hashCode => Object.hash(runtimeType, position, assigned);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ManagerDepartmentPositionCopyWith<_$ManagerDepartmentPosition>
      get copyWith => __$$ManagerDepartmentPositionCopyWithImpl<
          _$ManagerDepartmentPosition>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EmployeePosition position, Employee? assigned)
        manager,
    required TResult Function(EmployeePosition position, List<Employee> staff)
        staff,
  }) {
    return manager(position, assigned);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EmployeePosition position, Employee? assigned)? manager,
    TResult? Function(EmployeePosition position, List<Employee> staff)? staff,
  }) {
    return manager?.call(position, assigned);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EmployeePosition position, Employee? assigned)? manager,
    TResult Function(EmployeePosition position, List<Employee> staff)? staff,
    required TResult orElse(),
  }) {
    if (manager != null) {
      return manager(position, assigned);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ManagerDepartmentPosition value) manager,
    required TResult Function(StaffDepartmentPosition value) staff,
  }) {
    return manager(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ManagerDepartmentPosition value)? manager,
    TResult? Function(StaffDepartmentPosition value)? staff,
  }) {
    return manager?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ManagerDepartmentPosition value)? manager,
    TResult Function(StaffDepartmentPosition value)? staff,
    required TResult orElse(),
  }) {
    if (manager != null) {
      return manager(this);
    }
    return orElse();
  }
}

abstract class ManagerDepartmentPosition implements DepartmentPosition {
  const factory ManagerDepartmentPosition(
      {required final EmployeePosition position,
      final Employee? assigned}) = _$ManagerDepartmentPosition;

  @override
  EmployeePosition get position;
  Employee? get assigned;
  @override
  @JsonKey(ignore: true)
  _$$ManagerDepartmentPositionCopyWith<_$ManagerDepartmentPosition>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StaffDepartmentPositionCopyWith<$Res>
    implements $DepartmentPositionCopyWith<$Res> {
  factory _$$StaffDepartmentPositionCopyWith(_$StaffDepartmentPosition value,
          $Res Function(_$StaffDepartmentPosition) then) =
      __$$StaffDepartmentPositionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({EmployeePosition position, List<Employee> staff});
}

/// @nodoc
class __$$StaffDepartmentPositionCopyWithImpl<$Res>
    extends _$DepartmentPositionCopyWithImpl<$Res, _$StaffDepartmentPosition>
    implements _$$StaffDepartmentPositionCopyWith<$Res> {
  __$$StaffDepartmentPositionCopyWithImpl(_$StaffDepartmentPosition _value,
      $Res Function(_$StaffDepartmentPosition) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? position = null,
    Object? staff = null,
  }) {
    return _then(_$StaffDepartmentPosition(
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as EmployeePosition,
      staff: null == staff
          ? _value._staff
          : staff // ignore: cast_nullable_to_non_nullable
              as List<Employee>,
    ));
  }
}

/// @nodoc

class _$StaffDepartmentPosition implements StaffDepartmentPosition {
  const _$StaffDepartmentPosition(
      {required this.position, final List<Employee> staff = const <Employee>[]})
      : _staff = staff;

  @override
  final EmployeePosition position;
  final List<Employee> _staff;
  @override
  @JsonKey()
  List<Employee> get staff {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_staff);
  }

  @override
  String toString() {
    return 'DepartmentPosition.staff(position: $position, staff: $staff)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StaffDepartmentPosition &&
            (identical(other.position, position) ||
                other.position == position) &&
            const DeepCollectionEquality().equals(other._staff, _staff));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, position, const DeepCollectionEquality().hash(_staff));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StaffDepartmentPositionCopyWith<_$StaffDepartmentPosition> get copyWith =>
      __$$StaffDepartmentPositionCopyWithImpl<_$StaffDepartmentPosition>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EmployeePosition position, Employee? assigned)
        manager,
    required TResult Function(EmployeePosition position, List<Employee> staff)
        staff,
  }) {
    return staff(position, this.staff);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EmployeePosition position, Employee? assigned)? manager,
    TResult? Function(EmployeePosition position, List<Employee> staff)? staff,
  }) {
    return staff?.call(position, this.staff);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EmployeePosition position, Employee? assigned)? manager,
    TResult Function(EmployeePosition position, List<Employee> staff)? staff,
    required TResult orElse(),
  }) {
    if (staff != null) {
      return staff(position, this.staff);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ManagerDepartmentPosition value) manager,
    required TResult Function(StaffDepartmentPosition value) staff,
  }) {
    return staff(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ManagerDepartmentPosition value)? manager,
    TResult? Function(StaffDepartmentPosition value)? staff,
  }) {
    return staff?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ManagerDepartmentPosition value)? manager,
    TResult Function(StaffDepartmentPosition value)? staff,
    required TResult orElse(),
  }) {
    if (staff != null) {
      return staff(this);
    }
    return orElse();
  }
}

abstract class StaffDepartmentPosition implements DepartmentPosition {
  const factory StaffDepartmentPosition(
      {required final EmployeePosition position,
      final List<Employee> staff}) = _$StaffDepartmentPosition;

  @override
  EmployeePosition get position;
  List<Employee> get staff;
  @override
  @JsonKey(ignore: true)
  _$$StaffDepartmentPositionCopyWith<_$StaffDepartmentPosition> get copyWith =>
      throw _privateConstructorUsedError;
}
