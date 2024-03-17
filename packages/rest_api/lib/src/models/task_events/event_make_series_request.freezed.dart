// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_make_series_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EventMakeSeriesRequest _$EventMakeSeriesRequestFromJson(
    Map<String, dynamic> json) {
  return _EventMakeSeriesRequest.fromJson(json);
}

/// @nodoc
mixin _$EventMakeSeriesRequest {
  RepeatEventModel get repeat => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EventMakeSeriesRequestCopyWith<EventMakeSeriesRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventMakeSeriesRequestCopyWith<$Res> {
  factory $EventMakeSeriesRequestCopyWith(EventMakeSeriesRequest value,
          $Res Function(EventMakeSeriesRequest) then) =
      _$EventMakeSeriesRequestCopyWithImpl<$Res, EventMakeSeriesRequest>;
  @useResult
  $Res call({RepeatEventModel repeat});

  $RepeatEventModelCopyWith<$Res> get repeat;
}

/// @nodoc
class _$EventMakeSeriesRequestCopyWithImpl<$Res,
        $Val extends EventMakeSeriesRequest>
    implements $EventMakeSeriesRequestCopyWith<$Res> {
  _$EventMakeSeriesRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? repeat = null,
  }) {
    return _then(_value.copyWith(
      repeat: null == repeat
          ? _value.repeat
          : repeat // ignore: cast_nullable_to_non_nullable
              as RepeatEventModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RepeatEventModelCopyWith<$Res> get repeat {
    return $RepeatEventModelCopyWith<$Res>(_value.repeat, (value) {
      return _then(_value.copyWith(repeat: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_EventMakeSeriesRequestCopyWith<$Res>
    implements $EventMakeSeriesRequestCopyWith<$Res> {
  factory _$$_EventMakeSeriesRequestCopyWith(_$_EventMakeSeriesRequest value,
          $Res Function(_$_EventMakeSeriesRequest) then) =
      __$$_EventMakeSeriesRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RepeatEventModel repeat});

  @override
  $RepeatEventModelCopyWith<$Res> get repeat;
}

/// @nodoc
class __$$_EventMakeSeriesRequestCopyWithImpl<$Res>
    extends _$EventMakeSeriesRequestCopyWithImpl<$Res,
        _$_EventMakeSeriesRequest>
    implements _$$_EventMakeSeriesRequestCopyWith<$Res> {
  __$$_EventMakeSeriesRequestCopyWithImpl(_$_EventMakeSeriesRequest _value,
      $Res Function(_$_EventMakeSeriesRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? repeat = null,
  }) {
    return _then(_$_EventMakeSeriesRequest(
      repeat: null == repeat
          ? _value.repeat
          : repeat // ignore: cast_nullable_to_non_nullable
              as RepeatEventModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EventMakeSeriesRequest implements _EventMakeSeriesRequest {
  const _$_EventMakeSeriesRequest({required this.repeat});

  factory _$_EventMakeSeriesRequest.fromJson(Map<String, dynamic> json) =>
      _$$_EventMakeSeriesRequestFromJson(json);

  @override
  final RepeatEventModel repeat;

  @override
  String toString() {
    return 'EventMakeSeriesRequest(repeat: $repeat)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventMakeSeriesRequest &&
            (identical(other.repeat, repeat) || other.repeat == repeat));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, repeat);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EventMakeSeriesRequestCopyWith<_$_EventMakeSeriesRequest> get copyWith =>
      __$$_EventMakeSeriesRequestCopyWithImpl<_$_EventMakeSeriesRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EventMakeSeriesRequestToJson(
      this,
    );
  }
}

abstract class _EventMakeSeriesRequest implements EventMakeSeriesRequest {
  const factory _EventMakeSeriesRequest(
      {required final RepeatEventModel repeat}) = _$_EventMakeSeriesRequest;

  factory _EventMakeSeriesRequest.fromJson(Map<String, dynamic> json) =
      _$_EventMakeSeriesRequest.fromJson;

  @override
  RepeatEventModel get repeat;
  @override
  @JsonKey(ignore: true)
  _$$_EventMakeSeriesRequestCopyWith<_$_EventMakeSeriesRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
