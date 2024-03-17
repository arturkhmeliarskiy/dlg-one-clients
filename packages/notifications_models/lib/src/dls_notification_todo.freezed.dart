// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dls_notification_todo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DLSNotificationTodo _$DLSNotificationTodoFromJson(Map<String, dynamic> json) {
  return _DLSNotificationTodo.fromJson(json);
}

/// @nodoc
mixin _$DLSNotificationTodo {
  String get uuid => throw _privateConstructorUsedError;
  String? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DLSNotificationTodoCopyWith<DLSNotificationTodo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DLSNotificationTodoCopyWith<$Res> {
  factory $DLSNotificationTodoCopyWith(
          DLSNotificationTodo value, $Res Function(DLSNotificationTodo) then) =
      _$DLSNotificationTodoCopyWithImpl<$Res, DLSNotificationTodo>;
  @useResult
  $Res call({String uuid, String? data});
}

/// @nodoc
class _$DLSNotificationTodoCopyWithImpl<$Res, $Val extends DLSNotificationTodo>
    implements $DLSNotificationTodoCopyWith<$Res> {
  _$DLSNotificationTodoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DLSNotificationTodoCopyWith<$Res>
    implements $DLSNotificationTodoCopyWith<$Res> {
  factory _$$_DLSNotificationTodoCopyWith(_$_DLSNotificationTodo value,
          $Res Function(_$_DLSNotificationTodo) then) =
      __$$_DLSNotificationTodoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String uuid, String? data});
}

/// @nodoc
class __$$_DLSNotificationTodoCopyWithImpl<$Res>
    extends _$DLSNotificationTodoCopyWithImpl<$Res, _$_DLSNotificationTodo>
    implements _$$_DLSNotificationTodoCopyWith<$Res> {
  __$$_DLSNotificationTodoCopyWithImpl(_$_DLSNotificationTodo _value,
      $Res Function(_$_DLSNotificationTodo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? data = freezed,
  }) {
    return _then(_$_DLSNotificationTodo(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DLSNotificationTodo extends _DLSNotificationTodo {
  _$_DLSNotificationTodo({required this.uuid, this.data}) : super._();

  factory _$_DLSNotificationTodo.fromJson(Map<String, dynamic> json) =>
      _$$_DLSNotificationTodoFromJson(json);

  @override
  final String uuid;
  @override
  final String? data;

  @override
  String toString() {
    return 'DLSNotificationTodo(uuid: $uuid, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DLSNotificationTodo &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, uuid, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DLSNotificationTodoCopyWith<_$_DLSNotificationTodo> get copyWith =>
      __$$_DLSNotificationTodoCopyWithImpl<_$_DLSNotificationTodo>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DLSNotificationTodoToJson(
      this,
    );
  }
}

abstract class _DLSNotificationTodo extends DLSNotificationTodo {
  factory _DLSNotificationTodo(
      {required final String uuid,
      final String? data}) = _$_DLSNotificationTodo;
  _DLSNotificationTodo._() : super._();

  factory _DLSNotificationTodo.fromJson(Map<String, dynamic> json) =
      _$_DLSNotificationTodo.fromJson;

  @override
  String get uuid;
  @override
  String? get data;
  @override
  @JsonKey(ignore: true)
  _$$_DLSNotificationTodoCopyWith<_$_DLSNotificationTodo> get copyWith =>
      throw _privateConstructorUsedError;
}
