// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_todo_model_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UpdateTodoModelRequest _$UpdateTodoModelRequestFromJson(
    Map<String, dynamic> json) {
  return _UpdateTodoModelRequestl.fromJson(json);
}

/// @nodoc
mixin _$UpdateTodoModelRequest {
  String get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  TodoStatus get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_all_day')
  bool get isFullDay => throw _privateConstructorUsedError;
  @DateTimeConverter()
  @JsonKey(name: 'start_at')
  DateTime? get startTime => throw _privateConstructorUsedError;
  @DateTimeConverter()
  @JsonKey(name: 'expired_at')
  DateTime? get endTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateTodoModelRequestCopyWith<UpdateTodoModelRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateTodoModelRequestCopyWith<$Res> {
  factory $UpdateTodoModelRequestCopyWith(UpdateTodoModelRequest value,
          $Res Function(UpdateTodoModelRequest) then) =
      _$UpdateTodoModelRequestCopyWithImpl<$Res, UpdateTodoModelRequest>;
  @useResult
  $Res call(
      {String title,
      String? description,
      TodoStatus status,
      @JsonKey(name: 'is_all_day') bool isFullDay,
      @DateTimeConverter() @JsonKey(name: 'start_at') DateTime? startTime,
      @DateTimeConverter() @JsonKey(name: 'expired_at') DateTime? endTime});
}

/// @nodoc
class _$UpdateTodoModelRequestCopyWithImpl<$Res,
        $Val extends UpdateTodoModelRequest>
    implements $UpdateTodoModelRequestCopyWith<$Res> {
  _$UpdateTodoModelRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = freezed,
    Object? status = null,
    Object? isFullDay = null,
    Object? startTime = freezed,
    Object? endTime = freezed,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TodoStatus,
      isFullDay: null == isFullDay
          ? _value.isFullDay
          : isFullDay // ignore: cast_nullable_to_non_nullable
              as bool,
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endTime: freezed == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UpdateTodoModelRequestlCopyWith<$Res>
    implements $UpdateTodoModelRequestCopyWith<$Res> {
  factory _$$_UpdateTodoModelRequestlCopyWith(_$_UpdateTodoModelRequestl value,
          $Res Function(_$_UpdateTodoModelRequestl) then) =
      __$$_UpdateTodoModelRequestlCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String? description,
      TodoStatus status,
      @JsonKey(name: 'is_all_day') bool isFullDay,
      @DateTimeConverter() @JsonKey(name: 'start_at') DateTime? startTime,
      @DateTimeConverter() @JsonKey(name: 'expired_at') DateTime? endTime});
}

/// @nodoc
class __$$_UpdateTodoModelRequestlCopyWithImpl<$Res>
    extends _$UpdateTodoModelRequestCopyWithImpl<$Res,
        _$_UpdateTodoModelRequestl>
    implements _$$_UpdateTodoModelRequestlCopyWith<$Res> {
  __$$_UpdateTodoModelRequestlCopyWithImpl(_$_UpdateTodoModelRequestl _value,
      $Res Function(_$_UpdateTodoModelRequestl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = freezed,
    Object? status = null,
    Object? isFullDay = null,
    Object? startTime = freezed,
    Object? endTime = freezed,
  }) {
    return _then(_$_UpdateTodoModelRequestl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TodoStatus,
      isFullDay: null == isFullDay
          ? _value.isFullDay
          : isFullDay // ignore: cast_nullable_to_non_nullable
              as bool,
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endTime: freezed == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$_UpdateTodoModelRequestl implements _UpdateTodoModelRequestl {
  const _$_UpdateTodoModelRequestl(
      {required this.title,
      this.description,
      required this.status,
      @JsonKey(name: 'is_all_day') required this.isFullDay,
      @DateTimeConverter() @JsonKey(name: 'start_at') this.startTime,
      @DateTimeConverter() @JsonKey(name: 'expired_at') this.endTime});

  factory _$_UpdateTodoModelRequestl.fromJson(Map<String, dynamic> json) =>
      _$$_UpdateTodoModelRequestlFromJson(json);

  @override
  final String title;
  @override
  final String? description;
  @override
  final TodoStatus status;
  @override
  @JsonKey(name: 'is_all_day')
  final bool isFullDay;
  @override
  @DateTimeConverter()
  @JsonKey(name: 'start_at')
  final DateTime? startTime;
  @override
  @DateTimeConverter()
  @JsonKey(name: 'expired_at')
  final DateTime? endTime;

  @override
  String toString() {
    return 'UpdateTodoModelRequest(title: $title, description: $description, status: $status, isFullDay: $isFullDay, startTime: $startTime, endTime: $endTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateTodoModelRequestl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.isFullDay, isFullDay) ||
                other.isFullDay == isFullDay) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, title, description, status, isFullDay, startTime, endTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateTodoModelRequestlCopyWith<_$_UpdateTodoModelRequestl>
      get copyWith =>
          __$$_UpdateTodoModelRequestlCopyWithImpl<_$_UpdateTodoModelRequestl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UpdateTodoModelRequestlToJson(
      this,
    );
  }
}

abstract class _UpdateTodoModelRequestl implements UpdateTodoModelRequest {
  const factory _UpdateTodoModelRequestl(
      {required final String title,
      final String? description,
      required final TodoStatus status,
      @JsonKey(name: 'is_all_day')
          required final bool isFullDay,
      @DateTimeConverter()
      @JsonKey(name: 'start_at')
          final DateTime? startTime,
      @DateTimeConverter()
      @JsonKey(name: 'expired_at')
          final DateTime? endTime}) = _$_UpdateTodoModelRequestl;

  factory _UpdateTodoModelRequestl.fromJson(Map<String, dynamic> json) =
      _$_UpdateTodoModelRequestl.fromJson;

  @override
  String get title;
  @override
  String? get description;
  @override
  TodoStatus get status;
  @override
  @JsonKey(name: 'is_all_day')
  bool get isFullDay;
  @override
  @DateTimeConverter()
  @JsonKey(name: 'start_at')
  DateTime? get startTime;
  @override
  @DateTimeConverter()
  @JsonKey(name: 'expired_at')
  DateTime? get endTime;
  @override
  @JsonKey(ignore: true)
  _$$_UpdateTodoModelRequestlCopyWith<_$_UpdateTodoModelRequestl>
      get copyWith => throw _privateConstructorUsedError;
}
