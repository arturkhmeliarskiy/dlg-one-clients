// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'online_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OnlineStatus _$OnlineStatusFromJson(Map<String, dynamic> json) {
  return _OnlineStatus.fromJson(json);
}

/// @nodoc
mixin _$OnlineStatus {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_active')
  DateTime? get lastActive => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_online')
  bool get isOnline => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OnlineStatusCopyWith<OnlineStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnlineStatusCopyWith<$Res> {
  factory $OnlineStatusCopyWith(
          OnlineStatus value, $Res Function(OnlineStatus) then) =
      _$OnlineStatusCopyWithImpl<$Res, OnlineStatus>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'last_active') DateTime? lastActive,
      @JsonKey(name: 'is_online') bool isOnline});
}

/// @nodoc
class _$OnlineStatusCopyWithImpl<$Res, $Val extends OnlineStatus>
    implements $OnlineStatusCopyWith<$Res> {
  _$OnlineStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? lastActive = freezed,
    Object? isOnline = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      lastActive: freezed == lastActive
          ? _value.lastActive
          : lastActive // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isOnline: null == isOnline
          ? _value.isOnline
          : isOnline // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OnlineStatusCopyWith<$Res>
    implements $OnlineStatusCopyWith<$Res> {
  factory _$$_OnlineStatusCopyWith(
          _$_OnlineStatus value, $Res Function(_$_OnlineStatus) then) =
      __$$_OnlineStatusCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'last_active') DateTime? lastActive,
      @JsonKey(name: 'is_online') bool isOnline});
}

/// @nodoc
class __$$_OnlineStatusCopyWithImpl<$Res>
    extends _$OnlineStatusCopyWithImpl<$Res, _$_OnlineStatus>
    implements _$$_OnlineStatusCopyWith<$Res> {
  __$$_OnlineStatusCopyWithImpl(
      _$_OnlineStatus _value, $Res Function(_$_OnlineStatus) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? lastActive = freezed,
    Object? isOnline = null,
  }) {
    return _then(_$_OnlineStatus(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      lastActive: freezed == lastActive
          ? _value.lastActive
          : lastActive // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isOnline: null == isOnline
          ? _value.isOnline
          : isOnline // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OnlineStatus extends _OnlineStatus {
  _$_OnlineStatus(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'last_active') required this.lastActive,
      @JsonKey(name: 'is_online') required this.isOnline})
      : super._();

  factory _$_OnlineStatus.fromJson(Map<String, dynamic> json) =>
      _$$_OnlineStatusFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'last_active')
  final DateTime? lastActive;
  @override
  @JsonKey(name: 'is_online')
  final bool isOnline;

  @override
  String toString() {
    return 'OnlineStatus(id: $id, lastActive: $lastActive, isOnline: $isOnline)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OnlineStatus &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.lastActive, lastActive) ||
                other.lastActive == lastActive) &&
            (identical(other.isOnline, isOnline) ||
                other.isOnline == isOnline));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, lastActive, isOnline);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OnlineStatusCopyWith<_$_OnlineStatus> get copyWith =>
      __$$_OnlineStatusCopyWithImpl<_$_OnlineStatus>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OnlineStatusToJson(
      this,
    );
  }
}

abstract class _OnlineStatus extends OnlineStatus {
  factory _OnlineStatus(
          {@JsonKey(name: 'id') required final String id,
          @JsonKey(name: 'last_active') required final DateTime? lastActive,
          @JsonKey(name: 'is_online') required final bool isOnline}) =
      _$_OnlineStatus;
  _OnlineStatus._() : super._();

  factory _OnlineStatus.fromJson(Map<String, dynamic> json) =
      _$_OnlineStatus.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'last_active')
  DateTime? get lastActive;
  @override
  @JsonKey(name: 'is_online')
  bool get isOnline;
  @override
  @JsonKey(ignore: true)
  _$$_OnlineStatusCopyWith<_$_OnlineStatus> get copyWith =>
      throw _privateConstructorUsedError;
}
