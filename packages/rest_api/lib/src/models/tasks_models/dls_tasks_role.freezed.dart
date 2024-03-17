// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dls_tasks_role.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DlsTasksRole _$DlsTasksRoleFromJson(Map<String, dynamic> json) {
  return _DlsTasksRole.fromJson(json);
}

/// @nodoc
mixin _$DlsTasksRole {
  @JsonKey(name: 'id', unknownEnumValue: TaskRolesType.unknown)
  TaskRolesType? get role => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DlsTasksRoleCopyWith<DlsTasksRole> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DlsTasksRoleCopyWith<$Res> {
  factory $DlsTasksRoleCopyWith(
          DlsTasksRole value, $Res Function(DlsTasksRole) then) =
      _$DlsTasksRoleCopyWithImpl<$Res, DlsTasksRole>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id', unknownEnumValue: TaskRolesType.unknown)
          TaskRolesType? role,
      @JsonKey(name: 'name')
          String? name});
}

/// @nodoc
class _$DlsTasksRoleCopyWithImpl<$Res, $Val extends DlsTasksRole>
    implements $DlsTasksRoleCopyWith<$Res> {
  _$DlsTasksRoleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? role = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as TaskRolesType?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DlsTasksRoleCopyWith<$Res>
    implements $DlsTasksRoleCopyWith<$Res> {
  factory _$$_DlsTasksRoleCopyWith(
          _$_DlsTasksRole value, $Res Function(_$_DlsTasksRole) then) =
      __$$_DlsTasksRoleCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id', unknownEnumValue: TaskRolesType.unknown)
          TaskRolesType? role,
      @JsonKey(name: 'name')
          String? name});
}

/// @nodoc
class __$$_DlsTasksRoleCopyWithImpl<$Res>
    extends _$DlsTasksRoleCopyWithImpl<$Res, _$_DlsTasksRole>
    implements _$$_DlsTasksRoleCopyWith<$Res> {
  __$$_DlsTasksRoleCopyWithImpl(
      _$_DlsTasksRole _value, $Res Function(_$_DlsTasksRole) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? role = freezed,
    Object? name = freezed,
  }) {
    return _then(_$_DlsTasksRole(
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as TaskRolesType?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DlsTasksRole extends _DlsTasksRole {
  _$_DlsTasksRole(
      {@JsonKey(name: 'id', unknownEnumValue: TaskRolesType.unknown) this.role,
      @JsonKey(name: 'name') this.name})
      : super._();

  factory _$_DlsTasksRole.fromJson(Map<String, dynamic> json) =>
      _$$_DlsTasksRoleFromJson(json);

  @override
  @JsonKey(name: 'id', unknownEnumValue: TaskRolesType.unknown)
  final TaskRolesType? role;
  @override
  @JsonKey(name: 'name')
  final String? name;

  @override
  String toString() {
    return 'DlsTasksRole(role: $role, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DlsTasksRole &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, role, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DlsTasksRoleCopyWith<_$_DlsTasksRole> get copyWith =>
      __$$_DlsTasksRoleCopyWithImpl<_$_DlsTasksRole>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DlsTasksRoleToJson(
      this,
    );
  }
}

abstract class _DlsTasksRole extends DlsTasksRole {
  factory _DlsTasksRole(
      {@JsonKey(name: 'id', unknownEnumValue: TaskRolesType.unknown)
          final TaskRolesType? role,
      @JsonKey(name: 'name')
          final String? name}) = _$_DlsTasksRole;
  _DlsTasksRole._() : super._();

  factory _DlsTasksRole.fromJson(Map<String, dynamic> json) =
      _$_DlsTasksRole.fromJson;

  @override
  @JsonKey(name: 'id', unknownEnumValue: TaskRolesType.unknown)
  TaskRolesType? get role;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$_DlsTasksRoleCopyWith<_$_DlsTasksRole> get copyWith =>
      throw _privateConstructorUsedError;
}
