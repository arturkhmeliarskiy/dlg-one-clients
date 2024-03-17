// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dls_notification_chat.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DLSNotificationChat _$DLSNotificationChatFromJson(Map<String, dynamic> json) {
  return _DLSNotificationChat.fromJson(json);
}

/// @nodoc
mixin _$DLSNotificationChat {
  String get uuid => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  DateTime get timestamp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DLSNotificationChatCopyWith<DLSNotificationChat> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DLSNotificationChatCopyWith<$Res> {
  factory $DLSNotificationChatCopyWith(
          DLSNotificationChat value, $Res Function(DLSNotificationChat) then) =
      _$DLSNotificationChatCopyWithImpl<$Res, DLSNotificationChat>;
  @useResult
  $Res call({String uuid, String name, DateTime timestamp});
}

/// @nodoc
class _$DLSNotificationChatCopyWithImpl<$Res, $Val extends DLSNotificationChat>
    implements $DLSNotificationChatCopyWith<$Res> {
  _$DLSNotificationChatCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? name = null,
    Object? timestamp = null,
  }) {
    return _then(_value.copyWith(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DLSNotificationChatCopyWith<$Res>
    implements $DLSNotificationChatCopyWith<$Res> {
  factory _$$_DLSNotificationChatCopyWith(_$_DLSNotificationChat value,
          $Res Function(_$_DLSNotificationChat) then) =
      __$$_DLSNotificationChatCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String uuid, String name, DateTime timestamp});
}

/// @nodoc
class __$$_DLSNotificationChatCopyWithImpl<$Res>
    extends _$DLSNotificationChatCopyWithImpl<$Res, _$_DLSNotificationChat>
    implements _$$_DLSNotificationChatCopyWith<$Res> {
  __$$_DLSNotificationChatCopyWithImpl(_$_DLSNotificationChat _value,
      $Res Function(_$_DLSNotificationChat) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? name = null,
    Object? timestamp = null,
  }) {
    return _then(_$_DLSNotificationChat(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DLSNotificationChat extends _DLSNotificationChat {
  _$_DLSNotificationChat(
      {required this.uuid, required this.name, required this.timestamp})
      : super._();

  factory _$_DLSNotificationChat.fromJson(Map<String, dynamic> json) =>
      _$$_DLSNotificationChatFromJson(json);

  @override
  final String uuid;
  @override
  final String name;
  @override
  final DateTime timestamp;

  @override
  String toString() {
    return 'DLSNotificationChat(uuid: $uuid, name: $name, timestamp: $timestamp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DLSNotificationChat &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, uuid, name, timestamp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DLSNotificationChatCopyWith<_$_DLSNotificationChat> get copyWith =>
      __$$_DLSNotificationChatCopyWithImpl<_$_DLSNotificationChat>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DLSNotificationChatToJson(
      this,
    );
  }
}

abstract class _DLSNotificationChat extends DLSNotificationChat {
  factory _DLSNotificationChat(
      {required final String uuid,
      required final String name,
      required final DateTime timestamp}) = _$_DLSNotificationChat;
  _DLSNotificationChat._() : super._();

  factory _DLSNotificationChat.fromJson(Map<String, dynamic> json) =
      _$_DLSNotificationChat.fromJson;

  @override
  String get uuid;
  @override
  String get name;
  @override
  DateTime get timestamp;
  @override
  @JsonKey(ignore: true)
  _$$_DLSNotificationChatCopyWith<_$_DLSNotificationChat> get copyWith =>
      throw _privateConstructorUsedError;
}
