// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dls_tasks_permissons.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DlsTasksPermissions _$DlsTasksPermissionsFromJson(Map<String, dynamic> json) {
  return _DlsTasksPermissions.fromJson(json);
}

/// @nodoc
mixin _$DlsTasksPermissions {
  @JsonKey(name: 'is_edit_task')
  bool? get isEditTask => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_change_status')
  bool? get isChangeStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_change_priority')
  bool? get isChangePriority => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_change_expired_at')
  bool? get isChangeExpiredAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DlsTasksPermissionsCopyWith<DlsTasksPermissions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DlsTasksPermissionsCopyWith<$Res> {
  factory $DlsTasksPermissionsCopyWith(
          DlsTasksPermissions value, $Res Function(DlsTasksPermissions) then) =
      _$DlsTasksPermissionsCopyWithImpl<$Res, DlsTasksPermissions>;
  @useResult
  $Res call(
      {@JsonKey(name: 'is_edit_task') bool? isEditTask,
      @JsonKey(name: 'is_change_status') bool? isChangeStatus,
      @JsonKey(name: 'is_change_priority') bool? isChangePriority,
      @JsonKey(name: 'is_change_expired_at') bool? isChangeExpiredAt});
}

/// @nodoc
class _$DlsTasksPermissionsCopyWithImpl<$Res, $Val extends DlsTasksPermissions>
    implements $DlsTasksPermissionsCopyWith<$Res> {
  _$DlsTasksPermissionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isEditTask = freezed,
    Object? isChangeStatus = freezed,
    Object? isChangePriority = freezed,
    Object? isChangeExpiredAt = freezed,
  }) {
    return _then(_value.copyWith(
      isEditTask: freezed == isEditTask
          ? _value.isEditTask
          : isEditTask // ignore: cast_nullable_to_non_nullable
              as bool?,
      isChangeStatus: freezed == isChangeStatus
          ? _value.isChangeStatus
          : isChangeStatus // ignore: cast_nullable_to_non_nullable
              as bool?,
      isChangePriority: freezed == isChangePriority
          ? _value.isChangePriority
          : isChangePriority // ignore: cast_nullable_to_non_nullable
              as bool?,
      isChangeExpiredAt: freezed == isChangeExpiredAt
          ? _value.isChangeExpiredAt
          : isChangeExpiredAt // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DlsTasksPermissionsCopyWith<$Res>
    implements $DlsTasksPermissionsCopyWith<$Res> {
  factory _$$_DlsTasksPermissionsCopyWith(_$_DlsTasksPermissions value,
          $Res Function(_$_DlsTasksPermissions) then) =
      __$$_DlsTasksPermissionsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'is_edit_task') bool? isEditTask,
      @JsonKey(name: 'is_change_status') bool? isChangeStatus,
      @JsonKey(name: 'is_change_priority') bool? isChangePriority,
      @JsonKey(name: 'is_change_expired_at') bool? isChangeExpiredAt});
}

/// @nodoc
class __$$_DlsTasksPermissionsCopyWithImpl<$Res>
    extends _$DlsTasksPermissionsCopyWithImpl<$Res, _$_DlsTasksPermissions>
    implements _$$_DlsTasksPermissionsCopyWith<$Res> {
  __$$_DlsTasksPermissionsCopyWithImpl(_$_DlsTasksPermissions _value,
      $Res Function(_$_DlsTasksPermissions) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isEditTask = freezed,
    Object? isChangeStatus = freezed,
    Object? isChangePriority = freezed,
    Object? isChangeExpiredAt = freezed,
  }) {
    return _then(_$_DlsTasksPermissions(
      isEditTask: freezed == isEditTask
          ? _value.isEditTask
          : isEditTask // ignore: cast_nullable_to_non_nullable
              as bool?,
      isChangeStatus: freezed == isChangeStatus
          ? _value.isChangeStatus
          : isChangeStatus // ignore: cast_nullable_to_non_nullable
              as bool?,
      isChangePriority: freezed == isChangePriority
          ? _value.isChangePriority
          : isChangePriority // ignore: cast_nullable_to_non_nullable
              as bool?,
      isChangeExpiredAt: freezed == isChangeExpiredAt
          ? _value.isChangeExpiredAt
          : isChangeExpiredAt // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DlsTasksPermissions extends _DlsTasksPermissions {
  _$_DlsTasksPermissions(
      {@JsonKey(name: 'is_edit_task') this.isEditTask,
      @JsonKey(name: 'is_change_status') this.isChangeStatus,
      @JsonKey(name: 'is_change_priority') this.isChangePriority,
      @JsonKey(name: 'is_change_expired_at') this.isChangeExpiredAt})
      : super._();

  factory _$_DlsTasksPermissions.fromJson(Map<String, dynamic> json) =>
      _$$_DlsTasksPermissionsFromJson(json);

  @override
  @JsonKey(name: 'is_edit_task')
  final bool? isEditTask;
  @override
  @JsonKey(name: 'is_change_status')
  final bool? isChangeStatus;
  @override
  @JsonKey(name: 'is_change_priority')
  final bool? isChangePriority;
  @override
  @JsonKey(name: 'is_change_expired_at')
  final bool? isChangeExpiredAt;

  @override
  String toString() {
    return 'DlsTasksPermissions(isEditTask: $isEditTask, isChangeStatus: $isChangeStatus, isChangePriority: $isChangePriority, isChangeExpiredAt: $isChangeExpiredAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DlsTasksPermissions &&
            (identical(other.isEditTask, isEditTask) ||
                other.isEditTask == isEditTask) &&
            (identical(other.isChangeStatus, isChangeStatus) ||
                other.isChangeStatus == isChangeStatus) &&
            (identical(other.isChangePriority, isChangePriority) ||
                other.isChangePriority == isChangePriority) &&
            (identical(other.isChangeExpiredAt, isChangeExpiredAt) ||
                other.isChangeExpiredAt == isChangeExpiredAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, isEditTask, isChangeStatus,
      isChangePriority, isChangeExpiredAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DlsTasksPermissionsCopyWith<_$_DlsTasksPermissions> get copyWith =>
      __$$_DlsTasksPermissionsCopyWithImpl<_$_DlsTasksPermissions>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DlsTasksPermissionsToJson(
      this,
    );
  }
}

abstract class _DlsTasksPermissions extends DlsTasksPermissions {
  factory _DlsTasksPermissions(
      {@JsonKey(name: 'is_edit_task')
          final bool? isEditTask,
      @JsonKey(name: 'is_change_status')
          final bool? isChangeStatus,
      @JsonKey(name: 'is_change_priority')
          final bool? isChangePriority,
      @JsonKey(name: 'is_change_expired_at')
          final bool? isChangeExpiredAt}) = _$_DlsTasksPermissions;
  _DlsTasksPermissions._() : super._();

  factory _DlsTasksPermissions.fromJson(Map<String, dynamic> json) =
      _$_DlsTasksPermissions.fromJson;

  @override
  @JsonKey(name: 'is_edit_task')
  bool? get isEditTask;
  @override
  @JsonKey(name: 'is_change_status')
  bool? get isChangeStatus;
  @override
  @JsonKey(name: 'is_change_priority')
  bool? get isChangePriority;
  @override
  @JsonKey(name: 'is_change_expired_at')
  bool? get isChangeExpiredAt;
  @override
  @JsonKey(ignore: true)
  _$$_DlsTasksPermissionsCopyWith<_$_DlsTasksPermissions> get copyWith =>
      throw _privateConstructorUsedError;
}
