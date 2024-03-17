// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'call_meta.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CallMeta _$CallMetaFromJson(Map<String, dynamic> json) {
  return _CallMeta.fromJson(json);
}

/// @nodoc
mixin _$CallMeta {
  @JsonKey(name: 'room')
  String get number => throw _privateConstructorUsedError;
  @JsonKey(name: 'chat_id')
  String get chatId => throw _privateConstructorUsedError;
  @JsonKey(name: 'uniqueid')
  String? get uniqueId => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_at')
  DateTime? get startAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'callers')
  List<Caller> get callers => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CallMetaCopyWith<CallMeta> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CallMetaCopyWith<$Res> {
  factory $CallMetaCopyWith(CallMeta value, $Res Function(CallMeta) then) =
      _$CallMetaCopyWithImpl<$Res, CallMeta>;
  @useResult
  $Res call(
      {@JsonKey(name: 'room') String number,
      @JsonKey(name: 'chat_id') String chatId,
      @JsonKey(name: 'uniqueid') String? uniqueId,
      @JsonKey(name: 'start_at') DateTime? startAt,
      @JsonKey(name: 'callers') List<Caller> callers});
}

/// @nodoc
class _$CallMetaCopyWithImpl<$Res, $Val extends CallMeta>
    implements $CallMetaCopyWith<$Res> {
  _$CallMetaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
    Object? chatId = null,
    Object? uniqueId = freezed,
    Object? startAt = freezed,
    Object? callers = null,
  }) {
    return _then(_value.copyWith(
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
      chatId: null == chatId
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as String,
      uniqueId: freezed == uniqueId
          ? _value.uniqueId
          : uniqueId // ignore: cast_nullable_to_non_nullable
              as String?,
      startAt: freezed == startAt
          ? _value.startAt
          : startAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      callers: null == callers
          ? _value.callers
          : callers // ignore: cast_nullable_to_non_nullable
              as List<Caller>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CallMetaCopyWith<$Res> implements $CallMetaCopyWith<$Res> {
  factory _$$_CallMetaCopyWith(
          _$_CallMeta value, $Res Function(_$_CallMeta) then) =
      __$$_CallMetaCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'room') String number,
      @JsonKey(name: 'chat_id') String chatId,
      @JsonKey(name: 'uniqueid') String? uniqueId,
      @JsonKey(name: 'start_at') DateTime? startAt,
      @JsonKey(name: 'callers') List<Caller> callers});
}

/// @nodoc
class __$$_CallMetaCopyWithImpl<$Res>
    extends _$CallMetaCopyWithImpl<$Res, _$_CallMeta>
    implements _$$_CallMetaCopyWith<$Res> {
  __$$_CallMetaCopyWithImpl(
      _$_CallMeta _value, $Res Function(_$_CallMeta) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
    Object? chatId = null,
    Object? uniqueId = freezed,
    Object? startAt = freezed,
    Object? callers = null,
  }) {
    return _then(_$_CallMeta(
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
      chatId: null == chatId
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as String,
      uniqueId: freezed == uniqueId
          ? _value.uniqueId
          : uniqueId // ignore: cast_nullable_to_non_nullable
              as String?,
      startAt: freezed == startAt
          ? _value.startAt
          : startAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      callers: null == callers
          ? _value._callers
          : callers // ignore: cast_nullable_to_non_nullable
              as List<Caller>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CallMeta extends _CallMeta {
  _$_CallMeta(
      {@JsonKey(name: 'room') required this.number,
      @JsonKey(name: 'chat_id') required this.chatId,
      @JsonKey(name: 'uniqueid') required this.uniqueId,
      @JsonKey(name: 'start_at') required this.startAt,
      @JsonKey(name: 'callers') required final List<Caller> callers})
      : _callers = callers,
        super._();

  factory _$_CallMeta.fromJson(Map<String, dynamic> json) =>
      _$$_CallMetaFromJson(json);

  @override
  @JsonKey(name: 'room')
  final String number;
  @override
  @JsonKey(name: 'chat_id')
  final String chatId;
  @override
  @JsonKey(name: 'uniqueid')
  final String? uniqueId;
  @override
  @JsonKey(name: 'start_at')
  final DateTime? startAt;
  final List<Caller> _callers;
  @override
  @JsonKey(name: 'callers')
  List<Caller> get callers {
    if (_callers is EqualUnmodifiableListView) return _callers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_callers);
  }

  @override
  String toString() {
    return 'CallMeta(number: $number, chatId: $chatId, uniqueId: $uniqueId, startAt: $startAt, callers: $callers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CallMeta &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.chatId, chatId) || other.chatId == chatId) &&
            (identical(other.uniqueId, uniqueId) ||
                other.uniqueId == uniqueId) &&
            (identical(other.startAt, startAt) || other.startAt == startAt) &&
            const DeepCollectionEquality().equals(other._callers, _callers));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, number, chatId, uniqueId,
      startAt, const DeepCollectionEquality().hash(_callers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CallMetaCopyWith<_$_CallMeta> get copyWith =>
      __$$_CallMetaCopyWithImpl<_$_CallMeta>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CallMetaToJson(
      this,
    );
  }
}

abstract class _CallMeta extends CallMeta {
  factory _CallMeta(
          {@JsonKey(name: 'room') required final String number,
          @JsonKey(name: 'chat_id') required final String chatId,
          @JsonKey(name: 'uniqueid') required final String? uniqueId,
          @JsonKey(name: 'start_at') required final DateTime? startAt,
          @JsonKey(name: 'callers') required final List<Caller> callers}) =
      _$_CallMeta;
  _CallMeta._() : super._();

  factory _CallMeta.fromJson(Map<String, dynamic> json) = _$_CallMeta.fromJson;

  @override
  @JsonKey(name: 'room')
  String get number;
  @override
  @JsonKey(name: 'chat_id')
  String get chatId;
  @override
  @JsonKey(name: 'uniqueid')
  String? get uniqueId;
  @override
  @JsonKey(name: 'start_at')
  DateTime? get startAt;
  @override
  @JsonKey(name: 'callers')
  List<Caller> get callers;
  @override
  @JsonKey(ignore: true)
  _$$_CallMetaCopyWith<_$_CallMeta> get copyWith =>
      throw _privateConstructorUsedError;
}
