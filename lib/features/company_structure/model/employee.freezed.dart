// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'employee.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Employee {
  int get id => throw _privateConstructorUsedError;
  DLSUser get profile => throw _privateConstructorUsedError;
  List<EmployeePosition> get positions => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EmployeeCopyWith<Employee> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmployeeCopyWith<$Res> {
  factory $EmployeeCopyWith(Employee value, $Res Function(Employee) then) =
      _$EmployeeCopyWithImpl<$Res, Employee>;
  @useResult
  $Res call({int id, DLSUser profile, List<EmployeePosition> positions});

  $DLSUserCopyWith<$Res> get profile;
}

/// @nodoc
class _$EmployeeCopyWithImpl<$Res, $Val extends Employee>
    implements $EmployeeCopyWith<$Res> {
  _$EmployeeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? profile = null,
    Object? positions = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      profile: null == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as DLSUser,
      positions: null == positions
          ? _value.positions
          : positions // ignore: cast_nullable_to_non_nullable
              as List<EmployeePosition>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DLSUserCopyWith<$Res> get profile {
    return $DLSUserCopyWith<$Res>(_value.profile, (value) {
      return _then(_value.copyWith(profile: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_EmployeeCopyWith<$Res> implements $EmployeeCopyWith<$Res> {
  factory _$$_EmployeeCopyWith(
          _$_Employee value, $Res Function(_$_Employee) then) =
      __$$_EmployeeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, DLSUser profile, List<EmployeePosition> positions});

  @override
  $DLSUserCopyWith<$Res> get profile;
}

/// @nodoc
class __$$_EmployeeCopyWithImpl<$Res>
    extends _$EmployeeCopyWithImpl<$Res, _$_Employee>
    implements _$$_EmployeeCopyWith<$Res> {
  __$$_EmployeeCopyWithImpl(
      _$_Employee _value, $Res Function(_$_Employee) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? profile = null,
    Object? positions = null,
  }) {
    return _then(_$_Employee(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      profile: null == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as DLSUser,
      positions: null == positions
          ? _value._positions
          : positions // ignore: cast_nullable_to_non_nullable
              as List<EmployeePosition>,
    ));
  }
}

/// @nodoc

class _$_Employee implements _Employee {
  const _$_Employee(
      {required this.id,
      required this.profile,
      required final List<EmployeePosition> positions})
      : _positions = positions;

  @override
  final int id;
  @override
  final DLSUser profile;
  final List<EmployeePosition> _positions;
  @override
  List<EmployeePosition> get positions {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_positions);
  }

  @override
  String toString() {
    return 'Employee(id: $id, profile: $profile, positions: $positions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Employee &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.profile, profile) || other.profile == profile) &&
            const DeepCollectionEquality()
                .equals(other._positions, _positions));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, profile,
      const DeepCollectionEquality().hash(_positions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EmployeeCopyWith<_$_Employee> get copyWith =>
      __$$_EmployeeCopyWithImpl<_$_Employee>(this, _$identity);
}

abstract class _Employee implements Employee {
  const factory _Employee(
      {required final int id,
      required final DLSUser profile,
      required final List<EmployeePosition> positions}) = _$_Employee;

  @override
  int get id;
  @override
  DLSUser get profile;
  @override
  List<EmployeePosition> get positions;
  @override
  @JsonKey(ignore: true)
  _$$_EmployeeCopyWith<_$_Employee> get copyWith =>
      throw _privateConstructorUsedError;
}
